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

#include<BRepCheck.hxx>
#include<BRepCheck_Analyzer.hxx>
#include<BRepCheck_DataMapIteratorOfDataMapOfShapeListOfStatus.hxx>
#include<BRepCheck_DataMapIteratorOfDataMapOfShapeResult.hxx>
#include<BRepCheck_DataMapNodeOfDataMapOfShapeListOfStatus.hxx>
#include<BRepCheck_DataMapNodeOfDataMapOfShapeResult.hxx>
#include<BRepCheck_DataMapOfShapeListOfStatus.hxx>
#include<BRepCheck_DataMapOfShapeResult.hxx>
#include<BRepCheck_Edge.hxx>
#include<BRepCheck_Face.hxx>
#include<BRepCheck_ListIteratorOfListOfStatus.hxx>
#include<BRepCheck_ListNodeOfListOfStatus.hxx>
#include<BRepCheck_ListOfStatus.hxx>
#include<BRepCheck_Result.hxx>
#include<BRepCheck_Shell.hxx>
#include<BRepCheck_Status.hxx>
#include<BRepCheck_Vertex.hxx>
#include<BRepCheck_Wire.hxx>
#include<Handle_BRepCheck_DataMapNodeOfDataMapOfShapeListOfStatus.hxx>
#include<Handle_BRepCheck_DataMapNodeOfDataMapOfShapeResult.hxx>
#include<Handle_BRepCheck_Edge.hxx>
#include<Handle_BRepCheck_Face.hxx>
#include<Handle_BRepCheck_ListNodeOfListOfStatus.hxx>
#include<Handle_BRepCheck_Result.hxx>
#include<Handle_BRepCheck_Shell.hxx>
#include<Handle_BRepCheck_Vertex.hxx>
#include<Handle_BRepCheck_Wire.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Shell.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Vertex.hxx>
%}
