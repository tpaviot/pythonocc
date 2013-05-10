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
#include <Handle_XSDRAWSTLVRML_DataMapNodeOfCoordsMap.hxx>
#include <Handle_XSDRAWSTLVRML_DataMapNodeOfElemNodesMap.hxx>
#include <Handle_XSDRAWSTLVRML_DataSource.hxx>
#include <Handle_XSDRAWSTLVRML_DrawableMesh.hxx>
#include <XSDRAWSTLVRML_CoordsMap.hxx>
#include <XSDRAWSTLVRML_DataMapIteratorOfCoordsMap.hxx>
#include <XSDRAWSTLVRML_DataMapIteratorOfElemNodesMap.hxx>
#include <XSDRAWSTLVRML_DataMapNodeOfCoordsMap.hxx>
#include <XSDRAWSTLVRML_DataMapNodeOfElemNodesMap.hxx>
#include <XSDRAWSTLVRML_DataSource.hxx>
#include <XSDRAWSTLVRML_DrawableMesh.hxx>
#include <XSDRAWSTLVRML_ElemNodesMap.hxx>
%};

%import XSDRAWSTLVRML.i
