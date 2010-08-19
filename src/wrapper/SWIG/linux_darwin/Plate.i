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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Plate
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Plate_renames.i


%include Plate_required_python_modules.i


%include Plate_dependencies.i


%include Plate_headers.i




%nodefaultctor Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint;
class Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint();
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint(const Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint(const Plate_SequenceNodeOfSequenceOfPinpointConstraint *anItem);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint & operator=(const Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint & operator=(const Plate_SequenceNodeOfSequenceOfPinpointConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint {
	Plate_SequenceNodeOfSequenceOfPinpointConstraint* GetObject() {
	return (Plate_SequenceNodeOfSequenceOfPinpointConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint::~Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint;
class Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint();
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint(const Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint(const Plate_SequenceNodeOfSequenceOfLinearXYZConstraint *anItem);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint & operator=(const Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint & operator=(const Plate_SequenceNodeOfSequenceOfLinearXYZConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint {
	Plate_SequenceNodeOfSequenceOfLinearXYZConstraint* GetObject() {
	return (Plate_SequenceNodeOfSequenceOfLinearXYZConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint::~Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Plate_HArray1OfPinpointConstraint;
class Handle_Plate_HArray1OfPinpointConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Plate_HArray1OfPinpointConstraint();
		%feature("autodoc", "1");
		Handle_Plate_HArray1OfPinpointConstraint(const Handle_Plate_HArray1OfPinpointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_HArray1OfPinpointConstraint(const Plate_HArray1OfPinpointConstraint *anItem);
		%feature("autodoc", "1");
		Handle_Plate_HArray1OfPinpointConstraint & operator=(const Handle_Plate_HArray1OfPinpointConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_HArray1OfPinpointConstraint & operator=(const Plate_HArray1OfPinpointConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_Plate_HArray1OfPinpointConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plate_HArray1OfPinpointConstraint {
	Plate_HArray1OfPinpointConstraint* GetObject() {
	return (Plate_HArray1OfPinpointConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_Plate_HArray1OfPinpointConstraint::~Handle_Plate_HArray1OfPinpointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Plate_HArray1OfPinpointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint;
class Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint();
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint(const Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint(const Plate_SequenceNodeOfSequenceOfLinearScalarConstraint *anItem);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint & operator=(const Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint & operator=(const Plate_SequenceNodeOfSequenceOfLinearScalarConstraint *anItem);
		%feature("autodoc", "1");
		static		Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint {
	Plate_SequenceNodeOfSequenceOfLinearScalarConstraint* GetObject() {
	return (Plate_SequenceNodeOfSequenceOfLinearScalarConstraint*)$self->Access();
	}
};
%feature("shadow") Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint::~Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_Plate;
class Plate_Plate {
	public:
		%feature("autodoc", "1");
		Plate_Plate();
		%feature("autodoc", "1");
		Plate_Plate(const Plate_Plate &Ref);
		%feature("autodoc", "1");
		Plate_Plate & Copy(const Plate_Plate &Ref);
		%feature("autodoc", "1");
		Plate_Plate & operator=(const Plate_Plate &Ref);
		%feature("autodoc", "1");
		void Load(const Plate_PinpointConstraint &PConst);
		%feature("autodoc", "1");
		void Load(const Plate_LinearXYZConstraint &LXYZConst);
		%feature("autodoc", "1");
		void Load(const Plate_LinearScalarConstraint &LScalarConst);
		%feature("autodoc", "1");
		void Load(const Plate_GlobalTranslationConstraint &GTConst);
		%feature("autodoc", "1");
		void Load(const Plate_LineConstraint &LConst);
		%feature("autodoc", "1");
		void Load(const Plate_PlaneConstraint &PConst);
		%feature("autodoc", "1");
		void Load(const Plate_SampledCurveConstraint &SCConst);
		%feature("autodoc", "1");
		void Load(const Plate_GtoCConstraint &GtoCConst);
		%feature("autodoc", "1");
		void Load(const Plate_FreeGtoCConstraint &FGtoCConst);
		%feature("autodoc", "1");
		void SolveTI(const Standard_Integer ord=4, const Standard_Real anisotropie=1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void destroy();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		gp_XYZ Evaluate(const gp_XY &point2d) const;
		%feature("autodoc", "1");
		gp_XYZ EvaluateDerivative(const gp_XY &point2d, const Standard_Integer iu, const Standard_Integer iv) const;
		%feature("autodoc", "1");
		void CoefPol(Handle_TColgp_HArray2OfXYZ & Coefs) const;
		%feature("autodoc", "1");
		void SetPolynomialPartOnly(const Standard_Boolean PPOnly=1);
		%feature("autodoc", "1");
		Standard_Integer Continuity() const;
		%feature("autodoc","UVBox() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void UVBox(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void UVConstraints(TColgp_SequenceOfXY & Seq) const;

};
%feature("shadow") Plate_Plate::~Plate_Plate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_Plate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_GlobalTranslationConstraint;
class Plate_GlobalTranslationConstraint {
	public:
		%feature("autodoc", "1");
		Plate_GlobalTranslationConstraint(const TColgp_SequenceOfXY &SOfXY);
		%feature("autodoc", "1");
		const Plate_LinearXYZConstraint & LXYZC() const;

};
%feature("shadow") Plate_GlobalTranslationConstraint::~Plate_GlobalTranslationConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_GlobalTranslationConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_PlaneConstraint;
class Plate_PlaneConstraint {
	public:
		%feature("autodoc", "1");
		Plate_PlaneConstraint(const gp_XY &point2d, const gp_Pln &pln, const Standard_Integer iu=0, const Standard_Integer iv=0);
		%feature("autodoc", "1");
		const Plate_LinearScalarConstraint & LSC() const;

};
%feature("shadow") Plate_PlaneConstraint::~Plate_PlaneConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_PlaneConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_LinearScalarConstraint;
class Plate_LinearScalarConstraint {
	public:
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint();
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint(const Plate_PinpointConstraint &PPC1, const gp_XYZ &coeff);
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint(const Plate_Array1OfPinpointConstraint &PPC, const TColgp_Array1OfXYZ &coeff);
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint(const Plate_Array1OfPinpointConstraint &PPC, const TColgp_Array2OfXYZ &coeff);
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint(const Standard_Integer ColLen, const Standard_Integer RowLen);
		%feature("autodoc", "1");
		const Plate_Array1OfPinpointConstraint & GetPPC() const;
		%feature("autodoc", "1");
		const TColgp_Array2OfXYZ & Coeff() const;
		%feature("autodoc", "1");
		void SetPPC(const Standard_Integer Index, const Plate_PinpointConstraint &Value);
		%feature("autodoc", "1");
		void SetCoeff(const Standard_Integer Row, const Standard_Integer Col, const gp_XYZ &Value);

};
%feature("shadow") Plate_LinearScalarConstraint::~Plate_LinearScalarConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_LinearScalarConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_SampledCurveConstraint;
class Plate_SampledCurveConstraint {
	public:
		%feature("autodoc", "1");
		Plate_SampledCurveConstraint(const Plate_SequenceOfPinpointConstraint &SOPPC, const Standard_Integer n);
		%feature("autodoc", "1");
		const Plate_LinearXYZConstraint & LXYZC() const;

};
%feature("shadow") Plate_SampledCurveConstraint::~Plate_SampledCurveConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_SampledCurveConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_LinearXYZConstraint;
class Plate_LinearXYZConstraint {
	public:
		%feature("autodoc", "1");
		Plate_LinearXYZConstraint();
		%feature("autodoc", "1");
		Plate_LinearXYZConstraint(const Plate_Array1OfPinpointConstraint &PPC, const TColStd_Array1OfReal &coeff);
		%feature("autodoc", "1");
		Plate_LinearXYZConstraint(const Plate_Array1OfPinpointConstraint &PPC, const TColStd_Array2OfReal &coeff);
		%feature("autodoc", "1");
		Plate_LinearXYZConstraint(const Standard_Integer ColLen, const Standard_Integer RowLen);
		%feature("autodoc", "1");
		const Plate_Array1OfPinpointConstraint & GetPPC() const;
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & Coeff() const;
		%feature("autodoc", "1");
		void SetPPC(const Standard_Integer Index, const Plate_PinpointConstraint &Value);
		%feature("autodoc", "1");
		void SetCoeff(const Standard_Integer Row, const Standard_Integer Col, const Standard_Real Value);

};
%feature("shadow") Plate_LinearXYZConstraint::~Plate_LinearXYZConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_LinearXYZConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_GtoCConstraint;
class Plate_GtoCConstraint {
	public:
		%feature("autodoc", "1");
		Plate_GtoCConstraint(const Plate_GtoCConstraint &ref);
		%feature("autodoc", "1");
		Plate_GtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T);
		%feature("autodoc", "1");
		Plate_GtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const gp_XYZ &nP);
		%feature("autodoc", "1");
		Plate_GtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const Plate_D2 &D2S, const Plate_D2 &D2T);
		%feature("autodoc", "1");
		Plate_GtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const Plate_D2 &D2S, const Plate_D2 &D2T, const gp_XYZ &nP);
		%feature("autodoc", "1");
		Plate_GtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const Plate_D2 &D2S, const Plate_D2 &D2T, const Plate_D3 &D3S, const Plate_D3 &D3T);
		%feature("autodoc", "1");
		Plate_GtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const Plate_D2 &D2S, const Plate_D2 &D2T, const Plate_D3 &D3S, const Plate_D3 &D3T, const gp_XYZ &nP);
		%feature("autodoc", "1");
		const Standard_Integer & nb_PPC() const;
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & GetPPC(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Plate_D1 & D1SurfInit() const;

};
%feature("shadow") Plate_GtoCConstraint::~Plate_GtoCConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_GtoCConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_HArray1OfPinpointConstraint;
class Plate_HArray1OfPinpointConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Plate_HArray1OfPinpointConstraint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Plate_HArray1OfPinpointConstraint(const Standard_Integer Low, const Standard_Integer Up, const Plate_PinpointConstraint &V);
		%feature("autodoc", "1");
		void Init(const Plate_PinpointConstraint &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Plate_PinpointConstraint &Value);
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Plate_PinpointConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Plate_Array1OfPinpointConstraint & Array1() const;
		%feature("autodoc", "1");
		Plate_Array1OfPinpointConstraint & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Plate_HArray1OfPinpointConstraint {
	Handle_Plate_HArray1OfPinpointConstraint GetHandle() {
	return *(Handle_Plate_HArray1OfPinpointConstraint*) &$self;
	}
};
%extend Plate_HArray1OfPinpointConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Plate_HArray1OfPinpointConstraint::~Plate_HArray1OfPinpointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_HArray1OfPinpointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_SequenceNodeOfSequenceOfPinpointConstraint;
class Plate_SequenceNodeOfSequenceOfPinpointConstraint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Plate_SequenceNodeOfSequenceOfPinpointConstraint(const Plate_PinpointConstraint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Plate_PinpointConstraint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Plate_SequenceNodeOfSequenceOfPinpointConstraint {
	Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint GetHandle() {
	return *(Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint*) &$self;
	}
};
%extend Plate_SequenceNodeOfSequenceOfPinpointConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Plate_SequenceNodeOfSequenceOfPinpointConstraint::~Plate_SequenceNodeOfSequenceOfPinpointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_SequenceNodeOfSequenceOfPinpointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_D3;
class Plate_D3 {
	public:
		%feature("autodoc", "1");
		Plate_D3(const gp_XYZ &duuu, const gp_XYZ &duuv, const gp_XYZ &duvv, const gp_XYZ &dvvv);
		%feature("autodoc", "1");
		Plate_D3(const Plate_D3 &ref);

};
%feature("shadow") Plate_D3::~Plate_D3 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_D3 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_SequenceOfLinearXYZConstraint;
class Plate_SequenceOfLinearXYZConstraint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Plate_SequenceOfLinearXYZConstraint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Plate_SequenceOfLinearXYZConstraint & Assign(const Plate_SequenceOfLinearXYZConstraint &Other);
		%feature("autodoc", "1");
		const Plate_SequenceOfLinearXYZConstraint & operator=(const Plate_SequenceOfLinearXYZConstraint &Other);
		%feature("autodoc", "1");
		void Append(const Plate_LinearXYZConstraint &T);
		%feature("autodoc", "1");
		void Append(Plate_SequenceOfLinearXYZConstraint & S);
		%feature("autodoc", "1");
		void Prepend(const Plate_LinearXYZConstraint &T);
		%feature("autodoc", "1");
		void Prepend(Plate_SequenceOfLinearXYZConstraint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Plate_LinearXYZConstraint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Plate_SequenceOfLinearXYZConstraint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Plate_LinearXYZConstraint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Plate_SequenceOfLinearXYZConstraint & S);
		%feature("autodoc", "1");
		const Plate_LinearXYZConstraint & First() const;
		%feature("autodoc", "1");
		const Plate_LinearXYZConstraint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Plate_SequenceOfLinearXYZConstraint & S);
		%feature("autodoc", "1");
		const Plate_LinearXYZConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Plate_LinearXYZConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Plate_LinearXYZConstraint &I);
		%feature("autodoc", "1");
		Plate_LinearXYZConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Plate_LinearXYZConstraint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Plate_SequenceOfLinearXYZConstraint::~Plate_SequenceOfLinearXYZConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_SequenceOfLinearXYZConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_D1;
class Plate_D1 {
	public:
		%feature("autodoc", "1");
		Plate_D1(const gp_XYZ &du, const gp_XYZ &dv);
		%feature("autodoc", "1");
		Plate_D1(const Plate_D1 &ref);
		%feature("autodoc", "1");
		const gp_XYZ & DU() const;
		%feature("autodoc", "1");
		const gp_XYZ & DV() const;

};
%feature("shadow") Plate_D1::~Plate_D1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_D1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_D2;
class Plate_D2 {
	public:
		%feature("autodoc", "1");
		Plate_D2(const gp_XYZ &duu, const gp_XYZ &duv, const gp_XYZ &dvv);
		%feature("autodoc", "1");
		Plate_D2(const Plate_D2 &ref);

};
%feature("shadow") Plate_D2::~Plate_D2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_D2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_SequenceOfPinpointConstraint;
class Plate_SequenceOfPinpointConstraint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Plate_SequenceOfPinpointConstraint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Plate_SequenceOfPinpointConstraint & Assign(const Plate_SequenceOfPinpointConstraint &Other);
		%feature("autodoc", "1");
		const Plate_SequenceOfPinpointConstraint & operator=(const Plate_SequenceOfPinpointConstraint &Other);
		%feature("autodoc", "1");
		void Append(const Plate_PinpointConstraint &T);
		%feature("autodoc", "1");
		void Append(Plate_SequenceOfPinpointConstraint & S);
		%feature("autodoc", "1");
		void Prepend(const Plate_PinpointConstraint &T);
		%feature("autodoc", "1");
		void Prepend(Plate_SequenceOfPinpointConstraint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Plate_PinpointConstraint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Plate_SequenceOfPinpointConstraint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Plate_PinpointConstraint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Plate_SequenceOfPinpointConstraint & S);
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & First() const;
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Plate_SequenceOfPinpointConstraint & S);
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Plate_PinpointConstraint &I);
		%feature("autodoc", "1");
		Plate_PinpointConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Plate_PinpointConstraint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Plate_SequenceOfPinpointConstraint::~Plate_SequenceOfPinpointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_SequenceOfPinpointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_Array1OfPinpointConstraint;
class Plate_Array1OfPinpointConstraint {
	public:
		%feature("autodoc", "1");
		Plate_Array1OfPinpointConstraint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Plate_Array1OfPinpointConstraint(const Plate_PinpointConstraint &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Plate_PinpointConstraint &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Plate_Array1OfPinpointConstraint & Assign(const Plate_Array1OfPinpointConstraint &Other);
		%feature("autodoc", "1");
		const Plate_Array1OfPinpointConstraint & operator=(const Plate_Array1OfPinpointConstraint &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Plate_PinpointConstraint &Value);
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Plate_PinpointConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Plate_PinpointConstraint & operator()(const Standard_Integer Index);

};
%feature("shadow") Plate_Array1OfPinpointConstraint::~Plate_Array1OfPinpointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_Array1OfPinpointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_PinpointConstraint;
class Plate_PinpointConstraint {
	public:
		%feature("autodoc", "1");
		Plate_PinpointConstraint();
		%feature("autodoc", "1");
		Plate_PinpointConstraint(const gp_XY &point2d, const gp_XYZ &ImposedValue, const Standard_Integer iu=0, const Standard_Integer iv=0);
		%feature("autodoc", "1");
		const gp_XY & Pnt2d() const;
		%feature("autodoc", "1");
		const Standard_Integer & Idu() const;
		%feature("autodoc", "1");
		const Standard_Integer & Idv() const;
		%feature("autodoc", "1");
		const gp_XYZ & Value() const;

};
%feature("shadow") Plate_PinpointConstraint::~Plate_PinpointConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_PinpointConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_SequenceNodeOfSequenceOfLinearScalarConstraint;
class Plate_SequenceNodeOfSequenceOfLinearScalarConstraint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Plate_SequenceNodeOfSequenceOfLinearScalarConstraint(const Plate_LinearScalarConstraint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Plate_SequenceNodeOfSequenceOfLinearScalarConstraint {
	Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint GetHandle() {
	return *(Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint*) &$self;
	}
};
%extend Plate_SequenceNodeOfSequenceOfLinearScalarConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Plate_SequenceNodeOfSequenceOfLinearScalarConstraint::~Plate_SequenceNodeOfSequenceOfLinearScalarConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_SequenceNodeOfSequenceOfLinearScalarConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_SequenceNodeOfSequenceOfLinearXYZConstraint;
class Plate_SequenceNodeOfSequenceOfLinearXYZConstraint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Plate_SequenceNodeOfSequenceOfLinearXYZConstraint(const Plate_LinearXYZConstraint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Plate_LinearXYZConstraint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Plate_SequenceNodeOfSequenceOfLinearXYZConstraint {
	Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint GetHandle() {
	return *(Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint*) &$self;
	}
};
%extend Plate_SequenceNodeOfSequenceOfLinearXYZConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Plate_SequenceNodeOfSequenceOfLinearXYZConstraint::~Plate_SequenceNodeOfSequenceOfLinearXYZConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_SequenceNodeOfSequenceOfLinearXYZConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_FreeGtoCConstraint;
class Plate_FreeGtoCConstraint {
	public:
		%feature("autodoc", "1");
		Plate_FreeGtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const Standard_Real IncrementalLoad=1.0e+0, const Standard_Integer orientation=0);
		%feature("autodoc", "1");
		Plate_FreeGtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const Plate_D2 &D2S, const Plate_D2 &D2T, const Standard_Real IncrementalLoad=1.0e+0, const Standard_Integer orientation=0);
		%feature("autodoc", "1");
		Plate_FreeGtoCConstraint(const gp_XY &point2d, const Plate_D1 &D1S, const Plate_D1 &D1T, const Plate_D2 &D2S, const Plate_D2 &D2T, const Plate_D3 &D3S, const Plate_D3 &D3T, const Standard_Real IncrementalLoad=1.0e+0, const Standard_Integer orientation=0);
		%feature("autodoc", "1");
		const Standard_Integer & nb_PPC() const;
		%feature("autodoc", "1");
		const Plate_PinpointConstraint & GetPPC(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & nb_LSC() const;
		%feature("autodoc", "1");
		const Plate_LinearScalarConstraint & LSC(const Standard_Integer Index) const;

};
%feature("shadow") Plate_FreeGtoCConstraint::~Plate_FreeGtoCConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_FreeGtoCConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_LineConstraint;
class Plate_LineConstraint {
	public:
		%feature("autodoc", "1");
		Plate_LineConstraint(const gp_XY &point2d, const gp_Lin &lin, const Standard_Integer iu=0, const Standard_Integer iv=0);
		%feature("autodoc", "1");
		const Plate_LinearScalarConstraint & LSC() const;

};
%feature("shadow") Plate_LineConstraint::~Plate_LineConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_LineConstraint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Plate_SequenceOfLinearScalarConstraint;
class Plate_SequenceOfLinearScalarConstraint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Plate_SequenceOfLinearScalarConstraint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Plate_SequenceOfLinearScalarConstraint & Assign(const Plate_SequenceOfLinearScalarConstraint &Other);
		%feature("autodoc", "1");
		const Plate_SequenceOfLinearScalarConstraint & operator=(const Plate_SequenceOfLinearScalarConstraint &Other);
		%feature("autodoc", "1");
		void Append(const Plate_LinearScalarConstraint &T);
		%feature("autodoc", "1");
		void Append(Plate_SequenceOfLinearScalarConstraint & S);
		%feature("autodoc", "1");
		void Prepend(const Plate_LinearScalarConstraint &T);
		%feature("autodoc", "1");
		void Prepend(Plate_SequenceOfLinearScalarConstraint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Plate_LinearScalarConstraint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Plate_SequenceOfLinearScalarConstraint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Plate_LinearScalarConstraint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Plate_SequenceOfLinearScalarConstraint & S);
		%feature("autodoc", "1");
		const Plate_LinearScalarConstraint & First() const;
		%feature("autodoc", "1");
		const Plate_LinearScalarConstraint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Plate_SequenceOfLinearScalarConstraint & S);
		%feature("autodoc", "1");
		const Plate_LinearScalarConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Plate_LinearScalarConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Plate_LinearScalarConstraint &I);
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Plate_LinearScalarConstraint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Plate_SequenceOfLinearScalarConstraint::~Plate_SequenceOfLinearScalarConstraint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Plate_SequenceOfLinearScalarConstraint {
	void _kill_pointed() {
		delete $self;
	}
};
