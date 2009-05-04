/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

#include<BRepAlgo.hxx>
#include<BRepAlgo_AsDes.hxx>
#include<BRepAlgo_BooleanOperation.hxx>
#include<BRepAlgo_BooleanOperations.hxx>
#include<BRepAlgo_CheckStatus.hxx>
#include<BRepAlgo_Common.hxx>
#include<BRepAlgo_Cut.hxx>
#include<BRepAlgo_DSAccess.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_DataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_EdgeConnector.hxx>
#include<BRepAlgo_FaceRestrictor.hxx>
#include<BRepAlgo_Fuse.hxx>
#include<BRepAlgo_Image.hxx>
#include<BRepAlgo_Loop.hxx>
#include<BRepAlgo_NormalProjection.hxx>
#include<BRepAlgo_Section.hxx>
#include<BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_SequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_Tool.hxx>
#include<BRepAlgo_TopOpe.hxx>
#include<Handle_BRepAlgo_AsDes.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<Handle_BRepAlgo_EdgeConnector.hxx>
#include<Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger.hxx>

// Additional headers necessary for compilation.

#include<BRepAlgoAPI_BooleanOperation.hxx>
#include<BRepAlgoAPI_Common.hxx>
#include<BRepAlgoAPI_Cut.hxx>
#include<BRepAlgoAPI_Fuse.hxx>
#include<BRepAlgoAPI_Section.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_TopOpeBRepDS_HDataStructure.hxx>
#include<Handle_TopOpeBRepDS_Interference.hxx>
#include<TopoDS_Wire.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<Handle_TopOpeBRepBuild_HBuilder.hxx>
#include<Adaptor3d_Curve.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom2d_Curve.hxx>
%}
