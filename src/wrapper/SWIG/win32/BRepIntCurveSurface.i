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
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module BRepIntCurveSurface
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepIntCurveSurface_renames.i


%include BRepIntCurveSurface_required_python_modules.i


%include BRepIntCurveSurface_dependencies.i


%include BRepIntCurveSurface_headers.i




%nodefaultctor BRepIntCurveSurface_Inter;
class BRepIntCurveSurface_Inter {
	public:
		%feature("autodoc", "1");
		BRepIntCurveSurface_Inter();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape Sh, const GeomAdaptor_Curve &Cu, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape Sh, const gp_Lin L, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		IntCurveSurface_IntersectionPoint Point() const;
		%feature("autodoc", "1");
		const gp_Pnt  Pnt() const;
		%feature("autodoc", "1");
		Standard_Real U() const;
		%feature("autodoc", "1");
		Standard_Real V() const;
		%feature("autodoc", "1");
		Standard_Real W() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		IntCurveSurface_TransitionOnCurve Transition() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;

};
%feature("shadow") BRepIntCurveSurface_Inter::~BRepIntCurveSurface_Inter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepIntCurveSurface_Inter {
	void _kill_pointed() {
		delete $self;
	}
};
