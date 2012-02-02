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

%module ElSLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ElSLib_renames.i


%include ElSLib_required_python_modules.i


%include ElSLib_dependencies.i


%include ElSLib_headers.i




%nodefaultctor ElSLib;
class ElSLib {
	public:
		%feature("autodoc", "1");
		ElSLib();
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Standard_Real U, const Standard_Real V, const gp_Pln Pl);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Standard_Real U, const Standard_Real V, const gp_Cone C);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Standard_Real U, const Standard_Real V, const gp_Cylinder C);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Standard_Real U, const Standard_Real V, const gp_Sphere S);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Standard_Real U, const Standard_Real V, const gp_Torus T);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Standard_Real U, const Standard_Real V, const gp_Pln Pl, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Standard_Real U, const Standard_Real V, const gp_Cone C, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Standard_Real U, const Standard_Real V, const gp_Cylinder C, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Standard_Real U, const Standard_Real V, const gp_Sphere S, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Standard_Real U, const Standard_Real V, const gp_Torus T, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		void D0(const Standard_Real U, const Standard_Real V, const gp_Pln Pl, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D0(const Standard_Real U, const Standard_Real V, const gp_Cone C, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D0(const Standard_Real U, const Standard_Real V, const gp_Cylinder C, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D0(const Standard_Real U, const Standard_Real V, const gp_Sphere S, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D0(const Standard_Real U, const Standard_Real V, const gp_Torus T, gp_Pnt & P);
		%feature("autodoc","D1(Standard_Real U, Standard_Real V, const Pl) -> [gp_Vec, gp_Vec]");

		static		void D1(const Standard_Real U, const Standard_Real V, const gp_Pln Pl, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D1(Standard_Real U, Standard_Real V, const C) -> [gp_Vec, gp_Vec]");

		static		void D1(const Standard_Real U, const Standard_Real V, const gp_Cone C, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D1(Standard_Real U, Standard_Real V, const C) -> [gp_Vec, gp_Vec]");

		static		void D1(const Standard_Real U, const Standard_Real V, const gp_Cylinder C, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D1(Standard_Real U, Standard_Real V, const S) -> [gp_Vec, gp_Vec]");

		static		void D1(const Standard_Real U, const Standard_Real V, const gp_Sphere S, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D1(Standard_Real U, Standard_Real V, const T) -> [gp_Vec, gp_Vec]");

		static		void D1(const Standard_Real U, const Standard_Real V, const gp_Torus T, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D2(Standard_Real U, Standard_Real V, const C) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D2(const Standard_Real U, const Standard_Real V, const gp_Cone C, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D2(Standard_Real U, Standard_Real V, const C) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D2(const Standard_Real U, const Standard_Real V, const gp_Cylinder C, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D2(Standard_Real U, Standard_Real V, const S) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D2(const Standard_Real U, const Standard_Real V, const gp_Sphere S, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D2(Standard_Real U, Standard_Real V, const T) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D2(const Standard_Real U, const Standard_Real V, const gp_Torus T, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D3(Standard_Real U, Standard_Real V, const C) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D3(const Standard_Real U, const Standard_Real V, const gp_Cone C, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D3(Standard_Real U, Standard_Real V, const C) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D3(const Standard_Real U, const Standard_Real V, const gp_Cylinder C, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D3(Standard_Real U, Standard_Real V, const S) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D3(const Standard_Real U, const Standard_Real V, const gp_Sphere S, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","D3(Standard_Real U, Standard_Real V, const T) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void D3(const Standard_Real U, const Standard_Real V, const gp_Torus T, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc", "1");
		static		gp_Pnt PlaneValue(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos);
		%feature("autodoc", "1");
		static		gp_Pnt CylinderValue(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius);
		%feature("autodoc", "1");
		static		gp_Pnt ConeValue(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle);
		%feature("autodoc", "1");
		static		gp_Pnt SphereValue(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius);
		%feature("autodoc", "1");
		static		gp_Pnt TorusValue(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		static		gp_Vec PlaneDN(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec CylinderDN(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec ConeDN(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec SphereDN(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		gp_Vec TorusDN(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		void PlaneD0(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void ConeD0(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void CylinderD0(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void SphereD0(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void TorusD0(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, gp_Pnt & P);
		%feature("autodoc","PlaneD1(Standard_Real U, Standard_Real V, const Pos) -> [gp_Vec, gp_Vec]");

		static		void PlaneD1(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","ConeD1(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius, Standard_Real SAngle) -> [gp_Vec, gp_Vec]");

		static		void ConeD1(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","CylinderD1(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius) -> [gp_Vec, gp_Vec]");

		static		void CylinderD1(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","SphereD1(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius) -> [gp_Vec, gp_Vec]");

		static		void SphereD1(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","TorusD1(Standard_Real U, Standard_Real V, const Pos, Standard_Real MajorRadius, Standard_Real MinorRadius) -> [gp_Vec, gp_Vec]");

		static		void TorusD1(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","ConeD2(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius, Standard_Real SAngle) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void ConeD2(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","CylinderD2(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void CylinderD2(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","SphereD2(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void SphereD2(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","TorusD2(Standard_Real U, Standard_Real V, const Pos, Standard_Real MajorRadius, Standard_Real MinorRadius) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void TorusD2(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","ConeD3(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius, Standard_Real SAngle) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void ConeD3(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","CylinderD3(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void CylinderD3(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","SphereD3(Standard_Real U, Standard_Real V, const Pos, Standard_Real Radius) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void SphereD3(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real Radius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","TorusD3(Standard_Real U, Standard_Real V, const Pos, Standard_Real MajorRadius, Standard_Real MinorRadius) -> [gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec, gp_Vec]");

		static		void TorusD3(const Standard_Real U, const Standard_Real V, const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, gp_Pnt & P, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue, gp_Vec &OutValue);
		%feature("autodoc","Parameters(const Pl, const P) -> [Standard_Real, Standard_Real]");

		static		void Parameters(const gp_Pln Pl, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Parameters(const C, const P) -> [Standard_Real, Standard_Real]");

		static		void Parameters(const gp_Cylinder C, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Parameters(const C, const P) -> [Standard_Real, Standard_Real]");

		static		void Parameters(const gp_Cone C, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Parameters(const S, const P) -> [Standard_Real, Standard_Real]");

		static		void Parameters(const gp_Sphere S, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Parameters(const T, const P) -> [Standard_Real, Standard_Real]");

		static		void Parameters(const gp_Torus T, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","PlaneParameters(const Pos, const P) -> [Standard_Real, Standard_Real]");

		static		void PlaneParameters(const gp_Ax3 Pos, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","CylinderParameters(const Pos, Standard_Real Radius, const P) -> [Standard_Real, Standard_Real]");

		static		void CylinderParameters(const gp_Ax3 Pos, const Standard_Real Radius, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","ConeParameters(const Pos, Standard_Real Radius, Standard_Real SAngle, const P) -> [Standard_Real, Standard_Real]");

		static		void ConeParameters(const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","SphereParameters(const Pos, Standard_Real Radius, const P) -> [Standard_Real, Standard_Real]");

		static		void SphereParameters(const gp_Ax3 Pos, const Standard_Real Radius, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","TorusParameters(const Pos, Standard_Real MajorRadius, Standard_Real MinorRadius, const P) -> [Standard_Real, Standard_Real]");

		static		void TorusParameters(const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const gp_Pnt P, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		gp_Lin PlaneUIso(const gp_Ax3 Pos, const Standard_Real U);
		%feature("autodoc", "1");
		static		gp_Lin CylinderUIso(const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real U);
		%feature("autodoc", "1");
		static		gp_Lin ConeUIso(const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, const Standard_Real U);
		%feature("autodoc", "1");
		static		gp_Circ SphereUIso(const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real U);
		%feature("autodoc", "1");
		static		gp_Circ TorusUIso(const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Real U);
		%feature("autodoc", "1");
		static		gp_Lin PlaneVIso(const gp_Ax3 Pos, const Standard_Real V);
		%feature("autodoc", "1");
		static		gp_Circ CylinderVIso(const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real V);
		%feature("autodoc", "1");
		static		gp_Circ ConeVIso(const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real SAngle, const Standard_Real V);
		%feature("autodoc", "1");
		static		gp_Circ SphereVIso(const gp_Ax3 Pos, const Standard_Real Radius, const Standard_Real V);
		%feature("autodoc", "1");
		static		gp_Circ TorusVIso(const gp_Ax3 Pos, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Real V);

};
%feature("shadow") ElSLib::~ElSLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend ElSLib {
	void _kill_pointed() {
		delete $self;
	}
};
