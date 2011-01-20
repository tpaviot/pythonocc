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

#include<Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc.hxx>
#include<MeshAlgo.hxx>
#include<MeshAlgo_CellFilter.hxx>
#include<MeshAlgo_Circ.hxx>
#include<MeshAlgo_CircleInspector.hxx>
#include<MeshAlgo_CircleTool.hxx>
#include<MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc.hxx>
#include<MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc.hxx>
#include<MeshAlgo_DataMapOfIntegerCirc.hxx>
#include<MeshAlgo_Edge.hxx>
#include<MeshAlgo_Triangle.hxx>
#include<MeshAlgo_Vertex.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<MeshAlgo.hxx>
#include<gp_XY.hxx>
#include<gp_Circ2d.hxx>
%}
