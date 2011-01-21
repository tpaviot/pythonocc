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

%module GProp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GProp_renames.i


%include GProp_required_python_modules.i


%include GProp_dependencies.i


%include GProp_headers.i


enum GProp_ValueType {
	GProp_Mass,
	GProp_CenterMassX,
	GProp_CenterMassY,
	GProp_CenterMassZ,
	GProp_InertiaXX,
	GProp_InertiaYY,
	GProp_InertiaZZ,
	GProp_InertiaXY,
	GProp_InertiaXZ,
	GProp_InertiaYZ,
	GProp_Unknown,
	};

enum GProp_EquaType {
	GProp_Plane,
	GProp_Line,
	GProp_Point,
	GProp_Space,
	GProp_None,
	};



%nodefaultctor Handle_GProp_UndefinedAxis;
class Handle_GProp_UndefinedAxis : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis();
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis(const Handle_GProp_UndefinedAxis &aHandle);
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis(const GProp_UndefinedAxis *anItem);
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis & operator=(const Handle_GProp_UndefinedAxis &aHandle);
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis & operator=(const GProp_UndefinedAxis *anItem);
		%feature("autodoc", "1");
		static		Handle_GProp_UndefinedAxis const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GProp_UndefinedAxis {
	GProp_UndefinedAxis* GetObject() {
	return (GProp_UndefinedAxis*)$self->Access();
	}
};
%feature("shadow") Handle_GProp_UndefinedAxis::~Handle_GProp_UndefinedAxis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GProp_UndefinedAxis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_GProps;
class GProp_GProps {
	public:
		%feature("autodoc", "1");
		GProp_GProps();
		%feature("autodoc", "1");
		GProp_GProps(const gp_Pnt SystemLocation);
		%feature("autodoc", "1");
		void Add(const GProp_GProps &Item, const Standard_Real Density=1.0e+0);
		%feature("autodoc", "1");
		Standard_Real Mass() const;
		%feature("autodoc", "1");
		gp_Pnt CentreOfMass() const;
		%feature("autodoc", "1");
		gp_Mat MatrixOfInertia() const;
		%feature("autodoc","StaticMoments() -> [Standard_Real, Standard_Real, Standard_Real]");

		void StaticMoments(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real MomentOfInertia(const gp_Ax1 A) const;
		%feature("autodoc", "1");
		GProp_PrincipalProps PrincipalProperties() const;
		%feature("autodoc", "1");
		Standard_Real RadiusOfGyration(const gp_Ax1 A) const;

};
%feature("shadow") GProp_GProps::~GProp_GProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_GProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_PGProps;
class GProp_PGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		GProp_PGProps();
		%feature("autodoc", "1");
		void AddPoint(const gp_Pnt P);
		%feature("autodoc", "1");
		void AddPoint(const gp_Pnt P, const Standard_Real Density);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array1OfPnt &Pnts);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array2OfPnt &Pnts);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array1OfPnt &Pnts, const TColStd_Array1OfReal &Density);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array2OfPnt &Pnts, const TColStd_Array2OfReal &Density);
		%feature("autodoc", "1");
		static		gp_Pnt Barycentre(const TColgp_Array1OfPnt &Pnts);
		%feature("autodoc", "1");
		static		gp_Pnt Barycentre(const TColgp_Array2OfPnt &Pnts);
		%feature("autodoc","Barycentre(const Pnts, const Density) -> Standard_Real");

		static		void Barycentre(const TColgp_Array1OfPnt &Pnts, const TColStd_Array1OfReal &Density, Standard_Real &OutValue, gp_Pnt & G);
		%feature("autodoc","Barycentre(const Pnts, const Density) -> Standard_Real");

		static		void Barycentre(const TColgp_Array2OfPnt &Pnts, const TColStd_Array2OfReal &Density, Standard_Real &OutValue, gp_Pnt & G);

};
%feature("shadow") GProp_PGProps::~GProp_PGProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_PGProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_PrincipalProps;
class GProp_PrincipalProps {
	public:
		%feature("autodoc", "1");
		GProp_PrincipalProps();
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryAxis() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryAxis(const Standard_Real aTol) const;
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryPoint(const Standard_Real aTol) const;
		%feature("autodoc","Moments() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Moments(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Vec  FirstAxisOfInertia() const;
		%feature("autodoc", "1");
		const gp_Vec  SecondAxisOfInertia() const;
		%feature("autodoc", "1");
		const gp_Vec  ThirdAxisOfInertia() const;
		%feature("autodoc","RadiusOfGyration() -> [Standard_Real, Standard_Real, Standard_Real]");

		void RadiusOfGyration(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") GProp_PrincipalProps::~GProp_PrincipalProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_PrincipalProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_UndefinedAxis;
class GProp_UndefinedAxis : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		GProp_UndefinedAxis();
		%feature("autodoc", "1");
		GProp_UndefinedAxis(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_GProp_UndefinedAxis NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GProp_UndefinedAxis {
	Handle_GProp_UndefinedAxis GetHandle() {
	return *(Handle_GProp_UndefinedAxis*) &$self;
	}
};
%extend GProp_UndefinedAxis {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GProp_UndefinedAxis::~GProp_UndefinedAxis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_UndefinedAxis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_SelGProps;
class GProp_SelGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		GProp_SelGProps();
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Cylinder S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt SLocation);
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Cone S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt SLocation);
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Sphere S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt SLocation);
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Torus S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt SLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt SLocation);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Cone S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);
		%feature("autodoc", "1");
		void Perform(const gp_Torus S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);

};
%feature("shadow") GProp_SelGProps::~GProp_SelGProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_SelGProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_CelGProps;
class GProp_CelGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		GProp_CelGProps();
		%feature("autodoc", "1");
		GProp_CelGProps(const gp_Circ C, const gp_Pnt CLocation);
		%feature("autodoc", "1");
		GProp_CelGProps(const gp_Circ C, const Standard_Real U1, const Standard_Real U2, const gp_Pnt CLocation);
		%feature("autodoc", "1");
		GProp_CelGProps(const gp_Lin C, const Standard_Real U1, const Standard_Real U2, const gp_Pnt CLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt CLocation);
		%feature("autodoc", "1");
		void Perform(const gp_Circ C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Perform(const gp_Lin C, const Standard_Real U1, const Standard_Real U2);

};
%feature("shadow") GProp_CelGProps::~GProp_CelGProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_CelGProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_VelGProps;
class GProp_VelGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		GProp_VelGProps();
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Cylinder S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt VLocation);
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Cone S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt VLocation);
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Sphere S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt VLocation);
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Torus S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt VLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt VLocation);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Cone S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);
		%feature("autodoc", "1");
		void Perform(const gp_Torus S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);

};
%feature("shadow") GProp_VelGProps::~GProp_VelGProps %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_VelGProps {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp;
class GProp {
	public:
		%feature("autodoc", "1");
		GProp();
		%feature("autodoc", "1");
		static		void HOperator(const gp_Pnt G, const gp_Pnt Q, const Standard_Real Mass, gp_Mat & Operator);

};
%feature("shadow") GProp::~GProp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GProp_PEquation;
class GProp_PEquation {
	public:
		%feature("autodoc", "1");
		GProp_PEquation(const TColgp_Array1OfPnt &Pnts, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSpace() const;
		%feature("autodoc", "1");
		gp_Pln Plane() const;
		%feature("autodoc", "1");
		gp_Lin Line() const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;
		%feature("autodoc", "1");
		void Box(gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;

};
%feature("shadow") GProp_PEquation::~GProp_PEquation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GProp_PEquation {
	void _kill_pointed() {
		delete $self;
	}
};
