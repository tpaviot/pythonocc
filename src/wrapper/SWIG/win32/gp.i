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
%module gp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include gp_dependencies.i


%include gp_headers.i


enum gp_TrsfForm {
	gp_Identity,
	gp_Rotation,
	gp_Translation,
	gp_PntMirror,
	gp_Ax1Mirror,
	gp_Ax2Mirror,
	gp_Scale,
	gp_CompoundTrsf,
	gp_Other,
	};



%nodefaultctor Handle_gp_VectorWithNullMagnitude;
class Handle_gp_VectorWithNullMagnitude : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_gp_VectorWithNullMagnitude();
		%feature("autodoc", "1");
		Handle_gp_VectorWithNullMagnitude(const Handle_gp_VectorWithNullMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_gp_VectorWithNullMagnitude(const gp_VectorWithNullMagnitude *anItem);
		%feature("autodoc", "1");
		Handle_gp_VectorWithNullMagnitude & operator=(const Handle_gp_VectorWithNullMagnitude &aHandle);
		%feature("autodoc", "1");
		Handle_gp_VectorWithNullMagnitude & operator=(const gp_VectorWithNullMagnitude *anItem);
		%feature("autodoc", "1");
		Handle_gp_VectorWithNullMagnitude const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_gp_VectorWithNullMagnitude {
	gp_VectorWithNullMagnitude* GetObject() {
	return (gp_VectorWithNullMagnitude*)$self->Access();
	}
};
%feature("shadow") Handle_gp_VectorWithNullMagnitude::~Handle_gp_VectorWithNullMagnitude %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_gp_VectorWithNullMagnitude {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Cone;
class gp_Cone {
	public:
		%feature("autodoc", "1");
		gp_Cone();
		%feature("autodoc", "1");
		gp_Cone(const gp_Ax3 &A3, const Standard_Real Ang, const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 &A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &Loc);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 &A3);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void SetSemiAngle(const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Pnt Apex() const;
		%feature("autodoc", "1");
		void UReverse();
		%feature("autodoc", "1");
		void VReverse();
		%feature("autodoc", "1");
		Standard_Boolean Direct() const;
		%feature("autodoc", "1");
		const gp_Ax1 & Axis() const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Pnt & Location() const;
		%feature("autodoc", "1");
		const gp_Ax3 & Position() const;
		%feature("autodoc", "1");
		Standard_Real RefRadius() const;
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt &P);
		%feature("autodoc", "1");
		gp_Cone Mirrored(const gp_Pnt &P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 &A1);
		%feature("autodoc", "1");
		gp_Cone Mirrored(const gp_Ax1 &A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 &A2);
		%feature("autodoc", "1");
		gp_Cone Mirrored(const gp_Ax2 &A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 &A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Cone Rotated(const gp_Ax1 &A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt &P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Cone Scaled(const gp_Pnt &P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf &T);
		%feature("autodoc", "1");
		gp_Cone Transformed(const gp_Trsf &T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec &V);
		%feature("autodoc", "1");
		gp_Cone Translated(const gp_Vec &V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		gp_Cone Translated(const gp_Pnt &P1, const gp_Pnt &P2) const;
		%feature("autodoc", "1");
		const gp_Ax3 & _CSFDB_Getgp_Conepos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Coneradius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Coneradius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_ConesemiAngle() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_ConesemiAngle(const Standard_Real p);

};
%feature("shadow") gp_Cone::~gp_Cone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Cone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Hypr2d;
class gp_Hypr2d {
	public:
		%feature("autodoc", "1");
		gp_Hypr2d();
		%feature("autodoc", "1");
		gp_Hypr2d(const gp_Ax2d &MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gp_Hypr2d(const gp_Ax22d &A, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d &P);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax22d &A);
		%feature("autodoc", "1");
		void SetXAxis(const gp_Ax2d &A);
		%feature("autodoc", "1");
		void SetYAxis(const gp_Ax2d &A);
		%feature("autodoc", "1");
		gp_Ax2d Asymptote1() const;
		%feature("autodoc", "1");
		gp_Ax2d Asymptote2() const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Hypr2d ConjugateBranch1() const;
		%feature("autodoc", "1");
		gp_Hypr2d ConjugateBranch2() const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix1() const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix2() const;
		%feature("autodoc", "1");
		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus1() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus2() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & Location() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		gp_Hypr2d OtherBranch() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const gp_Ax22d & Axis() const;
		%feature("autodoc", "1");
		gp_Ax2d XAxis() const;
		%feature("autodoc", "1");
		gp_Ax2d YAxis() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Hypr2d Reversed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDirect() co