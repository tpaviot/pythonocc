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

%module BRepAlgoAPI
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepAlgoAPI_renames.i


%include BRepAlgoAPI_required_python_modules.i


%include BRepAlgoAPI_dependencies.i


%include BRepAlgoAPI_headers.i




%nodefaultctor BRepAlgoAPI_Check;
class BRepAlgoAPI_Check {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Check();
		%feature("autodoc", "1");
		BRepAlgoAPI_Check(const TopoDS_Shape theS, const Standard_Boolean bTestSE=1, const Standard_Boolean bTestSI=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Check(const TopoDS_Shape theS1, const TopoDS_Shape theS2, const BOPAlgo_Operation theOp=BOPAlgo_UNKNOWN, const Standard_Boolean bTestSE=1, const Standard_Boolean bTestSI=1);
		%feature("autodoc", "1");
		void SetData(const TopoDS_Shape theS, const Standard_Boolean bTestSE=1, const Standard_Boolean bTestSI=1);
		%feature("autodoc", "1");
		void SetData(const TopoDS_Shape theS1, const TopoDS_Shape theS2, const BOPAlgo_Operation theOp=BOPAlgo_UNKNOWN, const Standard_Boolean bTestSE=1, const Standard_Boolean bTestSI=1);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsValid();
		%feature("autodoc", "1");
		const BOPAlgo_ListOfCheckResult & Result();

};
%feature("shadow") BRepAlgoAPI_Check::~BRepAlgoAPI_Check %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgoAPI_Check {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgoAPI_BooleanOperation;
class BRepAlgoAPI_BooleanOperation : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		void SetOperation(const BOPAlgo_Operation anOp);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;
		%feature("autodoc", "1");
		BOPAlgo_Operation Operation() const;
		%feature("autodoc", "1");
		Standard_Boolean FuseEdges() const;
		%feature("autodoc", "1");
		void RefineEdges();
		%feature("autodoc", "1");
		Standard_Boolean BuilderCanWork() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified2(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasModified() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasGenerated() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasDeleted() const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SectionEdges();

};
%feature("shadow") BRepAlgoAPI_BooleanOperation::~BRepAlgoAPI_BooleanOperation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgoAPI_BooleanOperation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRepAlgoAPI_BooleanOperation {
	BRepAlgoAPI_BooleanOperation () {}
};


%nodefaultctor BRepAlgoAPI_Fuse;
class BRepAlgoAPI_Fuse : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Fuse(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Fuse(const TopoDS_Shape S1, const TopoDS_Shape S2, const BOPAlgo_PaveFiller &aDSF);

};
%feature("shadow") BRepAlgoAPI_Fuse::~BRepAlgoAPI_Fuse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgoAPI_Fuse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgoAPI;
class BRepAlgoAPI {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI();
		%feature("autodoc", "1");
		static		void DumpOper(const char * theFilePath, const TopoDS_Shape theShape1, const TopoDS_Shape theShape2, const TopoDS_Shape theResult, const BOPAlgo_Operation theOperation, const Standard_Boolean isNonValidArgs);

};
%feature("shadow") BRepAlgoAPI::~BRepAlgoAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgoAPI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgoAPI_Section;
class BRepAlgoAPI_Section : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape S1, const TopoDS_Shape S2, const BOPAlgo_PaveFiller &aDSF, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape Sh1, const TopoDS_Shape Sh2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape Sh, const gp_Pln Pl, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const TopoDS_Shape Sh, const Handle_Geom_Surface &Sf, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const Handle_Geom_Surface &Sf, const TopoDS_Shape Sh, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		BRepAlgoAPI_Section(const Handle_Geom_Surface &Sf1, const Handle_Geom_Surface &Sf2, const Standard_Boolean PerformNow=1);
		%feature("autodoc", "1");
		void Init1(const TopoDS_Shape S1);
		%feature("autodoc", "1");
		void Init1(const gp_Pln Pl);
		%feature("autodoc", "1");
		void Init1(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Init2(const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void Init2(const gp_Pln Pl);
		%feature("autodoc", "1");
		void Init2(const Handle_Geom_Surface &Sf);
		%feature("autodoc", "1");
		void Approximation(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn1(const Standard_Boolean B);
		%feature("autodoc", "1");
		void ComputePCurveOn2(const Standard_Boolean B);
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn1(const TopoDS_Shape E, TopoDS_Shape & F) const;
		%feature("autodoc", "1");
		Standard_Boolean HasAncestorFaceOn2(const TopoDS_Shape E, TopoDS_Shape & F) const;

};
%feature("shadow") BRepAlgoAPI_Section::~BRepAlgoAPI_Section %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgoAPI_Section {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgoAPI_Cut;
class BRepAlgoAPI_Cut : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Cut(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Cut(const TopoDS_Shape S1, const TopoDS_Shape S2, const BOPAlgo_PaveFiller &aDSF, const Standard_Boolean bFWD=1);

};
%feature("shadow") BRepAlgoAPI_Cut::~BRepAlgoAPI_Cut %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgoAPI_Cut {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepAlgoAPI_Common;
class BRepAlgoAPI_Common : public BRepAlgoAPI_BooleanOperation {
	public:
		%feature("autodoc", "1");
		BRepAlgoAPI_Common(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		BRepAlgoAPI_Common(const TopoDS_Shape S1, const TopoDS_Shape S2, const BOPAlgo_PaveFiller &aDSF);

};
%feature("shadow") BRepAlgoAPI_Common::~BRepAlgoAPI_Common %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepAlgoAPI_Common {
	void _kill_pointed() {
		delete $self;
	}
};
