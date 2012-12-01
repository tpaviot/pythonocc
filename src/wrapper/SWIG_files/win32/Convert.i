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

%module Convert
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Convert_renames.i


%include Convert_required_python_modules.i


%include Convert_dependencies.i


%include Convert_headers.i

typedef TColgp_SequenceOfArray1OfPnt2d Convert_SequenceOfArray1OfPoles2d;

enum Convert_ParameterisationType {
	Convert_TgtThetaOver2,
	Convert_TgtThetaOver2_1,
	Convert_TgtThetaOver2_2,
	Convert_TgtThetaOver2_3,
	Convert_TgtThetaOver2_4,
	Convert_QuasiAngular,
	Convert_RationalC1,
	Convert_Polynomial,
	};



%nodefaultctor Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles;
class Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles();
		%feature("autodoc", "1");
		Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles(const Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles &aHandle);
		%feature("autodoc", "1");
		Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles(const Convert_SequenceNodeOfSequenceOfArray1OfPoles *anItem);
		%feature("autodoc", "1");
		Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles & operator=(const Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles &aHandle);
		%feature("autodoc", "1");
		Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles & operator=(const Convert_SequenceNodeOfSequenceOfArray1OfPoles *anItem);
		%feature("autodoc", "1");
		static		Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles {
	Convert_SequenceNodeOfSequenceOfArray1OfPoles* GetObject() {
	return (Convert_SequenceNodeOfSequenceOfArray1OfPoles*)$self->Access();
	}
};
%feature("shadow") Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles::~Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_ElementarySurfaceToBSplineSurface;
class Convert_ElementarySurfaceToBSplineSurface {
	public:
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		gp_Pnt Pole(const Standard_Integer UIndex, const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer UIndex, const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		Standard_Real UKnot(const Standard_Integer UIndex) const;
		%feature("autodoc", "1");
		Standard_Real VKnot(const Standard_Integer UIndex) const;
		%feature("autodoc", "1");
		Standard_Integer UMultiplicity(const Standard_Integer UIndex) const;
		%feature("autodoc", "1");
		Standard_Integer VMultiplicity(const Standard_Integer VIndex) const;

};
%feature("shadow") Convert_ElementarySurfaceToBSplineSurface::~Convert_ElementarySurfaceToBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_ElementarySurfaceToBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Convert_ElementarySurfaceToBSplineSurface {
	Convert_ElementarySurfaceToBSplineSurface () {}
};


%nodefaultctor Convert_ConeToBSplineSurface;
class Convert_ConeToBSplineSurface : public Convert_ElementarySurfaceToBSplineSurface {
	public:
		%feature("autodoc", "1");
		Convert_ConeToBSplineSurface(const gp_Cone C, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		Convert_ConeToBSplineSurface(const gp_Cone C, const Standard_Real V1, const Standard_Real V2);

};
%feature("shadow") Convert_ConeToBSplineSurface::~Convert_ConeToBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_ConeToBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_ConicToBSplineCurve;
class Convert_ConicToBSplineCurve {
	public:
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		gp_Pnt2d Pole(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Knot(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Multiplicity(const Standard_Integer Index) const;
		%feature("autodoc","BuildCosAndSin(Convert_ParameterisationType Parametrisation) -> Standard_Integer");

		void BuildCosAndSin(const Convert_ParameterisationType Parametrisation, Handle_TColStd_HArray1OfReal & CosNumerator, Handle_TColStd_HArray1OfReal & SinNumerator, Handle_TColStd_HArray1OfReal & Denominator, Standard_Integer &OutValue, Handle_TColStd_HArray1OfReal & Knots, Handle_TColStd_HArray1OfInteger & Mults) const;
		%feature("autodoc","BuildCosAndSin(Convert_ParameterisationType Parametrisation, Standard_Real UFirst, Standard_Real ULast) -> Standard_Integer");

		void BuildCosAndSin(const Convert_ParameterisationType Parametrisation, const Standard_Real UFirst, const Standard_Real ULast, Handle_TColStd_HArray1OfReal & CosNumerator, Handle_TColStd_HArray1OfReal & SinNumerator, Handle_TColStd_HArray1OfReal & Denominator, Standard_Integer &OutValue, Handle_TColStd_HArray1OfReal & Knots, Handle_TColStd_HArray1OfInteger & Mults) const;

};
%feature("shadow") Convert_ConicToBSplineCurve::~Convert_ConicToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_ConicToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Convert_ConicToBSplineCurve {
	Convert_ConicToBSplineCurve () {}
};


%nodefaultctor Convert_TorusToBSplineSurface;
class Convert_TorusToBSplineSurface : public Convert_ElementarySurfaceToBSplineSurface {
	public:
		%feature("autodoc", "1");
		Convert_TorusToBSplineSurface(const gp_Torus T, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		Convert_TorusToBSplineSurface(const gp_Torus T, const Standard_Real Param1, const Standard_Real Param2, const Standard_Boolean UTrim=1);
		%feature("autodoc", "1");
		Convert_TorusToBSplineSurface(const gp_Torus T);

};
%feature("shadow") Convert_TorusToBSplineSurface::~Convert_TorusToBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_TorusToBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_CircleToBSplineCurve;
class Convert_CircleToBSplineCurve : public Convert_ConicToBSplineCurve {
	public:
		%feature("autodoc", "1");
		Convert_CircleToBSplineCurve(const gp_Circ2d C, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		Convert_CircleToBSplineCurve(const gp_Circ2d C, const Standard_Real U1, const Standard_Real U2, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);

};
%feature("shadow") Convert_CircleToBSplineCurve::~Convert_CircleToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_CircleToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_CompBezierCurves2dToBSplineCurve2d;
class Convert_CompBezierCurves2dToBSplineCurve2d {
	public:
		%feature("autodoc", "1");
		Convert_CompBezierCurves2dToBSplineCurve2d(const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void AddCurve(const TColgp_Array1OfPnt2d &Poles);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt2d & Poles) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void KnotsAndMults(TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults) const;

};
%feature("shadow") Convert_CompBezierCurves2dToBSplineCurve2d::~Convert_CompBezierCurves2dToBSplineCurve2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_CompBezierCurves2dToBSplineCurve2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_HyperbolaToBSplineCurve;
class Convert_HyperbolaToBSplineCurve : public Convert_ConicToBSplineCurve {
	public:
		%feature("autodoc", "1");
		Convert_HyperbolaToBSplineCurve(const gp_Hypr2d H, const Standard_Real U1, const Standard_Real U2);

};
%feature("shadow") Convert_HyperbolaToBSplineCurve::~Convert_HyperbolaToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_HyperbolaToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_GridPolynomialToPoles;
class Convert_GridPolynomialToPoles {
	public:
		%feature("autodoc", "1");
		Convert_GridPolynomialToPoles(const Standard_Integer MaxUDegree, const Standard_Integer MaxVDegree, const Handle_TColStd_HArray1OfInteger &NumCoeff, const Handle_TColStd_HArray1OfReal &Coefficients, const Handle_TColStd_HArray1OfReal &PolynomialUIntervals, const Handle_TColStd_HArray1OfReal &PolynomialVIntervals);
		%feature("autodoc", "1");
		Convert_GridPolynomialToPoles(const Standard_Integer NbUSurfaces, const Standard_Integer NBVSurfaces, const Standard_Integer UContinuity, const Standard_Integer VContinuity, const Standard_Integer MaxUDegree, const Standard_Integer MaxVDegree, const Handle_TColStd_HArray2OfInteger &NumCoeffPerSurface, const Handle_TColStd_HArray1OfReal &Coefficients, const Handle_TColStd_HArray1OfReal &PolynomialUIntervals, const Handle_TColStd_HArray1OfReal &PolynomialVIntervals, const Handle_TColStd_HArray1OfReal &TrueUIntervals, const Handle_TColStd_HArray1OfReal &TrueVIntervals);
		%feature("autodoc", "1");
		void Perform(const Standard_Integer UContinuity, const Standard_Integer VContinuity, const Standard_Integer MaxUDegree, const Standard_Integer MaxVDegree, const Handle_TColStd_HArray2OfInteger &NumCoeffPerSurface, const Handle_TColStd_HArray1OfReal &Coefficients, const Handle_TColStd_HArray1OfReal &PolynomialUIntervals, const Handle_TColStd_HArray1OfReal &PolynomialVIntervals, const Handle_TColStd_HArray1OfReal &TrueUIntervals, const Handle_TColStd_HArray1OfReal &TrueVIntervals);
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray2OfPnt & Poles() const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		Standard_Integer NbUKnots() const;
		%feature("autodoc", "1");
		Standard_Integer NbVKnots() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & UKnots() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & VKnots() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & UMultiplicities() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & VMultiplicities() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") Convert_GridPolynomialToPoles::~Convert_GridPolynomialToPoles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_GridPolynomialToPoles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_CompBezierCurvesToBSplineCurve;
class Convert_CompBezierCurvesToBSplineCurve {
	public:
		%feature("autodoc", "1");
		Convert_CompBezierCurvesToBSplineCurve(const Standard_Real AngularTolerance=1.00000000000000004792173602385929598312941379845e-4);
		%feature("autodoc", "1");
		void AddCurve(const TColgp_Array1OfPnt &Poles);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array1OfPnt & Poles) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void KnotsAndMults(TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults) const;

};
%feature("shadow") Convert_CompBezierCurvesToBSplineCurve::~Convert_CompBezierCurvesToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_CompBezierCurvesToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_SequenceOfArray1OfPoles;
class Convert_SequenceOfArray1OfPoles : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Convert_SequenceOfArray1OfPoles();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Convert_SequenceOfArray1OfPoles & Assign(const Convert_SequenceOfArray1OfPoles &Other);
		%feature("autodoc", "1");
		const Convert_SequenceOfArray1OfPoles & operator=(const Convert_SequenceOfArray1OfPoles &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HArray1OfPnt &T);
		%feature("autodoc", "1");
		void Append(Convert_SequenceOfArray1OfPoles & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HArray1OfPnt &T);
		%feature("autodoc", "1");
		void Prepend(Convert_SequenceOfArray1OfPoles & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Convert_SequenceOfArray1OfPoles & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Convert_SequenceOfArray1OfPoles & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt & First() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Convert_SequenceOfArray1OfPoles & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt &I);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Convert_SequenceOfArray1OfPoles::~Convert_SequenceOfArray1OfPoles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_SequenceOfArray1OfPoles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_CylinderToBSplineSurface;
class Convert_CylinderToBSplineSurface : public Convert_ElementarySurfaceToBSplineSurface {
	public:
		%feature("autodoc", "1");
		Convert_CylinderToBSplineSurface(const gp_Cylinder Cyl, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		Convert_CylinderToBSplineSurface(const gp_Cylinder Cyl, const Standard_Real V1, const Standard_Real V2);

};
%feature("shadow") Convert_CylinderToBSplineSurface::~Convert_CylinderToBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_CylinderToBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_CompPolynomialToPoles;
class Convert_CompPolynomialToPoles {
	public:
		%feature("autodoc", "1");
		Convert_CompPolynomialToPoles(const Standard_Integer NumCurves, const Standard_Integer Continuity, const Standard_Integer Dimension, const Standard_Integer MaxDegree, const Handle_TColStd_HArray1OfInteger &NumCoeffPerCurve, const Handle_TColStd_HArray1OfReal &Coefficients, const Handle_TColStd_HArray2OfReal &PolynomialIntervals, const Handle_TColStd_HArray1OfReal &TrueIntervals);
		%feature("autodoc", "1");
		Convert_CompPolynomialToPoles(const Standard_Integer NumCurves, const Standard_Integer Dimension, const Standard_Integer MaxDegree, const TColStd_Array1OfInteger &Continuity, const TColStd_Array1OfInteger &NumCoeffPerCurve, const TColStd_Array1OfReal &Coefficients, const TColStd_Array2OfReal &PolynomialIntervals, const TColStd_Array1OfReal &TrueIntervals);
		%feature("autodoc", "1");
		Convert_CompPolynomialToPoles(const Standard_Integer Dimension, const Standard_Integer MaxDegree, const Standard_Integer Degree, const TColStd_Array1OfReal &Coefficients, const TColStd_Array1OfReal &PolynomialIntervals, const TColStd_Array1OfReal &TrueIntervals);
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(Handle_TColStd_HArray2OfReal & Poles) const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void Knots(Handle_TColStd_HArray1OfReal & K) const;
		%feature("autodoc", "1");
		void Multiplicities(Handle_TColStd_HArray1OfInteger & M) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};
%feature("shadow") Convert_CompPolynomialToPoles::~Convert_CompPolynomialToPoles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_CompPolynomialToPoles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_SequenceNodeOfSequenceOfArray1OfPoles;
class Convert_SequenceNodeOfSequenceOfArray1OfPoles : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Convert_SequenceNodeOfSequenceOfArray1OfPoles(const Handle_TColgp_HArray1OfPnt &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Convert_SequenceNodeOfSequenceOfArray1OfPoles {
	Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles GetHandle() {
	return *(Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles*) &$self;
	}
};
%extend Convert_SequenceNodeOfSequenceOfArray1OfPoles {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Convert_SequenceNodeOfSequenceOfArray1OfPoles::~Convert_SequenceNodeOfSequenceOfArray1OfPoles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_SequenceNodeOfSequenceOfArray1OfPoles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_ParabolaToBSplineCurve;
class Convert_ParabolaToBSplineCurve : public Convert_ConicToBSplineCurve {
	public:
		%feature("autodoc", "1");
		Convert_ParabolaToBSplineCurve(const gp_Parab2d Prb, const Standard_Real U1, const Standard_Real U2);

};
%feature("shadow") Convert_ParabolaToBSplineCurve::~Convert_ParabolaToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_ParabolaToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_EllipseToBSplineCurve;
class Convert_EllipseToBSplineCurve : public Convert_ConicToBSplineCurve {
	public:
		%feature("autodoc", "1");
		Convert_EllipseToBSplineCurve(const gp_Elips2d E, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);
		%feature("autodoc", "1");
		Convert_EllipseToBSplineCurve(const gp_Elips2d E, const Standard_Real U1, const Standard_Real U2, const Convert_ParameterisationType Parameterisation=Convert_TgtThetaOver2);

};
%feature("shadow") Convert_EllipseToBSplineCurve::~Convert_EllipseToBSplineCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_EllipseToBSplineCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Convert_SphereToBSplineSurface;
class Convert_SphereToBSplineSurface : public Convert_ElementarySurfaceToBSplineSurface {
	public:
		%feature("autodoc", "1");
		Convert_SphereToBSplineSurface(const gp_Sphere Sph, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		Convert_SphereToBSplineSurface(const gp_Sphere Sph, const Standard_Real Param1, const Standard_Real Param2, const Standard_Boolean UTrim=1);
		%feature("autodoc", "1");
		Convert_SphereToBSplineSurface(const gp_Sphere Sph);

};
%feature("shadow") Convert_SphereToBSplineSurface::~Convert_SphereToBSplineSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Convert_SphereToBSplineSurface {
	void _kill_pointed() {
		delete $self;
	}
};
