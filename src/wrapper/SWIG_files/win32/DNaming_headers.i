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

#include<DNaming.hxx>
#include<DNaming_DataMapIteratorOfDataMapOfShapeOfName.hxx>
#include<DNaming_DataMapNodeOfDataMapOfShapeOfName.hxx>
#include<DNaming_DataMapOfShapeOfName.hxx>
#include<Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<DNaming.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_TDF_Data.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TCollection_AsciiString.hxx>
#include<TDF_Label.hxx>
#include<Draw_Interpretor.hxx>
%}
