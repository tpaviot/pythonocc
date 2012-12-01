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

#include <Standard_Stream.hxx>

#include <GEOMImpl_CurveDriver.hxx>
#include <GEOMImpl_ICurve.hxx>
#include <GEOMImpl_Types.hxx>
#include <GEOM_Function.hxx>
#include <TopoDS_Shape.hxx>
#include <Geom_Curve.hxx>
#include <BRep_Tool.hxx>
#include <TopoDS.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include "BRepExtrema_DistShapeShape.hxx"
#include "gp_Trsf.hxx"
#include <Precision.hxx>

#include <list>

//=======================================================================
//function : GetID
//purpose  :
//======================================================================= 
const Standard_GUID& GEOMImpl_CurveDriver::GetID()
{
  static Standard_GUID aCurveDriver("FF1BBB72-5D14-4df2-980B-3A668264EA16");
  return aCurveDriver; 
}


//=======================================================================
//function : GEOMImpl_CurveDriver
//purpose  : 
//=======================================================================

GEOMImpl_CurveDriver::GEOMImpl_CurveDriver() 
{
}

//=======================================================================
//function : Execute
//purpose  :
//comments : parameters are expected to be between 0 and 1 
//======================================================================= 
Standard_Integer GEOMImpl_CurveDriver::Execute(TFunction_Logbook& log) const
{
  if (Label().IsNull()) return 0;
  Handle(GEOM_Function) aFunction = GEOM_Function::GetFunction(Label()); 
  if(aFunction.IsNull()) return 0;
  
  GEOMImpl_ICurve aCu (aFunction);
  Standard_Integer aType = aFunction->GetType();

  TopoDS_Shape aShape;
  BRepBuilderAPI_MakeWire aWireBuilder;

  if (aType == CURVE_SPLIT_BY_PAR) {
    Handle(GEOM_Function) anEdge  = aCu.GetEdge();
    TopoDS_Shape aShapeEdge = anEdge->GetValue();
	if (aShapeEdge.ShapeType() == TopAbs_EDGE) {
	  TopLoc_Location l;
	  Standard_Real rFirst, rLast;
	  Handle(Geom_Curve) curve = BRep_Tool::Curve( TopoDS::Edge( aShapeEdge ), l, rFirst, rLast );
	  curve =  Handle(Geom_Curve)::DownCast(curve->Transformed( aShapeEdge.Location() ));
      if (!curve.IsNull()) {
		Standard_Real rPar;
		rPar = rFirst + (rLast - rFirst)*aCu.GetPar();
		aWireBuilder.Add( BRepBuilderAPI_MakeEdge( curve, rFirst, rPar ) );
		aWireBuilder.Add( BRepBuilderAPI_MakeEdge( curve, rPar,rLast ) );
	    aShape = aWireBuilder.Shape();
      }
    }
  }
  else if (aType == CURVE_SPLIT_BY_CURVE) {
    Handle(GEOM_Function) anEdge  = aCu.GetEdge();
    TopoDS_Shape aShapeEdge = anEdge->GetValue();
    Handle(GEOM_Function) aTool  = aCu.GetTool();
    TopoDS_Shape aShapeTool = aTool->GetValue();

	BRepExtrema_DistShapeShape dss;
	dss.LoadS1( aShapeEdge );
	dss.LoadS2( aShapeTool );
	dss.Perform();
	if( !dss.IsDone() )
		return 0;
	
	Standard_Real umin, umax;
	Handle_Geom_Curve curve = BRep_Tool::Curve( TopoDS::Edge( aShapeEdge ), umin, umax );
	std::list<double> par;
	if( dss.Value() <= Precision::Intersection()  && dss.NbSolution() > 0 )
	{
	  par.push_back( umin );
	  for( int i = 1; i <= dss.NbSolution(); i++ )
	  {	
	    if( dss.SupportTypeShape1( i ) == BRepExtrema_IsOnEdge )
		{
		  Standard_Real u;
		  dss.ParOnEdgeS1( i, u );
		  par.push_back( u );
		}
  	  }
	  par.push_back( umax );
	  par.sort();
	  
	  if( par.size() == 0 )
        return 0;
   
	  double dStart = *(par.begin());
	  for( std::list<double>::iterator theIt = ++(par.begin()); theIt != par.end(); theIt++ )
      {
		aWireBuilder.Add( BRepBuilderAPI_MakeEdge( curve, dStart,*theIt  ) );
        dStart = *theIt;
      }
		
	  aShape = aWireBuilder.Shape();
	}


  }
  else {
  }

  if (aShape.IsNull()) return 0;

  aFunction->SetValue(aShape);

  log.SetTouched(Label()); 

  return 1;    
}


//=======================================================================
//function :  GEOMImpl_CurveDriver_Type_
//purpose  :
//======================================================================= 
Standard_EXPORT Handle_Standard_Type& GEOMImpl_CurveDriver_Type_()
{

  static Handle_Standard_Type aType1 = STANDARD_TYPE(TFunction_Driver);
  if ( aType1.IsNull()) aType1 = STANDARD_TYPE(TFunction_Driver);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  if ( aType2.IsNull()) aType2 = STANDARD_TYPE(MMgt_TShared); 
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
  if ( aType3.IsNull()) aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("GEOMImpl_CurveDriver",
			                                 sizeof(GEOMImpl_CurveDriver),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}

//=======================================================================
//function : DownCast
//purpose  :
//======================================================================= 

const Handle(GEOMImpl_CurveDriver) Handle(GEOMImpl_CurveDriver)::DownCast(const Handle(Standard_Transient)& AnObject)
{
  Handle(GEOMImpl_CurveDriver) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(GEOMImpl_CurveDriver))) {
       _anOtherObject = Handle(GEOMImpl_CurveDriver)((Handle(GEOMImpl_CurveDriver)&)AnObject);
     }
  }

  return _anOtherObject ;
}


