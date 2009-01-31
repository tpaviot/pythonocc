/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<ShapeAlgo_ToolContainer.hxx>
#include<ShapeAlgo_AlgoContainer.hxx>
#include<ShapeAlgo.hxx>
#include<Handle_ShapeAlgo_ToolContainer.hxx>
#include<Handle_ShapeAlgo_AlgoContainer.hxx>

// Additional headers necessary for compilation.

#include<TopoDS_TVertex.hxx>
#include<TopoDS_TWire.hxx>
#include<TopoDS_TEdge.hxx>
#include<TopoDSToStep_FacetedTool.hxx>
#include<TopoDSToStep_FacetedError.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDSToStep_MakeGeometricCurveSet.hxx>
#include<TopoDSToStep_MakeEdgeError.hxx>
#include<TopoDS_HShape.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDSToStep_MakeShellBasedSurfaceModel.hxx>
#include<TopoDSToStep_MakeStepFace.hxx>
#include<TopoDS_TCompound.hxx>
#include<TopoDSToStep.hxx>
#include<TopoDS_Builder.hxx>
#include<TopoDSToStep_Root.hxx>
#include<TopoDSToStep_MakeWireError.hxx>
#include<TopoDSToStep_MakeStepEdge.hxx>
#include<TopoDS_UnCompatibleShapes.hxx>
#include<TopoDSToStep_MakeBrepWithVoids.hxx>
#include<TopoDS_Compound.hxx>
#include<TopoDS_TFace.hxx>
#include<TopoDS_TShape.hxx>
#include<TopoDSToStep_MakeStepVertex.hxx>
#include<TopoDSToStep_WireframeBuilder.hxx>
#include<TopoDS_TShell.hxx>
#include<TopoDS.hxx>
#include<TopoDS_TSolid.hxx>
#include<TopoDS_ListIteratorOfListOfShape.hxx>
#include<TopoDSToStep_BuilderError.hxx>
#include<TopoDS_ListOfShape.hxx>
#include<TopoDS_FrozenShape.hxx>
#include<TopoDSToStep_MakeManifoldSolidBrep.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDSToStep_MakeFacetedBrep.hxx>
#include<TopoDSToStep_Tool.hxx>
#include<TopoDS_ListNodeOfListOfShape.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDSToStep_MakeFaceError.hxx>
#include<TopoDSToStep_MakeVertexError.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Builder3D.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDSToStep_MakeStepWire.hxx>
#include<TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx>
#include<TopoDSToStep_Builder.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_ShapeAnalysis_Wire.hxx>
#include<Handle_ShapeExtend_WireData.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<TColGeom2d_SequenceOfCurve.hxx>
#include<Handle_TColGeom_HSequenceOfBoundedCurve.hxx>
#include<Handle_TColGeom2d_HSequenceOfBoundedCurve.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_ShapeFix_Shape.hxx>
#include<Handle_ShapeFix_EdgeProjAux.hxx>
%}
