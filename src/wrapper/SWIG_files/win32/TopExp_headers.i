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

#include<Handle_TopExp_StackNodeOfStackOfIterator.hxx>
#include<TopExp.hxx>
#include<TopExp_Explorer.hxx>
#include<TopExp_Stack.hxx>
#include<TopExp_StackIteratorOfStackOfIterator.hxx>
#include<TopExp_StackNodeOfStackOfIterator.hxx>
#include<TopExp_StackOfIterator.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDS_Shape.hxx>
#include<TopExp.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Wire.hxx>
%}
