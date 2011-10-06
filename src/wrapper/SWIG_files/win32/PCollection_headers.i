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

#include<Handle_PCollection_HAsciiString.hxx>
#include<Handle_PCollection_HExtendedString.hxx>
#include<Handle_PCollection_IsContained.hxx>
#include<Handle_PCollection_IsNotRoot.hxx>
#include<Handle_PCollection_IsNullTree.hxx>
#include<PCollection_AccessMode.hxx>
#include<PCollection_CompareOfInteger.hxx>
#include<PCollection_CompareOfReal.hxx>
#include<PCollection_HAsciiString.hxx>
#include<PCollection_HExtendedString.hxx>
#include<PCollection_IsContained.hxx>
#include<PCollection_IsNotRoot.hxx>
#include<PCollection_IsNullTree.hxx>
#include<PCollection_PrivCompareOfInteger.hxx>
#include<PCollection_PrivCompareOfReal.hxx>
#include<PCollection_Side.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Handle_Standard_Transient.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<TCollection_AsciiString.hxx>
%}
