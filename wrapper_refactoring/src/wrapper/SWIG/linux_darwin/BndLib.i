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
%module BndLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BndLib_dependencies.i


%include BndLib_headers.i




%nodefaultctor BndLib_AddSurface;
class BndLib_AddSurface {
	public:
		%feature("autodoc", "1");
		BndLib_AddSurface();
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Surface &S, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Surface &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);

};
%feature("shadow") BndLib_AddSurface::~BndLib_AddSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib_AddSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BndLib_Add3dCurve;
class BndLib_Add3dCurve {
	public:
		%feature("autodoc", "1");
		BndLib_Add3dCurve();
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, Bnd_Box & B);

};
%feature("shadow") BndLib_Add3dCurve::~BndLib_Add3dCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib_Add3dCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BndLib;
class BndLib {
	public:
		%feature("autodoc", "1");
		BndLib();
		%feature("autodoc", "1");
		void Add(const gp_Lin &L, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Lin2d &L, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips &C, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Elips2d &C, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Parab &P, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Parab2d &P, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Hypr &H, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Hypr2d &H, const Standard_Real P1, const Standard_Real P2, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const gp_Cylinder &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cylinder &S, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cone &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Cone &S, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Sphere &S, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Sphere &S, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Torus &P, const Standard_Real Tol, Bnd_Box & B);
		%feature("autodoc", "1");
		void Add(const gp_Torus &P, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real Tol, Bnd_Box & B);

};
%feature("shadow") BndLib::~BndLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BndLib_Add2dCurve;
class BndLib_Add2dCurve {
	public:
		%feature("autodoc", "1");
		BndLib_Add2dCurve();
		%feature("autodoc", "1");
		void Add(const Adaptor2d_Curve2d &C, const Standard_Real Tol, Bnd_Box2d & B);
		%feature("autodoc", "1");
		void Add(const Adaptor2d_Curve2d &C, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol, Bnd_Box2d & B);

};
%feature("shadow") BndLib_Add2dCurve::~BndLib_Add2dCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BndLib_Add2dCurve {
	void _kill_pointed() {
		delete $self;
	}
};
