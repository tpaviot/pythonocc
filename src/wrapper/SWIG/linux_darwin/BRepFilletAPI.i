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
%module BRepFilletAPI

%include BRepFilletAPI_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepFilletAPI_dependencies.i


%include BRepFilletAPI_headers.i




%nodefaultctor BRepFilletAPI_LocalOperation;
class BRepFilletAPI_LocalOperation : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		void Add(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		virtual		void ResetContour(const Standard_Integer IC);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbContours() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Contour(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEdges(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		const TopoDS_Edge & Edge(const Standard_Integer I, const Standard_Integer J) const;
		%feature("autodoc", "1");
		virtual		void Remove(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		virtual		Standard_Real Length(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex FirstVertex(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex LastVertex(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Abscissa(const Standard_Integer IC, const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		virtual		Standard_Real RelativeAbscissa(const Standard_Integer IC, const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ClosedAndTangent(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Closed(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		void Reset();
		%feature("autodoc", "1");
		virtual		void Simulate(const Standard_Integer IC);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSurf(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		Handle_ChFiDS_SecHArray1 Sect(const Standard_Integer IC, const Standard_Integer IS) const;

};
%feature("shadow") BRepFilletAPI_LocalOperation::~BRepFilletAPI_LocalOperation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFilletAPI_LocalOperation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFilletAPI_MakeChamfer;
class BRepFilletAPI_MakeChamfer : public BRepFilletAPI_LocalOperation {
	public:
		%feature("autodoc", "1");
		BRepFilletAPI_MakeChamfer(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void Add(const Standard_Real Dis, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetDist(const Standard_Real Dis, const Standard_Integer IC, const TopoDS_Face &F);
		%feature("autodoc","GetDist(Standard_Integer IC) -> Standard_Real");
		void GetDist(const Standard_Integer IC, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Add(const Standard_Real Dis1, const Standard_Real Dis2, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetDists(const Standard_Real Dis1, const Standard_Real Dis2, const Standard_Integer IC, const TopoDS_Face &F);
		%feature("autodoc","Dists(Standard_Integer IC) -> [Standard_RealStandard_Real]");
		void Dists(const Standard_Integer IC, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void AddDA(const Standard_Real Dis, const Standard_Real Angle, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetDistAngle(const Standard_Real Dis, const Standard_Real Angle, const Standard_Integer IC, const TopoDS_Face &F);
		%feature("autodoc","GetDistAngle(Standard_Integer IC) -> [Standard_RealStandard_Real]");
		void GetDistAngle(const Standard_Integer IC, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Boolean & DisOnFace1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSymetric(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTwoDistances(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDistanceAngle(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder Builder() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &EorV);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &F);

};
%feature("shadow") BRepFilletAPI_MakeChamfer::~BRepFilletAPI_MakeChamfer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFilletAPI_MakeChamfer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFilletAPI_MakeFillet2d;
class BRepFilletAPI_MakeFillet2d : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepFilletAPI_MakeFillet2d();
		%feature("autodoc", "1");
		BRepFilletAPI_MakeFillet2d(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &RefFace, const TopoDS_Face &ModFace);
		%feature("autodoc", "1");
		TopoDS_Edge AddFillet(const TopoDS_Vertex &V, const Standard_Real Radius);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyFillet(const TopoDS_Edge &Fillet, const Standard_Real Radius);
		%feature("autodoc", "1");
		TopoDS_Vertex RemoveFillet(const TopoDS_Edge &Fillet);
		%feature("autodoc", "1");
		TopoDS_Edge AddChamfer(const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Standard_Real D1, const Standard_Real D2);
		%feature("autodoc", "1");
		TopoDS_Edge AddChamfer(const TopoDS_Edge &E, const TopoDS_Vertex &V, const Standard_Real D, const Standard_Real Ang);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyChamfer(const TopoDS_Edge &Chamfer, const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Standard_Real D1, const Standard_Real D2);
		%feature("autodoc", "1");
		TopoDS_Edge ModifyChamfer(const TopoDS_Edge &Chamfer, const TopoDS_Edge &E, const Standard_Real D, const Standard_Real Ang);
		%feature("autodoc", "1");
		TopoDS_Vertex RemoveChamfer(const TopoDS_Edge &Chamfer);
		%feature("autodoc", "1");
		Standard_Boolean IsModified(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & FilletEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbFillet() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & ChamferEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbChamfer() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Integer NbCurves() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewEdges(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Boolean HasDescendant(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & DescendantEdge(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		const TopoDS_Edge & BasisEdge(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		ChFi2d_ConstructionError Status() const;
		%feature("autodoc", "1");
		virtual		void Build();

};
%feature("shadow") BRepFilletAPI_MakeFillet2d::~BRepFilletAPI_MakeFillet2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFilletAPI_MakeFillet2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BRepFilletAPI_MakeFillet;
class BRepFilletAPI_MakeFillet : public BRepFilletAPI_LocalOperation {
	public:
		%feature("autodoc", "1");
		BRepFilletAPI_MakeFillet(const TopoDS_Shape &S, const ChFi3d_FilletShape FShape=ChFi3d_Rational);
		%feature("autodoc", "1");
		void SetParams(const Standard_Real Tang, const Standard_Real Tesp, const Standard_Real T2d, const Standard_Real TApp3d, const Standard_Real TolApp2d, const Standard_Real Fleche);
		%feature("autodoc", "1");
		void SetContinuity(const GeomAbs_Shape InternalContinuity, const Standard_Real AngularTolerance);
		%feature("autodoc", "1");
		virtual		void Add(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const Standard_Real Radius, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const Standard_Real R1, const Standard_Real R2, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const Handle_Law_Function &L, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Add(const TColgp_Array1OfPnt2d &UandR, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius, const Standard_Integer IC, const Standard_Integer IinC);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real R1, const Standard_Real R2, const Standard_Integer IC, const Standard_Integer IinC);
		%feature("autodoc", "1");
		void SetRadius(const Handle_Law_Function &L, const Standard_Integer IC, const Standard_Integer IinC);
		%feature("autodoc", "1");
		void SetRadius(const TColgp_Array1OfPnt2d &UandR, const Standard_Integer IC, const Standard_Integer IinC);
		%feature("autodoc", "1");
		virtual		void ResetContour(const Standard_Integer IC);
		%feature("autodoc", "1");
		Standard_Boolean IsConstant(const Standard_Integer IC);
		%feature("autodoc", "1");
		Standard_Real Radius(const Standard_Integer IC);
		%feature("autodoc", "1");
		Standard_Boolean IsConstant(const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Real Radius(const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius, const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real Radius, const Standard_Integer IC, const TopoDS_Vertex &V);
		%feature("autodoc","GetBounds(Standard_Integer IC, const E) -> [Standard_RealStandard_Real]");
		Standard_Boolean GetBounds(const Standard_Integer IC, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Law_Function GetLaw(const Standard_Integer IC, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void SetLaw(const Standard_Integer IC, const TopoDS_Edge &E, const Handle_Law_Function &L);
		%feature("autodoc", "1");
		void SetFilletShape(const ChFi3d_FilletShape FShape);
		%feature("autodoc", "1");
		ChFi3d_FilletShape GetFilletShape() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbContours() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Contour(const TopoDS_Edge &E) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEdges(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		const TopoDS_Edge & Edge(const Standard_Integer I, const Standard_Integer J) const;
		%feature("autodoc", "1");
		virtual		void Remove(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		virtual		Standard_Real Length(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex FirstVertex(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		TopoDS_Vertex LastVertex(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Abscissa(const Standard_Integer IC, const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		virtual		Standard_Real RelativeAbscissa(const Standard_Integer IC, const TopoDS_Vertex &V) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ClosedAndTangent(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Closed(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		void Reset();
		%feature("autodoc", "1");
		Handle_TopOpeBRepBuild_HBuilder Builder() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &EorV);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &F);
		%feature("autodoc", "1");
		Standard_Integer NbSurfaces() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & NewFaces(const Standard_Integer I);
		%feature("autodoc", "1");
		virtual		void Simulate(const Standard_Integer IC);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSurf(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		virtual		Handle_ChFiDS_SecHArray1 Sect(const Standard_Integer IC, const Standard_Integer IS) const;
		%feature("autodoc", "1");
		Standard_Integer NbFaultyContours() const;
		%feature("autodoc", "1");
		Standard_Integer FaultyContour(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NbComputedSurfaces(const Standard_Integer IC) const;
		%feature("autodoc", "1");
		Handle_Geom_Surface ComputedSurface(const Standard_Integer IC, const Standard_Integer IS) const;
		%feature("autodoc", "1");
		Standard_Integer NbFaultyVertices() const;
		%feature("autodoc", "1");
		TopoDS_Vertex FaultyVertex(const Standard_Integer IV) const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult() const;
		%feature("autodoc", "1");
		TopoDS_Shape BadShape() const;
		%feature("autodoc", "1");
		ChFiDS_ErrorStatus StripeStatus(const Standard_Integer IC) const;

};
%feature("shadow") BRepFilletAPI_MakeFillet::~BRepFilletAPI_MakeFillet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepFilletAPI_MakeFillet {
	void _kill_pointed() {
		delete $self;
	}
};
