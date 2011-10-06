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

#include<Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF.hxx>
#include<Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF.hxx>
#include<Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface.hxx>
#include<Handle_TopOpeBRepTool_HBoxTool.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<Handle_TopOpeBRepTool_ListNodeOfListOfC2DF.hxx>
#include<TopOpeBRepTool.hxx>
#include<TopOpeBRepTool_2d.hxx>
#include<TopOpeBRepTool_AncestorsTool.hxx>
#include<TopOpeBRepTool_BoxSort.hxx>
#include<TopOpeBRepTool_C2DF.hxx>
#include<TopOpeBRepTool_CLASSI.hxx>
#include<TopOpeBRepTool_CORRISO.hxx>
#include<TopOpeBRepTool_CurveTool.hxx>
#include<TopOpeBRepTool_DRAW.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeface.hxx>
#include<TopOpeBRepTool_EXPORT.hxx>
#include<TopOpeBRepTool_FuseEdges.hxx>
#include<TopOpeBRepTool_GEOMETRY.hxx>
#include<TopOpeBRepTool_GeomTool.hxx>
#include<TopOpeBRepTool_HBoxTool.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_KRO.hxx>
#include<TopOpeBRepTool_ListIteratorOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListNodeOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListOfC2DF.hxx>
#include<TopOpeBRepTool_OutCurveType.hxx>
#include<TopOpeBRepTool_PROJECT.hxx>
#include<TopOpeBRepTool_PShapeClassifier.hxx>
#include<TopOpeBRepTool_PSoClassif.hxx>
#include<TopOpeBRepTool_PURGE.hxx>
#include<TopOpeBRepTool_Plos.hxx>
#include<TopOpeBRepTool_PurgeInternalEdges.hxx>
#include<TopOpeBRepTool_REGUS.hxx>
#include<TopOpeBRepTool_REGUW.hxx>
#include<TopOpeBRepTool_SC.hxx>
#include<TopOpeBRepTool_STATE.hxx>
#include<TopOpeBRepTool_ShapeClassifier.hxx>
#include<TopOpeBRepTool_ShapeExplorer.hxx>
#include<TopOpeBRepTool_ShapeTool.hxx>
#include<TopOpeBRepTool_SolidClassifier.hxx>
#include<TopOpeBRepTool_TOOL.hxx>
#include<TopOpeBRepTool_TOPOLOGY.hxx>
#include<TopOpeBRepTool_box.hxx>
#include<TopOpeBRepTool_connexity.hxx>
#include<TopOpeBRepTool_define.hxx>
#include<TopOpeBRepTool_defineG.hxx>
#include<TopOpeBRepTool_face.hxx>
#include<TopOpeBRepTool_makeTransition.hxx>
#include<TopOpeBRepTool_mkTondgE.hxx>
#include<TopOpeBRepTool_tol.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Bnd_Box2d.hxx>
#include<Bnd_Box.hxx>
#include<Handle_Bnd_HArray1OfBox.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Face.hxx>
#include<TopTools_ListOfShape.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Pnt.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_Shell.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir2d.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Dir.hxx>
#include<Handle_Geom_Surface.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<BRepClass3d_SolidClassifier.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopOpeBRepTool.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
%}
