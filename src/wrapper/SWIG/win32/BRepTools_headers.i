/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<BRepTools.hxx>
#include<BRepTools_DataMapIteratorOfMapOfVertexPnt2d.hxx>
#include<BRepTools_DataMapNodeOfMapOfVertexPnt2d.hxx>
#include<BRepTools_GTrsfModification.hxx>
#include<BRepTools_MapOfVertexPnt2d.hxx>
#include<BRepTools_Modification.hxx>
#include<BRepTools_Modifier.hxx>
#include<BRepTools_NurbsConvertModification.hxx>
#include<BRepTools_Quilt.hxx>
#include<BRepTools_ReShape.hxx>
#include<BRepTools_ShapeSet.hxx>
#include<BRepTools_Substitution.hxx>
#include<BRepTools_TrsfModification.hxx>
#include<BRepTools_WireExplorer.hxx>
#include<Handle_BRepTools_DataMapNodeOfMapOfVertexPnt2d.hxx>
#include<Handle_BRepTools_GTrsfModification.hxx>
#include<Handle_BRepTools_Modification.hxx>
#include<Handle_BRepTools_NurbsConvertModification.hxx>
#include<Handle_BRepTools_ReShape.hxx>
#include<Handle_BRepTools_TrsfModification.hxx>

// Additional headers necessary for compilation.

#include<TopoDS.hxx>
#include<TopoDSToStep.hxx>
#include<TopoDSToStep_Builder.hxx>
#include<TopoDSToStep_BuilderError.hxx>
#include<TopoDSToStep_FacetedError.hxx>
#include<TopoDSToStep_FacetedTool.hxx>
#include<TopoDSToStep_MakeBrepWithVoids.hxx>
#include<TopoDSToStep_MakeEdgeError.hxx>
#include<TopoDSToStep_MakeFaceError.hxx>
#include<TopoDSToStep_MakeFacetedBrep.hxx>
#include<TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx>
#include<TopoDSToStep_MakeGeometricCurveSet.hxx>
#include<TopoDSToStep_MakeManifoldSolidBrep.hxx>
#include<TopoDSToStep_MakeShellBasedSurfaceModel.hxx>
#include<TopoDSToStep_MakeStepEdge.hxx>
#include<TopoDSToStep_MakeStepFace.hxx>
#include<TopoDSToStep_MakeStepVertex.hxx>
#include<TopoDSToStep_MakeStepWire.hxx>
#include<TopoDSToStep_MakeVertexError.hxx>
#include<TopoDSToStep_MakeWireError.hxx>
#include<TopoDSToStep_Root.hxx>
#include<TopoDSToStep_Tool.hxx>
#include<TopoDSToStep_WireframeBuilder.hxx>
#include<TopoDS_Builder.hxx>
#include<TopoDS_Builder3D.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Compound.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_FrozenShape.hxx>
#include<TopoDS_HShape.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDS_ListIteratorOfListOfShape.hxx>
#include<TopoDS_ListNodeOfListOfShape.hxx>
#include<TopoDS_ListOfShape.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_TCompound.hxx>
#include<TopoDS_TEdge.hxx>
#include<TopoDS_TFace.hxx>
#include<TopoDS_TShape.hxx>
#include<TopoDS_TShell.hxx>
#include<TopoDS_TSolid.hxx>
#include<TopoDS_TVertex.hxx>
#include<TopoDS_TWire.hxx>
#include<TopoDS_UnCompatibleShapes.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Wire.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<BRep_Builder.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopLoc_Location.hxx>
#include<Handle_Geom_Curve.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<BRepTools.hxx>
#include<TopoDS_Wire.hxx>
#include<Bnd_Box2d.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Compound.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<Handle_Message_ProgressIndicator.hxx>
#include<gp_GTrsf.hxx>
#include<gp_Trsf.hxx>
#include<TopTools_ListOfShape.hxx>
%}
