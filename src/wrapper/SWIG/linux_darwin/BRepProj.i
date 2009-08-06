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
%module BRepProj

%include BRepProj_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepProj_dependencies.i


%include BRepProj_headers.i




%nodefaultctor BRepProj_Projection;
class BRepProj_Projection {
	public:
		%feature("autodoc", "1");
		BRepProj_Projection(const TopoDS_Shape &Lsh, const TopoDS_Shape &Ssh, const gp_Dir &D, const Standard_Boolean FaceBounds=1);
		%feature("autodoc", "1");
		BRepProj_Projection(const TopoDS_Shape &Lsh, const TopoDS_Shape &Ssh, const gp_Pnt &P, const Standard_Boolean FaceBounds=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopoDS_Shape Current() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;

};
%extend BRepProj_Projection {
	~BRepProj_Projection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepProj_Projection\n");}
	}
};
