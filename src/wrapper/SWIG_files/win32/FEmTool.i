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

%module FEmTool
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include FEmTool_renames.i


%include FEmTool_required_python_modules.i


%include FEmTool_dependencies.i


%include FEmTool_headers.i




%nodefaultctor Handle_FEmTool_SparseMatrix;
class Handle_FEmTool_SparseMatrix : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_SparseMatrix();
		%feature("autodoc", "1");
		Handle_FEmTool_SparseMatrix(const Handle_FEmTool_SparseMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_SparseMatrix(const FEmTool_SparseMatrix *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_SparseMatrix & operator=(const Handle_FEmTool_SparseMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_SparseMatrix & operator=(const FEmTool_SparseMatrix *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_SparseMatrix DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_SparseMatrix {
	FEmTool_SparseMatrix* GetObject() {
	return (FEmTool_SparseMatrix*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_SparseMatrix::~Handle_FEmTool_SparseMatrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_SparseMatrix {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_ProfileMatrix;
class Handle_FEmTool_ProfileMatrix : public Handle_FEmTool_SparseMatrix {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_ProfileMatrix();
		%feature("autodoc", "1");
		Handle_FEmTool_ProfileMatrix(const Handle_FEmTool_ProfileMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_ProfileMatrix(const FEmTool_ProfileMatrix *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_ProfileMatrix & operator=(const Handle_FEmTool_ProfileMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_ProfileMatrix & operator=(const FEmTool_ProfileMatrix *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_ProfileMatrix DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_ProfileMatrix {
	FEmTool_ProfileMatrix* GetObject() {
	return (FEmTool_ProfileMatrix*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_ProfileMatrix::~Handle_FEmTool_ProfileMatrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_ProfileMatrix {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_ElementaryCriterion;
class Handle_FEmTool_ElementaryCriterion : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_ElementaryCriterion();
		%feature("autodoc", "1");
		Handle_FEmTool_ElementaryCriterion(const Handle_FEmTool_ElementaryCriterion &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_ElementaryCriterion(const FEmTool_ElementaryCriterion *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_ElementaryCriterion & operator=(const Handle_FEmTool_ElementaryCriterion &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_ElementaryCriterion & operator=(const FEmTool_ElementaryCriterion *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_ElementaryCriterion DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_ElementaryCriterion {
	FEmTool_ElementaryCriterion* GetObject() {
	return (FEmTool_ElementaryCriterion*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_ElementaryCriterion::~Handle_FEmTool_ElementaryCriterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_ElementaryCriterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_LinearTension;
class Handle_FEmTool_LinearTension : public Handle_FEmTool_ElementaryCriterion {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_LinearTension();
		%feature("autodoc", "1");
		Handle_FEmTool_LinearTension(const Handle_FEmTool_LinearTension &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearTension(const FEmTool_LinearTension *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearTension & operator=(const Handle_FEmTool_LinearTension &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearTension & operator=(const FEmTool_LinearTension *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_LinearTension DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_LinearTension {
	FEmTool_LinearTension* GetObject() {
	return (FEmTool_LinearTension*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_LinearTension::~Handle_FEmTool_LinearTension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_LinearTension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_ListNodeOfListOfVectors;
class Handle_FEmTool_ListNodeOfListOfVectors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_ListNodeOfListOfVectors();
		%feature("autodoc", "1");
		Handle_FEmTool_ListNodeOfListOfVectors(const Handle_FEmTool_ListNodeOfListOfVectors &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_ListNodeOfListOfVectors(const FEmTool_ListNodeOfListOfVectors *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_ListNodeOfListOfVectors & operator=(const Handle_FEmTool_ListNodeOfListOfVectors &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_ListNodeOfListOfVectors & operator=(const FEmTool_ListNodeOfListOfVectors *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_ListNodeOfListOfVectors DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_ListNodeOfListOfVectors {
	FEmTool_ListNodeOfListOfVectors* GetObject() {
	return (FEmTool_ListNodeOfListOfVectors*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_ListNodeOfListOfVectors::~Handle_FEmTool_ListNodeOfListOfVectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_ListNodeOfListOfVectors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_LinearJerk;
class Handle_FEmTool_LinearJerk : public Handle_FEmTool_ElementaryCriterion {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_LinearJerk();
		%feature("autodoc", "1");
		Handle_FEmTool_LinearJerk(const Handle_FEmTool_LinearJerk &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearJerk(const FEmTool_LinearJerk *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearJerk & operator=(const Handle_FEmTool_LinearJerk &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearJerk & operator=(const FEmTool_LinearJerk *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_LinearJerk DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_LinearJerk {
	FEmTool_LinearJerk* GetObject() {
	return (FEmTool_LinearJerk*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_LinearJerk::~Handle_FEmTool_LinearJerk %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_LinearJerk {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_SequenceNodeOfSeqOfLinConstr;
class Handle_FEmTool_SequenceNodeOfSeqOfLinConstr : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_SequenceNodeOfSeqOfLinConstr();
		%feature("autodoc", "1");
		Handle_FEmTool_SequenceNodeOfSeqOfLinConstr(const Handle_FEmTool_SequenceNodeOfSeqOfLinConstr &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_SequenceNodeOfSeqOfLinConstr(const FEmTool_SequenceNodeOfSeqOfLinConstr *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_SequenceNodeOfSeqOfLinConstr & operator=(const Handle_FEmTool_SequenceNodeOfSeqOfLinConstr &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_SequenceNodeOfSeqOfLinConstr & operator=(const FEmTool_SequenceNodeOfSeqOfLinConstr *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_SequenceNodeOfSeqOfLinConstr DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_SequenceNodeOfSeqOfLinConstr {
	FEmTool_SequenceNodeOfSeqOfLinConstr* GetObject() {
	return (FEmTool_SequenceNodeOfSeqOfLinConstr*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_SequenceNodeOfSeqOfLinConstr::~Handle_FEmTool_SequenceNodeOfSeqOfLinConstr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_SequenceNodeOfSeqOfLinConstr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_Curve;
class Handle_FEmTool_Curve : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_Curve();
		%feature("autodoc", "1");
		Handle_FEmTool_Curve(const Handle_FEmTool_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_Curve(const FEmTool_Curve *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_Curve & operator=(const Handle_FEmTool_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_Curve & operator=(const FEmTool_Curve *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_Curve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_Curve {
	FEmTool_Curve* GetObject() {
	return (FEmTool_Curve*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_Curve::~Handle_FEmTool_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_LinearFlexion;
class Handle_FEmTool_LinearFlexion : public Handle_FEmTool_ElementaryCriterion {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_LinearFlexion();
		%feature("autodoc", "1");
		Handle_FEmTool_LinearFlexion(const Handle_FEmTool_LinearFlexion &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearFlexion(const FEmTool_LinearFlexion *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearFlexion & operator=(const Handle_FEmTool_LinearFlexion &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_LinearFlexion & operator=(const FEmTool_LinearFlexion *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_LinearFlexion DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_LinearFlexion {
	FEmTool_LinearFlexion* GetObject() {
	return (FEmTool_LinearFlexion*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_LinearFlexion::~Handle_FEmTool_LinearFlexion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_LinearFlexion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_FEmTool_HAssemblyTable;
class Handle_FEmTool_HAssemblyTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_FEmTool_HAssemblyTable();
		%feature("autodoc", "1");
		Handle_FEmTool_HAssemblyTable(const Handle_FEmTool_HAssemblyTable &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_HAssemblyTable(const FEmTool_HAssemblyTable *anItem);
		%feature("autodoc", "1");
		Handle_FEmTool_HAssemblyTable & operator=(const Handle_FEmTool_HAssemblyTable &aHandle);
		%feature("autodoc", "1");
		Handle_FEmTool_HAssemblyTable & operator=(const FEmTool_HAssemblyTable *anItem);
		%feature("autodoc", "1");
		static		Handle_FEmTool_HAssemblyTable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_FEmTool_HAssemblyTable {
	FEmTool_HAssemblyTable* GetObject() {
	return (FEmTool_HAssemblyTable*)$self->Access();
	}
};
%feature("shadow") Handle_FEmTool_HAssemblyTable::~Handle_FEmTool_HAssemblyTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_FEmTool_HAssemblyTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_ListNodeOfListOfVectors;
class FEmTool_ListNodeOfListOfVectors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		FEmTool_ListNodeOfListOfVectors(const Handle_TColStd_HArray1OfReal &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_ListNodeOfListOfVectors {
	Handle_FEmTool_ListNodeOfListOfVectors GetHandle() {
	return *(Handle_FEmTool_ListNodeOfListOfVectors*) &$self;
	}
};
%extend FEmTool_ListNodeOfListOfVectors {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_ListNodeOfListOfVectors::~FEmTool_ListNodeOfListOfVectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_ListNodeOfListOfVectors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_ElementaryCriterion;
class FEmTool_ElementaryCriterion : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Set(const Handle_TColStd_HArray2OfReal &Coeff);
		%feature("autodoc", "1");
		virtual		void Set(const Standard_Real FirstKnot, const Standard_Real LastKnot);
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HArray2OfInteger DependenceTable() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value();
		%feature("autodoc", "1");
		virtual		void Hessian(const Standard_Integer Dim1, const Standard_Integer Dim2, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		void Gradient(const Standard_Integer Dim, math_Vector & G);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_ElementaryCriterion {
	Handle_FEmTool_ElementaryCriterion GetHandle() {
	return *(Handle_FEmTool_ElementaryCriterion*) &$self;
	}
};
%extend FEmTool_ElementaryCriterion {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_ElementaryCriterion::~FEmTool_ElementaryCriterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_ElementaryCriterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_LinearFlexion;
class FEmTool_LinearFlexion : public FEmTool_ElementaryCriterion {
	public:
		%feature("autodoc", "1");
		FEmTool_LinearFlexion(const Standard_Integer WorkDegree, const GeomAbs_Shape ConstraintOrder);
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HArray2OfInteger DependenceTable() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value();
		%feature("autodoc", "1");
		virtual		void Hessian(const Standard_Integer Dimension1, const Standard_Integer Dimension2, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		void Gradient(const Standard_Integer Dimension, math_Vector & G);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_LinearFlexion {
	Handle_FEmTool_LinearFlexion GetHandle() {
	return *(Handle_FEmTool_LinearFlexion*) &$self;
	}
};
%extend FEmTool_LinearFlexion {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_LinearFlexion::~FEmTool_LinearFlexion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_LinearFlexion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_LinearJerk;
class FEmTool_LinearJerk : public FEmTool_ElementaryCriterion {
	public:
		%feature("autodoc", "1");
		FEmTool_LinearJerk(const Standard_Integer WorkDegree, const GeomAbs_Shape ConstraintOrder);
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HArray2OfInteger DependenceTable() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value();
		%feature("autodoc", "1");
		virtual		void Hessian(const Standard_Integer Dimension1, const Standard_Integer Dimension2, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		void Gradient(const Standard_Integer Dimension, math_Vector & G);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_LinearJerk {
	Handle_FEmTool_LinearJerk GetHandle() {
	return *(Handle_FEmTool_LinearJerk*) &$self;
	}
};
%extend FEmTool_LinearJerk {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_LinearJerk::~FEmTool_LinearJerk %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_LinearJerk {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_AssemblyTable;
class FEmTool_AssemblyTable {
	public:
		%feature("autodoc", "1");
		FEmTool_AssemblyTable(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		FEmTool_AssemblyTable(const Handle_TColStd_HArray1OfInteger &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfInteger &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const FEmTool_AssemblyTable & Assign(const FEmTool_AssemblyTable &Other);
		%feature("autodoc", "1");
		const FEmTool_AssemblyTable & operator=(const FEmTool_AssemblyTable &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_TColStd_HArray1OfInteger &Value);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") FEmTool_AssemblyTable::~FEmTool_AssemblyTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_AssemblyTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_LinearTension;
class FEmTool_LinearTension : public FEmTool_ElementaryCriterion {
	public:
		%feature("autodoc", "1");
		FEmTool_LinearTension(const Standard_Integer WorkDegree, const GeomAbs_Shape ConstraintOrder);
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HArray2OfInteger DependenceTable() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Value();
		%feature("autodoc", "1");
		virtual		void Hessian(const Standard_Integer Dimension1, const Standard_Integer Dimension2, math_Matrix & H);
		%feature("autodoc", "1");
		virtual		void Gradient(const Standard_Integer Dimension, math_Vector & G);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_LinearTension {
	Handle_FEmTool_LinearTension GetHandle() {
	return *(Handle_FEmTool_LinearTension*) &$self;
	}
};
%extend FEmTool_LinearTension {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_LinearTension::~FEmTool_LinearTension %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_LinearTension {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_ListIteratorOfListOfVectors;
class FEmTool_ListIteratorOfListOfVectors {
	public:
		%feature("autodoc", "1");
		FEmTool_ListIteratorOfListOfVectors();
		%feature("autodoc", "1");
		FEmTool_ListIteratorOfListOfVectors(const FEmTool_ListOfVectors &L);
		%feature("autodoc", "1");
		void Initialize(const FEmTool_ListOfVectors &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & Value() const;

};
%feature("shadow") FEmTool_ListIteratorOfListOfVectors::~FEmTool_ListIteratorOfListOfVectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_ListIteratorOfListOfVectors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_Curve;
class FEmTool_Curve : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		FEmTool_Curve(const Standard_Integer Dimension, const Standard_Integer NbElements, const Handle_PLib_Base &TheBase, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		TColStd_Array1OfReal & Knots() const;
		%feature("autodoc", "1");
		void SetElement(const Standard_Integer IndexOfElement, const TColStd_Array2OfReal &Coeffs);
		%feature("autodoc", "1");
		void D0(const Standard_Real U, TColStd_Array1OfReal & Pnt);
		%feature("autodoc", "1");
		void D1(const Standard_Real U, TColStd_Array1OfReal & Vec);
		%feature("autodoc", "1");
		void D2(const Standard_Real U, TColStd_Array1OfReal & Vec);
		%feature("autodoc","Length(Standard_Real FirstU, Standard_Real LastU) -> Standard_Real");

		void Length(const Standard_Real FirstU, const Standard_Real LastU, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void GetElement(const Standard_Integer IndexOfElement, TColStd_Array2OfReal & Coeffs);
		%feature("autodoc", "1");
		void GetPolynom(TColStd_Array1OfReal & Coeffs);
		%feature("autodoc", "1");
		Standard_Integer NbElements() const;
		%feature("autodoc", "1");
		Standard_Integer Dimension() const;
		%feature("autodoc", "1");
		Handle_PLib_Base Base() const;
		%feature("autodoc", "1");
		Standard_Integer Degree(const Standard_Integer IndexOfElement) const;
		%feature("autodoc", "1");
		void SetDegree(const Standard_Integer IndexOfElement, const Standard_Integer Degree);
		%feature("autodoc","ReduceDegree(Standard_Integer IndexOfElement, Standard_Real Tol) -> [Standard_Integer, Standard_Real]");

		void ReduceDegree(const Standard_Integer IndexOfElement, const Standard_Real Tol, Standard_Integer &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_Curve {
	Handle_FEmTool_Curve GetHandle() {
	return *(Handle_FEmTool_Curve*) &$self;
	}
};
%extend FEmTool_Curve {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_Curve::~FEmTool_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_SparseMatrix;
class FEmTool_SparseMatrix : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Real Value);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer I, const Standard_Integer J) {
				return (Standard_Real) $self->ChangeValue(I,J);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer I, const Standard_Integer J) {
				$self->ChangeValue(I,J)=value;
				}
		};
		%feature("autodoc", "1");
		virtual		Standard_Boolean Decompose();
		%feature("autodoc", "1");
		virtual		void Solve(const math_Vector &B, math_Vector & X) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Prepare();
		%feature("autodoc", "1");
		virtual		void Solve(const math_Vector &B, const math_Vector &Init, math_Vector & X, math_Vector & Residual, const Standard_Real Tolerance=1.00000000000000002092256083012847267532663408929e-8, const Standard_Integer NbIterations=50) const;
		%feature("autodoc", "1");
		virtual		void Multiplied(const math_Vector &X, math_Vector & MX) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer RowNumber() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ColNumber() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_SparseMatrix {
	Handle_FEmTool_SparseMatrix GetHandle() {
	return *(Handle_FEmTool_SparseMatrix*) &$self;
	}
};
%extend FEmTool_SparseMatrix {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_SparseMatrix::~FEmTool_SparseMatrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_SparseMatrix {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_ProfileMatrix;
class FEmTool_ProfileMatrix : public FEmTool_SparseMatrix {
	public:
		%feature("autodoc", "1");
		FEmTool_ProfileMatrix(const TColStd_Array1OfInteger &FirstIndexes);
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer I, const Standard_Integer J) {
				return (Standard_Real) $self->ChangeValue(I,J);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer I, const Standard_Integer J) {
				$self->ChangeValue(I,J)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean IsInProfile(const Standard_Integer i, const Standard_Integer j) const;
		%feature("autodoc", "1");
		void OutM() const;
		%feature("autodoc", "1");
		void OutS() const;

};
%extend FEmTool_ProfileMatrix {
	Handle_FEmTool_ProfileMatrix GetHandle() {
	return *(Handle_FEmTool_ProfileMatrix*) &$self;
	}
};
%extend FEmTool_ProfileMatrix {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_ProfileMatrix::~FEmTool_ProfileMatrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_ProfileMatrix {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_Assembly;
class FEmTool_Assembly {
	public:
		%feature("autodoc", "1");
		FEmTool_Assembly(const TColStd_Array2OfInteger &Dependence, const Handle_FEmTool_HAssemblyTable &Table);
		%feature("autodoc", "1");
		void NullifyMatrix();
		%feature("autodoc", "1");
		void AddMatrix(const Standard_Integer Element, const Standard_Integer Dimension1, const Standard_Integer Dimension2, const math_Matrix &Mat);
		%feature("autodoc", "1");
		void NullifyVector();
		%feature("autodoc", "1");
		void AddVector(const Standard_Integer Element, const Standard_Integer Dimension, const math_Vector &Vec);
		%feature("autodoc", "1");
		void ResetConstraint();
		%feature("autodoc", "1");
		void NullifyConstraint();
		%feature("autodoc", "1");
		void AddConstraint(const Standard_Integer IndexofConstraint, const Standard_Integer Element, const Standard_Integer Dimension, const math_Vector &LinearForm, const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Boolean Solve();
		%feature("autodoc", "1");
		void Solution(math_Vector & Solution) const;
		%feature("autodoc", "1");
		Standard_Integer NbGlobVar() const;
		%feature("autodoc", "1");
		void GetAssemblyTable(Handle_FEmTool_HAssemblyTable & AssTable) const;

};
%feature("shadow") FEmTool_Assembly::~FEmTool_Assembly %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_Assembly {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_HAssemblyTable;
class FEmTool_HAssemblyTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		FEmTool_HAssemblyTable(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		FEmTool_HAssemblyTable(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_TColStd_HArray1OfInteger &V);
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfInteger &V);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_TColStd_HArray1OfInteger &Value);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfInteger & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const FEmTool_AssemblyTable & Array2() const;
		%feature("autodoc", "1");
		FEmTool_AssemblyTable & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_HAssemblyTable {
	Handle_FEmTool_HAssemblyTable GetHandle() {
	return *(Handle_FEmTool_HAssemblyTable*) &$self;
	}
};
%extend FEmTool_HAssemblyTable {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_HAssemblyTable::~FEmTool_HAssemblyTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_HAssemblyTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_ElementsOfRefMatrix;
class FEmTool_ElementsOfRefMatrix : public math_FunctionSet {
	public:
		%feature("autodoc", "1");
		FEmTool_ElementsOfRefMatrix(const Handle_PLib_Base &TheBase, const Standard_Integer DerOrder);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);

};
%feature("shadow") FEmTool_ElementsOfRefMatrix::~FEmTool_ElementsOfRefMatrix %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_ElementsOfRefMatrix {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_ListOfVectors;
class FEmTool_ListOfVectors {
	public:
		%feature("autodoc", "1");
		FEmTool_ListOfVectors();
		%feature("autodoc", "1");
		void Assign(const FEmTool_ListOfVectors &Other);
		%feature("autodoc", "1");
		void operator=(const FEmTool_ListOfVectors &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HArray1OfReal &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColStd_HArray1OfReal &I, FEmTool_ListIteratorOfListOfVectors & theIt);
		%feature("autodoc", "1");
		void Prepend(FEmTool_ListOfVectors & Other);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HArray1OfReal &I);
		%feature("autodoc", "1");
		void Append(const Handle_TColStd_HArray1OfReal &I, FEmTool_ListIteratorOfListOfVectors & theIt);
		%feature("autodoc", "1");
		void Append(FEmTool_ListOfVectors & Other);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & First() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(FEmTool_ListIteratorOfListOfVectors & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_TColStd_HArray1OfReal &I, FEmTool_ListIteratorOfListOfVectors & It);
		%feature("autodoc", "1");
		void InsertBefore(FEmTool_ListOfVectors & Other, FEmTool_ListIteratorOfListOfVectors & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_TColStd_HArray1OfReal &I, FEmTool_ListIteratorOfListOfVectors & It);
		%feature("autodoc", "1");
		void InsertAfter(FEmTool_ListOfVectors & Other, FEmTool_ListIteratorOfListOfVectors & It);

};
%feature("shadow") FEmTool_ListOfVectors::~FEmTool_ListOfVectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_ListOfVectors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_SeqOfLinConstr;
class FEmTool_SeqOfLinConstr : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		FEmTool_SeqOfLinConstr();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const FEmTool_SeqOfLinConstr & Assign(const FEmTool_SeqOfLinConstr &Other);
		%feature("autodoc", "1");
		const FEmTool_SeqOfLinConstr & operator=(const FEmTool_SeqOfLinConstr &Other);
		%feature("autodoc", "1");
		void Append(const FEmTool_ListOfVectors &T);
		%feature("autodoc", "1");
		void Append(FEmTool_SeqOfLinConstr & S);
		%feature("autodoc", "1");
		void Prepend(const FEmTool_ListOfVectors &T);
		%feature("autodoc", "1");
		void Prepend(FEmTool_SeqOfLinConstr & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const FEmTool_ListOfVectors &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, FEmTool_SeqOfLinConstr & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const FEmTool_ListOfVectors &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, FEmTool_SeqOfLinConstr & S);
		%feature("autodoc", "1");
		const FEmTool_ListOfVectors & First() const;
		%feature("autodoc", "1");
		const FEmTool_ListOfVectors & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, FEmTool_SeqOfLinConstr & S);
		%feature("autodoc", "1");
		const FEmTool_ListOfVectors & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const FEmTool_ListOfVectors & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const FEmTool_ListOfVectors &I);
		%feature("autodoc", "1");
		FEmTool_ListOfVectors & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		FEmTool_ListOfVectors & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") FEmTool_SeqOfLinConstr::~FEmTool_SeqOfLinConstr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_SeqOfLinConstr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor FEmTool_SequenceNodeOfSeqOfLinConstr;
class FEmTool_SequenceNodeOfSeqOfLinConstr : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		FEmTool_SequenceNodeOfSeqOfLinConstr(const FEmTool_ListOfVectors &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		FEmTool_ListOfVectors & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend FEmTool_SequenceNodeOfSeqOfLinConstr {
	Handle_FEmTool_SequenceNodeOfSeqOfLinConstr GetHandle() {
	return *(Handle_FEmTool_SequenceNodeOfSeqOfLinConstr*) &$self;
	}
};
%extend FEmTool_SequenceNodeOfSeqOfLinConstr {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") FEmTool_SequenceNodeOfSeqOfLinConstr::~FEmTool_SequenceNodeOfSeqOfLinConstr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend FEmTool_SequenceNodeOfSeqOfLinConstr {
	void _kill_pointed() {
		delete $self;
	}
};
