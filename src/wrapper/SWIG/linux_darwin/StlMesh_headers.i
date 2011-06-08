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

#include<Handle_StlMesh_Mesh.hxx>
#include<Handle_StlMesh_MeshDomain.hxx>
#include<Handle_StlMesh_MeshTriangle.hxx>
#include<Handle_StlMesh_SequenceNodeOfSequenceOfMesh.hxx>
#include<Handle_StlMesh_SequenceNodeOfSequenceOfMeshDomain.hxx>
#include<Handle_StlMesh_SequenceNodeOfSequenceOfMeshTriangle.hxx>
#include<StlMesh.hxx>
#include<StlMesh_Mesh.hxx>
#include<StlMesh_MeshDomain.hxx>
#include<StlMesh_MeshExplorer.hxx>
#include<StlMesh_MeshTriangle.hxx>
#include<StlMesh_SequenceNodeOfSequenceOfMesh.hxx>
#include<StlMesh_SequenceNodeOfSequenceOfMeshDomain.hxx>
#include<StlMesh_SequenceNodeOfSequenceOfMeshTriangle.hxx>
#include<StlMesh_SequenceOfMesh.hxx>
#include<StlMesh_SequenceOfMeshDomain.hxx>
#include<StlMesh_SequenceOfMeshTriangle.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_XYZ.hxx>
#include<StlMesh.hxx>
%}
