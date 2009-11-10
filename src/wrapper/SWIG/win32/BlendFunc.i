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
%module BlendFunc

%include BlendFunc_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BlendFunc_dependencies.i


%include BlendFunc_headers.i


enum BlendFunc_SectionShape {
	BlendFunc_Rational,
	BlendFunc_QuasiAngular,
	BlendFunc_Polynomial,
	BlendFunc_Linear,
	};



%nodefaultctor BlendFunc;
class BlendFunc {
	public:
		%feature("autodoc", "1");
		BlendFunc();
		%feature("autodoc","GetShape(BlendFunc_SectionShape SectShape, Standard_Real MaxAng) -> [Standard_IntegerStandard_IntegerStandard_Integer]");
		void GetShape(const BlendFunc_SectionShape SectShape, const Standard_Real MaxAng, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Convert_ParameterisationType & TypeConv);
		%feature("autodoc", "1");
		void GetMinimalWeights(const BlendFunc_SectionShape SectShape, const Convert_ParameterisationType TConv, const Standard_Real AngleMin, const Standard_Real AngleMax, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		GeomAbs_Shape NextShape(const GeomAbs_Shape S);

};
%feature("shadow") BlendFunc::~BlendFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BlendFunc_Tensor;
class BlendFunc_Tensor {
	public:
		%feature("autodoc", "1");
		BlendFunc_Tensor(const Standard_Integer NbRow, const Standard_Integer NbCol, const Standard_Integer NbMat);
		%feature("autodoc", "1");
		void Init(const Standard_Real InitialValue);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) {
				return (Standard_Real) $self->ChangeValue(Row,Col,Mat);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) {
				$self->ChangeValue(Row,Col,Mat)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat);
		%feature("autodoc", "1");
		void Multiply(const math_Vector &Right, math_Matrix & Product) const;

};
%feature("shadow") BlendFunc_Tensor::~BlendFunc_Tensor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BlendFunc_Tensor {
	void _kill_pointed() {
		delete $self;
	}
};
