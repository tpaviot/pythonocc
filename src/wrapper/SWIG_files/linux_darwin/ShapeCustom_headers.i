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

#include<Handle_ShapeCustom_BSplineRestriction.hxx>
#include<Handle_ShapeCustom_ConvertToBSpline.hxx>
#include<Handle_ShapeCustom_ConvertToRevolution.hxx>
#include<Handle_ShapeCustom_DirectModification.hxx>
#include<Handle_ShapeCustom_RestrictionParameters.hxx>
#include<Handle_ShapeCustom_SweptToElementary.hxx>
#include<Handle_ShapeCustom_TrsfModification.hxx>
#include<ShapeCustom.hxx>
#include<ShapeCustom_BSplineRestriction.hxx>
#include<ShapeCustom_ConvertToBSpline.hxx>
#include<ShapeCustom_ConvertToRevolution.hxx>
#include<ShapeCustom_Curve.hxx>
#include<ShapeCustom_Curve2d.hxx>
#include<ShapeCustom_DirectModification.hxx>
#include<ShapeCustom_RestrictionParameters.hxx>
#include<ShapeCustom_Surface.hxx>
#include<ShapeCustom_SweptToElementary.hxx>
#include<ShapeCustom_TrsfModification.hxx>

// Additional headers necessary for compilation.

#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>
#include<TopTools.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeMapOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeMapOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapOfOrientedShapeShape.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapOfShapeMapOfShape.hxx>
#include<TopTools_DataMapOfShapeReal.hxx>
#include<TopTools_DataMapOfShapeSequenceOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedDataMapOfShapeAddress.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfShape.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_ListIteratorOfListOfShape.hxx>
#include<TopTools_ListNodeOfListOfShape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_LocationSet.hxx>
#include<TopTools_LocationSetPtr.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_MutexForShapeProvider.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_SequenceNodeOfSequenceOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_StdMapNodeOfMapOfOrientedShape.hxx>
#include<TopTools_StdMapNodeOfMapOfShape.hxx>
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
#include<TopoDS_Face.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopLoc_Location.hxx>
#include<TopoDS_Edge.hxx>
#include<Handle_Geom_Curve.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Handle_Geom2d_Line.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<gp_Trsf.hxx>
#include<ShapeCustom.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_BRepTools_Modification.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<BRepTools_Modifier.hxx>
%}
