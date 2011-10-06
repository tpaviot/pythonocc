// Copyright (C) 2005  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
// 
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public  
// License along with this library; if not, write to the Free Software 
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#include "utilities.h"

#include <Standard_Stream.hxx>

#include <GEOMImpl_RevolutionDriver.hxx>
#include <GEOMImpl_IShapesOperations.hxx>
#include <GEOMImpl_IRevolution.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>

#include <BRepPrimAPI_MakeRevol.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_Transform.hxx>
#include <BRepOffsetAPI_MakePipeShell.hxx>
#include <BRep_Tool.hxx>
#include <BRepLib.hxx>
#include <BRepTools.hxx>
#include <BRepLProp_SLProps.hxx>
#include <BRepClass3d_SolidClassifier.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <TopoDS_Compound.hxx>
#include <TopoDS_Solid.hxx>
#include <TopoDS_Face.hxx>
#include <TopoDS_Wire.hxx>
#include <TopoDS_Edge.hxx>
#include <TopoDS_Vertex.hxx>
#include <TopAbs.hxx>
#include <TopExp.hxx>
#include <TopTools_ListOfShape.hxx>
#include <TopTools_ListIteratorOfListOfShape.hxx>
#include <TopExp_Explorer.hxx>
#include <GProp_GProps.hxx>
#include <BRepGProp.hxx>

#include <gp_Pnt.hxx>
#include <gp_Lin.hxx>
#include <gp_Dir.hxx>
#include <gp_Ax2.hxx>
#include <Geom_CylindricalSurface.hxx>
#include <Geom_ConicalSurface.hxx>
#include <Geom_Line.hxx>
#include <Geom2d_TrimmedCurve.hxx>
#include <GeomAPI_ProjectPointOnCurve.hxx>
#include <GCE2d_MakeSegment.hxx>
#include <ShHealOper_Sewing.hxx>
#include <ShHealOper_FillHoles.hxx>
#include <BRepAdaptor_Curve.hxx>

#include <Precision.hxx>
#include <StdFail_NotDone.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_ConstructionError.hxx>



gp_Pnt GetVertexOnWireNotOnAxis(TopoDS_Wire aWire/*, Standard_Boolean isFirst*/, gp_Ax1 ax)
{
	//find a subvertex of the wire that isn't on ax
	Handle_Geom_Line aLine = new Geom_Line(ax);

	TopTools_IndexedMapOfShape	map;
	TopExp::MapShapes( aWire, TopAbs_VERTEX, map );
	for( int i=1; i<=map.Extent(); i++ )
	{
		gp_Pnt p = BRep_Tool::Pnt( TopoDS::Vertex( map.FindKey( i ) ) );
		GeomAPI_ProjectPointOnCurve proj(p,aLine);
		if( proj.NbPoints() > 0 )
		{
			if( proj.Distance( 1 ) > Precision::Confusion() )
				return p;			
		}			
	}
	// if we got here, we haven't found a vertex NOT on ax
	// search for a value of an edge NOT on ax
	const int nSamples=10;
	map.Clear();
	TopExp::MapShapes( aWire, TopAbs_EDGE, map );
	for( int i=1; i<=map.Extent(); i++ )
	{
		BRepAdaptor_Curve curve(TopoDS::Edge( map.FindKey( i ) ));
		Standard_Real umin = curve.FirstParameter();
		Standard_Real umax = curve.LastParameter();
		for( int n = 0; n <= nSamples; n++ )
		{
			Standard_Real u = umin + (float(n)/float(nSamples))*( umax - umin );
			gp_Pnt p = curve.Value(u);
			GeomAPI_ProjectPointOnCurve proj(p,aLine);
			if( proj.NbPoints() > 0 )
			{
				if( proj.Distance( 1 ) > Precision::Confusion() )
					return p;			
			}
		}			
	}
	// if we got here, no appropriate point was found, so throw an exception
    Standard_ConstructionError::Raise("No point found on wire, that is not on axis");
    return gp_Pnt(0., 0., 0.);
}

static TopoDS_Wire getHelicalSpine( gp_Pnt p, gp_Ax1 ax, Standard_Real angle, Standard_Real aConicalAngle, Standard_Real offset )
{
	//project the point on the axis
	Handle_Geom_Line aLine = new Geom_Line(ax);
	GeomAPI_ProjectPointOnCurve proj(p,aLine);
	gp_Pnt pOnAx = proj.Point(1);
	gp_Vec vec(pOnAx,p);
	gp_Ax2 ax2( pOnAx, ax.Direction(), gp_Dir(vec) );

	// create the surface
	Handle(Geom_ElementarySurface) aSurf;
	if (aConicalAngle)
	  aSurf = new Geom_ConicalSurface ( ax2, aConicalAngle, vec.Magnitude() );
	else
	  aSurf = new Geom_CylindricalSurface ( ax2, vec.Magnitude() );

	//create the 2d line on the surface
	Handle(Geom2d_TrimmedCurve) aSegment = GCE2d_MakeSegment(gp_Pnt2d(0.0,0.0), gp_Pnt2d(angle,offset) );
	TopoDS_Edge anEdge = BRepBuilderAPI_MakeEdge(aSegment , aSurf);
	TopoDS_Wire aWire = BRepBuilderAPI_MakeWire(anEdge);
	BRepLib::BuildCurves3d(aWire);

	return aWire;
}

static const TopTools_ListOfShape& getThruSections( TopoDS_Wire w, gp_Ax1 ax, Standard_Real angle, Standard_Real aConicalAngle, Standard_Real offset, int sectionCount )
{
	static TopTools_ListOfShape result;
	result.Clear();

	gp_Trsf tsfTrans;
	gp_Trsf tsfRot;
	gp_Trsf tsfCone;

	gp_Vec anOffsetVec = gp_Vec(ax.Direction());
	Handle_Geom_Line anAxisLine = new Geom_Line(ax);

	for( int i = 1; i <= sectionCount; i++ )
	{
		Standard_Real anOffset = offset*double(i)/double(sectionCount);
		tsfTrans.SetTranslation( anOffset*anOffsetVec );
		BRepBuilderAPI_Transform trsfTrans(tsfTrans);
		trsfTrans.Perform(w, Standard_True);

		Standard_Real anAngle = angle*double(i)/double(sectionCount);
		tsfRot.SetRotation( ax, anAngle );
		BRepBuilderAPI_Transform trsfRot(tsfRot);
		trsfRot.Perform(trsfTrans, Standard_False);

		if (aConicalAngle) {
			gp_Pnt theCurrentPnt = GetVertexOnWireNotOnAxis(TopoDS::Wire(trsfRot), ax);

			GeomAPI_ProjectPointOnCurve proj(theCurrentPnt,anAxisLine);
			gp_Pnt pOnAx = proj.Point(1);
			gp_Vec CurrVec(pOnAx,theCurrentPnt);
			CurrVec.Normalize();

			Standard_Real aConicOffset = anOffset * (Tan(aConicalAngle));
			tsfCone.SetTranslation(CurrVec*aConicOffset);
			BRepBuilderAPI_Transform trsfCone(tsfCone);
			trsfCone.Perform(trsfRot, Standard_False);

			result.Append(trsfCone);
		}
		else
			result.Append(trsfRot);
	}
	return result;
}


//=======================================================================
//function : GetID
//purpose  :
//=======================================================================
const Standard_GUID& GEOMImpl_RevolutionDriver::GetID()
{
  static Standard_GUID aRevolutionDriver("FF1BBB18-5D14-4df2-980B-3A668264EA16");
  return aRevolutionDriver;
}

//=======================================================================
//function : GEOMImpl_RevolutionDriver
//purpose  :
//=======================================================================
GEOMImpl_RevolutionDriver::GEOMImpl_RevolutionDriver()
{
}

//=======================================================================
//function : Execute
//purpose  :
//======================================================================= 
Standard_Integer GEOMImpl_RevolutionDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;    
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label());

  GEOMImpl_IRevolution aCI (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;

  if (aType == REVOLUTION_BASE_AXIS_ANGLE || aType == REVOLUTION_BASE_AXIS_ANGLE_2WAYS) {
    Handle(GEOM_Function) aRefBase = aCI.GetBase();
    Handle(GEOM_Function) aRefAxis = aCI.GetAxis();
    TopoDS_Shape aShapeBase = aRefBase->GetValue();
    TopoDS_Shape aShapeAxis = aRefAxis->GetValue();
    if (aShapeAxis.ShapeType() != TopAbs_EDGE) {
      Standard_TypeMismatch::Raise("Revolution Axis must be an edge");
    }

    TopoDS_Edge anE = TopoDS::Edge(aShapeAxis);
    TopoDS_Vertex V1, V2;
    TopExp::Vertices(anE, V1, V2, Standard_True);
    if (V1.IsNull() || V2.IsNull()) {
      Standard_ConstructionError::Raise("Bad edge for the Revolution Axis given");
    }

    gp_Vec aV (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
    if (aV.Magnitude() < Precision::Confusion()) {
      Standard_ConstructionError::Raise
        ("End vertices of edge, defining the Revolution Axis, are too close");
    }

    if (aShapeBase.ShapeType() == TopAbs_VERTEX) {
      gp_Lin aL(BRep_Tool::Pnt(V1), gp_Dir(aV));
      Standard_Real d = aL.Distance(BRep_Tool::Pnt(TopoDS::Vertex(aShapeBase)));
      if (d < Precision::Confusion()) {
	Standard_ConstructionError::Raise("Vertex to be rotated is too close to Revolution Axis");
      }
    }
    double anAngle = aCI.GetAngle();
    gp_Ax1 anAxis (BRep_Tool::Pnt(V1), aV);
    if (aType == REVOLUTION_BASE_AXIS_ANGLE_2WAYS)
      {
	gp_Trsf aTrsf;
	aTrsf.SetRotation(anAxis, ( -anAngle ));
	BRepBuilderAPI_Transform aTransformation(aShapeBase, aTrsf, Standard_False);
	aShapeBase = aTransformation.Shape();
	anAngle = anAngle * 2;
      }
    BRepPrimAPI_MakeRevol MR (aShapeBase, anAxis, anAngle, Standard_False);
    if (!MR.IsDone()) MR.Build();
    if (!MR.IsDone()) StdFail_NotDone::Raise("Revolution algorithm has failed");
    aShape = MR.Shape();
  } else if (aType == REVOLUTION_BASE_AXIS_ANGLE_OFFSET) {
    /*
	MakeRevolutionAxisAngleOffset creates a shape by revolving a vertex/edge/wire/face(the "profile") around an axis with an offset along the axis.
	Depending on the input shape(vertex,edge,wire or face), the result will be an edge,face,shell or solid, in that order.
  	To keep the order of the result shape low, the function acts per revolution. For each revolution the function creates 
	- a helix spine beginning at a vertex on the profile, see getHelicalSpine.
	- 4 thru sections to delimit the result shape
	Then BRepOffsetAPI_MakePipeShell is used to build each an intermediate result for each revolution.
	These revolutions are then sewn together to build the result.
	*/
    Handle(GEOM_Function) aRefBase = aCI.GetBase();
	Handle(GEOM_Function) aRefAxis = aCI.GetAxis();

	TopoDS_Shape aShapeBase = aRefBase->GetValue();
	TopoDS_Shape aShapeAxis = aRefAxis->GetValue();

    if (aShapeAxis.ShapeType() != TopAbs_EDGE) {
      Standard_TypeMismatch::Raise("Revolution Axis must be an edge");
    }

    TopoDS_Edge anE = TopoDS::Edge(aShapeAxis);
    TopoDS_Vertex V1, V2;
	TopExp::Vertices(anE, V1, V2, Standard_True);
    if (V1.IsNull() || V2.IsNull()) {
      Standard_ConstructionError::Raise("Bad edge for the Revolution Axis given");
    }

    gp_Vec aV (BRep_Tool::Pnt(V1), BRep_Tool::Pnt(V2));
    if (aV.Magnitude() < Precision::Confusion()) {
      Standard_ConstructionError::Raise
        ("End vertices of edge, defining the Revolution Axis, are too close");
    }

    if (aShapeBase.ShapeType() == TopAbs_VERTEX) {
      gp_Lin aL(BRep_Tool::Pnt(V1), gp_Dir(aV));
	  Standard_Real d = aL.Distance(BRep_Tool::Pnt(TopoDS::Vertex(aShapeBase)));
	  if (d < Precision::Confusion()) {
		Standard_ConstructionError::Raise("Vertex to be rotated is too close to Revolution Axis");
      }
	}

	gp_Ax1 anAxis (BRep_Tool::Pnt(V1), aV);
	//values from driver
	Standard_Real theTotalAngleInRAD = aCI.GetAngle();
	Standard_Real theTotalOffset = aCI.GetOffset();
	Standard_Real theConeAngle = aCI.GetConeAngle();
	//constants used below
	Standard_Real theRevolutionResolution = (PI/2);
	Standard_Integer theNbWiresPerRevolution = 4;

	//create the basic wire or vertex
	TopAbs_ShapeEnum aTypeBase = aShapeBase.ShapeType();

	Standard_Boolean NeedCreateSolid = Standard_False;
	Standard_Boolean IsVertex = Standard_False;

	TopoDS_Wire   aWireProf;
	TopoDS_Vertex myVertex;

	if(aTypeBase == TopAbs_WIRE) {
		aWireProf = TopoDS::Wire(aShapeBase);
	}
	else if(aTypeBase == TopAbs_FACE) {
		NeedCreateSolid = Standard_True;
		aWireProf = BRepTools::OuterWire(TopoDS::Face(aShapeBase));
	}
	else if(aTypeBase == TopAbs_EDGE){
		TopoDS_Edge anEdge = TopoDS::Edge(aShapeBase);
		aWireProf = BRepBuilderAPI_MakeWire(anEdge);
	}
	else if(aTypeBase == TopAbs_VERTEX){
		IsVertex = Standard_True;
		myVertex = TopoDS::Vertex(aShapeBase);
	}
	else
		Standard_ConstructionError::Raise("Construction element is not of the requested type");

	if (!IsVertex)
	{
		gp_Pnt theCurrentPnt = GetVertexOnWireNotOnAxis(aWireProf, anAxis);

		TopoDS_Wire theCurrentWire = aWireProf;
		Standard_Real theCurrAngle = theTotalAngleInRAD;
		Standard_Boolean isFinished = Standard_False;

		TopTools_ListOfShape listForCompound;
		while (!isFinished)
		{
			if (theCurrAngle > theRevolutionResolution)
			  theCurrAngle = theCurrAngle-theRevolutionResolution;
			else
			{
			  theRevolutionResolution = theCurrAngle;
			  isFinished = Standard_True;
			}
			Standard_Real theOffset = (theTotalOffset /theTotalAngleInRAD ) * theRevolutionResolution;

			TopoDS_Wire aSpine = getHelicalSpine( theCurrentPnt, anAxis, theRevolutionResolution, theConeAngle, theOffset );
			TopoDS_Vertex aFirst, aLast;
			TopExp::Vertices(aSpine, aFirst, aLast);
			theCurrentPnt = BRep_Tool::Pnt(aLast);

			const TopTools_ListOfShape& listThru = getThruSections( theCurrentWire, anAxis, theRevolutionResolution, theConeAngle, theOffset, theNbWiresPerRevolution );
			theCurrentWire = TopoDS::Wire(listThru.Last());

			BRepOffsetAPI_MakePipeShell mps(aSpine);
			TopTools_ListIteratorOfListOfShape it;
			for( it.Initialize( listThru ); it.More(); it.Next() )
				mps.Add( it.Value() );

			listForCompound.Append(mps.Shape());
		}

		TopoDS_Compound CompoundNotSewed;
		BRep_Builder CompoundBuilder;
		CompoundBuilder.MakeCompound(CompoundNotSewed);
		TopTools_ListIteratorOfListOfShape it;
		for( it.Initialize( listForCompound ); it.More(); it.Next() )
		  CompoundBuilder.Add(CompoundNotSewed, it.Value());

		if (NeedCreateSolid) {
			CompoundBuilder.Add  (CompoundNotSewed,  aShapeBase );

			gp_Trsf tsfTrans;
			gp_Trsf tsfRot;
			gp_Trsf tsfCone;

			gp_Vec anOffsetVec = gp_Vec(anAxis.Direction());

			tsfTrans.SetTranslation( theTotalOffset*anOffsetVec );
			BRepBuilderAPI_Transform trsfTrans(tsfTrans);
			trsfTrans.Perform(aShapeBase, Standard_True);

			tsfRot.SetRotation( anAxis, theTotalAngleInRAD );
			BRepBuilderAPI_Transform trsfRot(tsfRot);
			trsfRot.Perform(trsfTrans, Standard_False);

			if (theConeAngle) {
				Handle_Geom_Line anAxisLine = new Geom_Line(anAxis);
				Standard_Real aConicOffset = theTotalOffset * (Tan(theConeAngle));

				gp_Pnt theCurrentPnt =  GetVertexOnWireNotOnAxis(BRepTools::OuterWire(TopoDS::Face(trsfRot)), anAxis);

				GeomAPI_ProjectPointOnCurve proj(theCurrentPnt,anAxisLine);
				gp_Pnt pOnAx = proj.Point(1);
				gp_Vec CurrVec(pOnAx,theCurrentPnt);
				CurrVec.Normalize();

				tsfCone.SetTranslation(CurrVec*aConicOffset);
				BRepBuilderAPI_Transform trsfCone(tsfCone);
				trsfCone.Perform(trsfRot, Standard_False);

				CompoundBuilder.Add(CompoundNotSewed,  trsfCone );
			}
			else
				CompoundBuilder.Add(CompoundNotSewed,  trsfRot );
		}

		Standard_Real DefaultSewTolerance = 10.;
		ShHealOper_Sewing aHealer (CompoundNotSewed, DefaultSewTolerance);
		TopoDS_Shape CompoundSewed;

		if (aHealer.Perform())
			CompoundSewed = aHealer.GetResultShape();
		else
			CompoundSewed = CompoundNotSewed;

		if (NeedCreateSolid) {
			TopoDS_Solid aSolid;
			BRep_Builder aSolidBuilder;
			aSolidBuilder.MakeSolid(aSolid);

			TopExp_Explorer aExpW(CompoundSewed, TopAbs_SHELL );
			for( ; aExpW.More(); aExpW.Next())
				aSolidBuilder.Add(aSolid, aExpW.Current());

			BRepClass3d_SolidClassifier SC(aSolid);
			SC.PerformInfinitePoint(Precision::Confusion());

			switch (SC.State()) {
				case TopAbs_IN:
				  aShape = aSolid.Reversed();
				  break;
				case TopAbs_OUT:
				  aShape = aSolid;
				  break;
				default:
				  aShape = CompoundSewed;
			}
		}
		else {
			aShape = CompoundSewed;
		}
	}
	else
	{
		gp_Pnt theCurrentPnt = BRep_Tool::Pnt(myVertex);
		aShape = getHelicalSpine( theCurrentPnt, anAxis, theTotalAngleInRAD, theConeAngle, theTotalOffset );
	}
  
  } else {
  }

  if (aShape.IsNull()) return 0;

  TopoDS_Shape aRes = GEOMImpl_IShapesOperations::CompsolidToCompound(aShape);
  aFunction->SetValue(aRes);

  log.SetTouched(Label()); 

  return 1;    
}


//=======================================================================
//function :  GEOMImpl_RevolutionDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_RevolutionDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_RevolutionDriver",
			                                 sizeof(GEOMImpl_RevolutionDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 
const Handle(GEOMImpl_RevolutionDriver) Handle(GEOMImpl_RevolutionDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_RevolutionDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_RevolutionDriver))) {
       _anOtherObject = Handle(GEOMImpl_RevolutionDriver)((Handle(GEOMImpl_RevolutionDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}

