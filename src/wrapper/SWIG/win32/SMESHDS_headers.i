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

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<SMESHDS_Command.hxx>
#include<SMESHDS_CommandType.hxx>
#include<SMESHDS_DataMapOfShape.hxx>
#include<SMESHDS_Document.hxx>
#include<SMESHDS_Group.hxx>
#include<SMESHDS_GroupBase.hxx>
#include<SMESHDS_GroupOnGeom.hxx>
#include<SMESHDS_Hypothesis.hxx>
#include<SMESHDS_Mesh.hxx>
#include<SMESHDS_Script.hxx>
#include<SMESHDS_SubMesh.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<SMDS_MeshElement.hxx>
#include<SMDS_MeshNode.hxx>
%}
