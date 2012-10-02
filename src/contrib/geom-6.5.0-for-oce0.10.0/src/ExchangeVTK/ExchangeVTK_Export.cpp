// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
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

// File:        VTKExport.cxx
// Author:      Oleg UVAROV
//
#include "utilities.h"

#include <Basics_Utils.hxx>

#include <OCC2VTK_Tools.h>

#include <GEOM_VertexSource.h>
#include <GEOM_EdgeSource.h>
#include <GEOM_WireframeFace.h>
#include <GEOM_ShadingFace.h>

#include <vtkAppendPolyData.h>  
#include <vtkPolyDataWriter.h>  

#include <TCollection_AsciiString.hxx>
#include <TopExp.hxx>
#include <TopExp_Explorer.hxx>
#include <TopoDS.hxx>
#include <TopoDS_Shape.hxx>
#include <Poly_Triangulation.hxx>
#include <BRep_Tool.hxx>
#include <BRepTools.hxx>

#ifdef WIN32
# if defined VTKEXPORT_EXPORTS || defined VTKExport_EXPORTS
#  define VTKEXPORT_EXPORT __declspec( dllexport )
# else
#  define VTKEXPORT_EXPORT __declspec( dllimport )
# endif
#else
# define VTKEXPORT_EXPORT
#endif

//=============================================================================
/*!
 *
 */
//=============================================================================

extern "C"
{
  VTKEXPORT_EXPORT
  int Export(const TopoDS_Shape& theShape,
             const TCollection_AsciiString& theFileName,
             const TCollection_AsciiString& theFormatName)
  {
    MESSAGE("Export VTK into file " << theFileName.ToCString());

    try
    {
      GEOM_VertexSource* myVertexSource = GEOM_VertexSource::New();
      GEOM_EdgeSource* myIsolatedEdgeSource = GEOM_EdgeSource::New();
      GEOM_EdgeSource* myOneFaceEdgeSource = GEOM_EdgeSource::New();
      GEOM_EdgeSource* mySharedEdgeSource = GEOM_EdgeSource::New();
      GEOM_WireframeFace* myWireframeFaceSource = GEOM_WireframeFace::New();
      GEOM_ShadingFace* myShadingFaceSource = GEOM_ShadingFace::New();

      vtkAppendPolyData* myAppendFilter = vtkAppendPolyData::New();
      myAppendFilter->AddInput( myVertexSource->GetOutput() );
      myAppendFilter->AddInput( myIsolatedEdgeSource->GetOutput() );
      myAppendFilter->AddInput( myOneFaceEdgeSource->GetOutput() );
      myAppendFilter->AddInput( mySharedEdgeSource->GetOutput() );
      //myAppendFilter->AddInput( myWireframeFaceSource->GetOutput() ); // iso-lines are unnecessary
      myAppendFilter->AddInput( myShadingFaceSource->GetOutput() );

      float aDeflection = 0.001;
      bool anIsVector = false;

      // Is shape triangulated?
      bool wasMeshed = true;
      TopExp_Explorer ex;
      TopLoc_Location aLoc;
      for (ex.Init(theShape, TopAbs_FACE); ex.More(); ex.Next()) {
	const TopoDS_Face& aFace = TopoDS::Face(ex.Current());
	Handle(Poly_Triangulation) aPoly = BRep_Tool::Triangulation(aFace,aLoc);
	if(aPoly.IsNull()) { 
	  wasMeshed = false;
	  break; 
	}
      }

      GEOM::MeshShape( theShape, aDeflection );

      TopExp_Explorer aVertexExp( theShape, TopAbs_VERTEX );
      for( ; aVertexExp.More(); aVertexExp.Next() )
      {
        const TopoDS_Vertex& aVertex = TopoDS::Vertex( aVertexExp.Current() );
        myVertexSource->AddVertex( aVertex );
      }

      TopTools_IndexedDataMapOfShapeListOfShape anEdgeMap;
      TopExp::MapShapesAndAncestors( theShape, TopAbs_EDGE, TopAbs_FACE, anEdgeMap );
  
      GEOM::SetShape( theShape,
                      anEdgeMap,
                      anIsVector,
                      myIsolatedEdgeSource,
                      myOneFaceEdgeSource,
                      mySharedEdgeSource,
                      myWireframeFaceSource,
                      myShadingFaceSource );

      myAppendFilter->Update();

      // Set "C" numeric locale to save numbers correctly
      Kernel_Utils::Localizer loc;

      vtkPolyDataWriter* aWriter = vtkPolyDataWriter::New(); 
      aWriter->SetInput( myAppendFilter->GetOutput() );
      aWriter->SetFileName( theFileName.ToCString() );
      aWriter->Write();
      aWriter->Delete();

      myVertexSource->Delete();
      myIsolatedEdgeSource->Delete();
      myOneFaceEdgeSource->Delete();
      mySharedEdgeSource->Delete();
      myWireframeFaceSource->Delete();
      myShadingFaceSource->Delete();

      myAppendFilter->Delete();

      if(!wasMeshed)
	BRepTools::Clean(theShape);

      return 1;
    }
    catch(Standard_Failure)
    {
      //THROW_SALOME_CORBA_EXCEPTION("Exception catched in VTKExport", SALOME::BAD_PARAM);
    }
    return 0;
  }
}
