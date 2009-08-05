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
%module RWStl

%include RWStl_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStl_dependencies.i


%include RWStl_headers.i




%nodefaultctor RWStl;
class RWStl {
	public:
		%feature("autodoc", "1");
		RWStl();
		%feature("autodoc", "1");
		Standard_Boolean WriteBinary(const Handle_StlMesh_Mesh &aMesh, const OSD_Path &aPath);
		%feature("autodoc", "1");
		Standard_Boolean WriteAscii(const Handle_StlMesh_Mesh &aMesh, const OSD_Path &aPath);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh ReadFile(const OSD_Path &aPath);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh ReadBinary(const OSD_Path &aPath);
		%feature("autodoc", "1");
		Handle_StlMesh_Mesh ReadAscii(const OSD_Path &aPath);

};
%extend RWStl {
	~RWStl() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStl\n");}
	}
};
