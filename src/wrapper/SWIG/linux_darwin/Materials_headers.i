/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_Materials_Color.hxx>
#include<Handle_Materials_FuzzyInstance.hxx>
#include<Handle_Materials_Material.hxx>
#include<Handle_Materials_MaterialDefinition.hxx>
#include<Handle_Materials_MaterialsDictionary.hxx>
#include<Handle_Materials_MaterialsSequence.hxx>
#include<Handle_Materials_SequenceNodeOfMtsSequence.hxx>
#include<Materials.hxx>
#include<Materials_Color.hxx>
#include<Materials_FuzzyInstance.hxx>
#include<Materials_Material.hxx>
#include<Materials_MaterialDefinition.hxx>
#include<Materials_MaterialsDictionary.hxx>
#include<Materials_MaterialsSequence.hxx>
#include<Materials_MtsSequence.hxx>
#include<Materials_SequenceNodeOfMtsSequence.hxx>

// Additional headers necessary for compilation.

#include<TCollection_AsciiString.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Materials.hxx>
#include<TCollection_AsciiString.hxx>
#include<Handle_Dynamic_FuzzyClass.hxx>
#include<Handle_Dynamic_Parameter.hxx>
#include<Quantity_Color.hxx>
%}
