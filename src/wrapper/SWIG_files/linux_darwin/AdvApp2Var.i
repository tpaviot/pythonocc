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

%module AdvApp2Var
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include AdvApp2Var_renames.i


%include AdvApp2Var_required_python_modules.i


%include AdvApp2Var_dependencies.i


%include AdvApp2Var_headers.i


enum AdvApp2Var_CriterionRepartition {
	AdvApp2Var_Regular,
	AdvApp2Var_Incremental,
	};

enum AdvApp2Var_CriterionType {
	AdvApp2Var_Absolute,
	AdvApp2Var_Relative,
	};



%nodefaultctor Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch;
class Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch();
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch(const Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch(const AdvApp2Var_SequenceNodeOfSequenceOfPatch *anItem);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch & operator=(const Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch & operator=(const AdvApp2Var_SequenceNodeOfSequenceOfPatch *anItem);
		%feature("autodoc", "1");
		static		Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch {
	AdvApp2Var_SequenceNodeOfSequenceOfPatch* GetObject() {
	return (AdvApp2Var_SequenceNodeOfSequenceOfPatch*)$self->Access();
	}
};
%feature("shadow") Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch::~Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip;
class Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip();
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip(const Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip(const AdvApp2Var_SequenceNodeOfSequenceOfStrip *anItem);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip & operator=(const Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip & operator=(const AdvApp2Var_SequenceNodeOfSequenceOfStrip *anItem);
		%feature("autodoc", "1");
		static		Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip {
	AdvApp2Var_SequenceNodeOfSequenceOfStrip* GetObject() {
	return (AdvApp2Var_SequenceNodeOfSequenceOfStrip*)$self->Access();
	}
};
%feature("shadow") Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip::~Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode;
class Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode();
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode(const Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode(const AdvApp2Var_SequenceNodeOfSequenceOfNode *anItem);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode & operator=(const Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode & operator=(const AdvApp2Var_SequenceNodeOfSequenceOfNode *anItem);
		%feature("autodoc", "1");
		static		Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode {
	AdvApp2Var_SequenceNodeOfSequenceOfNode* GetObject() {
	return (AdvApp2Var_SequenceNodeOfSequenceOfNode*)$self->Access();
	}
};
%feature("shadow") Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode::~Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AdvApp2Var_SequenceNodeOfStrip;
class Handle_AdvApp2Var_SequenceNodeOfStrip : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfStrip();
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfStrip(const Handle_AdvApp2Var_SequenceNodeOfStrip &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfStrip(const AdvApp2Var_SequenceNodeOfStrip *anItem);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfStrip & operator=(const Handle_AdvApp2Var_SequenceNodeOfStrip &aHandle);
		%feature("autodoc", "1");
		Handle_AdvApp2Var_SequenceNodeOfStrip & operator=(const AdvApp2Var_SequenceNodeOfStrip *anItem);
		%feature("autodoc", "1");
		static		Handle_AdvApp2Var_SequenceNodeOfStrip DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AdvApp2Var_SequenceNodeOfStrip {
	AdvApp2Var_SequenceNodeOfStrip* GetObject() {
	return (AdvApp2Var_SequenceNodeOfStrip*)$self->Access();
	}
};
%feature("shadow") Handle_AdvApp2Var_SequenceNodeOfStrip::~Handle_AdvApp2Var_SequenceNodeOfStrip %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AdvApp2Var_SequenceNodeOfStrip {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_SequenceOfNode;
class AdvApp2Var_SequenceOfNode : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_SequenceOfNode();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AdvApp2Var_SequenceOfNode & Assign(const AdvApp2Var_SequenceOfNode &Other);
		%feature("autodoc", "1");
		const AdvApp2Var_SequenceOfNode & operator=(const AdvApp2Var_SequenceOfNode &Other);
		%feature("autodoc", "1");
		void Append(const AdvApp2Var_Node &T);
		%feature("autodoc", "1");
		void Append(AdvApp2Var_SequenceOfNode & S);
		%feature("autodoc", "1");
		void Prepend(const AdvApp2Var_Node &T);
		%feature("autodoc", "1");
		void Prepend(AdvApp2Var_SequenceOfNode & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const AdvApp2Var_Node &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AdvApp2Var_SequenceOfNode & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const AdvApp2Var_Node &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AdvApp2Var_SequenceOfNode & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Node & First() const;
		%feature("autodoc", "1");
		const AdvApp2Var_Node & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AdvApp2Var_SequenceOfNode & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Node & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Node & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AdvApp2Var_Node &I);
		%feature("autodoc", "1");
		AdvApp2Var_Node & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AdvApp2Var_Node & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") AdvApp2Var_SequenceOfNode::~AdvApp2Var_SequenceOfNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_SequenceOfNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Network;
class AdvApp2Var_Network {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_Network();
		%feature("autodoc", "1");
		AdvApp2Var_Network(const AdvApp2Var_SequenceOfPatch &Net, const TColStd_SequenceOfReal &TheU, const TColStd_SequenceOfReal &TheV);
		%feature("autodoc","FirstNotApprox() -> Standard_Integer");

		Standard_Boolean FirstNotApprox(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		AdvApp2Var_Patch & ChangePatch(const Standard_Integer Index);
		%feature("autodoc", "1");
		AdvApp2Var_Patch & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void UpdateInU(const Standard_Real CuttingValue);
		%feature("autodoc", "1");
		void UpdateInV(const Standard_Real CuttingValue);
		%feature("autodoc","SameDegree(Standard_Integer iu, Standard_Integer iv) -> [Standard_Integer, Standard_Integer]");

		void SameDegree(const Standard_Integer iu, const Standard_Integer iv, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Integer NbPatch() const;
		%feature("autodoc", "1");
		Standard_Integer NbPatchInU() const;
		%feature("autodoc", "1");
		Standard_Integer NbPatchInV() const;
		%feature("autodoc", "1");
		Standard_Real UParameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real VParameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Patch & Patch(const Standard_Integer UIndex, const Standard_Integer VIndex) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Patch & operator()(const Standard_Integer UIndex, const Standard_Integer VIndex) const;

};
%feature("shadow") AdvApp2Var_Network::~AdvApp2Var_Network %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Network {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_SequenceNodeOfSequenceOfStrip;
class AdvApp2Var_SequenceNodeOfSequenceOfStrip : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_SequenceNodeOfSequenceOfStrip(const AdvApp2Var_Strip &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		AdvApp2Var_Strip & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AdvApp2Var_SequenceNodeOfSequenceOfStrip {
	Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip GetHandle() {
	return *(Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip*) &$self;
	}
};
%extend AdvApp2Var_SequenceNodeOfSequenceOfStrip {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") AdvApp2Var_SequenceNodeOfSequenceOfStrip::~AdvApp2Var_SequenceNodeOfSequenceOfStrip %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_SequenceNodeOfSequenceOfStrip {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_SequenceNodeOfSequenceOfNode;
class AdvApp2Var_SequenceNodeOfSequenceOfNode : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_SequenceNodeOfSequenceOfNode(const AdvApp2Var_Node &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		AdvApp2Var_Node & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AdvApp2Var_SequenceNodeOfSequenceOfNode {
	Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode GetHandle() {
	return *(Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode*) &$self;
	}
};
%extend AdvApp2Var_SequenceNodeOfSequenceOfNode {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") AdvApp2Var_SequenceNodeOfSequenceOfNode::~AdvApp2Var_SequenceNodeOfSequenceOfNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_SequenceNodeOfSequenceOfNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Framework;
class AdvApp2Var_Framework {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_Framework();
		%feature("autodoc", "1");
		AdvApp2Var_Framework(const AdvApp2Var_SequenceOfNode &Frame, const AdvApp2Var_SequenceOfStrip &UFrontier, const AdvApp2Var_SequenceOfStrip &VFrontier);
		%feature("autodoc","FirstNotApprox() -> [Standard_Integer, Standard_Integer]");

		Standard_Boolean FirstNotApprox(Standard_Integer &OutValue, Standard_Integer &OutValue, AdvApp2Var_Iso & anIso) const;
		%feature("autodoc", "1");
		Standard_Integer FirstNode(const GeomAbs_IsoType Type, const Standard_Integer IndexIso, const Standard_Integer IndexStrip) const;
		%feature("autodoc", "1");
		Standard_Integer LastNode(const GeomAbs_IsoType Type, const Standard_Integer IndexIso, const Standard_Integer IndexStrip) const;
		%feature("autodoc", "1");
		void ChangeIso(const Standard_Integer IndexIso, const Standard_Integer IndexStrip, const AdvApp2Var_Iso &anIso);
		%feature("autodoc", "1");
		const AdvApp2Var_Node & Node(const Standard_Integer IndexNode) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Node & Node(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Iso & IsoU(const Standard_Real U, const Standard_Real V0, const Standard_Real V1) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Iso & IsoV(const Standard_Real U0, const Standard_Real U1, const Standard_Real V) const;
		%feature("autodoc", "1");
		AdvApp2Var_Node & ChangeNode(const Standard_Integer IndexNode);
		%feature("autodoc", "1");
		void UpdateInU(const Standard_Real CuttingValue);
		%feature("autodoc", "1");
		void UpdateInV(const Standard_Real CuttingValue);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & UEquation(const Standard_Integer IndexIso, const Standard_Integer IndexStrip) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & VEquation(const Standard_Integer IndexIso, const Standard_Integer IndexStrip) const;

};
%feature("shadow") AdvApp2Var_Framework::~AdvApp2Var_Framework %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Framework {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Node;
class AdvApp2Var_Node {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_Node();
		%feature("autodoc", "1");
		AdvApp2Var_Node(const Standard_Integer iu, const Standard_Integer iv);
		%feature("autodoc", "1");
		AdvApp2Var_Node(const gp_XY UV, const Standard_Integer iu, const Standard_Integer iv);
		%feature("autodoc", "1");
		gp_XY Coord() const;
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real x1, const Standard_Real x2);
		%feature("autodoc", "1");
		Standard_Integer UOrder() const;
		%feature("autodoc", "1");
		Standard_Integer VOrder() const;
		%feature("autodoc", "1");
		void SetPoint(const Standard_Integer iu, const Standard_Integer iv, const gp_Pnt Cte);
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer iu, const Standard_Integer iv) const;
		%feature("autodoc", "1");
		void SetError(const Standard_Integer iu, const Standard_Integer iv, const Standard_Real error);
		%feature("autodoc", "1");
		Standard_Real Error(const Standard_Integer iu, const Standard_Integer iv) const;

};
%feature("shadow") AdvApp2Var_Node::~AdvApp2Var_Node %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Node {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_EvaluatorFunc2Var;
class AdvApp2Var_EvaluatorFunc2Var {
	public:
		%feature("autodoc", "1");
		virtual		void Evaluate(Standard_Integer* theDimension, Standard_Real* theUStartEnd, Standard_Real* theVStartEnd, Standard_Integer* theFavorIso, Standard_Real* theConstParam, Standard_Integer* theNbParams, Standard_Real* theParameters, Standard_Integer* theUOrder, Standard_Integer* theVOrder, Standard_Real* theResult, Standard_Integer* theErrorCode) const;
		%feature("autodoc", "1");
		void operator()(Standard_Integer* theDimension, Standard_Real* theUStartEnd, Standard_Real* theVStartEnd, Standard_Integer* theFavorIso, Standard_Real* theConstParam, Standard_Integer* theNbParams, Standard_Real* theParameters, Standard_Integer* theUOrder, Standard_Integer* theVOrder, Standard_Real* theResult, Standard_Integer* theErrorCode) const;

};
%feature("shadow") AdvApp2Var_EvaluatorFunc2Var::~AdvApp2Var_EvaluatorFunc2Var %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_EvaluatorFunc2Var {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Patch;
class AdvApp2Var_Patch {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_Patch();
		%feature("autodoc", "1");
		AdvApp2Var_Patch(const Standard_Real U0, const Standard_Real U1, const Standard_Real V0, const Standard_Real V1, const Standard_Integer iu, const Standard_Integer iv);
		%feature("autodoc", "1");
		Standard_Boolean IsDiscretised() const;
		%feature("autodoc", "1");
		void Discretise(const AdvApp2Var_Context &Conditions, const AdvApp2Var_Framework &Constraints, const AdvApp2Var_EvaluatorFunc2Var &func);
		%feature("autodoc", "1");
		Standard_Boolean IsApproximated() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		void MakeApprox(const AdvApp2Var_Context &Conditions, const AdvApp2Var_Framework &Constraints, const Standard_Integer NumDec);
		%feature("autodoc", "1");
		void AddConstraints(const AdvApp2Var_Context &Conditions, const AdvApp2Var_Framework &Constraints);
		%feature("autodoc", "1");
		void AddErrors(const AdvApp2Var_Framework &Constraints);
		%feature("autodoc", "1");
		void ChangeDomain(const Standard_Real a, const Standard_Real b, const Standard_Real c, const Standard_Real d);
		%feature("autodoc", "1");
		void ResetApprox();
		%feature("autodoc", "1");
		void OverwriteApprox();
		%feature("autodoc", "1");
		Standard_Real U0() const;
		%feature("autodoc", "1");
		Standard_Real U1() const;
		%feature("autodoc", "1");
		Standard_Real V0() const;
		%feature("autodoc", "1");
		Standard_Real V1() const;
		%feature("autodoc", "1");
		Standard_Integer UOrder() const;
		%feature("autodoc", "1");
		Standard_Integer VOrder() const;
		%feature("autodoc", "1");
		Standard_Integer CutSense() const;
		%feature("autodoc", "1");
		Standard_Integer CutSense(const AdvApp2Var_Criterion &Crit, const Standard_Integer NumDec) const;
		%feature("autodoc", "1");
		Standard_Integer NbCoeffInU() const;
		%feature("autodoc", "1");
		Standard_Integer NbCoeffInV() const;
		%feature("autodoc", "1");
		void ChangeNbCoeff(const Standard_Integer NbCoeffU, const Standard_Integer NbCoeffV);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt Poles(const Standard_Integer SSPIndex, const AdvApp2Var_Context &Conditions) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Coefficients(const Standard_Integer SSPIndex, const AdvApp2Var_Context &Conditions) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal MaxErrors() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal AverageErrors() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal IsoErrors() const;
		%feature("autodoc", "1");
		Standard_Real CritValue() const;
		%feature("autodoc", "1");
		void SetCritValue(const Standard_Real dist);

};
%feature("shadow") AdvApp2Var_Patch::~AdvApp2Var_Patch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Patch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Strip;
class AdvApp2Var_Strip : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_Strip();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AdvApp2Var_Strip & Assign(const AdvApp2Var_Strip &Other);
		%feature("autodoc", "1");
		const AdvApp2Var_Strip & operator=(const AdvApp2Var_Strip &Other);
		%feature("autodoc", "1");
		void Append(const AdvApp2Var_Iso &T);
		%feature("autodoc", "1");
		void Append(AdvApp2Var_Strip & S);
		%feature("autodoc", "1");
		void Prepend(const AdvApp2Var_Iso &T);
		%feature("autodoc", "1");
		void Prepend(AdvApp2Var_Strip & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const AdvApp2Var_Iso &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AdvApp2Var_Strip & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const AdvApp2Var_Iso &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AdvApp2Var_Strip & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Iso & First() const;
		%feature("autodoc", "1");
		const AdvApp2Var_Iso & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AdvApp2Var_Strip & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Iso & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Iso & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AdvApp2Var_Iso &I);
		%feature("autodoc", "1");
		AdvApp2Var_Iso & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AdvApp2Var_Iso & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") AdvApp2Var_Strip::~AdvApp2Var_Strip %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Strip {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Context;
class AdvApp2Var_Context {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_Context();
		%feature("autodoc", "1");
		AdvApp2Var_Context(const Standard_Integer ifav, const Standard_Integer iu, const Standard_Integer iv, const Standard_Integer nlimu, const Standard_Integer nlimv, const Standard_Integer iprecis, const Standard_Integer nb1Dss, const Standard_Integer nb2Dss, const Standard_Integer nb3Dss, const Handle_TColStd_HArray1OfReal &tol1D, const Handle_TColStd_HArray1OfReal &tol2D, const Handle_TColStd_HArray1OfReal &tol3D, const Handle_TColStd_HArray2OfReal &tof1D, const Handle_TColStd_HArray2OfReal &tof2D, const Handle_TColStd_HArray2OfReal &tof3D);
		%feature("autodoc", "1");
		Standard_Integer TotalDimension() const;
		%feature("autodoc", "1");
		Standard_Integer TotalNumberSSP() const;
		%feature("autodoc", "1");
		Standard_Integer FavorIso() const;
		%feature("autodoc", "1");
		Standard_Integer UOrder() const;
		%feature("autodoc", "1");
		Standard_Integer VOrder() const;
		%feature("autodoc", "1");
		Standard_Integer ULimit() const;
		%feature("autodoc", "1");
		Standard_Integer VLimit() const;
		%feature("autodoc", "1");
		Standard_Integer UJacDeg() const;
		%feature("autodoc", "1");
		Standard_Integer VJacDeg() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal UJacMax() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal VJacMax() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal URoots() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal VRoots() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal UGauss() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal VGauss() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal IToler() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal FToler() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray2OfReal CToler() const;

};
%feature("shadow") AdvApp2Var_Context::~AdvApp2Var_Context %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Context {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Data;
class AdvApp2Var_Data {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_Data();
		%feature("autodoc", "1");
		static		mdnombr_1_ & Getmdnombr();
		%feature("autodoc", "1");
		static		minombr_1_ & Getminombr();
		%feature("autodoc", "1");
		static		maovpar_1_ & Getmaovpar();
		%feature("autodoc", "1");
		static		maovpch_1_ & Getmaovpch();
		%feature("autodoc", "1");
		static		mlgdrtl_1_ & Getmlgdrtl();
		%feature("autodoc", "1");
		static		mmjcobi_1_ & Getmmjcobi();
		%feature("autodoc", "1");
		static		mmcmcnp_1_ & Getmmcmcnp();
		%feature("autodoc", "1");
		static		mmapgss_1_ & Getmmapgss();
		%feature("autodoc", "1");
		static		mmapgs0_1_ & Getmmapgs0();
		%feature("autodoc", "1");
		static		mmapgs1_1_ & Getmmapgs1();
		%feature("autodoc", "1");
		static		mmapgs2_1_ & Getmmapgs2();

};
%feature("shadow") AdvApp2Var_Data::~AdvApp2Var_Data %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Data {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_SequenceNodeOfStrip;
class AdvApp2Var_SequenceNodeOfStrip : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_SequenceNodeOfStrip(const AdvApp2Var_Iso &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		AdvApp2Var_Iso & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AdvApp2Var_SequenceNodeOfStrip {
	Handle_AdvApp2Var_SequenceNodeOfStrip GetHandle() {
	return *(Handle_AdvApp2Var_SequenceNodeOfStrip*) &$self;
	}
};
%extend AdvApp2Var_SequenceNodeOfStrip {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") AdvApp2Var_SequenceNodeOfStrip::~AdvApp2Var_SequenceNodeOfStrip %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_SequenceNodeOfStrip {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_SequenceOfPatch;
class AdvApp2Var_SequenceOfPatch : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_SequenceOfPatch();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AdvApp2Var_SequenceOfPatch & Assign(const AdvApp2Var_SequenceOfPatch &Other);
		%feature("autodoc", "1");
		const AdvApp2Var_SequenceOfPatch & operator=(const AdvApp2Var_SequenceOfPatch &Other);
		%feature("autodoc", "1");
		void Append(const AdvApp2Var_Patch &T);
		%feature("autodoc", "1");
		void Append(AdvApp2Var_SequenceOfPatch & S);
		%feature("autodoc", "1");
		void Prepend(const AdvApp2Var_Patch &T);
		%feature("autodoc", "1");
		void Prepend(AdvApp2Var_SequenceOfPatch & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const AdvApp2Var_Patch &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AdvApp2Var_SequenceOfPatch & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const AdvApp2Var_Patch &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AdvApp2Var_SequenceOfPatch & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Patch & First() const;
		%feature("autodoc", "1");
		const AdvApp2Var_Patch & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AdvApp2Var_SequenceOfPatch & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Patch & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Patch & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AdvApp2Var_Patch &I);
		%feature("autodoc", "1");
		AdvApp2Var_Patch & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AdvApp2Var_Patch & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") AdvApp2Var_SequenceOfPatch::~AdvApp2Var_SequenceOfPatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_SequenceOfPatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_SequenceNodeOfSequenceOfPatch;
class AdvApp2Var_SequenceNodeOfSequenceOfPatch : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_SequenceNodeOfSequenceOfPatch(const AdvApp2Var_Patch &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		AdvApp2Var_Patch & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AdvApp2Var_SequenceNodeOfSequenceOfPatch {
	Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch GetHandle() {
	return *(Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch*) &$self;
	}
};
%extend AdvApp2Var_SequenceNodeOfSequenceOfPatch {
	Standard_Integer __hash__() {
	return HashCode(*(Handle_Standard_Transient*)&$self,2147483647);
	}
};
%feature("shadow") AdvApp2Var_SequenceNodeOfSequenceOfPatch::~AdvApp2Var_SequenceNodeOfSequenceOfPatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_SequenceNodeOfSequenceOfPatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_SequenceOfStrip;
class AdvApp2Var_SequenceOfStrip : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_SequenceOfStrip();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AdvApp2Var_SequenceOfStrip & Assign(const AdvApp2Var_SequenceOfStrip &Other);
		%feature("autodoc", "1");
		const AdvApp2Var_SequenceOfStrip & operator=(const AdvApp2Var_SequenceOfStrip &Other);
		%feature("autodoc", "1");
		void Append(const AdvApp2Var_Strip &T);
		%feature("autodoc", "1");
		void Append(AdvApp2Var_SequenceOfStrip & S);
		%feature("autodoc", "1");
		void Prepend(const AdvApp2Var_Strip &T);
		%feature("autodoc", "1");
		void Prepend(AdvApp2Var_SequenceOfStrip & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const AdvApp2Var_Strip &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AdvApp2Var_SequenceOfStrip & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const AdvApp2Var_Strip &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AdvApp2Var_SequenceOfStrip & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Strip & First() const;
		%feature("autodoc", "1");
		const AdvApp2Var_Strip & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AdvApp2Var_SequenceOfStrip & S);
		%feature("autodoc", "1");
		const AdvApp2Var_Strip & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const AdvApp2Var_Strip & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const AdvApp2Var_Strip &I);
		%feature("autodoc", "1");
		AdvApp2Var_Strip & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		AdvApp2Var_Strip & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") AdvApp2Var_SequenceOfStrip::~AdvApp2Var_SequenceOfStrip %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_SequenceOfStrip {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_Criterion;
class AdvApp2Var_Criterion {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		void Value(AdvApp2Var_Patch & P, const AdvApp2Var_Context &C) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSatisfied(const AdvApp2Var_Patch &P) const;
		%feature("autodoc", "1");
		Standard_Real MaxValue() const;
		%feature("autodoc", "1");
		AdvApp2Var_CriterionType Type() const;
		%feature("autodoc", "1");
		AdvApp2Var_CriterionRepartition Repartition() const;

};
%feature("shadow") AdvApp2Var_Criterion::~AdvApp2Var_Criterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_Criterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AdvApp2Var_ApproxAFunc2Var;
class AdvApp2Var_ApproxAFunc2Var {
	public:
		%feature("autodoc", "1");
		AdvApp2Var_ApproxAFunc2Var(const Standard_Integer Num1DSS, const Standard_Integer Num2DSS, const Standard_Integer Num3DSS, const Handle_TColStd_HArray1OfReal &OneDTol, const Handle_TColStd_HArray1OfReal &TwoDTol, const Handle_TColStd_HArray1OfReal &ThreeDTol, const Handle_TColStd_HArray2OfReal &OneDTolFr, const Handle_TColStd_HArray2OfReal &TwoDTolFr, const Handle_TColStd_HArray2OfReal &ThreeDTolFr, const Standard_Real FirstInU, const Standard_Real LastInU, const Standard_Real FirstInV, const Standard_Real LastInV, const GeomAbs_IsoType FavorIso, const GeomAbs_Shape ContInU, const GeomAbs_Shape ContInV, const Standard_Integer PrecisCode, const Standard_Integer MaxDegInU, const Standard_Integer MaxDegInV, const Standard_Integer MaxPatch, const AdvApp2Var_EvaluatorFunc2Var &Func, AdvApprox_Cutting & UChoice, AdvApprox_Cutting & VChoice);
		%feature("autodoc", "1");
		AdvApp2Var_ApproxAFunc2Var(const Standard_Integer Num1DSS, const Standard_Integer Num2DSS, const Standard_Integer Num3DSS, const Handle_TColStd_HArray1OfReal &OneDTol, const Handle_TColStd_HArray1OfReal &TwoDTol, const Handle_TColStd_HArray1OfReal &ThreeDTol, const Handle_TColStd_HArray2OfReal &OneDTolFr, const Handle_TColStd_HArray2OfReal &TwoDTolFr, const Handle_TColStd_HArray2OfReal &ThreeDTolFr, const Standard_Real FirstInU, const Standard_Real LastInU, const Standard_Real FirstInV, const Standard_Real LastInV, const GeomAbs_IsoType FavorIso, const GeomAbs_Shape ContInU, const GeomAbs_Shape ContInV, const Standard_Integer PrecisCode, const Standard_Integer MaxDegInU, const Standard_Integer MaxDegInV, const Standard_Integer MaxPatch, const AdvApp2Var_EvaluatorFunc2Var &Func, const AdvApp2Var_Criterion &Crit, AdvApprox_Cutting & UChoice, AdvApprox_Cutting & VChoice);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface Surface(const Standard_Integer SSPIndex) const;
		%feature("autodoc", "1");
		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		Standard_Integer NumSubSpaces(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal MaxError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal AverageError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal UFrontError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal VFrontError(const Standard_Integer Dimension) const;
		%feature("autodoc", "1");
		Standard_Real MaxError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real AverageError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real UFrontError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real VFrontError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real CritError(const Standard_Integer Dimension, const Standard_Integer Index) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};

};
%feature("shadow") AdvApp2Var_ApproxAFunc2Var::~AdvApp2Var_ApproxAFunc2Var %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AdvApp2Var_ApproxAFunc2Var {
	void _kill_pointed() {
		delete $self;
	}
};
