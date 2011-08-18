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

%module gp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include gp_renames.i


%include gp_required_python_modules.i


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

enum gp_EulerSequence {
	gp_EulerAngles,
	gp_YawPitchRoll,
	gp_Extrinsic_XYZ,
	gp_Extrinsic_XZY,
	gp_Extrinsic_YZX,
	gp_Extrinsic_YXZ,
	gp_Extrinsic_ZXY,
	gp_Extrinsic_ZYX,
	gp_Intrinsic_XYZ,
	gp_Intrinsic_XZY,
	gp_Intrinsic_YZX,
	gp_Intrinsic_YXZ,
	gp_Intrinsic_ZXY,
	gp_Intrinsic_ZYX,
	gp_Extrinsic_XYX,
	gp_Extrinsic_XZX,
	gp_Extrinsic_YZY,
	gp_Extrinsic_YXY,
	gp_Extrinsic_ZYZ,
	gp_Extrinsic_ZXZ,
	gp_Intrinsic_XYX,
	gp_Intrinsic_XZX,
	gp_Intrinsic_YZY,
	gp_Intrinsic_YXY,
	gp_Intrinsic_ZXZ,
	gp_Intrinsic_ZYZ,
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
		static		Handle_gp_VectorWithNullMagnitude DownCast(const Handle_Standard_Transient &AnObject);

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
		gp_Cone(const gp_Cone arg0);
		%feature("autodoc", "1");
		gp_Cone();
		%feature("autodoc", "1");
		gp_Cone(const gp_Ax3 A3, const Standard_Real Ang, const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt Loc);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 A3);
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
		const gp_Ax1  Axis() const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		Standard_Real RefRadius() const;
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Cone Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Cone Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Cone Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Cone Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Cone Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Cone Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Cone Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Cone Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax3  _CSFDB_Getgp_Conepos() const;
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
		gp_Hypr2d(const gp_Hypr2d arg0);
		%feature("autodoc", "1");
		gp_Hypr2d();
		%feature("autodoc", "1");
		gp_Hypr2d(const gp_Ax2d MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gp_Hypr2d(const gp_Ax22d A, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax22d A);
		%feature("autodoc", "1");
		void SetXAxis(const gp_Ax2d A);
		%feature("autodoc", "1");
		void SetYAxis(const gp_Ax2d A);
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
		const gp_Pnt2d  Location() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		gp_Hypr2d OtherBranch() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const gp_Ax22d  Axis() const;
		%feature("autodoc", "1");
		gp_Ax2d XAxis() const;
		%feature("autodoc", "1");
		gp_Ax2d YAxis() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Hypr2d Reversed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDirect() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Hypr2d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Hypr2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Hypr2d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Hypr2d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Hypr2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Hypr2d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Hypr2d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_Ax22d  _CSFDB_Getgp_Hypr2dpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Hypr2dmajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Hypr2dmajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Hypr2dminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Hypr2dminorRadius(const Standard_Real p);

};
%feature("shadow") gp_Hypr2d::~gp_Hypr2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Hypr2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Dir2d;
class gp_Dir2d {
	public:
		%feature("autodoc", "1");
		gp_Dir2d(const gp_Dir2d arg0);
		%feature("autodoc", "1");
		gp_Dir2d();
		%feature("autodoc", "1");
		gp_Dir2d(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Dir2d(const gp_XY XY);
		%feature("autodoc", "1");
		gp_Dir2d(const Standard_Real Xv, const Standard_Real Yv);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer Index, const Standard_Real Xi);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xv, const Standard_Real Yv);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetXY(const gp_XY XY);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer Index) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		const gp_XY  XY() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Dir2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNormal(const gp_Dir2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite(const gp_Dir2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel(const gp_Dir2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Dir2d Other) const;
		%feature("autodoc", "1");
		Standard_Real Crossed(const gp_Dir2d Right) const;
		%feature("autodoc", "1");
		Standard_Real operator^(const gp_Dir2d Right) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const gp_Dir2d Other) const;
		%feature("autodoc", "1");
		Standard_Real operator*(const gp_Dir2d Other) const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Dir2d Reversed() const;
		%feature("autodoc", "1");
		gp_Dir2d operator-() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Dir2d V);
		%feature("autodoc", "1");
		gp_Dir2d Mirrored(const gp_Dir2d V) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Dir2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Dir2d Rotated(const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Dir2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		const gp_XY  _CSFDB_Getgp_Dir2dcoord() const;

};
%feature("shadow") gp_Dir2d::~gp_Dir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Dir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Parab2d;
class gp_Parab2d {
	public:
		%feature("autodoc", "1");
		gp_Parab2d(const gp_Parab2d arg0);
		%feature("autodoc", "1");
		gp_Parab2d();
		%feature("autodoc", "1");
		gp_Parab2d(const gp_Ax2d MirrorAxis, const Standard_Real Focal, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gp_Parab2d(const gp_Ax22d A, const Standard_Real Focal);
		%feature("autodoc", "1");
		gp_Parab2d(const gp_Ax2d D, const gp_Pnt2d F, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gp_Parab2d(const gp_Ax22d D, const gp_Pnt2d F);
		%feature("autodoc", "1");
		void SetFocal(const Standard_Real Focal);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetMirrorAxis(const gp_Ax2d A);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax22d A);
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Ax2d Directrix() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt2d Focus() const;
		%feature("autodoc", "1");
		gp_Pnt2d Location() const;
		%feature("autodoc", "1");
		gp_Ax2d MirrorAxis() const;
		%feature("autodoc", "1");
		gp_Ax22d Axis() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Parab2d Reversed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDirect() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Parab2d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Parab2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Parab2d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Parab2d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Parab2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Parab2d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Parab2d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_Ax22d  _CSFDB_Getgp_Parab2dpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Parab2dfocalLength() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Parab2dfocalLength(const Standard_Real p);

};
%feature("shadow") gp_Parab2d::~gp_Parab2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Parab2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Mat2d;
class gp_Mat2d {
	public:
		%feature("autodoc", "1");
		gp_Mat2d(const gp_Mat2d arg0);
		%feature("autodoc", "1");
		gp_Mat2d();
		%feature("autodoc", "1");
		gp_Mat2d(const gp_XY Col1, const gp_XY Col2);
		%feature("autodoc", "1");
		void SetCol(const Standard_Integer Col, const gp_XY Value);
		%feature("autodoc", "1");
		void SetCols(const gp_XY Col1, const gp_XY Col2);
		%feature("autodoc", "1");
		void SetDiagonal(const Standard_Real X1, const Standard_Real X2);
		%feature("autodoc", "1");
		void SetIdentity();
		%feature("autodoc", "1");
		void SetRotation(const Standard_Real Ang);
		%feature("autodoc", "1");
		void SetRow(const Standard_Integer Row, const gp_XY Value);
		%feature("autodoc", "1");
		void SetRows(const gp_XY Row1, const gp_XY Row2);
		%feature("autodoc", "1");
		void SetScale(const Standard_Real S);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real Value);
		%feature("autodoc", "1");
		gp_XY Column(const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Real Determinant() const;
		%feature("autodoc", "1");
		gp_XY Diagonal() const;
		%feature("autodoc", "1");
		gp_XY Row(const Standard_Integer Row) const;
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Real) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_Boolean IsSingular() const;
		%feature("autodoc", "1");
		void Add(const gp_Mat2d Other);
		%feature("autodoc", "1");
		void operator+=(const gp_Mat2d Other);
		%feature("autodoc", "1");
		gp_Mat2d Added(const gp_Mat2d Other) const;
		%feature("autodoc", "1");
		gp_Mat2d operator+(const gp_Mat2d Other) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_Mat2d Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Mat2d operator/(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		gp_Mat2d Inverted() const;
		%feature("autodoc", "1");
		gp_Mat2d Multiplied(const gp_Mat2d Other) const;
		%feature("autodoc", "1");
		gp_Mat2d operator*(const gp_Mat2d Other) const;
		%feature("autodoc", "1");
		void Multiply(const gp_Mat2d Other);
		%feature("autodoc", "1");
		void PreMultiply(const gp_Mat2d Other);
		%feature("autodoc", "1");
		gp_Mat2d Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Mat2d operator*(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		gp_Mat2d Powered(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Subtract(const gp_Mat2d Other);
		%feature("autodoc", "1");
		void operator-=(const gp_Mat2d Other);
		%feature("autodoc", "1");
		gp_Mat2d Subtracted(const gp_Mat2d Other) const;
		%feature("autodoc", "1");
		gp_Mat2d operator-(const gp_Mat2d Other) const;
		%feature("autodoc", "1");
		void Transpose();
		%feature("autodoc", "1");
		gp_Mat2d Transposed() const;
		%feature("autodoc","1");
		%extend {
				Standard_Real Get_CSFDB_Getgp_Mat2dmatrix(const Standard_Integer i1, const Standard_Integer i2) {
				return (Standard_Real) $self->_CSFDB_Getgp_Mat2dmatrix(i1,i2);
				}
		};
		%feature("autodoc","1");
		%extend {
				void Set_CSFDB_Getgp_Mat2dmatrix(Standard_Real value ,const Standard_Integer i1, const Standard_Integer i2) {
				$self->_CSFDB_Getgp_Mat2dmatrix(i1,i2)=value;
				}
		};

};
%feature("shadow") gp_Mat2d::~gp_Mat2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Mat2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Ax22d;
class gp_Ax22d {
	public:
		%feature("autodoc", "1");
		gp_Ax22d(const gp_Ax22d arg0);
		%feature("autodoc", "1");
		gp_Ax22d();
		%feature("autodoc", "1");
		gp_Ax22d(const gp_Pnt2d P, const gp_Dir2d Vx, const gp_Dir2d Vy);
		%feature("autodoc", "1");
		gp_Ax22d(const gp_Pnt2d P, const gp_Dir2d Vx, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gp_Ax22d(const gp_Ax2d A, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax22d A1);
		%feature("autodoc", "1");
		void SetXAxis(const gp_Ax2d A1);
		%feature("autodoc", "1");
		void SetYAxis(const gp_Ax2d A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetXDirection(const gp_Dir2d Vx);
		%feature("autodoc", "1");
		void SetYDirection(const gp_Dir2d Vy);
		%feature("autodoc", "1");
		gp_Ax2d XAxis() const;
		%feature("autodoc", "1");
		gp_Ax2d YAxis() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  Location() const;
		%feature("autodoc", "1");
		const gp_Dir2d  XDirection() const;
		%feature("autodoc", "1");
		const gp_Dir2d  YDirection() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Ax22d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Ax22d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Ax22d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Ax22d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Ax22d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Ax22d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Ax22d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  _CSFDB_Getgp_Ax22dpoint() const;
		%feature("autodoc", "1");
		const gp_Dir2d  _CSFDB_Getgp_Ax22dvydir() const;
		%feature("autodoc", "1");
		const gp_Dir2d  _CSFDB_Getgp_Ax22dvxdir() const;

};
%feature("shadow") gp_Ax22d::~gp_Ax22d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Ax22d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Trsf2d;
class gp_Trsf2d {
	public:
		%feature("autodoc", "1");
		gp_Trsf2d(const gp_Trsf2d arg0);
		%feature("autodoc", "1");
		gp_Trsf2d();
		%feature("autodoc", "1");
		gp_Trsf2d(const gp_Trsf T);
		%feature("autodoc", "1");
		void SetMirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetMirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		void SetRotation(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		void SetScale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax2d FromSystem1, const gp_Ax2d ToSystem2);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax2d ToSystem);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Vec2d V);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		void SetTranslationPart(const gp_Vec2d V);
		%feature("autodoc", "1");
		void SetScaleFactor(const Standard_Real S);
		%feature("autodoc", "1");
		Standard_Boolean IsNegative() const;
		%feature("autodoc", "1");
		gp_TrsfForm Form() const;
		%feature("autodoc", "1");
		Standard_Real ScaleFactor() const;
		%feature("autodoc", "1");
		const gp_XY  TranslationPart() const;
		%feature("autodoc", "1");
		gp_Mat2d VectorialPart() const;
		%feature("autodoc", "1");
		const gp_Mat2d  HVectorialPart() const;
		%feature("autodoc", "1");
		Standard_Real RotationPart() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		gp_Trsf2d Inverted() const;
		%feature("autodoc", "1");
		gp_Trsf2d Multiplied(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		gp_Trsf2d operator*(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Multiply(const gp_Trsf2d T);
		%feature("autodoc", "1");
		void operator*=(const gp_Trsf2d T);
		%feature("autodoc", "1");
		void PreMultiply(const gp_Trsf2d T);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		gp_Trsf2d Powered(const Standard_Integer N);
		%feature("autodoc","Transforms() -> [Standard_Real, Standard_Real]");

		void Transforms(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Transforms(gp_XY & Coord) const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Trsf2dscale() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Trsf2dscale(const Standard_Real p);
		%feature("autodoc", "1");
		gp_TrsfForm _CSFDB_Getgp_Trsf2dshape() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Trsf2dshape(const gp_TrsfForm p);
		%feature("autodoc", "1");
		const gp_Mat2d  _CSFDB_Getgp_Trsf2dmatrix() const;
		%feature("autodoc", "1");
		const gp_XY  _CSFDB_Getgp_Trsf2dloc() const;

};
%feature("shadow") gp_Trsf2d::~gp_Trsf2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Trsf2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Pnt;
class gp_Pnt {
	public:
		%feature("autodoc", "1");
		gp_Pnt(const gp_Pnt arg0);
		%feature("autodoc", "1");
		gp_Pnt();
		%feature("autodoc", "1");
		gp_Pnt(const gp_XYZ Coordinates);
		%feature("autodoc", "1");
		gp_Pnt(const Standard_Real Xp, const Standard_Real Yp, const Standard_Real Zp);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer Index, const Standard_Real Xi);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xp, const Standard_Real Yp, const Standard_Real Zp);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real Z);
		%feature("autodoc", "1");
		void SetXYZ(const gp_XYZ Coordinates);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer Index) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		const gp_XYZ  XYZ() const;
		%feature("autodoc", "1");
		const gp_XYZ  Coord() const;
		%feature("autodoc", "1");
		gp_XYZ  ChangeCoord();
		%feature("autodoc", "1");
		void BaryCenter(const Standard_Real A, const gp_Pnt P, const Standard_Real B);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Pnt Other, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt Other) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pnt Other) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Pnt Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Pnt Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Pnt Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Pnt Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Pnt Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Pnt Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Pnt Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Pnt Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_XYZ  _CSFDB_Getgp_Pntcoord() const;

};
%feature("shadow") gp_Pnt::~gp_Pnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Pnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Vec;
class gp_Vec {
	public:
		%feature("autodoc", "1");
		gp_Vec(const gp_Vec arg0);
		%feature("autodoc", "1");
		gp_Vec();
		%feature("autodoc", "1");
		gp_Vec(const gp_Dir V);
		%feature("autodoc", "1");
		gp_Vec(const gp_XYZ Coord);
		%feature("autodoc", "1");
		gp_Vec(const Standard_Real Xv, const Standard_Real Yv, const Standard_Real Zv);
		%feature("autodoc", "1");
		gp_Vec(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer Index, const Standard_Real Xi);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xv, const Standard_Real Yv, const Standard_Real Zv);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real Z);
		%feature("autodoc", "1");
		void SetXYZ(const gp_XYZ Coord);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer Index) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		const gp_XYZ  XYZ() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Vec Other, const Standard_Real LinearTolerance, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNormal(const gp_Vec Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite(const gp_Vec Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel(const gp_Vec Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Vec Other) const;
		%feature("autodoc", "1");
		Standard_Real AngleWithRef(const gp_Vec Other, const gp_Vec Vref) const;
		%feature("autodoc", "1");
		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		Standard_Real SquareMagnitude() const;
		%feature("autodoc", "1");
		void Add(const gp_Vec Other);
		%feature("autodoc", "1");
		void operator+=(const gp_Vec Other);
		%feature("autodoc", "1");
		gp_Vec Added(const gp_Vec Other) const;
		%feature("autodoc", "1");
		gp_Vec operator+(const gp_Vec Other) const;
		%feature("autodoc", "1");
		void Subtract(const gp_Vec Right);
		%feature("autodoc", "1");
		void operator-=(const gp_Vec Right);
		%feature("autodoc", "1");
		gp_Vec Subtracted(const gp_Vec Right) const;
		%feature("autodoc", "1");
		gp_Vec operator-(const gp_Vec Right) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_Vec Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Vec operator*(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_Vec Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Vec operator/(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Cross(const gp_Vec Right);
		%feature("autodoc", "1");
		void operator^=(const gp_Vec Right);
		%feature("autodoc", "1");
		gp_Vec Crossed(const gp_Vec Right) const;
		%feature("autodoc", "1");
		gp_Vec operator^(const gp_Vec Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossMagnitude(const gp_Vec Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossSquareMagnitude(const gp_Vec Right) const;
		%feature("autodoc", "1");
		void CrossCross(const gp_Vec V1, const gp_Vec V2);
		%feature("autodoc", "1");
		gp_Vec CrossCrossed(const gp_Vec V1, const gp_Vec V2) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const gp_Vec Other) const;
		%feature("autodoc", "1");
		Standard_Real operator*(const gp_Vec Other) const;
		%feature("autodoc", "1");
		Standard_Real DotCross(const gp_Vec V1, const gp_Vec V2) const;
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		gp_Vec Normalized() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Vec Reversed() const;
		%feature("autodoc", "1");
		gp_Vec operator-() const;
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_Vec V1, const Standard_Real A2, const gp_Vec V2, const Standard_Real A3, const gp_Vec V3, const gp_Vec V4);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_Vec V1, const Standard_Real A2, const gp_Vec V2, const Standard_Real A3, const gp_Vec V3);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_Vec V1, const Standard_Real A2, const gp_Vec V2, const gp_Vec V3);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_Vec Left, const Standard_Real R, const gp_Vec Right);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_Vec Left, const gp_Vec Right);
		%feature("autodoc", "1");
		void SetLinearForm(const gp_Vec Left, const gp_Vec Right);
		%feature("autodoc", "1");
		void Mirror(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Vec Mirrored(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Vec Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Vec Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Vec Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const Standard_Real S);
		%feature("autodoc", "1");
		gp_Vec Scaled(const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Vec Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		const gp_XYZ  _CSFDB_Getgp_Veccoord() const;

};
%feature("shadow") gp_Vec::~gp_Vec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Vec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Trsf;
class gp_Trsf {
	public:
		%feature("autodoc", "1");
		gp_Trsf(const gp_Trsf arg0);
		%feature("autodoc", "1");
		gp_Trsf();
		%feature("autodoc", "1");
		gp_Trsf(const gp_Trsf2d T);
		%feature("autodoc", "1");
		void SetMirror(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetMirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetMirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		void SetRotation(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		void SetRotation(const gp_Quaternion R);
		%feature("autodoc", "1");
		void SetScale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		void SetDisplacement(const gp_Ax3 FromSystem1, const gp_Ax3 ToSystem2);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax3 FromSystem1, const gp_Ax3 ToSystem2);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Ax3 ToSystem);
		%feature("autodoc", "1");
		void SetTransformation(const gp_Quaternion R, const gp_Vec T);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Vec V);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		void SetTranslationPart(const gp_Vec V);
		%feature("autodoc", "1");
		void SetScaleFactor(const Standard_Real S);
		%feature("autodoc", "1");
		void SetValues(const Standard_Real a11, const Standard_Real a12, const Standard_Real a13, const Standard_Real a14, const Standard_Real a21, const Standard_Real a22, const Standard_Real a23, const Standard_Real a24, const Standard_Real a31, const Standard_Real a32, const Standard_Real a33, const Standard_Real a34, const Standard_Real Tolang, const Standard_Real TolDist);
		%feature("autodoc", "1");
		Standard_Boolean IsNegative() const;
		%feature("autodoc", "1");
		gp_TrsfForm Form() const;
		%feature("autodoc", "1");
		Standard_Real ScaleFactor() const;
		%feature("autodoc", "1");
		const gp_XYZ  TranslationPart() const;
		%feature("autodoc","GetRotation() -> Standard_Real");

		Standard_Boolean GetRotation(gp_XYZ & theAxis, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Quaternion GetRotation() const;
		%feature("autodoc", "1");
		gp_Mat VectorialPart() const;
		%feature("autodoc", "1");
		const gp_Mat  HVectorialPart() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		gp_Trsf Inverted() const;
		%feature("autodoc", "1");
		gp_Trsf Multiplied(const gp_Trsf T) const;
		%feature("autodoc", "1");
		gp_Trsf operator*(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Multiply(const gp_Trsf T);
		%feature("autodoc", "1");
		void operator*=(const gp_Trsf T);
		%feature("autodoc", "1");
		void PreMultiply(const gp_Trsf T);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		gp_Trsf Powered(const Standard_Integer N);
		%feature("autodoc","Transforms() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Transforms(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Transforms(gp_XYZ & Coord) const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Trsfscale() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Trsfscale(const Standard_Real p);
		%feature("autodoc", "1");
		gp_TrsfForm _CSFDB_Getgp_Trsfshape() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Trsfshape(const gp_TrsfForm p);
		%feature("autodoc", "1");
		const gp_Mat  _CSFDB_Getgp_Trsfmatrix() const;
		%feature("autodoc", "1");
		const gp_XYZ  _CSFDB_Getgp_Trsfloc() const;

};
%feature("shadow") gp_Trsf::~gp_Trsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Trsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Cylinder;
class gp_Cylinder {
	public:
		%feature("autodoc", "1");
		gp_Cylinder(const gp_Cylinder arg0);
		%feature("autodoc", "1");
		gp_Cylinder();
		%feature("autodoc", "1");
		gp_Cylinder(const gp_Ax3 A3, const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt Loc);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 A3);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void UReverse();
		%feature("autodoc", "1");
		void VReverse();
		%feature("autodoc", "1");
		Standard_Boolean Direct() const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Cylinder Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Cylinder Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Cylinder Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Cylinder Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Cylinder Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Cylinder Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Cylinder Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Cylinder Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax3  _CSFDB_Getgp_Cylinderpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Cylinderradius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Cylinderradius(const Standard_Real p);

};
%feature("shadow") gp_Cylinder::~gp_Cylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Cylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Torus;
class gp_Torus {
	public:
		%feature("autodoc", "1");
		gp_Torus(const gp_Torus arg0);
		%feature("autodoc", "1");
		gp_Torus();
		%feature("autodoc", "1");
		gp_Torus(const gp_Ax3 A3, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt Loc);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 A3);
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc", "1");
		void UReverse();
		%feature("autodoc", "1");
		void VReverse();
		%feature("autodoc", "1");
		Standard_Boolean Direct() const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		void Coefficients(TColStd_Array1OfReal & Coef) const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		Standard_Real Volume() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Torus Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Torus Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Torus Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Torus Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Torus Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Torus Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Torus Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Torus Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax3  _CSFDB_Getgp_Toruspos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_TorusmajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_TorusmajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_TorusminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_TorusminorRadius(const Standard_Real p);

};
%feature("shadow") gp_Torus::~gp_Torus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Torus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Dir;
class gp_Dir {
	public:
		%feature("autodoc", "1");
		gp_Dir(const gp_Dir arg0);
		%feature("autodoc", "1");
		gp_Dir();
		%feature("autodoc", "1");
		gp_Dir(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Dir(const gp_XYZ XYZ);
		%feature("autodoc", "1");
		gp_Dir(const Standard_Real Xv, const Standard_Real Yv, const Standard_Real Zv);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer Index, const Standard_Real Xi);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xv, const Standard_Real Yv, const Standard_Real Zv);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real Z);
		%feature("autodoc", "1");
		void SetXYZ(const gp_XYZ XYZ);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer Index) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		const gp_XYZ  XYZ() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Dir Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNormal(const gp_Dir Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite(const gp_Dir Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel(const gp_Dir Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Dir Other) const;
		%feature("autodoc", "1");
		Standard_Real AngleWithRef(const gp_Dir Other, const gp_Dir VRef) const;
		%feature("autodoc", "1");
		void Cross(const gp_Dir Right);
		%feature("autodoc", "1");
		void operator^=(const gp_Dir Right);
		%feature("autodoc", "1");
		gp_Dir Crossed(const gp_Dir Right) const;
		%feature("autodoc", "1");
		gp_Dir operator^(const gp_Dir Right) const;
		%feature("autodoc", "1");
		void CrossCross(const gp_Dir V1, const gp_Dir V2);
		%feature("autodoc", "1");
		gp_Dir CrossCrossed(const gp_Dir V1, const gp_Dir V2) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const gp_Dir Other) const;
		%feature("autodoc", "1");
		Standard_Real operator*(const gp_Dir Other) const;
		%feature("autodoc", "1");
		Standard_Real DotCross(const gp_Dir V1, const gp_Dir V2) const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Dir Reversed() const;
		%feature("autodoc", "1");
		gp_Dir operator-() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Dir V);
		%feature("autodoc", "1");
		gp_Dir Mirrored(const gp_Dir V) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Dir Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Dir Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Dir Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Dir Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		const gp_XYZ  _CSFDB_Getgp_Dircoord() const;

};
%feature("shadow") gp_Dir::~gp_Dir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Dir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Circ2d;
class gp_Circ2d {
	public:
		%feature("autodoc", "1");
		gp_Circ2d(const gp_Circ2d arg0);
		%feature("autodoc", "1");
		gp_Circ2d();
		%feature("autodoc", "1");
		gp_Circ2d(const gp_Ax2d XAxis, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gp_Circ2d(const gp_Ax22d Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetXAxis(const gp_Ax2d A);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax22d A);
		%feature("autodoc", "1");
		void SetYAxis(const gp_Ax2d A);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius);
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt2d P, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  Location() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		const gp_Ax22d  Axis() const;
		%feature("autodoc", "1");
		const gp_Ax22d  Position() const;
		%feature("autodoc", "1");
		gp_Ax2d XAxis() const;
		%feature("autodoc", "1");
		gp_Ax2d YAxis() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Circ2d Reversed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDirect() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Circ2d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Circ2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Circ2d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Circ2d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Circ2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Circ2d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Circ2d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_Ax22d  _CSFDB_Getgp_Circ2dpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Circ2dradius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Circ2dradius(const Standard_Real p);

};
%feature("shadow") gp_Circ2d::~gp_Circ2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Circ2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_XY;
class gp_XY {
	public:
		%feature("autodoc", "1");
		gp_XY(const gp_XY arg0);
		%feature("autodoc", "1");
		gp_XY();
		%feature("autodoc", "1");
		gp_XY(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer i, const Standard_Real X);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer i) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Modulus() const;
		%feature("autodoc", "1");
		Standard_Real SquareModulus() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_XY Other, const Standard_Real Tolerance) const;
		%feature("autodoc", "1");
		void Add(const gp_XY Other);
		%feature("autodoc", "1");
		void operator+=(const gp_XY Other);
		%feature("autodoc", "1");
		gp_XY Added(const gp_XY Other) const;
		%feature("autodoc", "1");
		gp_XY operator+(const gp_XY Other) const;
		%feature("autodoc", "1");
		Standard_Real Crossed(const gp_XY Right) const;
		%feature("autodoc", "1");
		Standard_Real operator^(const gp_XY Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossMagnitude(const gp_XY Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossSquareMagnitude(const gp_XY Right) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_XY Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_XY operator/(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const gp_XY Other) const;
		%feature("autodoc", "1");
		Standard_Real operator*(const gp_XY Other) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void Multiply(const gp_XY Other);
		%feature("autodoc", "1");
		void operator*=(const gp_XY Other);
		%feature("autodoc", "1");
		void Multiply(const gp_Mat2d Matrix);
		%feature("autodoc", "1");
		void operator*=(const gp_Mat2d Matrix);
		%feature("autodoc", "1");
		gp_XY Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_XY operator*(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_XY Multiplied(const gp_XY Other) const;
		%feature("autodoc", "1");
		gp_XY Multiplied(const gp_Mat2d Matrix) const;
		%feature("autodoc", "1");
		gp_XY operator*(const gp_Mat2d Matrix) const;
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		gp_XY Normalized() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_XY Reversed() const;
		%feature("autodoc", "1");
		gp_XY operator-() const;
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_XY Left, const Standard_Real R, const gp_XY Right);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_XY XY1, const Standard_Real A2, const gp_XY XY2, const gp_XY XY3);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_XY Left, const gp_XY Right);
		%feature("autodoc", "1");
		void SetLinearForm(const gp_XY Left, const gp_XY Right);
		%feature("autodoc", "1");
		void Subtract(const gp_XY Right);
		%feature("autodoc", "1");
		void operator-=(const gp_XY Right);
		%feature("autodoc", "1");
		gp_XY Subtracted(const gp_XY Right) const;
		%feature("autodoc", "1");
		gp_XY operator-(const gp_XY Right) const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_XYx() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_XYx(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_XYy() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_XYy(const Standard_Real p);

};
%feature("shadow") gp_XY::~gp_XY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_XY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Lin2d;
class gp_Lin2d {
	public:
		%feature("autodoc", "1");
		gp_Lin2d(const gp_Lin2d arg0);
		%feature("autodoc", "1");
		gp_Lin2d();
		%feature("autodoc", "1");
		gp_Lin2d(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Lin2d(const gp_Pnt2d P, const gp_Dir2d V);
		%feature("autodoc", "1");
		gp_Lin2d(const Standard_Real A, const Standard_Real B, const Standard_Real C);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Lin2d Reversed() const;
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir2d V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2d A);
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Dir2d  Direction() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  Location() const;
		%feature("autodoc", "1");
		const gp_Ax2d  Position() const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Lin2d Other) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt2d P, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Lin2d Other) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Lin2d Other) const;
		%feature("autodoc", "1");
		gp_Lin2d Normal(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Lin2d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Lin2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Lin2d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Lin2d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Lin2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Lin2d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Lin2d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_Ax2d  _CSFDB_Getgp_Lin2dpos() const;

};
%feature("shadow") gp_Lin2d::~gp_Lin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Lin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_QuaternionSLerp;
class gp_QuaternionSLerp {
	public:
		%feature("autodoc", "1");
		gp_QuaternionSLerp(const gp_QuaternionSLerp arg0);
		%feature("autodoc", "1");
		gp_QuaternionSLerp();
		%feature("autodoc", "1");
		gp_QuaternionSLerp(const gp_Quaternion theQStart, const gp_Quaternion theQEnd);
		%feature("autodoc", "1");
		void Init(const gp_Quaternion theQStart, const gp_Quaternion theQEnd);
		%feature("autodoc", "1");
		void InitFromUnit(const gp_Quaternion theQStart, const gp_Quaternion theQEnd);
		%feature("autodoc", "1");
		void Interpolate(Standard_Real , gp_Quaternion & theResultQ) const;

};
%feature("shadow") gp_QuaternionSLerp::~gp_QuaternionSLerp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_QuaternionSLerp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Elips2d;
class gp_Elips2d {
	public:
		%feature("autodoc", "1");
		gp_Elips2d(const gp_Elips2d arg0);
		%feature("autodoc", "1");
		gp_Elips2d();
		%feature("autodoc", "1");
		gp_Elips2d(const gp_Ax2d MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gp_Elips2d(const gp_Ax22d A, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real MajorRadius);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax22d A);
		%feature("autodoc", "1");
		void SetXAxis(const gp_Ax2d A);
		%feature("autodoc", "1");
		void SetYAxis(const gp_Ax2d A);
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
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
		const gp_Pnt2d  Location() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const gp_Ax22d  Axis() const;
		%feature("autodoc", "1");
		gp_Ax2d XAxis() const;
		%feature("autodoc", "1");
		gp_Ax2d YAxis() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Elips2d Reversed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDirect() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Elips2d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Elips2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Elips2d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Elips2d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Elips2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Elips2d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Elips2d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_Ax22d  _CSFDB_Getgp_Elips2dpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Elips2dmajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Elips2dmajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Elips2dminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Elips2dminorRadius(const Standard_Real p);

};
%feature("shadow") gp_Elips2d::~gp_Elips2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Elips2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Vec2d;
class gp_Vec2d {
	public:
		%feature("autodoc", "1");
		gp_Vec2d(const gp_Vec2d arg0);
		%feature("autodoc", "1");
		gp_Vec2d();
		%feature("autodoc", "1");
		gp_Vec2d(const gp_Dir2d V);
		%feature("autodoc", "1");
		gp_Vec2d(const gp_XY Coord);
		%feature("autodoc", "1");
		gp_Vec2d(const Standard_Real Xv, const Standard_Real Yv);
		%feature("autodoc", "1");
		gp_Vec2d(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer Index, const Standard_Real Xi);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xv, const Standard_Real Yv);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetXY(const gp_XY Coord);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer Index) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		const gp_XY  XY() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Vec2d Other, const Standard_Real LinearTolerance, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNormal(const gp_Vec2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite(const gp_Vec2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel(const gp_Vec2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Vec2d Other) const;
		%feature("autodoc", "1");
		Standard_Real Magnitude() const;
		%feature("autodoc", "1");
		Standard_Real SquareMagnitude() const;
		%feature("autodoc", "1");
		void Add(const gp_Vec2d Other);
		%feature("autodoc", "1");
		void operator+=(const gp_Vec2d Other);
		%feature("autodoc", "1");
		gp_Vec2d Added(const gp_Vec2d Other) const;
		%feature("autodoc", "1");
		gp_Vec2d operator+(const gp_Vec2d Other) const;
		%feature("autodoc", "1");
		Standard_Real Crossed(const gp_Vec2d Right) const;
		%feature("autodoc", "1");
		Standard_Real operator^(const gp_Vec2d Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossMagnitude(const gp_Vec2d Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossSquareMagnitude(const gp_Vec2d Right) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_Vec2d Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Vec2d operator/(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const gp_Vec2d Other) const;
		%feature("autodoc", "1");
		Standard_Real operator*(const gp_Vec2d Other) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_Vec2d Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Vec2d operator*(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		gp_Vec2d Normalized() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Vec2d Reversed() const;
		%feature("autodoc", "1");
		gp_Vec2d operator-() const;
		%feature("autodoc", "1");
		void Subtract(const gp_Vec2d Right);
		%feature("autodoc", "1");
		void operator-=(const gp_Vec2d Right);
		%feature("autodoc", "1");
		gp_Vec2d Subtracted(const gp_Vec2d Right) const;
		%feature("autodoc", "1");
		gp_Vec2d operator-(const gp_Vec2d Right) const;
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_Vec2d V1, const Standard_Real A2, const gp_Vec2d V2, const gp_Vec2d V3);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_Vec2d Left, const Standard_Real R, const gp_Vec2d Right);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_Vec2d Left, const gp_Vec2d Right);
		%feature("autodoc", "1");
		void SetLinearForm(const gp_Vec2d Left, const gp_Vec2d Right);
		%feature("autodoc", "1");
		void Mirror(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Vec2d Mirrored(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A1);
		%feature("autodoc", "1");
		gp_Vec2d Mirrored(const gp_Ax2d A1) const;
		%feature("autodoc", "1");
		void Rotate(const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Vec2d Rotated(const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const Standard_Real S);
		%feature("autodoc", "1");
		gp_Vec2d Scaled(const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Vec2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		const gp_XY  _CSFDB_Getgp_Vec2dcoord() const;

};
%feature("shadow") gp_Vec2d::~gp_Vec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Vec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Pnt2d;
class gp_Pnt2d {
	public:
		%feature("autodoc", "1");
		gp_Pnt2d(const gp_Pnt2d arg0);
		%feature("autodoc", "1");
		gp_Pnt2d();
		%feature("autodoc", "1");
		gp_Pnt2d(const gp_XY Coordinates);
		%feature("autodoc", "1");
		gp_Pnt2d(const Standard_Real Xp, const Standard_Real Yp);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer Index, const Standard_Real Xi);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xp, const Standard_Real Yp);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetXY(const gp_XY Coordinates);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer Index) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		const gp_XY  XY() const;
		%feature("autodoc", "1");
		const gp_XY  Coord() const;
		%feature("autodoc", "1");
		gp_XY  ChangeCoord();
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Pnt2d Other, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt2d Other) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pnt2d Other) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Pnt2d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Pnt2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Pnt2d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Pnt2d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Pnt2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Pnt2d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Pnt2d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_XY  _CSFDB_Getgp_Pnt2dcoord() const;

};
%feature("shadow") gp_Pnt2d::~gp_Pnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Pnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Parab;
class gp_Parab {
	public:
		%feature("autodoc", "1");
		gp_Parab(const gp_Parab arg0);
		%feature("autodoc", "1");
		gp_Parab();
		%feature("autodoc", "1");
		gp_Parab(const gp_Ax2 A2, const Standard_Real Focal);
		%feature("autodoc", "1");
		gp_Parab(const gp_Ax1 D, const gp_Pnt F);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetFocal(const Standard_Real Focal);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 A2);
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt Focus() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const gp_Ax2  Position() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Parab Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Parab Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Parab Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Parab Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Parab Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Parab Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Parab Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Parab Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax2  _CSFDB_Getgp_Parabpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_ParabfocalLength() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_ParabfocalLength(const Standard_Real p);

};
%feature("shadow") gp_Parab::~gp_Parab %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Parab {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Lin;
class gp_Lin {
	public:
		%feature("autodoc", "1");
		gp_Lin(const gp_Lin arg0);
		%feature("autodoc", "1");
		gp_Lin();
		%feature("autodoc", "1");
		gp_Lin(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Lin(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Lin Reversed() const;
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax1 A1);
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Ax1  Position() const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Lin Other) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt P, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Lin Other) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Lin Other) const;
		%feature("autodoc", "1");
		gp_Lin Normal(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Lin Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Lin Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Lin Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Lin Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Lin Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Lin Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Lin Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Lin Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax1  _CSFDB_Getgp_Linpos() const;

};
%feature("shadow") gp_Lin::~gp_Lin %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Lin {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Ax1;
class gp_Ax1 {
	public:
		%feature("autodoc", "1");
		gp_Ax1(const gp_Ax1 arg0);
		%feature("autodoc", "1");
		gp_Ax1();
		%feature("autodoc", "1");
		gp_Ax1(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCoaxial(const gp_Ax1 Other, const Standard_Real AngularTolerance, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNormal(const gp_Ax1 Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite(const gp_Ax1 Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel(const gp_Ax1 Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Ax1 Other) const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Ax1 Reversed() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Ax1 Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Ax1 Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Ax1 Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Ax1 Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Ax1 Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Ax1 Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Ax1 Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Ax1 Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Pnt  _CSFDB_Getgp_Ax1loc() const;
		%feature("autodoc", "1");
		const gp_Dir  _CSFDB_Getgp_Ax1vdir() const;

};
%feature("shadow") gp_Ax1::~gp_Ax1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Ax1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Ax2;
class gp_Ax2 {
	public:
		%feature("autodoc", "1");
		gp_Ax2(const gp_Ax2 arg0);
		%feature("autodoc", "1");
		gp_Ax2();
		%feature("autodoc", "1");
		gp_Ax2(const gp_Pnt P, const gp_Dir N, const gp_Dir Vx);
		%feature("autodoc", "1");
		gp_Ax2(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetXDirection(const gp_Dir Vx);
		%feature("autodoc", "1");
		void SetYDirection(const gp_Dir Vy);
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Ax2 Other) const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Dir  XDirection() const;
		%feature("autodoc", "1");
		const gp_Dir  YDirection() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCoplanar(const gp_Ax2 Other, const Standard_Real LinearTolerance, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCoplanar(const gp_Ax1 A, const Standard_Real LinearTolerance, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Ax2 Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Ax2 Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Ax2 Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Ax2 Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Ax2 Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Ax2 Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Ax2 Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Ax2 Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax1  _CSFDB_Getgp_Ax2axis() const;
		%feature("autodoc", "1");
		const gp_Dir  _CSFDB_Getgp_Ax2vydir() const;
		%feature("autodoc", "1");
		const gp_Dir  _CSFDB_Getgp_Ax2vxdir() const;

};
%feature("shadow") gp_Ax2::~gp_Ax2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Ax2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Ax3;
class gp_Ax3 {
	public:
		%feature("autodoc", "1");
		gp_Ax3(const gp_Ax3 arg0);
		%feature("autodoc", "1");
		gp_Ax3();
		%feature("autodoc", "1");
		gp_Ax3(const gp_Ax2 A);
		%feature("autodoc", "1");
		gp_Ax3(const gp_Pnt P, const gp_Dir N, const gp_Dir Vx);
		%feature("autodoc", "1");
		gp_Ax3(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		void XReverse();
		%feature("autodoc", "1");
		void YReverse();
		%feature("autodoc", "1");
		void ZReverse();
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetXDirection(const gp_Dir Vx);
		%feature("autodoc", "1");
		void SetYDirection(const gp_Dir Vy);
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Ax3 Other) const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		gp_Ax2 Ax2() const;
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Dir  XDirection() const;
		%feature("autodoc", "1");
		const gp_Dir  YDirection() const;
		%feature("autodoc", "1");
		Standard_Boolean Direct() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCoplanar(const gp_Ax3 Other, const Standard_Real LinearTolerance, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCoplanar(const gp_Ax1 A1, const Standard_Real LinearTolerance, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Ax3 Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Ax3 Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Ax3 Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Ax3 Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Ax3 Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Ax3 Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Ax3 Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Ax3 Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax1  _CSFDB_Getgp_Ax3axis() const;
		%feature("autodoc", "1");
		const gp_Dir  _CSFDB_Getgp_Ax3vydir() const;
		%feature("autodoc", "1");
		const gp_Dir  _CSFDB_Getgp_Ax3vxdir() const;

};
%feature("shadow") gp_Ax3::~gp_Ax3 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Ax3 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Sphere;
class gp_Sphere {
	public:
		%feature("autodoc", "1");
		gp_Sphere(const gp_Sphere arg0);
		%feature("autodoc", "1");
		gp_Sphere();
		%feature("autodoc", "1");
		gp_Sphere(const gp_Ax3 A3, const Standard_Real Radius);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt Loc);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 A3);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void UReverse();
		%feature("autodoc", "1");
		void VReverse();
		%feature("autodoc", "1");
		Standard_Boolean Direct() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Standard_Real Volume() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Sphere Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Sphere Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Sphere Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Sphere Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Sphere Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Sphere Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Sphere Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Sphere Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax3  _CSFDB_Getgp_Spherepos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Sphereradius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Sphereradius(const Standard_Real p);

};
%feature("shadow") gp_Sphere::~gp_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Sphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_GTrsf;
class gp_GTrsf {
	public:
		%feature("autodoc", "1");
		gp_GTrsf(const gp_GTrsf arg0);
		%feature("autodoc", "1");
		gp_GTrsf();
		%feature("autodoc", "1");
		gp_GTrsf(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_GTrsf(const gp_Mat M, const gp_XYZ V);
		%feature("autodoc", "1");
		void SetAffinity(const gp_Ax1 A1, const Standard_Real Ratio);
		%feature("autodoc", "1");
		void SetAffinity(const gp_Ax2 A2, const Standard_Real Ratio);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real Value);
		%feature("autodoc", "1");
		void SetVectorialPart(const gp_Mat Matrix);
		%feature("autodoc", "1");
		void SetTranslationPart(const gp_XYZ Coord);
		%feature("autodoc", "1");
		void SetTrsf(const gp_Trsf T);
		%feature("autodoc", "1");
		Standard_Boolean IsNegative() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSingular() const;
		%feature("autodoc", "1");
		gp_TrsfForm Form() const;
		%feature("autodoc", "1");
		void SetForm();
		%feature("autodoc", "1");
		const gp_XYZ  TranslationPart() const;
		%feature("autodoc", "1");
		const gp_Mat  VectorialPart() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Real operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		gp_GTrsf Inverted() const;
		%feature("autodoc", "1");
		void Multiply(const gp_GTrsf T);
		%feature("autodoc", "1");
		gp_GTrsf Multiplied(const gp_GTrsf T) const;
		%feature("autodoc", "1");
		void PreMultiply(const gp_GTrsf T);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		gp_GTrsf Powered(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Transforms(gp_XYZ & Coord) const;
		%feature("autodoc","Transforms() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Transforms(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Trsf Trsf() const;
		%feature("autodoc", "1");
		const gp_Mat  _CSFDB_Getgp_GTrsfmatrix() const;
		%feature("autodoc", "1");
		const gp_XYZ  _CSFDB_Getgp_GTrsfloc() const;
		%feature("autodoc", "1");
		gp_TrsfForm _CSFDB_Getgp_GTrsfshape() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_GTrsfshape(const gp_TrsfForm p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_GTrsfscale() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_GTrsfscale(const Standard_Real p);

};
%feature("shadow") gp_GTrsf::~gp_GTrsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_GTrsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Pln;
class gp_Pln {
	public:
		%feature("autodoc", "1");
		gp_Pln(const gp_Pln arg0);
		%feature("autodoc", "1");
		gp_Pln();
		%feature("autodoc", "1");
		gp_Pln(const gp_Ax3 A3);
		%feature("autodoc", "1");
		gp_Pln(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		gp_Pln(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc","Coefficients() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Coefficients(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt Loc);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 A3);
		%feature("autodoc", "1");
		void UReverse();
		%feature("autodoc", "1");
		void VReverse();
		%feature("autodoc", "1");
		Standard_Boolean Direct() const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Lin L) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pln Other) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Lin L) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pln Other) const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt P, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Lin L, const Standard_Real LinearTolerance, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Pln Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Pln Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Pln Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Pln Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Pln Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Pln Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Pln Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Pln Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax3  _CSFDB_Getgp_Plnpos() const;

};
%feature("shadow") gp_Pln::~gp_Pln %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Pln {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Hypr;
class gp_Hypr {
	public:
		%feature("autodoc", "1");
		gp_Hypr(const gp_Hypr arg0);
		%feature("autodoc", "1");
		gp_Hypr();
		%feature("autodoc", "1");
		gp_Hypr(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Ax1 Asymptote1() const;
		%feature("autodoc", "1");
		gp_Ax1 Asymptote2() const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		gp_Hypr ConjugateBranch1() const;
		%feature("autodoc", "1");
		gp_Hypr ConjugateBranch2() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix1() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix2() const;
		%feature("autodoc", "1");
		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt Focus1() const;
		%feature("autodoc", "1");
		gp_Pnt Focus2() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		gp_Hypr OtherBranch() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const gp_Ax2  Position() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Hypr Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Hypr Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Hypr Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Hypr Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Hypr Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Hypr Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Hypr Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Hypr Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax2  _CSFDB_Getgp_Hyprpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_HyprmajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_HyprmajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_HyprminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_HyprminorRadius(const Standard_Real p);

};
%feature("shadow") gp_Hypr::~gp_Hypr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Hypr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Circ;
class gp_Circ {
	public:
		%feature("autodoc", "1");
		gp_Circ(const gp_Circ arg0);
		%feature("autodoc", "1");
		gp_Circ();
		%feature("autodoc", "1");
		gp_Circ(const gp_Ax2 A2, const Standard_Real R);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 A2);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R);
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		const gp_Ax2  Position() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const gp_Pnt P) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt P, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Circ Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Circ Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Circ Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Circ Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Circ Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Circ Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Circ Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Circ Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax2  _CSFDB_Getgp_Circpos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_Circradius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_Circradius(const Standard_Real p);

};
%feature("shadow") gp_Circ::~gp_Circ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Circ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_XYZ;
class gp_XYZ {
	public:
		%feature("autodoc", "1");
		gp_XYZ(const gp_XYZ arg0);
		%feature("autodoc", "1");
		gp_XYZ();
		%feature("autodoc", "1");
		gp_XYZ(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Integer i, const Standard_Real X);
		%feature("autodoc", "1");
		void SetX(const Standard_Real X);
		%feature("autodoc", "1");
		void SetY(const Standard_Real Y);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real Z);
		%feature("autodoc", "1");
		Standard_Real Coord(const Standard_Integer i) const;
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		Standard_Real Modulus() const;
		%feature("autodoc", "1");
		Standard_Real SquareModulus() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_XYZ Other, const Standard_Real Tolerance) const;
		%feature("autodoc", "1");
		void Add(const gp_XYZ Other);
		%feature("autodoc", "1");
		void operator+=(const gp_XYZ Other);
		%feature("autodoc", "1");
		gp_XYZ Added(const gp_XYZ Other) const;
		%feature("autodoc", "1");
		gp_XYZ operator+(const gp_XYZ Other) const;
		%feature("autodoc", "1");
		void Cross(const gp_XYZ Right);
		%feature("autodoc", "1");
		void operator^=(const gp_XYZ Right);
		%feature("autodoc", "1");
		gp_XYZ Crossed(const gp_XYZ Right) const;
		%feature("autodoc", "1");
		gp_XYZ operator^(const gp_XYZ Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossMagnitude(const gp_XYZ Right) const;
		%feature("autodoc", "1");
		Standard_Real CrossSquareMagnitude(const gp_XYZ Right) const;
		%feature("autodoc", "1");
		void CrossCross(const gp_XYZ Coord1, const gp_XYZ Coord2);
		%feature("autodoc", "1");
		gp_XYZ CrossCrossed(const gp_XYZ Coord1, const gp_XYZ Coord2) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_XYZ Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_XYZ operator/(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const gp_XYZ Other) const;
		%feature("autodoc", "1");
		Standard_Real operator*(const gp_XYZ Other) const;
		%feature("autodoc", "1");
		Standard_Real DotCross(const gp_XYZ Coord1, const gp_XYZ Coord2) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void Multiply(const gp_XYZ Other);
		%feature("autodoc", "1");
		void operator*=(const gp_XYZ Other);
		%feature("autodoc", "1");
		void Multiply(const gp_Mat Matrix);
		%feature("autodoc", "1");
		void operator*=(const gp_Mat Matrix);
		%feature("autodoc", "1");
		gp_XYZ Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_XYZ operator*(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_XYZ Multiplied(const gp_XYZ Other) const;
		%feature("autodoc", "1");
		gp_XYZ Multiplied(const gp_Mat Matrix) const;
		%feature("autodoc", "1");
		gp_XYZ operator*(const gp_Mat Matrix) const;
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		gp_XYZ Normalized() const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_XYZ Reversed() const;
		%feature("autodoc", "1");
		void Subtract(const gp_XYZ Right);
		%feature("autodoc", "1");
		void operator-=(const gp_XYZ Right);
		%feature("autodoc", "1");
		gp_XYZ Subtracted(const gp_XYZ Right) const;
		%feature("autodoc", "1");
		gp_XYZ operator-(const gp_XYZ Right) const;
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_XYZ XYZ1, const Standard_Real A2, const gp_XYZ XYZ2, const Standard_Real A3, const gp_XYZ XYZ3, const gp_XYZ XYZ4);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_XYZ XYZ1, const Standard_Real A2, const gp_XYZ XYZ2, const Standard_Real A3, const gp_XYZ XYZ3);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real A1, const gp_XYZ XYZ1, const Standard_Real A2, const gp_XYZ XYZ2, const gp_XYZ XYZ3);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_XYZ Left, const Standard_Real R, const gp_XYZ Right);
		%feature("autodoc", "1");
		void SetLinearForm(const Standard_Real L, const gp_XYZ Left, const gp_XYZ Right);
		%feature("autodoc", "1");
		void SetLinearForm(const gp_XYZ Left, const gp_XYZ Right);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_XYZx() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_XYZx(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_XYZy() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_XYZy(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_XYZz() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_XYZz(const Standard_Real p);

};
%feature("shadow") gp_XYZ::~gp_XYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_XYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Mat;
class gp_Mat {
	public:
		%feature("autodoc", "1");
		gp_Mat(const gp_Mat arg0);
		%feature("autodoc", "1");
		gp_Mat();
		%feature("autodoc", "1");
		gp_Mat(const Standard_Real a11, const Standard_Real a12, const Standard_Real a13, const Standard_Real a21, const Standard_Real a22, const Standard_Real a23, const Standard_Real a31, const Standard_Real a32, const Standard_Real a33);
		%feature("autodoc", "1");
		gp_Mat(const gp_XYZ Col1, const gp_XYZ Col2, const gp_XYZ Col3);
		%feature("autodoc", "1");
		void SetCol(const Standard_Integer Col, const gp_XYZ Value);
		%feature("autodoc", "1");
		void SetCols(const gp_XYZ Col1, const gp_XYZ Col2, const gp_XYZ Col3);
		%feature("autodoc", "1");
		void SetCross(const gp_XYZ Ref);
		%feature("autodoc", "1");
		void SetDiagonal(const Standard_Real X1, const Standard_Real X2, const Standard_Real X3);
		%feature("autodoc", "1");
		void SetDot(const gp_XYZ Ref);
		%feature("autodoc", "1");
		void SetIdentity();
		%feature("autodoc", "1");
		void SetRotation(const gp_XYZ Axis, const Standard_Real Ang);
		%feature("autodoc", "1");
		void SetRow(const Standard_Integer Row, const gp_XYZ Value);
		%feature("autodoc", "1");
		void SetRows(const gp_XYZ Row1, const gp_XYZ Row2, const gp_XYZ Row3);
		%feature("autodoc", "1");
		void SetScale(const Standard_Real S);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real Value);
		%feature("autodoc", "1");
		gp_XYZ Column(const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Real Determinant() const;
		%feature("autodoc", "1");
		gp_XYZ Diagonal() const;
		%feature("autodoc", "1");
		gp_XYZ Row(const Standard_Integer Row) const;
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Row, const Standard_Integer Col) {
				return (Standard_Real) $self->ChangeValue(Row,Col);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col) {
				$self->ChangeValue(Row,Col)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Standard_Boolean IsSingular() const;
		%feature("autodoc", "1");
		void Add(const gp_Mat Other);
		%feature("autodoc", "1");
		void operator+=(const gp_Mat Other);
		%feature("autodoc", "1");
		gp_Mat Added(const gp_Mat Other) const;
		%feature("autodoc", "1");
		gp_Mat operator+(const gp_Mat Other) const;
		%feature("autodoc", "1");
		void Divide(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator/=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		gp_Mat Divided(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Mat operator/(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		gp_Mat Inverted() const;
		%feature("autodoc", "1");
		gp_Mat Multiplied(const gp_Mat Other) const;
		%feature("autodoc", "1");
		gp_Mat operator*(const gp_Mat Other) const;
		%feature("autodoc", "1");
		void Multiply(const gp_Mat Other);
		%feature("autodoc", "1");
		void operator*=(const gp_Mat Other);
		%feature("autodoc", "1");
		void PreMultiply(const gp_Mat Other);
		%feature("autodoc", "1");
		gp_Mat Multiplied(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		gp_Mat operator*(const Standard_Real Scalar) const;
		%feature("autodoc", "1");
		void Multiply(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real Scalar);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		gp_Mat Powered(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Subtract(const gp_Mat Other);
		%feature("autodoc", "1");
		void operator-=(const gp_Mat Other);
		%feature("autodoc", "1");
		gp_Mat Subtracted(const gp_Mat Other) const;
		%feature("autodoc", "1");
		gp_Mat operator-(const gp_Mat Other) const;
		%feature("autodoc", "1");
		void Transpose();
		%feature("autodoc", "1");
		gp_Mat Transposed() const;
		%feature("autodoc","1");
		%extend {
				Standard_Real Get_CSFDB_Getgp_Matmatrix(const Standard_Integer i1, const Standard_Integer i2) {
				return (Standard_Real) $self->_CSFDB_Getgp_Matmatrix(i1,i2);
				}
		};
		%feature("autodoc","1");
		%extend {
				void Set_CSFDB_Getgp_Matmatrix(Standard_Real value ,const Standard_Integer i1, const Standard_Integer i2) {
				$self->_CSFDB_Getgp_Matmatrix(i1,i2)=value;
				}
		};

};
%feature("shadow") gp_Mat::~gp_Mat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Mat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_QuaternionNLerp;
class gp_QuaternionNLerp {
	public:
		%feature("autodoc", "1");
		gp_QuaternionNLerp(const gp_QuaternionNLerp arg0);
		%feature("autodoc", "1");
		gp_QuaternionNLerp();
		%feature("autodoc", "1");
		gp_QuaternionNLerp(const gp_Quaternion theQStart, const gp_Quaternion theQEnd);
		%feature("autodoc", "1");
		void Init(const gp_Quaternion theQStart, const gp_Quaternion theQEnd);
		%feature("autodoc", "1");
		void InitFromUnit(const gp_Quaternion theQStart, const gp_Quaternion theQEnd);
		%feature("autodoc", "1");
		void Interpolate(Standard_Real , gp_Quaternion & theResultQ) const;
		%feature("autodoc", "1");
		static		gp_Quaternion Interpolate(const gp_Quaternion theQStart, const gp_Quaternion theQEnd, Standard_Real );

};
%feature("shadow") gp_QuaternionNLerp::~gp_QuaternionNLerp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_QuaternionNLerp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Elips;
class gp_Elips {
	public:
		%feature("autodoc", "1");
		gp_Elips(const gp_Elips arg0);
		%feature("autodoc", "1");
		gp_Elips();
		%feature("autodoc", "1");
		gp_Elips(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 A1);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt P);
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real R);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 A2);
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc", "1");
		const gp_Ax1  Axis() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix1() const;
		%feature("autodoc", "1");
		gp_Ax1 Directrix2() const;
		%feature("autodoc", "1");
		Standard_Real Eccentricity() const;
		%feature("autodoc", "1");
		Standard_Real Focal() const;
		%feature("autodoc", "1");
		gp_Pnt Focus1() const;
		%feature("autodoc", "1");
		gp_Pnt Focus2() const;
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		const gp_Ax2  Position() const;
		%feature("autodoc", "1");
		gp_Ax1 XAxis() const;
		%feature("autodoc", "1");
		gp_Ax1 YAxis() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt P);
		%feature("autodoc", "1");
		gp_Elips Mirrored(const gp_Pnt P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gp_Elips Mirrored(const gp_Ax1 A1) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gp_Elips Mirrored(const gp_Ax2 A2) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Ax1 A1, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Elips Rotated(const gp_Ax1 A1, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Elips Scaled(const gp_Pnt P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Elips Transformed(const gp_Trsf T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec V);
		%feature("autodoc", "1");
		gp_Elips Translated(const gp_Vec V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gp_Elips Translated(const gp_Pnt P1, const gp_Pnt P2) const;
		%feature("autodoc", "1");
		const gp_Ax2  _CSFDB_Getgp_Elipspos() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_ElipsmajorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_ElipsmajorRadius(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_ElipsminorRadius() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_ElipsminorRadius(const Standard_Real p);

};
%feature("shadow") gp_Elips::~gp_Elips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Elips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Ax2d;
class gp_Ax2d {
	public:
		%feature("autodoc", "1");
		gp_Ax2d(const gp_Ax2d arg0);
		%feature("autodoc", "1");
		gp_Ax2d();
		%feature("autodoc", "1");
		gp_Ax2d(const gp_Pnt2d P, const gp_Dir2d V);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt2d P);
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir2d V);
		%feature("autodoc", "1");
		const gp_Pnt2d  Location() const;
		%feature("autodoc", "1");
		const gp_Dir2d  Direction() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCoaxial(const gp_Ax2d Other, const Standard_Real AngularTolerance, const Standard_Real LinearTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNormal(const gp_Ax2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOpposite(const gp_Ax2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel(const gp_Ax2d Other, const Standard_Real AngularTolerance) const;
		%feature("autodoc", "1");
		Standard_Real Angle(const gp_Ax2d Other) const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Ax2d Reversed() const;
		%feature("autodoc", "1");
		void Mirror(const gp_Pnt2d P);
		%feature("autodoc", "1");
		gp_Ax2d Mirrored(const gp_Pnt2d P) const;
		%feature("autodoc", "1");
		void Mirror(const gp_Ax2d A);
		%feature("autodoc", "1");
		gp_Ax2d Mirrored(const gp_Ax2d A) const;
		%feature("autodoc", "1");
		void Rotate(const gp_Pnt2d P, const Standard_Real Ang);
		%feature("autodoc", "1");
		gp_Ax2d Rotated(const gp_Pnt2d P, const Standard_Real Ang) const;
		%feature("autodoc", "1");
		void Scale(const gp_Pnt2d P, const Standard_Real S);
		%feature("autodoc", "1");
		gp_Ax2d Scaled(const gp_Pnt2d P, const Standard_Real S) const;
		%feature("autodoc", "1");
		void Transform(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_Ax2d Transformed(const gp_Trsf2d T) const;
		%feature("autodoc", "1");
		void Translate(const gp_Vec2d V);
		%feature("autodoc", "1");
		gp_Ax2d Translated(const gp_Vec2d V) const;
		%feature("autodoc", "1");
		void Translate(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Ax2d Translated(const gp_Pnt2d P1, const gp_Pnt2d P2) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  _CSFDB_Getgp_Ax2dloc() const;
		%feature("autodoc", "1");
		const gp_Dir2d  _CSFDB_Getgp_Ax2dvdir() const;

};
%feature("shadow") gp_Ax2d::~gp_Ax2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Ax2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_GTrsf2d;
class gp_GTrsf2d {
	public:
		%feature("autodoc", "1");
		gp_GTrsf2d(const gp_GTrsf2d arg0);
		%feature("autodoc", "1");
		gp_GTrsf2d();
		%feature("autodoc", "1");
		gp_GTrsf2d(const gp_Trsf2d T);
		%feature("autodoc", "1");
		gp_GTrsf2d(const gp_Mat2d M, const gp_XY V);
		%feature("autodoc", "1");
		void SetAffinity(const gp_Ax2d A, const Standard_Real Ratio);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real Value);
		%feature("autodoc", "1");
		void SetTranslationPart(const gp_XY Coord);
		%feature("autodoc", "1");
		void SetTrsf2d(const gp_Trsf2d T);
		%feature("autodoc", "1");
		void SetVectorialPart(const gp_Mat2d Matrix);
		%feature("autodoc", "1");
		Standard_Boolean IsNegative() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSingular() const;
		%feature("autodoc", "1");
		gp_TrsfForm Form() const;
		%feature("autodoc", "1");
		const gp_XY  TranslationPart() const;
		%feature("autodoc", "1");
		const gp_Mat2d  VectorialPart() const;
		%feature("autodoc", "1");
		Standard_Real Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Standard_Real operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		gp_GTrsf2d Inverted() const;
		%feature("autodoc", "1");
		void Multiply(const gp_GTrsf2d T);
		%feature("autodoc", "1");
		void operator*=(const gp_GTrsf2d T);
		%feature("autodoc", "1");
		gp_GTrsf2d Multiplied(const gp_GTrsf2d T) const;
		%feature("autodoc", "1");
		gp_GTrsf2d operator*(const gp_GTrsf2d T) const;
		%feature("autodoc", "1");
		void PreMultiply(const gp_GTrsf2d T);
		%feature("autodoc", "1");
		void Power(const Standard_Integer N);
		%feature("autodoc", "1");
		gp_GTrsf2d Powered(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void Transforms(gp_XY & Coord) const;
		%feature("autodoc", "1");
		gp_XY Transformed(const gp_XY Coord) const;
		%feature("autodoc","Transforms() -> [Standard_Real, Standard_Real]");

		void Transforms(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Trsf2d Trsf2d() const;
		%feature("autodoc", "1");
		const gp_Mat2d  _CSFDB_Getgp_GTrsf2dmatrix() const;
		%feature("autodoc", "1");
		const gp_XY  _CSFDB_Getgp_GTrsf2dloc() const;
		%feature("autodoc", "1");
		gp_TrsfForm _CSFDB_Getgp_GTrsf2dshape() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_GTrsf2dshape(const gp_TrsfForm p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_Getgp_GTrsf2dscale() const;
		%feature("autodoc", "1");
		void _CSFDB_Setgp_GTrsf2dscale(const Standard_Real p);

};
%feature("shadow") gp_GTrsf2d::~gp_GTrsf2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_GTrsf2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp;
class gp {
	public:
		%feature("autodoc", "1");
		gp(const gp arg0);
		%feature("autodoc", "1");
		gp();
		%feature("autodoc", "1");
		static		Standard_Real Resolution();
		%feature("autodoc", "1");
		static		const gp_Pnt  Origin();
		%feature("autodoc", "1");
		static		const gp_Dir  DX();
		%feature("autodoc", "1");
		static		const gp_Dir  DY();
		%feature("autodoc", "1");
		static		const gp_Dir  DZ();
		%feature("autodoc", "1");
		static		const gp_Ax1  OX();
		%feature("autodoc", "1");
		static		const gp_Ax1  OY();
		%feature("autodoc", "1");
		static		const gp_Ax1  OZ();
		%feature("autodoc", "1");
		static		const gp_Ax2  XOY();
		%feature("autodoc", "1");
		static		const gp_Ax2  ZOX();
		%feature("autodoc", "1");
		static		const gp_Ax2  YOZ();
		%feature("autodoc", "1");
		static		const gp_Pnt2d  Origin2d();
		%feature("autodoc", "1");
		static		const gp_Dir2d  DX2d();
		%feature("autodoc", "1");
		static		const gp_Dir2d  DY2d();
		%feature("autodoc", "1");
		static		const gp_Ax2d  OX2d();
		%feature("autodoc", "1");
		static		const gp_Ax2d  OY2d();

};
%feature("shadow") gp::~gp %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gp_Quaternion;
class gp_Quaternion {
	public:
		%feature("autodoc", "1");
		gp_Quaternion();
		%feature("autodoc", "1");
		gp_Quaternion(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real w);
		%feature("autodoc", "1");
		gp_Quaternion(const gp_Quaternion theToCopy);
		%feature("autodoc", "1");
		gp_Quaternion(const gp_Vec theVecFrom, const gp_Vec theVecTo);
		%feature("autodoc", "1");
		gp_Quaternion(const gp_Vec theVecFrom, const gp_Vec theVecTo, const gp_Vec theHelpCrossVec);
		%feature("autodoc", "1");
		gp_Quaternion(const gp_Vec theAxis, const Standard_Real theAngle);
		%feature("autodoc", "1");
		gp_Quaternion(const gp_Mat theMat);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const gp_Quaternion theOther) const;
		%feature("autodoc", "1");
		void SetRotation(const gp_Vec theVecFrom, const gp_Vec theVecTo);
		%feature("autodoc", "1");
		void SetRotation(const gp_Vec theVecFrom, const gp_Vec theVecTo, const gp_Vec theHelpCrossVec);
		%feature("autodoc", "1");
		void SetVectorAndAngle(const gp_Vec theAxis, const Standard_Real theAngle);
		%feature("autodoc","GetVectorAndAngle() -> Standard_Real");

		void GetVectorAndAngle(gp_Vec & theAxis, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetMatrix(const gp_Mat theMat);
		%feature("autodoc", "1");
		gp_Mat GetMatrix() const;
		%feature("autodoc", "1");
		void SetEulerAngles(const gp_EulerSequence theOrder, const Standard_Real theAlpha, const Standard_Real theBeta, const Standard_Real theGamma);
		%feature("autodoc","GetEulerAngles(gp_EulerSequence theOrder) -> [Standard_Real, Standard_Real, Standard_Real]");

		void GetEulerAngles(const gp_EulerSequence theOrder, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Set(Standard_Real , Standard_Real , Standard_Real , Standard_Real );
		%feature("autodoc", "1");
		void Set(const gp_Quaternion theQuaternion);
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		Standard_Real W() const;
		%feature("autodoc", "1");
		void SetIdent();
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		gp_Quaternion Reversed() const;
		%feature("autodoc", "1");
		void Invert();
		%feature("autodoc", "1");
		gp_Quaternion Inverted() const;
		%feature("autodoc", "1");
		Standard_Real SquareNorm() const;
		%feature("autodoc", "1");
		Standard_Real Norm() const;
		%feature("autodoc", "1");
		void Scale(const Standard_Real theScale);
		%feature("autodoc", "1");
		void operator*=(const Standard_Real theScale);
		%feature("autodoc", "1");
		gp_Quaternion Scaled(const Standard_Real theScale) const;
		%feature("autodoc", "1");
		gp_Quaternion operator*(const Standard_Real theScale) const;
		%feature("autodoc", "1");
		void StabilizeLength();
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		gp_Quaternion Normalized() const;
		%feature("autodoc", "1");
		gp_Quaternion Negated() const;
		%feature("autodoc", "1");
		gp_Quaternion operator-() const;
		%feature("autodoc", "1");
		gp_Quaternion Added(const gp_Quaternion theQ) const;
		%feature("autodoc", "1");
		gp_Quaternion operator+(const gp_Quaternion theOther) const;
		%feature("autodoc", "1");
		gp_Quaternion Subtracted(const gp_Quaternion theQ) const;
		%feature("autodoc", "1");
		gp_Quaternion operator-(const gp_Quaternion theOther) const;
		%feature("autodoc", "1");
		gp_Quaternion Multiplied(const gp_Quaternion theQ) const;
		%feature("autodoc", "1");
		gp_Quaternion operator*(const gp_Quaternion theOther) const;
		%feature("autodoc", "1");
		void Add(const gp_Quaternion theQ);
		%feature("autodoc", "1");
		void operator+=(const gp_Quaternion theOther);
		%feature("autodoc", "1");
		void Subtract(const gp_Quaternion theQ);
		%feature("autodoc", "1");
		void operator-=(const gp_Quaternion theOther);
		%feature("autodoc", "1");
		void Multiply(const gp_Quaternion theQ);
		%feature("autodoc", "1");
		void operator*=(const gp_Quaternion theOther);
		%feature("autodoc", "1");
		Standard_Real Dot(const gp_Quaternion theQ) const;
		%feature("autodoc", "1");
		Standard_Real GetRotationAngle() const;
		%feature("autodoc", "1");
		gp_Vec Multiply(const gp_Vec theVec) const;
		%feature("autodoc", "1");
		gp_Vec operator*(const gp_Vec theVec) const;

};
%feature("shadow") gp_Quaternion::~gp_Quaternion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gp_Quaternion {
	void _kill_pointed() {
		delete $self;
	}
};
