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

#include<BRepToIGESBRep_Entity.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<TopoDS_Vertex.hxx>
#include<TopoDS_Edge.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_IGESSolid_Loop.hxx>
#include<TopoDS_Wire.hxx>
#include<Handle_IGESSolid_Face.hxx>
#include<Handle_IGESSolid_Shell.hxx>
#include<TopoDS_Shell.hxx>
#include<Handle_IGESSolid_ManifoldSolid.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Compound.hxx>
%}
