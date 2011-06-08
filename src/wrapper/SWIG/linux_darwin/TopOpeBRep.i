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

%module TopOpeBRep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TopOpeBRep_renames.i


%include TopOpeBRep_required_python_modules.i


%include TopOpeBRep_dependencies.i


%include TopOpeBRep_headers.i

typedef TopOpeBRep_FacesFiller * TopOpeBRep_PFacesFiller;
typedef TopOpeBRep_EdgesIntersector * TopOpeBRep_PEdgesIntersector;
typedef IntRes2d_IntersectionPoint * TopOpeBRep_PIntRes2d_IntersectionPoint;
typedef TopOpeBRep_LineInter * TopOpeBRep_PLineInter;
typedef TopOpeBRep_FacesIntersector * TopOpeBRep_PFacesIntersector;
typedef IntSurf_PntOn2S * TopOpeBRep_PPntOn2S;
typedef IntPatch_Point * TopOpeBRep_PThePointOfIntersection;

enum TopOpeBRep_TypeLineCurve {
	TopOpeBRep_ANALYTIC,
	TopOpeBRep_RESTRICTION,
	TopOpeBRep_WALKING,
	TopOpeBRep_LINE,
	TopOpeBRep_CIRCLE,
	TopOpeBRep_ELLIPSE,
	TopOpeBRep_PARABOLA,
	TopOpeBRep_HYPERBOLA,
	TopOpeBRep_OTHERTYPE,
	};

enum TopOpeBRep_P2Dstatus {
	TopOpeBRep_P2DUNK,
	TopOpeBRep_P2DINT,
	TopOpeBRep_P2DSGF,
	TopOpeBRep_P2DSGL,
	TopOpeBRep_P2DNEW,
	};



%nodefaultctor Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d;
class Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d(const Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d(const TopOpeBRep_SequenceNodeOfSequenceOfPoint2d *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d & operator=(const Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d & operator=(const TopOpeBRep_SequenceNodeOfSequenceOfPoint2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d {
	TopOpeBRep_SequenceNodeOfSequenceOfPoint2d* GetObject() {
	return (TopOpeBRep_SequenceNodeOfSequenceOfPoint2d*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d::~Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRep_Hctxff2d;
class Handle_TopOpeBRep_Hctxff2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxff2d();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxff2d(const Handle_TopOpeBRep_Hctxff2d &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxff2d(const TopOpeBRep_Hctxff2d *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxff2d & operator=(const Handle_TopOpeBRep_Hctxff2d &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxff2d & operator=(const TopOpeBRep_Hctxff2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_Hctxff2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_Hctxff2d {
	TopOpeBRep_Hctxff2d* GetObject() {
	return (TopOpeBRep_Hctxff2d*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_Hctxff2d::~Handle_TopOpeBRep_Hctxff2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_Hctxff2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRep_HArray1OfVPointInter;
class Handle_TopOpeBRep_HArray1OfVPointInter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfVPointInter();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfVPointInter(const Handle_TopOpeBRep_HArray1OfVPointInter &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfVPointInter(const TopOpeBRep_HArray1OfVPointInter *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfVPointInter & operator=(const Handle_TopOpeBRep_HArray1OfVPointInter &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfVPointInter & operator=(const TopOpeBRep_HArray1OfVPointInter *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_HArray1OfVPointInter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_HArray1OfVPointInter {
	TopOpeBRep_HArray1OfVPointInter* GetObject() {
	return (TopOpeBRep_HArray1OfVPointInter*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_HArray1OfVPointInter::~Handle_TopOpeBRep_HArray1OfVPointInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_HArray1OfVPointInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRep_FFDumper;
class Handle_TopOpeBRep_FFDumper : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_FFDumper();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_FFDumper(const Handle_TopOpeBRep_FFDumper &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_FFDumper(const TopOpeBRep_FFDumper *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_FFDumper & operator=(const Handle_TopOpeBRep_FFDumper &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_FFDumper & operator=(const TopOpeBRep_FFDumper *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_FFDumper DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_FFDumper {
	TopOpeBRep_FFDumper* GetObject() {
	return (TopOpeBRep_FFDumper*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_FFDumper::~Handle_TopOpeBRep_FFDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_FFDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool;
class Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool(const Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool(const TopOpeBRep_DataMapNodeOfDataMapOfTopolTool *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool & operator=(const Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool & operator=(const TopOpeBRep_DataMapNodeOfDataMapOfTopolTool *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool {
	TopOpeBRep_DataMapNodeOfDataMapOfTopolTool* GetObject() {
	return (TopOpeBRep_DataMapNodeOfDataMapOfTopolTool*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool::~Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRep_ListNodeOfListOfBipoint;
class Handle_TopOpeBRep_ListNodeOfListOfBipoint : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_ListNodeOfListOfBipoint();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_ListNodeOfListOfBipoint(const Handle_TopOpeBRep_ListNodeOfListOfBipoint &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_ListNodeOfListOfBipoint(const TopOpeBRep_ListNodeOfListOfBipoint *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_ListNodeOfListOfBipoint & operator=(const Handle_TopOpeBRep_ListNodeOfListOfBipoint &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_ListNodeOfListOfBipoint & operator=(const TopOpeBRep_ListNodeOfListOfBipoint *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_ListNodeOfListOfBipoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_ListNodeOfListOfBipoint {
	TopOpeBRep_ListNodeOfListOfBipoint* GetObject() {
	return (TopOpeBRep_ListNodeOfListOfBipoint*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_ListNodeOfListOfBipoint::~Handle_TopOpeBRep_ListNodeOfListOfBipoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_ListNodeOfListOfBipoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRep_Hctxee2d;
class Handle_TopOpeBRep_Hctxee2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxee2d();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxee2d(const Handle_TopOpeBRep_Hctxee2d &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxee2d(const TopOpeBRep_Hctxee2d *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxee2d & operator=(const Handle_TopOpeBRep_Hctxee2d &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxee2d & operator=(const TopOpeBRep_Hctxee2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_Hctxee2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_Hctxee2d {
	TopOpeBRep_Hctxee2d* GetObject() {
	return (TopOpeBRep_Hctxee2d*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_Hctxee2d::~Handle_TopOpeBRep_Hctxee2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_Hctxee2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopOpeBRep_HArray1OfLineInter;
class Handle_TopOpeBRep_HArray1OfLineInter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfLineInter();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfLineInter(const Handle_TopOpeBRep_HArray1OfLineInter &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfLineInter(const TopOpeBRep_HArray1OfLineInter *anItem);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfLineInter & operator=(const Handle_TopOpeBRep_HArray1OfLineInter &aHandle);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfLineInter & operator=(const TopOpeBRep_HArray1OfLineInter *anItem);
		%feature("autodoc", "1");
		static		Handle_TopOpeBRep_HArray1OfLineInter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopOpeBRep_HArray1OfLineInter {
	TopOpeBRep_HArray1OfLineInter* GetObject() {
	return (TopOpeBRep_HArray1OfLineInter*)$self->Access();
	}
};
%feature("shadow") Handle_TopOpeBRep_HArray1OfLineInter::~Handle_TopOpeBRep_HArray1OfLineInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopOpeBRep_HArray1OfLineInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_FacesFiller;
class TopOpeBRep_FacesFiller {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_FacesFiller();
		%feature("autodoc", "1");
		void Insert(const TopoDS_Shape F1, const TopoDS_Shape F2, TopOpeBRep_FacesIntersector & FACINT, const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		void ProcessSectionEdges();
		%feature("autodoc", "1");
		TopOpeBRep_PointClassifier & ChangePointClassifier();
		%feature("autodoc", "1");
		TopOpeBRepTool_PShapeClassifier PShapeClassifier() const;
		%feature("autodoc", "1");
		void SetPShapeClassifier(const TopOpeBRepTool_PShapeClassifier &PSC);
		%feature("autodoc", "1");
		void LoadLine(TopOpeBRep_LineInter & L);
		%feature("autodoc", "1");
		Standard_Boolean CheckLine(TopOpeBRep_LineInter & L) const;
		%feature("autodoc", "1");
		void VP_Position(TopOpeBRep_FacesIntersector & FACINT);
		%feature("autodoc", "1");
		void VP_Position(TopOpeBRep_LineInter & L);
		%feature("autodoc", "1");
		void VP_PositionOnL(TopOpeBRep_LineInter & L);
		%feature("autodoc", "1");
		void VP_PositionOnR(TopOpeBRep_LineInter & L);
		%feature("autodoc", "1");
		void VP_Position(TopOpeBRep_VPointInter & VP, TopOpeBRep_VPointInterClassifier & VPC);
		%feature("autodoc", "1");
		void ProcessLine();
		%feature("autodoc", "1");
		void ResetDSC();
		%feature("autodoc", "1");
		void ProcessRLine();
		%feature("autodoc", "1");
		void FillLineVPonR();
		%feature("autodoc", "1");
		void FillLine();
		%feature("autodoc", "1");
		void AddShapesLine();
		%feature("autodoc", "1");
		void GetESL(TopTools_ListOfShape & LES);
		%feature("autodoc", "1");
		void ProcessVPR(TopOpeBRep_FacesFiller & FF, const TopOpeBRep_VPointInter &VP);
		%feature("autodoc", "1");
		void ProcessVPIonR(TopOpeBRep_VPointInterIterator & VPI, const TopOpeBRepDS_Transition &trans1, const TopoDS_Shape F1, const Standard_Integer ShapeIndex);
		%feature("autodoc", "1");
		void ProcessVPonR(const TopOpeBRep_VPointInter &VP, const TopOpeBRepDS_Transition &trans1, const TopoDS_Shape F1, const Standard_Integer ShapeIndex);
		%feature("autodoc", "1");
		void ProcessVPonclosingR(const TopOpeBRep_VPointInter &VP, const TopoDS_Shape F1, const Standard_Integer ShapeIndex, const TopOpeBRepDS_Transition &transEdge, const TopOpeBRepDS_Kind PVKind, const Standard_Integer PVIndex, const Standard_Boolean EPIfound, const Handle_TopOpeBRepDS_Interference &IEPI);
		%feature("autodoc","ProcessVPondgE(const VP, Standard_Integer ShapeIndex) -> Standard_Integer");

		Standard_Boolean ProcessVPondgE(const TopOpeBRep_VPointInter &VP, const Standard_Integer ShapeIndex, TopOpeBRepDS_Kind & PVKind, Standard_Integer &OutValue, Standard_Boolean & EPIfound, Handle_TopOpeBRepDS_Interference & IEPI, Standard_Boolean & CPIfound, Handle_TopOpeBRepDS_Interference & ICPI);
		%feature("autodoc", "1");
		void ProcessVPInotonR(TopOpeBRep_VPointInterIterator & VPI);
		%feature("autodoc", "1");
		void ProcessVPnotonR(const TopOpeBRep_VPointInter &VP);
		%feature("autodoc","GetGeometry(const VP) -> Standard_Integer");

		Standard_Boolean GetGeometry(TopOpeBRepDS_ListIteratorOfListOfInterference & IT, const TopOpeBRep_VPointInter &VP, Standard_Integer &OutValue, TopOpeBRepDS_Kind & K);
		%feature("autodoc", "1");
		Standard_Integer MakeGeometry(const TopOpeBRep_VPointInter &VP, const Standard_Integer ShapeIndex, TopOpeBRepDS_Kind & K);
		%feature("autodoc", "1");
		void StoreCurveInterference(const Handle_TopOpeBRepDS_Interference &I);
		%feature("autodoc","GetFFGeometry(const DSP) -> Standard_Integer");

		Standard_Boolean GetFFGeometry(const TopOpeBRepDS_Point &DSP, TopOpeBRepDS_Kind & K, Standard_Integer &OutValue) const;
		%feature("autodoc","GetFFGeometry(const VP) -> Standard_Integer");

		Standard_Boolean GetFFGeometry(const TopOpeBRep_VPointInter &VP, TopOpeBRepDS_Kind & K, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		TopOpeBRep_FacesIntersector & ChangeFacesIntersector();
		%feature("autodoc", "1");
		Handle_TopOpeBRepDS_HDataStructure HDataStructure();
		%feature("autodoc", "1");
		TopOpeBRepDS_DataStructure & ChangeDataStructure();
		%feature("autodoc", "1");
		const TopoDS_Face  Face(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Transition & FaceFaceTransition(const TopOpeBRep_LineInter &L, const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopOpeBRepDS_Transition & FaceFaceTransition(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRep_PFacesIntersector PFacesIntersectorDummy() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_PDataStructure PDataStructureDummy() const;
		%feature("autodoc", "1");
		TopOpeBRep_PLineInter PLineInterDummy() const;
		%feature("autodoc", "1");
		void SetTraceIndex(const Standard_Integer exF1, const Standard_Integer exF2);
		%feature("autodoc","GetTraceIndex() -> [Standard_Integer, Standard_Integer]");

		void GetTraceIndex(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","Lminmax(const L) -> [Standard_Real, Standard_Real]");

		static		void Lminmax(const TopOpeBRep_LineInter &L, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean LSameDomainERL(const TopOpeBRep_LineInter &L, const TopTools_ListOfShape &ERL);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVPtransLok(const TopOpeBRep_LineInter &L, const Standard_Integer iVP, const Standard_Integer SI12, TopOpeBRepDS_Transition & T);
		%feature("autodoc", "1");
		static		Standard_Boolean TransvpOK(const TopOpeBRep_LineInter &L, const Standard_Integer iVP, const Standard_Integer SI, const Standard_Boolean isINOUT);
		%feature("autodoc", "1");
		static		Standard_Real VPParamOnER(const TopOpeBRep_VPointInter &vp, const TopOpeBRep_LineInter &Lrest);
		%feature("autodoc", "1");
		static		Standard_Boolean EqualpPonR(const TopOpeBRep_LineInter &Lrest, const TopOpeBRep_VPointInter &VP1, const TopOpeBRep_VPointInter &VP2);

};
%feature("shadow") TopOpeBRep_FacesFiller::~TopOpeBRep_FacesFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_FacesFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_FaceEdgeIntersector;
class TopOpeBRep_FaceEdgeIntersector {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_FaceEdgeIntersector();
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape F, const TopoDS_Shape E);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty();
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void ForceTolerance(const Standard_Real tol);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		void InitPoint();
		%feature("autodoc", "1");
		Standard_Boolean MorePoint() const;
		%feature("autodoc", "1");
		void NextPoint();
		%feature("autodoc", "1");
		gp_Pnt Value() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void UVPoint(gp_Pnt2d & P) const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Transition Transition(const Standard_Integer Index, const TopAbs_Orientation FaceOrientation) const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertex(const TopoDS_Shape S, const gp_Pnt P, const Standard_Real Tol, TopoDS_Vertex & V);
		%feature("autodoc", "1");
		Standard_Boolean IsVertex(const Standard_Integer I, TopoDS_Vertex & V);
		%feature("autodoc", "1");
		Standard_Integer Index() const;

};
%feature("shadow") TopOpeBRep_FaceEdgeIntersector::~TopOpeBRep_FaceEdgeIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_FaceEdgeIntersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_VPointInterClassifier;
class TopOpeBRep_VPointInterClassifier {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_VPointInterClassifier();
		%feature("autodoc", "1");
		TopAbs_State VPointPosition(const TopoDS_Shape F, TopOpeBRep_VPointInter & VP, const Standard_Integer ShapeIndex, TopOpeBRep_PointClassifier & PC, const Standard_Boolean AssumeINON, const Standard_Real Tol);
		%feature("autodoc", "1");
		const TopoDS_Shape  Edge() const;
		%feature("autodoc", "1");
		Standard_Real EdgeParameter() const;

};
%feature("shadow") TopOpeBRep_VPointInterClassifier::~TopOpeBRep_VPointInterClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_VPointInterClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_GeomTool;
class TopOpeBRep_GeomTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_GeomTool();
		%feature("autodoc", "1");
		static		void MakeCurves(const Standard_Real min, const Standard_Real max, const TopOpeBRep_LineInter &L, const TopoDS_Shape S1, const TopoDS_Shape S2, TopOpeBRepDS_Curve & C, Handle_Geom2d_Curve & PC1, Handle_Geom2d_Curve & PC2);
		%feature("autodoc", "1");
		static		void MakeCurve(const Standard_Real min, const Standard_Real max, const TopOpeBRep_LineInter &L, Handle_Geom_Curve & C);
		%feature("autodoc", "1");
		static		Handle_Geom_Curve MakeBSpline1fromWALKING3d(const TopOpeBRep_LineInter &L);
		%feature("autodoc", "1");
		static		Handle_Geom2d_Curve MakeBSpline1fromWALKING2d(const TopOpeBRep_LineInter &L, const Standard_Integer SI);

};
%feature("shadow") TopOpeBRep_GeomTool::~TopOpeBRep_GeomTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_GeomTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_DSFiller;
class TopOpeBRep_DSFiller {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_DSFiller();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		TopOpeBRepTool_PShapeClassifier PShapeClassifier() const;
		%feature("autodoc", "1");
		void Insert(const TopoDS_Shape S1, const TopoDS_Shape S2, const Handle_TopOpeBRepDS_HDataStructure &HDS, const Standard_Boolean orientFORWARD=1);
		%feature("autodoc", "1");
		void InsertIntersection(const TopoDS_Shape S1, const TopoDS_Shape S2, const Handle_TopOpeBRepDS_HDataStructure &HDS, const Standard_Boolean orientFORWARD=1);
		%feature("autodoc", "1");
		void Complete(const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		void Insert2d(const TopoDS_Shape S1, const TopoDS_Shape S2, const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		void InsertIntersection2d(const TopoDS_Shape S1, const TopoDS_Shape S2, const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		Standard_Boolean IsMadeOf1d(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsContext1d(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		void Insert1d(const TopoDS_Shape S1, const TopoDS_Shape S2, const TopoDS_Face F1, const TopoDS_Face F2, const Handle_TopOpeBRepDS_HDataStructure &HDS, const Standard_Boolean orientFORWARD=0);
		%feature("autodoc", "1");
		TopOpeBRep_ShapeIntersector & ChangeShapeIntersector();
		%feature("autodoc", "1");
		TopOpeBRep_ShapeIntersector2d & ChangeShapeIntersector2d();
		%feature("autodoc", "1");
		TopOpeBRep_FacesFiller & ChangeFacesFiller();
		%feature("autodoc", "1");
		TopOpeBRep_EdgesFiller & ChangeEdgesFiller();
		%feature("autodoc", "1");
		TopOpeBRep_FaceEdgeFiller & ChangeFaceEdgeFiller();
		%feature("autodoc", "1");
		void GapFiller(const Handle_TopOpeBRepDS_HDataStructure &HDS) const;
		%feature("autodoc", "1");
		void CompleteDS(const Handle_TopOpeBRepDS_HDataStructure &HDS) const;
		%feature("autodoc", "1");
		void Filter(const Handle_TopOpeBRepDS_HDataStructure &HDS) const;
		%feature("autodoc", "1");
		void Reducer(const Handle_TopOpeBRepDS_HDataStructure &HDS) const;
		%feature("autodoc", "1");
		void RemoveUnsharedGeometry(const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		void Checker(const Handle_TopOpeBRepDS_HDataStructure &HDS) const;
		%feature("autodoc", "1");
		void CompleteDS2d(const Handle_TopOpeBRepDS_HDataStructure &HDS) const;

};
%feature("shadow") TopOpeBRep_DSFiller::~TopOpeBRep_DSFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_DSFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_WPointInter;
class TopOpeBRep_WPointInter {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_WPointInter();
		%feature("autodoc", "1");
		void Set(const IntSurf_PntOn2S &P);
		%feature("autodoc","ParametersOnS1() -> [Standard_Real, Standard_Real]");

		void ParametersOnS1(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ParametersOnS2() -> [Standard_Real, Standard_Real]");

		void ParametersOnS2(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueOnS1() const;
		%feature("autodoc", "1");
		gp_Pnt2d ValueOnS2() const;
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		TopOpeBRep_PPntOn2S PPntOn2SDummy() const;

};
%feature("shadow") TopOpeBRep_WPointInter::~TopOpeBRep_WPointInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_WPointInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_FacesIntersector;
class TopOpeBRep_FacesIntersector {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_FacesIntersector();
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape S1, const TopoDS_Shape S2, const Bnd_Box &B1, const Bnd_Box &B2);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean SameDomain() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Face(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean SurfacesSameOriented() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRestriction(const TopoDS_Shape E) const;
		%feature("autodoc", "1");
		const TopTools_IndexedMapOfShape & Restrictions() const;
		%feature("autodoc", "1");
		void PrepareLines();
		%feature("autodoc", "1");
		Handle_TopOpeBRep_HArray1OfLineInter Lines();
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		void InitLine();
		%feature("autodoc", "1");
		Standard_Boolean MoreLine() const;
		%feature("autodoc", "1");
		void NextLine();
		%feature("autodoc", "1");
		TopOpeBRep_LineInter & CurrentLine();
		%feature("autodoc", "1");
		Standard_Integer CurrentLineIndex() const;
		%feature("autodoc", "1");
		TopOpeBRep_LineInter & ChangeLine(const Standard_Integer IL);
		%feature("autodoc", "1");
		void ForceTolerances(const Standard_Real tolarc, const Standard_Real toltang);
		%feature("autodoc","GetTolerances() -> [Standard_Real, Standard_Real]");

		void GetTolerances(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") TopOpeBRep_FacesIntersector::~TopOpeBRep_FacesIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_FacesIntersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_Point2d;
class TopOpeBRep_Point2d {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_Point2d();
		%feature("autodoc", "1");
		void Dump(const Standard_Integer ie1=0, const Standard_Integer ie2=0) const;
		%feature("autodoc", "1");
		void SetPint(const IntRes2d_IntersectionPoint &P);
		%feature("autodoc", "1");
		Standard_Boolean HasPint() const;
		%feature("autodoc", "1");
		const IntRes2d_IntersectionPoint & Pint() const;
		%feature("autodoc", "1");
		void SetIsVertex(const Standard_Integer Index, const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean IsVertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetVertex(const Standard_Integer Index, const TopoDS_Vertex V);
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void SetTransition(const Standard_Integer Index, const TopOpeBRepDS_Transition &T);
		%feature("autodoc", "1");
		const TopOpeBRepDS_Transition & Transition(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopOpeBRepDS_Transition & ChangeTransition(const Standard_Integer I);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Integer Index, const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetIsPointOfSegment(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean IsPointOfSegment() const;
		%feature("autodoc", "1");
		void SetSegmentAncestors(const Standard_Integer IP1, const Standard_Integer IP2);
		%feature("autodoc","SegmentAncestors() -> [Standard_Integer, Standard_Integer]");

		Standard_Boolean SegmentAncestors(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetStatus(const TopOpeBRep_P2Dstatus I);
		%feature("autodoc", "1");
		TopOpeBRep_P2Dstatus Status() const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt P);
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		void SetValue2d(const gp_Pnt2d P);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value2d() const;
		%feature("autodoc", "1");
		void SetKeep(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Keep() const;
		%feature("autodoc", "1");
		void SetEdgesConfig(const TopOpeBRepDS_Config B);
		%feature("autodoc", "1");
		TopOpeBRepDS_Config EdgesConfig() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real t);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void SetHctxff2d(const Handle_TopOpeBRep_Hctxff2d &h);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxff2d Hctxff2d() const;
		%feature("autodoc", "1");
		void SetHctxee2d(const Handle_TopOpeBRep_Hctxee2d &h);
		%feature("autodoc", "1");
		Handle_TopOpeBRep_Hctxee2d Hctxee2d() const;

};
%feature("shadow") TopOpeBRep_Point2d::~TopOpeBRep_Point2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_Point2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool;
class TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool();
		%feature("autodoc", "1");
		TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool(const TopOpeBRep_DataMapOfTopolTool &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRep_DataMapOfTopolTool &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Handle_BRepTopAdaptor_TopolTool & Value() const;

};
%feature("shadow") TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool::~TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_VPointInter;
class TopOpeBRep_VPointInter {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_VPointInter();
		%feature("autodoc", "1");
		void SetPoint(const IntPatch_Point &P);
		%feature("autodoc", "1");
		void SetShapes(const Standard_Integer I1, const Standard_Integer I2);
		%feature("autodoc","GetShapes() -> [Standard_Integer, Standard_Integer]");

		void GetShapes(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		IntSurf_Transition TransitionOnS1() const;
		%feature("autodoc", "1");
		IntSurf_Transition TransitionOnS2() const;
		%feature("autodoc", "1");
		IntSurf_Transition TransitionLineArc1() const;
		%feature("autodoc", "1");
		IntSurf_Transition TransitionLineArc2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnDomS1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnDomS2() const;
		%feature("autodoc","ParametersOnS1() -> [Standard_Real, Standard_Real]");

		void ParametersOnS1(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ParametersOnS2() -> [Standard_Real, Standard_Real]");

		void ParametersOnS2(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  ArcOnS1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  ArcOnS2() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnLine() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnArc1() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertexOnS1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  VertexOnS1() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnArc2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertexOnS2() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  VertexOnS2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInternal() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMultiple() const;
		%feature("autodoc", "1");
		TopAbs_State State(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void State(const TopAbs_State S, const Standard_Integer I);
		%feature("autodoc", "1");
		void EdgeON(const TopoDS_Shape Eon, const Standard_Real Par, const Standard_Integer I);
		%feature("autodoc", "1");
		const TopoDS_Shape  EdgeON(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Real EdgeONParameter(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer ShapeIndex() const;
		%feature("autodoc", "1");
		void ShapeIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		const TopoDS_Shape  Edge(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Real EdgeParameter(const Standard_Integer I) const;
		%feature("autodoc", "1");
		gp_Pnt2d SurfaceParameters(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Vertex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		void UpdateKeep();
		%feature("autodoc", "1");
		Standard_Boolean Keep() const;
		%feature("autodoc", "1");
		void ChangeKeep(const Standard_Boolean keep);
		%feature("autodoc", "1");
		Standard_Boolean EqualpP(const TopOpeBRep_VPointInter &VP) const;
		%feature("autodoc","ParonE(const E) -> Standard_Real");

		Standard_Boolean ParonE(const TopoDS_Edge E, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Index(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Standard_OStream & Dump(const Standard_Integer I, const TopoDS_Face F, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		Standard_OStream & Dump(const TopoDS_Face F1, const TopoDS_Face F2, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		TopOpeBRep_PThePointOfIntersection PThePointOfIntersectionDummy() const;

};
%feature("shadow") TopOpeBRep_VPointInter::~TopOpeBRep_VPointInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_VPointInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_EdgesIntersector;
class TopOpeBRep_EdgesIntersector {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_EdgesIntersector();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetFaces(const TopoDS_Shape F1, const TopoDS_Shape F2);
		%feature("autodoc", "1");
		void SetFaces(const TopoDS_Shape F1, const TopoDS_Shape F2, const Bnd_Box &B1, const Bnd_Box &B2);
		%feature("autodoc", "1");
		void ForceTolerances(const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc", "1");
		void Dimension(const Standard_Integer D);
		%feature("autodoc", "1");
		Standard_Integer Dimension() const;
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape E1, const TopoDS_Shape E2, const Standard_Boolean ReduceSegments=1);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty();
		%feature("autodoc", "1");
		Standard_Boolean HasSegment() const;
		%feature("autodoc", "1");
		Standard_Boolean SameDomain() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Geom2dAdaptor_Curve & Curve(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Face(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepAdaptor_Surface & Surface(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean SurfacesSameOriented() const;
		%feature("autodoc", "1");
		Standard_Boolean FacesSameOriented() const;
		%feature("autodoc", "1");
		Standard_Real ToleranceMax() const;
		%feature("autodoc","Tolerances() -> [Standard_Real, Standard_Real]");

		void Tolerances(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		void Dump(const TCollection_AsciiString &str, const Standard_Integer ie1=0, const Standard_Integer ie2=0);
		%feature("autodoc", "1");
		void InitPoint(const Standard_Boolean selectkeep=1);
		%feature("autodoc", "1");
		Standard_Boolean MorePoint() const;
		%feature("autodoc", "1");
		void NextPoint();
		%feature("autodoc", "1");
		const TopOpeBRep_SequenceOfPoint2d & Points() const;
		%feature("autodoc", "1");
		const TopOpeBRep_Point2d & Point() const;
		%feature("autodoc", "1");
		const TopOpeBRep_Point2d & Point(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ReduceSegment(TopOpeBRep_Point2d & P1, TopOpeBRep_Point2d & P2, TopOpeBRep_Point2d & Pn) const;
		%feature("autodoc", "1");
		TopOpeBRep_P2Dstatus Status1() const;

};
%feature("shadow") TopOpeBRep_EdgesIntersector::~TopOpeBRep_EdgesIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_EdgesIntersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_DataMapOfTopolTool;
class TopOpeBRep_DataMapOfTopolTool : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_DataMapOfTopolTool(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopOpeBRep_DataMapOfTopolTool & Assign(const TopOpeBRep_DataMapOfTopolTool &Other);
		%feature("autodoc", "1");
		TopOpeBRep_DataMapOfTopolTool & operator=(const TopOpeBRep_DataMapOfTopolTool &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Handle_BRepTopAdaptor_TopolTool &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Handle_BRepTopAdaptor_TopolTool & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Handle_BRepTopAdaptor_TopolTool & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool & operator()(const TopoDS_Shape K);

};
%feature("shadow") TopOpeBRep_DataMapOfTopolTool::~TopOpeBRep_DataMapOfTopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_DataMapOfTopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_ListIteratorOfListOfBipoint;
class TopOpeBRep_ListIteratorOfListOfBipoint {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_ListIteratorOfListOfBipoint();
		%feature("autodoc", "1");
		TopOpeBRep_ListIteratorOfListOfBipoint(const TopOpeBRep_ListOfBipoint &L);
		%feature("autodoc", "1");
		void Initialize(const TopOpeBRep_ListOfBipoint &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopOpeBRep_Bipoint & Value() const;

};
%feature("shadow") TopOpeBRep_ListIteratorOfListOfBipoint::~TopOpeBRep_ListIteratorOfListOfBipoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_ListIteratorOfListOfBipoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_FFDumper;
class TopOpeBRep_FFDumper : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_FFDumper(const TopOpeBRep_PFacesFiller &PFF);
		%feature("autodoc", "1");
		void Init(const TopOpeBRep_PFacesFiller &PFF);
		%feature("autodoc", "1");
		void DumpLine(const Standard_Integer I);
		%feature("autodoc", "1");
		void DumpLine(const TopOpeBRep_LineInter &L);
		%feature("autodoc", "1");
		void DumpVP(const TopOpeBRep_VPointInter &VP);
		%feature("autodoc", "1");
		void DumpVP(const TopOpeBRep_VPointInter &VP, const Standard_Integer ISI);
		%feature("autodoc", "1");
		Standard_Integer ExploreIndex(const TopoDS_Shape S, const Standard_Integer ISI) const;
		%feature("autodoc", "1");
		void DumpDSP(const TopOpeBRep_VPointInter &VP, const TopOpeBRepDS_Kind GK, const Standard_Integer G, const Standard_Boolean newinDS) const;
		%feature("autodoc", "1");
		TopOpeBRep_PFacesFiller PFacesFillerDummy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_FFDumper {
	Handle_TopOpeBRep_FFDumper GetHandle() {
	return *(Handle_TopOpeBRep_FFDumper*) &$self;
	}
};
%extend TopOpeBRep_FFDumper {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_FFDumper::~TopOpeBRep_FFDumper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_FFDumper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_SequenceOfPoint2d;
class TopOpeBRep_SequenceOfPoint2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_SequenceOfPoint2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TopOpeBRep_SequenceOfPoint2d & Assign(const TopOpeBRep_SequenceOfPoint2d &Other);
		%feature("autodoc", "1");
		const TopOpeBRep_SequenceOfPoint2d & operator=(const TopOpeBRep_SequenceOfPoint2d &Other);
		%feature("autodoc", "1");
		void Append(const TopOpeBRep_Point2d &T);
		%feature("autodoc", "1");
		void Append(TopOpeBRep_SequenceOfPoint2d & S);
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRep_Point2d &T);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRep_SequenceOfPoint2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TopOpeBRep_Point2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TopOpeBRep_SequenceOfPoint2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TopOpeBRep_Point2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TopOpeBRep_SequenceOfPoint2d & S);
		%feature("autodoc", "1");
		const TopOpeBRep_Point2d & First() const;
		%feature("autodoc", "1");
		const TopOpeBRep_Point2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TopOpeBRep_SequenceOfPoint2d & S);
		%feature("autodoc", "1");
		const TopOpeBRep_Point2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopOpeBRep_Point2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopOpeBRep_Point2d &I);
		%feature("autodoc", "1");
		TopOpeBRep_Point2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopOpeBRep_Point2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TopOpeBRep_SequenceOfPoint2d::~TopOpeBRep_SequenceOfPoint2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_SequenceOfPoint2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_Array1OfLineInter;
class TopOpeBRep_Array1OfLineInter {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_Array1OfLineInter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopOpeBRep_Array1OfLineInter(const TopOpeBRep_LineInter &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TopOpeBRep_LineInter &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TopOpeBRep_Array1OfLineInter & Assign(const TopOpeBRep_Array1OfLineInter &Other);
		%feature("autodoc", "1");
		const TopOpeBRep_Array1OfLineInter & operator=(const TopOpeBRep_Array1OfLineInter &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopOpeBRep_LineInter &Value);
		%feature("autodoc", "1");
		const TopOpeBRep_LineInter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopOpeBRep_LineInter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopOpeBRep_LineInter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopOpeBRep_LineInter & operator()(const Standard_Integer Index);

};
%feature("shadow") TopOpeBRep_Array1OfLineInter::~TopOpeBRep_Array1OfLineInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_Array1OfLineInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_Hctxee2d;
class TopOpeBRep_Hctxee2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_Hctxee2d();
		%feature("autodoc", "1");
		void SetEdges(const TopoDS_Edge E1, const TopoDS_Edge E2, const BRepAdaptor_Surface &BAS1, const BRepAdaptor_Surface &BAS2);
		%feature("autodoc", "1");
		const TopoDS_Shape  Edge(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Geom2dAdaptor_Curve & Curve(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const IntRes2d_Domain & Domain(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_Hctxee2d {
	Handle_TopOpeBRep_Hctxee2d GetHandle() {
	return *(Handle_TopOpeBRep_Hctxee2d*) &$self;
	}
};
%extend TopOpeBRep_Hctxee2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_Hctxee2d::~TopOpeBRep_Hctxee2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_Hctxee2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_SequenceNodeOfSequenceOfPoint2d;
class TopOpeBRep_SequenceNodeOfSequenceOfPoint2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_SequenceNodeOfSequenceOfPoint2d(const TopOpeBRep_Point2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TopOpeBRep_Point2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_SequenceNodeOfSequenceOfPoint2d {
	Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d GetHandle() {
	return *(Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d*) &$self;
	}
};
%extend TopOpeBRep_SequenceNodeOfSequenceOfPoint2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_SequenceNodeOfSequenceOfPoint2d::~TopOpeBRep_SequenceNodeOfSequenceOfPoint2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_SequenceNodeOfSequenceOfPoint2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_FFTransitionTool;
class TopOpeBRep_FFTransitionTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_FFTransitionTool();
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Transition ProcessLineTransition(const TopOpeBRep_VPointInter &P, const Standard_Integer Index, const TopAbs_Orientation EdgeOrientation);
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Transition ProcessLineTransition(const TopOpeBRep_VPointInter &P, const TopOpeBRep_LineInter &L);
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Transition ProcessEdgeTransition(const TopOpeBRep_VPointInter &P, const Standard_Integer Index, const TopAbs_Orientation LineOrientation);
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Transition ProcessFaceTransition(const TopOpeBRep_LineInter &L, const Standard_Integer Index, const TopAbs_Orientation FaceOrientation);
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Transition ProcessEdgeONTransition(const TopOpeBRep_VPointInter &VP, const Standard_Integer Index, const TopoDS_Shape R, const TopoDS_Shape E, const TopoDS_Shape F);

};
%feature("shadow") TopOpeBRep_FFTransitionTool::~TopOpeBRep_FFTransitionTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_FFTransitionTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_VPointInterIterator;
class TopOpeBRep_VPointInterIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_VPointInterIterator();
		%feature("autodoc", "1");
		TopOpeBRep_VPointInterIterator(const TopOpeBRep_LineInter &LI);
		%feature("autodoc", "1");
		void Init(const TopOpeBRep_LineInter &LI, const Standard_Boolean checkkeep=0);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopOpeBRep_VPointInter & CurrentVP();
		%feature("autodoc", "1");
		Standard_Integer CurrentVPIndex() const;
		%feature("autodoc", "1");
		TopOpeBRep_VPointInter & ChangeCurrentVP();
		%feature("autodoc", "1");
		TopOpeBRep_PLineInter PLineInterDummy() const;

};
%feature("shadow") TopOpeBRep_VPointInterIterator::~TopOpeBRep_VPointInterIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_VPointInterIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_PointGeomTool;
class TopOpeBRep_PointGeomTool {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_PointGeomTool();
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Point MakePoint(const TopOpeBRep_VPointInter &IP);
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Point MakePoint(const TopOpeBRep_Point2d &P2D);
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Point MakePoint(const TopOpeBRep_FaceEdgeIntersector &FEI);
		%feature("autodoc", "1");
		static		TopOpeBRepDS_Point MakePoint(const TopoDS_Shape S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const TopOpeBRepDS_Point &DSP1, const TopOpeBRepDS_Point &DSP2);

};
%feature("shadow") TopOpeBRep_PointGeomTool::~TopOpeBRep_PointGeomTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_PointGeomTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_EdgesFiller;
class TopOpeBRep_EdgesFiller {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_EdgesFiller();
		%feature("autodoc", "1");
		void Insert(const TopoDS_Shape E1, const TopoDS_Shape E2, TopOpeBRep_EdgesIntersector & EI, const Handle_TopOpeBRepDS_HDataStructure &HDS);
		%feature("autodoc", "1");
		void Face(const Standard_Integer I, const TopoDS_Shape F);
		%feature("autodoc", "1");
		const TopoDS_Shape  Face(const Standard_Integer I) const;

};
%feature("shadow") TopOpeBRep_EdgesFiller::~TopOpeBRep_EdgesFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_EdgesFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_DataMapNodeOfDataMapOfTopolTool;
class TopOpeBRep_DataMapNodeOfDataMapOfTopolTool : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_DataMapNodeOfDataMapOfTopolTool(const TopoDS_Shape K, const Handle_BRepTopAdaptor_TopolTool &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		Handle_BRepTopAdaptor_TopolTool & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_DataMapNodeOfDataMapOfTopolTool {
	Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool GetHandle() {
	return *(Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool*) &$self;
	}
};
%extend TopOpeBRep_DataMapNodeOfDataMapOfTopolTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_DataMapNodeOfDataMapOfTopolTool::~TopOpeBRep_DataMapNodeOfDataMapOfTopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_DataMapNodeOfDataMapOfTopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_HArray1OfLineInter;
class TopOpeBRep_HArray1OfLineInter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_HArray1OfLineInter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopOpeBRep_HArray1OfLineInter(const Standard_Integer Low, const Standard_Integer Up, const TopOpeBRep_LineInter &V);
		%feature("autodoc", "1");
		void Init(const TopOpeBRep_LineInter &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopOpeBRep_LineInter &Value);
		%feature("autodoc", "1");
		const TopOpeBRep_LineInter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopOpeBRep_LineInter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TopOpeBRep_Array1OfLineInter & Array1() const;
		%feature("autodoc", "1");
		TopOpeBRep_Array1OfLineInter & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_HArray1OfLineInter {
	Handle_TopOpeBRep_HArray1OfLineInter GetHandle() {
	return *(Handle_TopOpeBRep_HArray1OfLineInter*) &$self;
	}
};
%extend TopOpeBRep_HArray1OfLineInter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_HArray1OfLineInter::~TopOpeBRep_HArray1OfLineInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_HArray1OfLineInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_ShapeIntersector;
class TopOpeBRep_ShapeIntersector {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_ShapeIntersector();
		%feature("autodoc", "1");
		void InitIntersection(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		void InitIntersection(const TopoDS_Shape S1, const TopoDS_Shape S2, const TopoDS_Face F1, const TopoDS_Face F2);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean MoreIntersection() const;
		%feature("autodoc", "1");
		void NextIntersection();
		%feature("autodoc", "1");
		TopOpeBRep_FacesIntersector & ChangeFacesIntersector();
		%feature("autodoc", "1");
		TopOpeBRep_EdgesIntersector & ChangeEdgesIntersector();
		%feature("autodoc", "1");
		TopOpeBRep_FaceEdgeIntersector & ChangeFaceEdgeIntersector();
		%feature("autodoc", "1");
		const TopoDS_Shape  CurrentGeomShape(const Standard_Integer Index) const;
		%feature("autodoc","GetTolerances() -> [Standard_Real, Standard_Real]");

		void GetTolerances(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void DumpCurrent(const Standard_Integer K) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Standard_Integer K) const;
		%feature("autodoc", "1");
		void RejectedFaces(const TopoDS_Shape anObj, const TopoDS_Shape aReference, TopTools_ListOfShape & aListOfShape);

};
%feature("shadow") TopOpeBRep_ShapeIntersector::~TopOpeBRep_ShapeIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_ShapeIntersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_FaceEdgeFiller;
class TopOpeBRep_FaceEdgeFiller {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_FaceEdgeFiller();
		%feature("autodoc", "1");
		void Insert(const TopoDS_Shape F, const TopoDS_Shape E, TopOpeBRep_FaceEdgeIntersector & FEINT, const Handle_TopOpeBRepDS_HDataStructure &HDS);

};
%feature("shadow") TopOpeBRep_FaceEdgeFiller::~TopOpeBRep_FaceEdgeFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_FaceEdgeFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_ShapeScanner;
class TopOpeBRep_ShapeScanner {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_ShapeScanner();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void AddBoxesMakeCOB(const TopoDS_Shape S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape E);
		%feature("autodoc", "1");
		void Init(TopOpeBRepTool_ShapeExplorer & X);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape  Current() const;
		%feature("autodoc", "1");
		const TopOpeBRepTool_BoxSort & BoxSort() const;
		%feature("autodoc", "1");
		TopOpeBRepTool_BoxSort & ChangeBoxSort();
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpCurrentToString() {
			std::stringstream s;
			self->DumpCurrent(s);
			return s.str();}
		};

};
%feature("shadow") TopOpeBRep_ShapeScanner::~TopOpeBRep_ShapeScanner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_ShapeScanner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_Array1OfVPointInter;
class TopOpeBRep_Array1OfVPointInter {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_Array1OfVPointInter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopOpeBRep_Array1OfVPointInter(const TopOpeBRep_VPointInter &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TopOpeBRep_VPointInter &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TopOpeBRep_Array1OfVPointInter & Assign(const TopOpeBRep_Array1OfVPointInter &Other);
		%feature("autodoc", "1");
		const TopOpeBRep_Array1OfVPointInter & operator=(const TopOpeBRep_Array1OfVPointInter &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopOpeBRep_VPointInter &Value);
		%feature("autodoc", "1");
		const TopOpeBRep_VPointInter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopOpeBRep_VPointInter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopOpeBRep_VPointInter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopOpeBRep_VPointInter & operator()(const Standard_Integer Index);

};
%feature("shadow") TopOpeBRep_Array1OfVPointInter::~TopOpeBRep_Array1OfVPointInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_Array1OfVPointInter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_WPointInterIterator;
class TopOpeBRep_WPointInterIterator {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_WPointInterIterator();
		%feature("autodoc", "1");
		TopOpeBRep_WPointInterIterator(const TopOpeBRep_LineInter &LI);
		%feature("autodoc", "1");
		void Init(const TopOpeBRep_LineInter &LI);
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopOpeBRep_WPointInter & CurrentWP();
		%feature("autodoc", "1");
		TopOpeBRep_PLineInter PLineInterDummy() const;

};
%feature("shadow") TopOpeBRep_WPointInterIterator::~TopOpeBRep_WPointInterIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_WPointInterIterator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep;
class TopOpeBRep {
	public:
		%feature("autodoc", "1");
		TopOpeBRep();
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TopOpeBRep_TypeLineCurve TLC, Standard_OStream & OS);

};
%feature("shadow") TopOpeBRep::~TopOpeBRep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_ListNodeOfListOfBipoint;
class TopOpeBRep_ListNodeOfListOfBipoint : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_ListNodeOfListOfBipoint(const TopOpeBRep_Bipoint &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopOpeBRep_Bipoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_ListNodeOfListOfBipoint {
	Handle_TopOpeBRep_ListNodeOfListOfBipoint GetHandle() {
	return *(Handle_TopOpeBRep_ListNodeOfListOfBipoint*) &$self;
	}
};
%extend TopOpeBRep_ListNodeOfListOfBipoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_ListNodeOfListOfBipoint::~TopOpeBRep_ListNodeOfListOfBipoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_ListNodeOfListOfBipoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_Hctxff2d;
class TopOpeBRep_Hctxff2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_Hctxff2d();
		%feature("autodoc", "1");
		void SetFaces(const TopoDS_Face F1, const TopoDS_Face F2);
		%feature("autodoc", "1");
		void SetHSurfaces(const Handle_BRepAdaptor_HSurface &S1, const Handle_BRepAdaptor_HSurface &S2);
		%feature("autodoc", "1");
		void SetTolerances(const Standard_Real Tol1, const Standard_Real Tol2);
		%feature("autodoc","GetTolerances() -> [Standard_Real, Standard_Real]");

		void GetTolerances(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real GetMaxTolerance() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HSurface HSurface(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean SurfacesSameOriented() const;
		%feature("autodoc", "1");
		Standard_Boolean FacesSameOriented() const;
		%feature("autodoc", "1");
		Standard_Boolean FaceSameOrientedWithRef(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_Hctxff2d {
	Handle_TopOpeBRep_Hctxff2d GetHandle() {
	return *(Handle_TopOpeBRep_Hctxff2d*) &$self;
	}
};
%extend TopOpeBRep_Hctxff2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_Hctxff2d::~TopOpeBRep_Hctxff2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_Hctxff2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_Bipoint;
class TopOpeBRep_Bipoint {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_Bipoint();
		%feature("autodoc", "1");
		TopOpeBRep_Bipoint(const Standard_Integer I1, const Standard_Integer I2);
		%feature("autodoc", "1");
		Standard_Integer I1() const;
		%feature("autodoc", "1");
		Standard_Integer I2() const;

};
%feature("shadow") TopOpeBRep_Bipoint::~TopOpeBRep_Bipoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_Bipoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_ListOfBipoint;
class TopOpeBRep_ListOfBipoint {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_ListOfBipoint();
		%feature("autodoc", "1");
		void Assign(const TopOpeBRep_ListOfBipoint &Other);
		%feature("autodoc", "1");
		void operator=(const TopOpeBRep_ListOfBipoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRep_Bipoint &I);
		%feature("autodoc", "1");
		void Prepend(const TopOpeBRep_Bipoint &I, TopOpeBRep_ListIteratorOfListOfBipoint & theIt);
		%feature("autodoc", "1");
		void Prepend(TopOpeBRep_ListOfBipoint & Other);
		%feature("autodoc", "1");
		void Append(const TopOpeBRep_Bipoint &I);
		%feature("autodoc", "1");
		void Append(const TopOpeBRep_Bipoint &I, TopOpeBRep_ListIteratorOfListOfBipoint & theIt);
		%feature("autodoc", "1");
		void Append(TopOpeBRep_ListOfBipoint & Other);
		%feature("autodoc", "1");
		TopOpeBRep_Bipoint & First() const;
		%feature("autodoc", "1");
		TopOpeBRep_Bipoint & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopOpeBRep_ListIteratorOfListOfBipoint & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopOpeBRep_Bipoint &I, TopOpeBRep_ListIteratorOfListOfBipoint & It);
		%feature("autodoc", "1");
		void InsertBefore(TopOpeBRep_ListOfBipoint & Other, TopOpeBRep_ListIteratorOfListOfBipoint & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopOpeBRep_Bipoint &I, TopOpeBRep_ListIteratorOfListOfBipoint & It);
		%feature("autodoc", "1");
		void InsertAfter(TopOpeBRep_ListOfBipoint & Other, TopOpeBRep_ListIteratorOfListOfBipoint & It);

};
%feature("shadow") TopOpeBRep_ListOfBipoint::~TopOpeBRep_ListOfBipoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_ListOfBipoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_ShapeIntersector2d;
class TopOpeBRep_ShapeIntersector2d {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_ShapeIntersector2d();
		%feature("autodoc", "1");
		void InitIntersection(const TopoDS_Shape S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean MoreIntersection() const;
		%feature("autodoc", "1");
		void NextIntersection();
		%feature("autodoc", "1");
		TopOpeBRep_EdgesIntersector & ChangeEdgesIntersector();
		%feature("autodoc", "1");
		const TopoDS_Shape  CurrentGeomShape(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void DumpCurrent(const Standard_Integer K) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Standard_Integer K) const;

};
%feature("shadow") TopOpeBRep_ShapeIntersector2d::~TopOpeBRep_ShapeIntersector2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_ShapeIntersector2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_PointClassifier;
class TopOpeBRep_PointClassifier {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_PointClassifier();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Load(const TopoDS_Face F);
		%feature("autodoc", "1");
		TopAbs_State Classify(const TopoDS_Face F, const gp_Pnt2d P, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State State() const;

};
%feature("shadow") TopOpeBRep_PointClassifier::~TopOpeBRep_PointClassifier %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_PointClassifier {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopOpeBRep_HArray1OfVPointInter;
class TopOpeBRep_HArray1OfVPointInter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopOpeBRep_HArray1OfVPointInter(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopOpeBRep_HArray1OfVPointInter(const Standard_Integer Low, const Standard_Integer Up, const TopOpeBRep_VPointInter &V);
		%feature("autodoc", "1");
		void Init(const TopOpeBRep_VPointInter &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopOpeBRep_VPointInter &Value);
		%feature("autodoc", "1");
		const TopOpeBRep_VPointInter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopOpeBRep_VPointInter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TopOpeBRep_Array1OfVPointInter & Array1() const;
		%feature("autodoc", "1");
		TopOpeBRep_Array1OfVPointInter & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopOpeBRep_HArray1OfVPointInter {
	Handle_TopOpeBRep_HArray1OfVPointInter GetHandle() {
	return *(Handle_TopOpeBRep_HArray1OfVPointInter*) &$self;
	}
};
%extend TopOpeBRep_HArray1OfVPointInter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") TopOpeBRep_HArray1OfVPointInter::~TopOpeBRep_HArray1OfVPointInter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopOpeBRep_HArray1OfVPointInter {
	void _kill_pointed() {
		delete $self;
	}
};
