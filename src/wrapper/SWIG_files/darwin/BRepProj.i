/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module BRepProj
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepProj_renames.i


%include BRepProj_required_python_modules.i


%include BRepProj_dependencies.i


%include BRepProj_headers.i




%nodefaultctor BRepProj_Projection;
class BRepProj_Projection {
	public:
		%feature("autodoc", "1");
		BRepProj_Projection(const TopoDS_Shape Wire, const TopoDS_Shape Shape, const gp_Dir D);
		%feature("autodoc", "1");
		BRepProj_Projection(const TopoDS_Shape Wire, const TopoDS_Shape Shape, const gp_Pnt P);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopoDS_Wire Current() const;
		%feature("autodoc", "1");
		TopoDS_Compound Shape() const;

};
%feature("shadow") BRepProj_Projection::~BRepProj_Projection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepProj_Projection {
	void _kill_pointed() {
		delete $self;
	}
};
