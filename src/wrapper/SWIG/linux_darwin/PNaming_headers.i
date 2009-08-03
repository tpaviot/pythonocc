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

#include<Handle_PNaming_HArray1OfNamedShape.hxx>
#include<Handle_PNaming_Name.hxx>
#include<Handle_PNaming_NamedShape.hxx>
#include<Handle_PNaming_Naming.hxx>
#include<Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape.hxx>
#include<PNaming_FieldOfHArray1OfNamedShape.hxx>
#include<PNaming_HArray1OfNamedShape.hxx>
#include<PNaming_Name.hxx>
#include<PNaming_NamedShape.hxx>
#include<PNaming_Naming.hxx>
#include<PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape.hxx>
#include<PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PTopoDS_HArray1OfShape1.hxx>
%}
