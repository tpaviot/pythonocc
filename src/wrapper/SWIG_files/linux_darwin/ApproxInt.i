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
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module ApproxInt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ApproxInt_renames.i


%include ApproxInt_required_python_modules.i


%include ApproxInt_dependencies.i


%include ApproxInt_headers.i




%nodefaultctor ApproxInt_SvSurfaces;
class ApproxInt_SvSurfaces {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc","Compute() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, gp_Vec]");

		virtual		Standard_Boolean Compute(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & Pt, gp_Vec &OutValue, gp_Vec2d & Tguv1, gp_Vec2d & Tguv2);
		%feature("autodoc", "1");
		virtual		void Pnt(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Pnt & P);
		%feature("autodoc","Tangency(Standard_Real u1, Standard_Real v1, Standard_Real u2, Standard_Real v2) -> gp_Vec");

		virtual		Standard_Boolean Tangency(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean TangencyOnSurf1(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec2d & Tg);
		%feature("autodoc", "1");
		virtual		Standard_Boolean TangencyOnSurf2(const Standard_Real u1, const Standard_Real v1, const Standard_Real u2, const Standard_Real v2, gp_Vec2d & Tg);

};
%feature("shadow") ApproxInt_SvSurfaces::~ApproxInt_SvSurfaces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ApproxInt_SvSurfaces {
	void _kill_pointed() {
		delete $self;
	}
};
