/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<BRepOffset.hxx>
#include<BRepOffset_Analyse.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<BRepOffset_DataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapOfShapeReal.hxx>
#include<BRepOffset_Error.hxx>
#include<BRepOffset_Inter2d.hxx>
#include<BRepOffset_Inter3d.hxx>
#include<BRepOffset_Interval.hxx>
#include<BRepOffset_ListIteratorOfListOfInterval.hxx>
#include<BRepOffset_ListNodeOfListOfInterval.hxx>
#include<BRepOffset_ListOfInterval.hxx>
#include<BRepOffset_MakeLoops.hxx>
#include<BRepOffset_MakeOffset.hxx>
#include<BRepOffset_Mode.hxx>
#include<BRepOffset_Offset.hxx>
#include<BRepOffset_Status.hxx>
#include<BRepOffset_Tool.hxx>
#include<BRepOffset_Type.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_BRepOffset_ListNodeOfListOfInterval.hxx>

// Additional headers necessary for compilation.

#include<BRepOffsetAPI_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_DataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_DraftAngle.hxx>
#include<BRepOffsetAPI_FindContigousEdges.hxx>
#include<BRepOffsetAPI_MakeDraft.hxx>
#include<BRepOffsetAPI_MakeEvolved.hxx>
#include<BRepOffsetAPI_MakeFilling.hxx>
#include<BRepOffsetAPI_MakeOffset.hxx>
#include<BRepOffsetAPI_MakeOffsetShape.hxx>
#include<BRepOffsetAPI_MakePipe.hxx>
#include<BRepOffsetAPI_MakePipeShell.hxx>
#include<BRepOffsetAPI_MakeThickSolid.hxx>
#include<BRepOffsetAPI_NormalProjection.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_Sewing.hxx>
#include<BRepOffsetAPI_ThruSections.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Compound.hxx>
#include<BRepOffset.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_BRepAlgo_AsDes.hxx>
#include<BRepAlgo_Image.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopoDS_Wire.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<Handle_Geom_Curve.hxx>
%}
