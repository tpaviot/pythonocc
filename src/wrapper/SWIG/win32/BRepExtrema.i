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

%module BRepExtrema
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepExtrema_renames.i


%include BRepExtrema_required_python_modules.i


%include BRepExtrema_dependencies.i


%include BRepExtrema_headers.i

typedef NCollection_Sequence<BRepExtrema_SolutionElem> BRepExtrema_SeqOfSolution;

enum BRepExtrema_SupportType {
	BRepExtrema_IsVertex,
	BRepExtrema_IsOnEdge,
	BRepExtrema_IsInFace,
	};



%nodefaultctor Handle_BRepExtrema_UnCompatibleShape;
class Handle_BRepExtrema_UnCompatibleShape : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_BRepExtrema_UnCompatibleShape();
		%feature("autodoc", "1");
		Handle_BRepExtrema_UnCompatibleShape(const Handle_BRepExtrema_UnCompatibleShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepExtrema_UnCompatibleShape(const BRepExtrema_UnCompatibleShape *anItem);
		%feature("autodoc", "1");
		Handle_BRepExtrema_UnCompatibleShape & operator=(const Handle_BRepExtrema_UnCompatibleShape &aHandle);
		%feature("autodoc", "1");
		Handle_BRepExtrema_UnCompatibleShape & operator=(const BRepExtrema_UnCompatibleShape *anItem);
		%feature("autodoc", "1");
		static		Handle_BRepExtrema_UnCompatibleShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepExtrema_UnCompatibleShape {
	BRepExtrema_UnCompatibleShape* GetObject() {
	return (BRepExtrema_UnCompatibleShape*)$self->Access();
	}
};
%feature("shadow") Handle_BRepExtrema_UnCompatibleShape::~Handle_BRepExtrema_UnCompatibleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BRepExtrema_UnCompatibleShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_Poly;
class BRepExtrema_Poly {
	public:
		%feature("autodoc", "1");
		BRepExtrema_Poly();
		%feature("autodoc","Distance(const S1, const S2) -> Standard_Real");

		static		Standard_Boolean Distance(const TopoDS_Shape S1, const TopoDS_Shape S2, gp_Pnt & P1, gp_Pnt & P2, Standard_Real &OutValue);

};
%feature("shadow") BRepExtrema_Poly::~BRepExtrema_Poly %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_Poly {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_ExtPF;
class BRepExtrema_ExtPF {
	public:
		%feature("autodoc", "1");
		BRepExtrema_ExtPF();
		%feature("autodoc", "1");
		BRepExtrema_ExtPF(const TopoDS_Vertex TheVertex, const TopoDS_Face TheFace, const Extrema_ExtFlag TheFlag=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo TheAlgo=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Face TheFace, const Extrema_ExtFlag TheFlag=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo TheAlgo=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Vertex TheVertex, const TopoDS_Face TheFace);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc","Parameter(Standard_Integer N) -> [Standard_Real, Standard_Real]");

		void Parameter(const Standard_Integer N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer N) const;
		%feature("autodoc", "1");
		void SetFlag(const Extrema_ExtFlag F);
		%feature("autodoc", "1");
		void SetAlgo(const Extrema_ExtAlgo A);

};
%feature("shadow") BRepExtrema_ExtPF::~BRepExtrema_ExtPF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_ExtPF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_UnCompatibleShape;
class BRepExtrema_UnCompatibleShape : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		BRepExtrema_UnCompatibleShape();
		%feature("autodoc", "1");
		BRepExtrema_UnCompatibleShape(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_BRepExtrema_UnCompatibleShape NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRepExtrema_UnCompatibleShape {
	Handle_BRepExtrema_UnCompatibleShape GetHandle() {
	return *(Handle_BRepExtrema_UnCompatibleShape*) &$self;
	}
};
%extend BRepExtrema_UnCompatibleShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") BRepExtrema_UnCompatibleShape::~BRepExtrema_UnCompatibleShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_UnCompatibleShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_DistanceSS;
class BRepExtrema_DistanceSS {
	public:
		%feature("autodoc", "1");
		BRepExtrema_DistanceSS(const TopoDS_Shape S1, const TopoDS_Shape S2, const Bnd_Box &B1, const Bnd_Box &B2, const Standard_Real DstRef, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		BRepExtrema_DistanceSS(const TopoDS_Shape S1, const TopoDS_Shape S2, const Bnd_Box &B1, const Bnd_Box &B2, const Standard_Real DstRef, const Standard_Real aDeflection, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real DistValue() const;
		%feature("autodoc", "1");
		const BRepExtrema_SeqOfSolution & Seq1Value() const;
		%feature("autodoc", "1");
		const BRepExtrema_SeqOfSolution & Seq2Value() const;
		%feature("autodoc", "1");
		void SetFlag(const Extrema_ExtFlag F);
		%feature("autodoc", "1");
		void SetAlgo(const Extrema_ExtAlgo A);

};
%feature("shadow") BRepExtrema_DistanceSS::~BRepExtrema_DistanceSS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_DistanceSS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_ExtCC;
class BRepExtrema_ExtCC {
	public:
		%feature("autodoc", "1");
		BRepExtrema_ExtCC();
		%feature("autodoc", "1");
		BRepExtrema_ExtCC(const TopoDS_Edge E1, const TopoDS_Edge E2);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Edge E2);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Edge E1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnE1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		gp_Pnt PointOnE1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnE2(const Standard_Integer N) const;
		%feature("autodoc", "1");
		gp_Pnt PointOnE2(const Standard_Integer N) const;
		%feature("autodoc","TrimmedSquareDistances() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void TrimmedSquareDistances(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & P11, gp_Pnt & P12, gp_Pnt & P21, gp_Pnt & P22) const;

};
%feature("shadow") BRepExtrema_ExtCC::~BRepExtrema_ExtCC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_ExtCC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_ExtCF;
class BRepExtrema_ExtCF {
	public:
		%feature("autodoc", "1");
		BRepExtrema_ExtCF();
		%feature("autodoc", "1");
		BRepExtrema_ExtCF(const TopoDS_Edge V, const TopoDS_Face E);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Face E);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Edge V, const TopoDS_Face F);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnEdge(const Standard_Integer N) const;
		%feature("autodoc","ParameterOnFace(Standard_Integer N) -> [Standard_Real, Standard_Real]");

		void ParameterOnFace(const Standard_Integer N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Pnt PointOnEdge(const Standard_Integer N) const;
		%feature("autodoc", "1");
		gp_Pnt PointOnFace(const Standard_Integer N) const;

};
%feature("shadow") BRepExtrema_ExtCF::~BRepExtrema_ExtCF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_ExtCF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_ExtFF;
class BRepExtrema_ExtFF {
	public:
		%feature("autodoc", "1");
		BRepExtrema_ExtFF();
		%feature("autodoc", "1");
		BRepExtrema_ExtFF(const TopoDS_Face F1, const TopoDS_Face F2);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Face F2);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face F1, const TopoDS_Face F2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc","ParameterOnFace1(Standard_Integer N) -> [Standard_Real, Standard_Real]");

		void ParameterOnFace1(const Standard_Integer N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ParameterOnFace2(Standard_Integer N) -> [Standard_Real, Standard_Real]");

		void ParameterOnFace2(const Standard_Integer N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Pnt PointOnFace1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		gp_Pnt PointOnFace2(const Standard_Integer N) const;

};
%feature("shadow") BRepExtrema_ExtFF::~BRepExtrema_ExtFF %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_ExtFF {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_ExtPC;
class BRepExtrema_ExtPC {
	public:
		%feature("autodoc", "1");
		BRepExtrema_ExtPC();
		%feature("autodoc", "1");
		BRepExtrema_ExtPC(const TopoDS_Vertex V, const TopoDS_Edge E);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Edge E);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Vertex V);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbExt() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMin(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Standard_Integer N) const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer N) const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer N) const;
		%feature("autodoc","TrimmedSquareDistances() -> [Standard_Real, Standard_Real]");

		void TrimmedSquareDistances(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & pnt1, gp_Pnt & pnt2) const;

};
%feature("shadow") BRepExtrema_ExtPC::~BRepExtrema_ExtPC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_ExtPC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_DistShapeShape;
class BRepExtrema_DistShapeShape {
	public:
		%feature("autodoc", "1");
		BRepExtrema_DistShapeShape();
		%feature("autodoc", "1");
		BRepExtrema_DistShapeShape(const TopoDS_Shape Shape1, const TopoDS_Shape Shape2, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		BRepExtrema_DistShapeShape(const TopoDS_Shape Shape1, const TopoDS_Shape Shape2, const Standard_Real theDeflection, const Extrema_ExtFlag F=Extrema_ExtFlag_MINMAX, const Extrema_ExtAlgo A=Extrema_ExtAlgo_Grad);
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real theDeflection);
		%feature("autodoc", "1");
		void LoadS1(const TopoDS_Shape Shape1);
		%feature("autodoc", "1");
		void LoadS2(const TopoDS_Shape Shape1);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolution() const;
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Boolean InnerSolution() const;
		%feature("autodoc", "1");
		const gp_Pnt  PointOnShape1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		const gp_Pnt  PointOnShape2(const Standard_Integer N) const;
		%feature("autodoc", "1");
		BRepExtrema_SupportType SupportTypeShape1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		BRepExtrema_SupportType SupportTypeShape2(const Standard_Integer N) const;
		%feature("autodoc", "1");
		TopoDS_Shape SupportOnShape1(const Standard_Integer N) const;
		%feature("autodoc", "1");
		TopoDS_Shape SupportOnShape2(const Standard_Integer N) const;
		%feature("autodoc","ParOnEdgeS1(Standard_Integer N) -> Standard_Real");

		void ParOnEdgeS1(const Standard_Integer N, Standard_Real &OutValue) const;
		%feature("autodoc","ParOnEdgeS2(Standard_Integer N) -> Standard_Real");

		void ParOnEdgeS2(const Standard_Integer N, Standard_Real &OutValue) const;
		%feature("autodoc","ParOnFaceS1(Standard_Integer N) -> [Standard_Real, Standard_Real]");

		void ParOnFaceS1(const Standard_Integer N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ParOnFaceS2(Standard_Integer N) -> [Standard_Real, Standard_Real]");

		void ParOnFaceS2(const Standard_Integer N, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void SetFlag(const Extrema_ExtFlag F);
		%feature("autodoc", "1");
		void SetAlgo(const Extrema_ExtAlgo A);

};
%feature("shadow") BRepExtrema_DistShapeShape::~BRepExtrema_DistShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_DistShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepExtrema_SolutionElem;
class BRepExtrema_SolutionElem {
	public:
		%feature("autodoc", "1");
		BRepExtrema_SolutionElem();
		%feature("autodoc", "1");
		BRepExtrema_SolutionElem(const Standard_Real d, const gp_Pnt Pt, const BRepExtrema_SupportType SolType, const TopoDS_Vertex vertex);
		%feature("autodoc", "1");
		BRepExtrema_SolutionElem(const Standard_Real d, const gp_Pnt Pt, const BRepExtrema_SupportType SolType, const TopoDS_Edge edge, const Standard_Real t);
		%feature("autodoc", "1");
		BRepExtrema_SolutionElem(const Standard_Real d, const gp_Pnt Pt, const BRepExtrema_SupportType SolType, const TopoDS_Face face, const Standard_Real u, const Standard_Real v);
		%feature("autodoc", "1");
		Standard_Real Dist() const;
		%feature("autodoc", "1");
		const gp_Pnt  Point() const;
		%feature("autodoc", "1");
		BRepExtrema_SupportType SupportKind() const;
		%feature("autodoc", "1");
		const TopoDS_Vertex  Vertex() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc","EdgeParameter() -> Standard_Real");

		void EdgeParameter(Standard_Real &OutValue) const;
		%feature("autodoc","FaceParameter() -> [Standard_Real, Standard_Real]");

		void FaceParameter(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") BRepExtrema_SolutionElem::~BRepExtrema_SolutionElem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepExtrema_SolutionElem {
	void _kill_pointed() {
		delete $self;
	}
};
