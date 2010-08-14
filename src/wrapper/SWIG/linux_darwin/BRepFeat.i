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
%module BRepFeat
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepFeat_dependencies.i


%include BRepFeat_headers.i


enum BRepFeat_Status {
	BRepFeat_NoError,
	BRepFeat_InvalidPlacement,
	BRepFeat_HoleTooLong,
	};

enum BRepFeat_PerfSelection {
	BRepFeat_NoSelection,
	BRepFeat_SelectionFU,
	BRepFeat_SelectionU,
	BRepFeat_SelectionSh,
	BRepFeat_SelectionShU,
	};

enum BRepFeat_StatusError {
	BRepFeat_OK,
	BRepFeat_BadDirect,
	BRepFeat_BadIntersect,
	BRepFeat_EmptyBaryCurve,
	BRepFeat_EmptyCutResult,
	BRepFeat_FalseSide,
	BRepFeat_IncDirection,
	BRepFeat_IncSlidFace,
	BRepFeat_IncParameter,
	BRepFeat_IncTypes,
	BRepFeat_IntervalOverlap,
	BRepFeat_InvFirstShape,
	BRepFeat_InvOption,
	BRepFeat_InvShape,
	BRepFeat_LocOpeNotDone,
	BRepFeat_LocOpeInvNotDone,
	BRepFeat_NoExtFace,
	BRepFeat_NoFaceProf,
	BRepFeat_NoGluer,
	BRepFeat_NoIntersectF,
	BRepFeat_NoIntersectU,
	BRepFeat_NoParts,
	BRepFeat_NoProjPt,
	BRepFeat_NotInitialized,
	BRepFeat_NotYetImplemented,
	BRepFeat_NullRealTool,
	BRepFeat_NullToolF,
	BRepFeat_NullToolU,
	};



%nodefaultctor BRepFeat_Builder;
class BRepFeat_Builder : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const TopoDS_Shape &T);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &F);

};
%feature("shadow") BRepFeat_Builder::~BRepFeat_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_Builder {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRepFeat_Builder {
	BRepFeat_Builder () {}
};


%nodefaultctor BRepFeat_MakeCylindricalHole;
class BRepFeat_MakeCylindricalHole : public BRepFeat_Builder {
	public:
		%feature("autodoc", "1");
		BRepFeat_MakeCylindricalHole();
		%feature("autodoc", "1");
		BRepFeat_MakeCylindricalHole(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepFeat_MakeCylindricalHole(const TopoDS_Shape &S, const gp_Ax1 &Axis);
		%feature("autodoc", "1");
		void Init(const gp_Ax1 &Axis);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const gp_Ax1 &Axis);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Radius);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Radius, const Standard_Real PFrom, const Standard_Real PTo, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void PerformThruNext(const Standard_Real Radius, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void PerformUntilEnd(const Standard_Real Radius, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		void PerformBlind(const Standard_Real Radius, const Standard_Real Length, const Standard_Boolean WithControl=1);
		%feature("autodoc", "1");
		BRepFeat_Status Status() const;
		%feature("autodoc", "1");
		virtual		void Build();

};
%feature("shadow") BRepFeat_MakeCylindricalHole::~BRepFeat_MakeCylindricalHole %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_MakeCylindricalHole {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat;
class BRepFeat {
	public:
		%feature("autodoc", "1");
		BRepFeat();
		%feature("autodoc", "1");
		static		void SampleEdges(const TopoDS_Shape &S, TColgp_SequenceOfPnt & Pt);
		%feature("autodoc", "1");
		static		void Barycenter(const TopoDS_Shape &S, gp_Pnt & Pt);
		%feature("autodoc", "1");
		static		Standard_Real ParametricBarycenter(const TopoDS_Shape &S, const Handle_Geom_Curve &C);
		%feature("autodoc","ParametricMinMax(const S, const C, Standard_Boolean Ori=0) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		static		void ParametricMinMax(const TopoDS_Shape &S, const Handle_Geom_Curve &C, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Boolean & flag, const Standard_Boolean Ori=0);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInside(const TopoDS_Face &F1, const TopoDS_Face &F2);
		%feature("autodoc", "1");
		static		void FaceUntil(const TopoDS_Shape &S, TopoDS_Face & F);
		%feature("autodoc", "1");
		static		TopoDS_Solid Tool(const TopoDS_Shape &SRef, const TopoDS_Face &Fac, const TopAbs_Orientation Orf);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const BRepFeat_StatusError SE, Standard_OStream & S);

};
%feature("shadow") BRepFeat::~BRepFeat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_Form;
class BRepFeat_Form : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FirstShape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LastShape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewEdges() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & TgtEdges() const;
		%feature("autodoc", "1");
		void BasisShapeValid();
		%feature("autodoc", "1");
		void GeneratedShapeValid();
		%feature("autodoc", "1");
		void ShapeFromValid();
		%feature("autodoc", "1");
		void ShapeUntilValid();
		%feature("autodoc", "1");
		void GluedFacesValid();
		%feature("autodoc", "1");
		void SketchFaceValid();
		%feature("autodoc", "1");
		void PerfSelectionValid();
		%feature("autodoc", "1");
		virtual		void Curves(TColGeom_SequenceOfCurve & S);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve BarycCurve();
		%feature("autodoc", "1");
		BRepFeat_StatusError CurrentStatusError() const;

};
%feature("shadow") BRepFeat_Form::~BRepFeat_Form %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_Form {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_MakePipe;
class BRepFeat_MakePipe : public BRepFeat_Form {
	public:
		%feature("autodoc", "1");
		BRepFeat_MakePipe();
		%feature("autodoc", "1");
		BRepFeat_MakePipe(const TopoDS_Shape &Sbase, const TopoDS_Shape &Pbase, const TopoDS_Face &Skface, const TopoDS_Wire &Spine, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Sbase, const TopoDS_Shape &Pbase, const TopoDS_Face &Skface, const TopoDS_Wire &Spine, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Face &OnFace);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Until);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &From, const TopoDS_Shape &Until);

};
%feature("shadow") BRepFeat_MakePipe::~BRepFeat_MakePipe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_MakePipe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_MakePrism;
class BRepFeat_MakePrism : public BRepFeat_Form {
	public:
		%feature("autodoc", "1");
		BRepFeat_MakePrism();
		%feature("autodoc", "1");
		BRepFeat_MakePrism(const TopoDS_Shape &Sbase, const TopoDS_Shape &Pbase, const TopoDS_Face &Skface, const gp_Dir &Direc, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Sbase, const TopoDS_Shape &Pbase, const TopoDS_Face &Skface, const gp_Dir &Direction, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Face &OnFace);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Length);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Until);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &From, const TopoDS_Shape &Until);
		%feature("autodoc", "1");
		void PerformUntilEnd();
		%feature("autodoc", "1");
		void PerformFromEnd(const TopoDS_Shape &FUntil);
		%feature("autodoc", "1");
		void PerformThruAll();
		%feature("autodoc", "1");
		void PerformUntilHeight(const TopoDS_Shape &Until, const Standard_Real Length);
		%feature("autodoc", "1");
		virtual		void Curves(TColGeom_SequenceOfCurve & S);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve BarycCurve();

};
%feature("shadow") BRepFeat_MakePrism::~BRepFeat_MakePrism %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_MakePrism {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_LocalOperation;
class BRepFeat_LocalOperation : public BRepFeat_Builder {
	public:
		%feature("autodoc", "1");
		BRepFeat_LocalOperation();
		%feature("autodoc", "1");
		BRepFeat_LocalOperation(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		BRepFeat_LocalOperation(const TopoDS_Shape &S, const TopoDS_Shape &T);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &T, const TopTools_ListOfShape &L, const Standard_Boolean Fuse);
		%feature("autodoc", "1");
		void Perform(const TopTools_ListOfShape &LS, const TopTools_ListOfShape &LT, const Standard_Boolean Fuse);
		%feature("autodoc", "1");
		void BuildPartsOfTool();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & PartsOfTool() const;
		%feature("autodoc", "1");
		void RemovePart(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void ActivatePart(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		void Build();

};
%feature("shadow") BRepFeat_LocalOperation::~BRepFeat_LocalOperation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_LocalOperation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_SplitShape;
class BRepFeat_SplitShape : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepFeat_SplitShape();
		%feature("autodoc", "1");
		BRepFeat_SplitShape(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Add(const TopoDS_Wire &W, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Edge &EOn);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & DirectLeft() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Left() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &F);

};
%feature("shadow") BRepFeat_SplitShape::~BRepFeat_SplitShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_SplitShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_RibSlot;
class BRepFeat_RibSlot : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FirstShape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LastShape() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FacesForDraft() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewEdges() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & TgtEdges() const;
		%feature("autodoc", "1");
		static		Standard_Real IntPar(const Handle_Geom_Curve &C, const gp_Pnt &P);
		%feature("autodoc", "1");
		static		TopoDS_Face ChoiceOfFaces(TopTools_ListOfShape & faces, const Handle_Geom_Curve &cc, const Standard_Real par, const Standard_Real bnd, const Handle_Geom_Plane &Pln);
		%feature("autodoc", "1");
		BRepFeat_StatusError CurrentStatusError() const;

};
%feature("shadow") BRepFeat_RibSlot::~BRepFeat_RibSlot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_RibSlot {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRepFeat_RibSlot {
	BRepFeat_RibSlot () {}
};


%nodefaultctor BRepFeat_MakeLinearForm;
class BRepFeat_MakeLinearForm : public BRepFeat_RibSlot {
	public:
		%feature("autodoc", "1");
		BRepFeat_MakeLinearForm();
		%feature("autodoc", "1");
		BRepFeat_MakeLinearForm(const TopoDS_Shape &Sbase, const TopoDS_Wire &W, const Handle_Geom_Plane &P, const gp_Vec &Direc, const gp_Vec &Direc1, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Sbase, const TopoDS_Wire &W, const Handle_Geom_Plane &P, const gp_Vec &Direction, const gp_Vec &Direction1, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Face &OnFace);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean Propagate(TopTools_ListOfShape & L, const TopoDS_Face &F, const gp_Pnt &FPoint, const gp_Pnt &LPoint, Standard_Boolean & falseside);

};
%feature("shadow") BRepFeat_MakeLinearForm::~BRepFeat_MakeLinearForm %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_MakeLinearForm {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_MakeRevolutionForm;
class BRepFeat_MakeRevolutionForm : public BRepFeat_RibSlot {
	public:
		%feature("autodoc", "1");
		BRepFeat_MakeRevolutionForm();
		%feature("autodoc", "1");
		BRepFeat_MakeRevolutionForm(const TopoDS_Shape &Sbase, const TopoDS_Wire &W, const Handle_Geom_Plane &P, const gp_Ax1 &Axis, const Standard_Real H1, const Standard_Real H2, const Standard_Integer Fuse, Standard_Boolean & Sliding);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Sbase, const TopoDS_Wire &W, const Handle_Geom_Plane &Plane, const gp_Ax1 &Axis, const Standard_Real Height1, const Standard_Real Height2, const Standard_Integer Fuse, Standard_Boolean & Sliding);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Face &OnFace);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean Propagate(TopTools_ListOfShape & L, const TopoDS_Face &F, const gp_Pnt &FPoint, const gp_Pnt &LPoint, Standard_Boolean & falseside);

};
%feature("shadow") BRepFeat_MakeRevolutionForm::~BRepFeat_MakeRevolutionForm %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_MakeRevolutionForm {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_MakeDPrism;
class BRepFeat_MakeDPrism : public BRepFeat_Form {
	public:
		%feature("autodoc", "1");
		BRepFeat_MakeDPrism(const TopoDS_Shape &Sbase, const TopoDS_Face &Pbase, const TopoDS_Face &Skface, const Standard_Real Angle, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		BRepFeat_MakeDPrism();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Sbase, const TopoDS_Face &Pbase, const TopoDS_Face &Skface, const Standard_Real Angle, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Face &OnFace);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Height);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Until);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &From, const TopoDS_Shape &Until);
		%feature("autodoc", "1");
		void PerformUntilEnd();
		%feature("autodoc", "1");
		void PerformFromEnd(const TopoDS_Shape &FUntil);
		%feature("autodoc", "1");
		void PerformThruAll();
		%feature("autodoc", "1");
		void PerformUntilHeight(const TopoDS_Shape &Until, const Standard_Real Height);
		%feature("autodoc", "1");
		virtual		void Curves(TColGeom_SequenceOfCurve & S);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve BarycCurve();
		%feature("autodoc", "1");
		void BossEdges(const Standard_Integer sig);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & TopEdges();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & LatEdges();

};
%feature("shadow") BRepFeat_MakeDPrism::~BRepFeat_MakeDPrism %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_MakeDPrism {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_Gluer;
class BRepFeat_Gluer : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepFeat_Gluer();
		%feature("autodoc", "1");
		BRepFeat_Gluer(const TopoDS_Shape &Snew, const TopoDS_Shape &Sbase);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Snew, const TopoDS_Shape &Sbase);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Face &Fnew, const TopoDS_Face &Fbase);
		%feature("autodoc", "1");
		void Bind(const TopoDS_Edge &Enew, const TopoDS_Edge &Ebase);
		%feature("autodoc", "1");
		LocOpe_Operation OpeType() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & BasisShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & GluedShape() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &F);

};
%feature("shadow") BRepFeat_Gluer::~BRepFeat_Gluer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_Gluer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFeat_MakeRevol;
class BRepFeat_MakeRevol : public BRepFeat_Form {
	public:
		%feature("autodoc", "1");
		BRepFeat_MakeRevol();
		%feature("autodoc", "1");
		BRepFeat_MakeRevol(const TopoDS_Shape &Sbase, const TopoDS_Shape &Pbase, const TopoDS_Face &Skface, const gp_Ax1 &Axis, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &Sbase, const TopoDS_Shape &Pbase, const TopoDS_Face &Skface, const gp_Ax1 &Axis, const Standard_Integer Fuse, const Standard_Boolean Modify);
		%feature("autodoc", "1");
		void Add(const TopoDS_Edge &E, const TopoDS_Face &OnFace);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Angle);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &Until);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &From, const TopoDS_Shape &Until);
		%feature("autodoc", "1");
		void PerformThruAll();
		%feature("autodoc", "1");
		void PerformUntilAngle(const TopoDS_Shape &Until, const Standard_Real Angle);
		%feature("autodoc", "1");
		virtual		void Curves(TColGeom_SequenceOfCurve & S);
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve BarycCurve();

};
%feature("shadow") BRepFeat_MakeRevol::~BRepFeat_MakeRevol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFeat_MakeRevol {
	void _kill_pointed() {
		delete $self;
	}
};
