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

%module GeomProjLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomProjLib_renames.i


%include GeomProjLib_required_python_modules.i


%include GeomProjLib_dependencies.i


%include GeomProjLib_headers.i




%nodefaultctor GeomProjLib;
class GeomProjLib {
	public:
		%feature("autodoc", "1");
		GeomProjLib();
		%feature("autodoc","Curve2d(const C, Standard_Real First, Standard_Real Last, const S, Standard_Real UFirst, Standard_Real ULast, Standard_Real VFirst, Standard_Real VLast) -> Standard_Real");

		static		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last, const Handle_Geom_Surface &S, const Standard_Real UFirst, const Standard_Real ULast, const Standard_Real VFirst, const Standard_Real VLast, Standard_Real &OutValue);
		%feature("autodoc","Curve2d(const C, Standard_Real First, Standard_Real Last, const S) -> Standard_Real");

		static		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last, const Handle_Geom_Surface &S, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Standard_Real First, const Standard_Real Last, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		static		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		static		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S, const Standard_Real UDeb, const Standard_Real UFin, const Standard_Real VDeb, const Standard_Real VFin);
		%feature("autodoc","Curve2d(const C, const S, Standard_Real UDeb, Standard_Real UFin, Standard_Real VDeb, Standard_Real VFin) -> Standard_Real");

		static		Handle_Geom2d_Curve Curve2d(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S, const Standard_Real UDeb, const Standard_Real UFin, const Standard_Real VDeb, const Standard_Real VFin, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Handle_Geom_Curve Project(const Handle_Geom_Curve &C, const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		static		Handle_Geom_Curve ProjectOnPlane(const Handle_Geom_Curve &Curve, const Handle_Geom_Plane &Plane, const gp_Dir &Dir, const Standard_Boolean KeepParametrization);

};
%feature("shadow") GeomProjLib::~GeomProjLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomProjLib {
	void _kill_pointed() {
		delete $self;
	}
};
