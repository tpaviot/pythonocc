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

#include<BooleanOperations_AncestorsAndSuccessors.hxx>
#include<BooleanOperations_AncestorsSeqAndSuccessorsSeq.hxx>
#include<BooleanOperations_Explorer.hxx>
#include<BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger.hxx>
#include<BooleanOperations_IndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<BooleanOperations_IndexedDataMapOfShapeInteger.hxx>
#include<BooleanOperations_KindOfInterference.hxx>
#include<BooleanOperations_KindOfIntersection.hxx>
#include<BooleanOperations_OnceExplorer.hxx>
#include<BooleanOperations_PShapeAndInterferences.hxx>
#include<BooleanOperations_PShapesDataStructure.hxx>
#include<BooleanOperations_ShapeAndInterferences.hxx>
#include<BooleanOperations_ShapesDataStructure.hxx>
#include<BooleanOperations_StateOfShape.hxx>
#include<Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeAncestorsSuccessors.hxx>
#include<Handle_BooleanOperations_IndexedDataMapNodeOfIndexedDataMapOfShapeInteger.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
%}
