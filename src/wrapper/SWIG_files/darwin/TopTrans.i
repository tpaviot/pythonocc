/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module TopTrans
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TopTrans_renames.i


%include TopTrans_required_python_modules.i


%include TopTrans_dependencies.i


%include TopTrans_headers.i




%nodefaultctor TopTrans_CurveTransition;
class TopTrans_CurveTransition {
	public:
		%feature("autodoc", "1");
		TopTrans_CurveTransition();
		%feature("autodoc", "1");
		void Reset(const gp_Dir Tgt, const gp_Dir Norm, const Standard_Real Curv);
		%feature("autodoc", "1");
		void Reset(const gp_Dir Tgt);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir Tang, const gp_Dir Norm, const Standard_Real Curv, const TopAbs_Orientation S, const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;

};
%feature("shadow") TopTrans_CurveTransition::~TopTrans_CurveTransition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTrans_CurveTransition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTrans_Array2OfOrientation;
class TopTrans_Array2OfOrientation {
	public:
		%feature("autodoc", "1");
		TopTrans_Array2OfOrientation(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TopTrans_Array2OfOrientation(const TopAbs_Orientation &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const TopAbs_Orientation &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TopTrans_Array2OfOrientation & Assign(const TopTrans_Array2OfOrientation &Other);
		%feature("autodoc", "1");
		const TopTrans_Array2OfOrientation & operator=(const TopTrans_Array2OfOrientation &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const TopAbs_Orientation &Value);
		%feature("autodoc", "1");
		const TopAbs_Orientation & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const TopAbs_Orientation & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		TopAbs_Orientation & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		TopAbs_Orientation & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TopTrans_Array2OfOrientation::~TopTrans_Array2OfOrientation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTrans_Array2OfOrientation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTrans_SurfaceTransition;
class TopTrans_SurfaceTransition {
	public:
		%feature("autodoc", "1");
		TopTrans_SurfaceTransition();
		%feature("autodoc", "1");
		void Reset(const gp_Dir Tgt, const gp_Dir Norm, const gp_Dir MaxD, const gp_Dir MinD, const Standard_Real MaxCurv, const Standard_Real MinCurv);
		%feature("autodoc", "1");
		void Reset(const gp_Dir Tgt, const gp_Dir Norm);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir Norm, const gp_Dir MaxD, const gp_Dir MinD, const Standard_Real MaxCurv, const Standard_Real MinCurv, const TopAbs_Orientation S, const TopAbs_Orientation O);
		%feature("autodoc", "1");
		void Compare(const Standard_Real Tole, const gp_Dir Norm, const TopAbs_Orientation S, const TopAbs_Orientation O);
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;
		%feature("autodoc", "1");
		static		TopAbs_State GetBefore(const TopAbs_Orientation Tran);
		%feature("autodoc", "1");
		static		TopAbs_State GetAfter(const TopAbs_Orientation Tran);

};
%feature("shadow") TopTrans_SurfaceTransition::~TopTrans_SurfaceTransition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTrans_SurfaceTransition {
	void _kill_pointed() {
		delete $self;
	}
};
