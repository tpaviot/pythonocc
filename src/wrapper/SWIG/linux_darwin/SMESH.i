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

%module SMESH
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i
%include ../StandardTemplateLibrary.i

%include SMESH_renames.i


%include SMESH_required_python_modules.i


%include SMESH_dependencies.i


%include SMESH_headers.i

typedef NCollection_DataMap<const SMDS_MeshElement*,NCollection_Sequence<const SMDS_MeshElement*> > SMESH_DataMapOfElemPtrSequenceOfElemPtr;
typedef NCollection_BaseCollection<SMDS_MeshElement const*> SMESH_BaseCollectionElemPtr;
typedef NCollection_Sequence<SMDS_MeshElement const*> SMESH_SequenceOfElemPtr;
typedef NCollection_IndexedMap<TopoDS_Shape> SMESH_IndexedMapOfShape;
typedef NCollection_BaseCollection<SMDS_MeshNode const*> SMESH_BaseCollectionNodePtr;
typedef NCollection_Sequence<SMDS_MeshNode const*> SMESH_SequenceOfNode;
typedef NCollection_BaseCollection<TopoDS_Shape> SMESH_BaseCollectionShape;
typedef NCollection_BaseCollection<NCollection_IndexedMap<TopoDS_Shape> > SMESH_BaseCollectionIndexedMapOfShape;
typedef NCollection_BaseCollection<NCollection_Sequence<const SMDS_MeshElement*> > SMESH_BaseCollectionSequenceOfElemPtr;
typedef SMDS_Iterator<SMESH_OctreeNode*> SMESH_OctreeNodeIterator;
typedef NCollection_IndexedDataMap<TopoDS_Shape,NCollection_IndexedMap<TopoDS_Shape> > SMESH_IndexedDataMapOfShapeIndexedMapOfShape;

enum SMESH_ComputeErrorName {
	COMPERR_OK,
	COMPERR_BAD_INPUT_MESH,
	COMPERR_STD_EXCEPTION,
	COMPERR_OCC_EXCEPTION,
	COMPERR_SLM_EXCEPTION,
	COMPERR_EXCEPTION,
	COMPERR_MEMORY_PB,
	COMPERR_ALGO_FAILED,
	COMPERR_BAD_SHAPE,
	};



%nodefaultctor Handle_SMESH_MeshVSLink;
class Handle_SMESH_MeshVSLink : public Handle_MeshVS_DataSource3D {
	public:
		%feature("autodoc", "1");
		Handle_SMESH_MeshVSLink();
		%feature("autodoc", "1");
		Handle_SMESH_MeshVSLink(const Handle_SMESH_MeshVSLink &aHandle);
		%feature("autodoc", "1");
		Handle_SMESH_MeshVSLink(const SMESH_MeshVSLink *anItem);
		%feature("autodoc", "1");
		Handle_SMESH_MeshVSLink & operator=(const Handle_SMESH_MeshVSLink &aHandle);
		%feature("autodoc", "1");
		Handle_SMESH_MeshVSLink & operator=(const SMESH_MeshVSLink *anItem);
		%feature("autodoc", "1");
		static		Handle_SMESH_MeshVSLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SMESH_MeshVSLink {
	SMESH_MeshVSLink* GetObject() {
	return (SMESH_MeshVSLink*)$self->Access();
	}
};
%feature("shadow") Handle_SMESH_MeshVSLink::~Handle_SMESH_MeshVSLink %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SMESH_MeshVSLink {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Group;
class SMESH_Group {
	public:
		%feature("autodoc", "1");
		SMESH_Group(int , const SMESH_Mesh *theMesh, const SMDSAbs_ElementType theType, const char *theName, const TopoDS_Shape &theShape=TopoDS_Shape( ));
		%feature("autodoc", "1");
		void SetName(const char *theName);
		%feature("autodoc", "1");
		const char * GetName() const;
		%feature("autodoc", "1");
		SMESHDS_GroupBase * GetGroupDS();

};
%feature("shadow") SMESH_Group::~SMESH_Group %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Group {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_MesherHelper;
class SMESH_MesherHelper {
	public:
		enum MType {
			LINEAR,
			QUADRATIC,
			COMP,
		};
		%feature("autodoc", "1");
		static		bool IsMedium(const SMDS_MeshNode *node, const SMDSAbs_ElementType typeToCheck=SMDSAbs_All);
		%feature("autodoc", "1");
		static		bool LoadNodeColumns(TParam2ColumnMap & theParam2ColumnMap, const TopoDS_Face &theFace, const TopoDS_Edge &theBaseEdge, SMESHDS_Mesh* theMesh);
		%feature("autodoc", "1");
		static		TopoDS_Shape GetSubShapeByNode(const SMDS_MeshNode *node, SMESHDS_Mesh* meshDS);
		%feature("autodoc", "1");
		static		int WrapIndex(const int ind, const int nbNodes);
		%feature("autodoc", "1");
		static		int NbAncestors(const TopoDS_Shape &shape, const SMESH_Mesh &mesh, TopAbs_ShapeEnum =TopAbs_SHAPE);
		%feature("autodoc", "1");
		SMESH_MesherHelper(SMESH_Mesh & theMesh);
		%feature("autodoc", "1");
		SMESH_Mesh * GetMesh() const;
		%feature("autodoc", "1");
		SMESHDS_Mesh * GetMeshDS() const;
		%feature("autodoc", "1");
		bool IsQuadraticSubMesh(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		void SetIsQuadratic(const bool theBuildQuadratic);
		%feature("autodoc", "1");
		bool GetIsQuadratic() const;
		%feature("autodoc", "1");
		void FixQuadraticElements(bool =true);
		%feature("autodoc", "1");
		void SetElementsOnShape(bool );
		%feature("autodoc", "1");
		void SetSubShape(const int subShapeID);
		%feature("autodoc", "1");
		void SetSubShape(const TopoDS_Shape &subShape);
		%feature("autodoc", "1");
		int GetSubShapeID() const;
		%feature("autodoc", "1");
		TopoDS_Shape GetSubShape() const;
		%feature("autodoc", "1");
		SMDS_MeshNode * AddNode(double , double , double , int =0);
		%feature("autodoc", "1");
		SMDS_MeshEdge * AddEdge(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const int id=0, const bool force3d=true);
		%feature("autodoc", "1");
		SMDS_MeshFace * AddFace(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const int id=0, const bool force3d=false);
		%feature("autodoc", "1");
		SMDS_MeshFace * AddFace(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const int id=0, const bool force3d=false);
		%feature("autodoc", "1");
		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const int id=0, const bool force3d=true);
		%feature("autodoc", "1");
		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const int id=0, const bool force3d=true);
		%feature("autodoc", "1");
		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const int id=0, const bool force3d=true);
		%feature("autodoc", "1");
		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n7, const SMDS_MeshNode *n8, const int id=0, bool =true);
		%feature("autodoc", "1");
		double GetNodeU(const TopoDS_Edge &theEdge, const SMDS_MeshNode *theNode, bool* check=0);
		%feature("autodoc", "1");
		gp_XY GetNodeUV(const TopoDS_Face &F, const SMDS_MeshNode *n, const SMDS_MeshNode *inFaceNode=0, bool* check=0) const;
		%feature("autodoc", "1");
		bool CheckNodeUV(const TopoDS_Face &F, const SMDS_MeshNode *n, gp_XY & uv, const double tol) const;
		%feature("autodoc", "1");
		static		gp_XY GetMiddleUV(const Handle_Geom_Surface &surface, const gp_XY &uv1, const gp_XY &uv2);
		%feature("autodoc", "1");
		bool GetNodeUVneedInFaceNode(const TopoDS_Face &F=TopoDS_Face( )) const;
		%feature("autodoc", "1");
		bool IsDegenShape(const int subShape) const;
		%feature("autodoc", "1");
		bool IsSeamShape(const int subShape) const;
		%feature("autodoc", "1");
		bool IsSeamShape(const TopoDS_Shape &subShape) const;
		%feature("autodoc", "1");
		bool IsRealSeam(const int subShape) const;
		%feature("autodoc", "1");
		bool IsRealSeam(const TopoDS_Shape &subShape) const;
		%feature("autodoc", "1");
		bool HasSeam() const;
		%feature("autodoc", "1");
		int GetPeriodicIndex() const;
		%feature("autodoc", "1");
		double GetOtherParam(const double param) const;
		%feature("autodoc", "1");
		const SMDS_MeshNode * GetMediumNode(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const bool force3d);
		%feature("autodoc", "1");
		void AddTLinkNode(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n12);
		%feature("autodoc", "1");
		void AddTLinkNodeMap(const TLinkNodeMap &aMap);
		%feature("autodoc", "1");
		const TLinkNodeMap & GetTLinkNodeMap() const;
		%feature("autodoc", "1");
		SMESH_MesherHelper::MType IsQuadraticMesh();

};
%feature("shadow") SMESH_MesherHelper::~SMESH_MesherHelper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_MesherHelper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_MeshVSLink;
class SMESH_MeshVSLink : public MeshVS_DataSource3D {
	public:
		%feature("autodoc", "1");
		SMESH_MeshVSLink(const SMESH_Mesh *aMesh);
		%feature("autodoc","GetGeom(Standard_Integer ID, Standard_Boolean IsElement) -> Standard_Integer");

		virtual		Standard_Boolean GetGeom(const Standard_Integer ID, const Standard_Boolean IsElement, TColStd_Array1OfReal & Coords, Standard_Integer &OutValue, MeshVS_EntityType & Type) const;
		%feature("autodoc","Get3DGeom(Standard_Integer ID) -> Standard_Integer");

		virtual		Standard_Boolean Get3DGeom(const Standard_Integer ID, Standard_Integer &OutValue, Handle_MeshVS_HArray1OfSequenceOfInteger & Data) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetGeomType(const Standard_Integer ID, const Standard_Boolean IsElement, MeshVS_EntityType & Type) const;
		%feature("autodoc", "1");
		virtual		Standard_Address GetAddr(const Standard_Integer ID, const Standard_Boolean IsElement) const;
		%feature("autodoc","GetNodesByElement(Standard_Integer ID) -> Standard_Integer");

		virtual		Standard_Boolean GetNodesByElement(const Standard_Integer ID, TColStd_Array1OfInteger & NodeIDs, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllNodes() const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllElements() const;
		%feature("autodoc","GetNormal(Standard_Integer Id, Standard_Integer Max) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean GetNormal(const Standard_Integer Id, const Standard_Integer Max, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void GetAllGroups(TColStd_PackedMapOfInteger & Ids) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SMESH_MeshVSLink {
	Handle_SMESH_MeshVSLink GetHandle() {
	return *(Handle_SMESH_MeshVSLink*) &$self;
	}
};
%extend SMESH_MeshVSLink {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SMESH_MeshVSLink::~SMESH_MeshVSLink %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_MeshVSLink {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Block;
class SMESH_Block : public math_FunctionSetWithDerivatives {
	public:
		enum TShapeID {
			ID_NONE,
			ID_V000,
			ID_V100,
			ID_V010,
			ID_V110,
			ID_V001,
			ID_V101,
			ID_V011,
			ID_V111,
			ID_Ex00,
			ID_Ex10,
			ID_Ex01,
			ID_Ex11,
			ID_E0y0,
			ID_E1y0,
			ID_E0y1,
			ID_E1y1,
			ID_E00z,
			ID_E10z,
			ID_E01z,
			ID_E11z,
			ID_Fxy0,
			ID_Fxy1,
			ID_Fx0z,
			ID_Fx1z,
			ID_F0yz,
			ID_F1yz,
			ID_Shell,
		};
		%feature("autodoc", "1");
		static		int NbVertices();
		%feature("autodoc", "1");
		static		int NbEdges();
		%feature("autodoc", "1");
		static		int NbFaces();
		%feature("autodoc", "1");
		static		int NbSubShapes();
		%feature("autodoc", "1");
		static		bool IsVertexID(int );
		%feature("autodoc", "1");
		static		bool IsEdgeID(int );
		%feature("autodoc", "1");
		static		bool IsFaceID(int );
		%feature("autodoc", "1");
		static		int ShapeIndex(int );
		%feature("autodoc", "1");
		static		int GetCoordIndOnEdge(const int theEdgeID);
		%feature("autodoc", "1");
		static		double * GetShapeCoef(const int theShapeID);
		%feature("autodoc", "1");
		static		int GetShapeIDByParams(const gp_XYZ &theParams);
		%feature("autodoc", "1");
		static		std::ostream & DumpShapeID(const int theBlockShapeID, std::ostream & stream);
		%feature("autodoc", "1");
		SMESH_Block();
		%feature("autodoc", "1");
		bool LoadBlockShapes(const TopoDS_Shell &theShell, const TopoDS_Vertex &theVertex000, const TopoDS_Vertex &theVertex001, TopTools_IndexedMapOfOrientedShape & theShapeIDMap);
		%feature("autodoc", "1");
		bool LoadBlockShapes(const TopTools_IndexedMapOfOrientedShape &theShapeIDMap);
		%feature("autodoc", "1");
		bool LoadMeshBlock(const SMDS_MeshVolume *theVolume, const int theNode000Index, const int theNode001Index, std::vector<SMDS_MeshNode const*, std::allocator<SMDS_MeshNode const*> > & theOrderedNodes);
		%feature("autodoc", "1");
		bool LoadFace(const TopoDS_Face &theFace, const int theFaceID, const TopTools_IndexedMapOfOrientedShape &theShapeIDMap);
		%feature("autodoc", "1");
		static		bool Insert(const TopoDS_Shape &theShape, const int theShapeID, TopTools_IndexedMapOfOrientedShape & theShapeIDMap);
		%feature("autodoc", "1");
		static		bool FindBlockShapes(const TopoDS_Shell &theShell, const TopoDS_Vertex &theVertex000, const TopoDS_Vertex &theVertex001, TopTools_IndexedMapOfOrientedShape & theShapeIDMap);
		%feature("autodoc", "1");
		bool VertexPoint(const int theVertexID, gp_XYZ & thePoint) const;
		%feature("autodoc", "1");
		bool EdgePoint(const int theEdgeID, const gp_XYZ &theParams, gp_XYZ & thePoint) const;
		%feature("autodoc", "1");
		bool EdgeU(const int theEdgeID, const gp_XYZ &theParams, double & theU) const;
		%feature("autodoc", "1");
		bool FacePoint(const int theFaceID, const gp_XYZ &theParams, gp_XYZ & thePoint) const;
		%feature("autodoc", "1");
		bool FaceUV(const int theFaceID, const gp_XYZ &theParams, gp_XY & theUV) const;
		%feature("autodoc", "1");
		bool ShellPoint(const gp_XYZ &theParams, gp_XYZ & thePoint) const;
		%feature("autodoc", "1");
		static		bool ShellPoint(const gp_XYZ &theParams, std::vector<gp_XYZ, std::allocator<gp_XYZ> > const & thePointOnShape, gp_XYZ & thePoint);
		%feature("autodoc", "1");
		bool ComputeParameters(const gp_Pnt &thePoint, gp_XYZ & theParams, const int theShapeID=(int const)(::SMESH_Block::ID_Shell), const gp_XYZ &theParamsHint=gp_XYZ( -1.0e+0, -1.0e+0, -1.0e+0 ));
		%feature("autodoc", "1");
		bool VertexParameters(const int theVertexID, gp_XYZ & theParams);
		%feature("autodoc", "1");
		bool EdgeParameters(const int theEdgeID, const double theU, gp_XYZ & theParams);
		%feature("autodoc", "1");
		static		bool IsForwardEdge(const TopoDS_Edge &theEdge, const TopTools_IndexedMapOfOrientedShape &theShapeIDMap);
		%feature("autodoc", "1");
		static		int GetOrderedEdges(const TopoDS_Face &theFace, TopoDS_Vertex , std::list<TopoDS_Edge>, std::list<int>, const bool theShapeAnalysisAlgo=false);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();

};
%feature("shadow") SMESH_Block::~SMESH_Block %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Block {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Pattern;
class SMESH_Pattern {
	public:
		enum ErrorCode {
			ERR_OK,
			ERR_READ_NB_POINTS,
			ERR_READ_POINT_COORDS,
			ERR_READ_TOO_FEW_POINTS,
			ERR_READ_3D_COORD,
			ERR_READ_NO_KEYPOINT,
			ERR_READ_BAD_INDEX,
			ERR_READ_ELEM_POINTS,
			ERR_READ_NO_ELEMS,
			ERR_READ_BAD_KEY_POINT,
			ERR_SAVE_NOT_LOADED,
			ERR_LOAD_EMPTY_SUBMESH,
			ERR_LOADF_NARROW_FACE,
			ERR_LOADF_CLOSED_FACE,
			ERR_LOADF_CANT_PROJECT,
			ERR_LOADV_BAD_SHAPE,
			ERR_LOADV_COMPUTE_PARAMS,
			ERR_APPL_NOT_COMPUTED,
			ERR_APPL_NOT_LOADED,
			ERR_APPL_BAD_DIMENTION,
			ERR_APPL_BAD_NB_VERTICES,
			ERR_APPLF_BAD_TOPOLOGY,
			ERR_APPLF_BAD_VERTEX,
			ERR_APPLF_INTERNAL_EEROR,
			ERR_APPLV_BAD_SHAPE,
			ERR_APPLF_BAD_FACE_GEOM,
			ERR_MAKEM_NOT_COMPUTED,
		};
		%feature("autodoc", "1");
		SMESH_Pattern();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		bool Load(const char *theFileContents);
		%feature("autodoc", "1");
		bool Load(SMESH_Mesh* theMesh, const TopoDS_Face &theFace, bool =false);
		%feature("autodoc", "1");
		bool Load(SMESH_Mesh* theMesh, const TopoDS_Shell &theBlock);
		%feature("autodoc", "1");
		bool Save(std::ostream & theFile);
		%feature("autodoc", "1");
		bool MakeMesh(SMESH_Mesh* theMesh, const bool toCreatePolygons=false, const bool toCreatePolyedrs=false);
		%feature("autodoc", "1");
		SMESH_Pattern::ErrorCode GetErrorCode() const;
		%feature("autodoc", "1");
		bool IsLoaded() const;
		%feature("autodoc", "1");
		bool Is2D() const;
		%feature("autodoc", "1");
		std::list<int, std::allocator<int> > const & GetKeyPointIDs() const;
		%feature("autodoc", "1");
		std::list<std::list<int, std::allocator<int> >, std::allocator<std::list<int, std::allocator<int> > > > const & GetElementPointIDs(bool ) const;
		%feature("autodoc", "1");
		void DumpPoints() const;
		%feature("autodoc", "1");
		TopoDS_Shape GetSubShape(const int i) const;

};
%feature("shadow") SMESH_Pattern::~SMESH_Pattern %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Pattern {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_HypoPredicate;
class SMESH_HypoPredicate {
	public:
		%feature("autodoc", "1");
		virtual		bool IsOk(const SMESH_Hypothesis *aHyp, const TopoDS_Shape &aShape) const;

};
%feature("shadow") SMESH_HypoPredicate::~SMESH_HypoPredicate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_HypoPredicate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_MeshEditor_PathPoint;
class SMESH_MeshEditor_PathPoint {
	public:
		%feature("autodoc", "1");
		SMESH_MeshEditor_PathPoint();
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt &aP3D);
		%feature("autodoc", "1");
		void SetTangent(const gp_Dir &aTgt);
		%feature("autodoc", "1");
		void SetAngle(const double &aBeta);
		%feature("autodoc", "1");
		void SetParameter(const double &aPrm);
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		const gp_Dir & Tangent() const;
		%feature("autodoc", "1");
		double Angle() const;
		%feature("autodoc", "1");
		double Parameter() const;

};
%feature("shadow") SMESH_MeshEditor_PathPoint::~SMESH_MeshEditor_PathPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_MeshEditor_PathPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_NodeSearcher;
class SMESH_NodeSearcher {
	public:
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * FindClosestTo(const gp_Pnt &pnt);
		%feature("autodoc", "1");
		virtual		void MoveNode(const SMDS_MeshNode *node, const gp_Pnt &toPnt);

};
%feature("shadow") SMESH_NodeSearcher::~SMESH_NodeSearcher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_NodeSearcher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Gen;
class SMESH_Gen {
	public:
		%feature("autodoc", "1");
		SMESH_Gen();
		%feature("autodoc", "1");
		SMESH_Mesh * CreateMesh(int , bool );
		%feature("autodoc", "1");
		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, const bool anUpward=false, const MeshDimension aDim=MeshDim_3D, TSetOfInt* aShapesId=0);
		%feature("autodoc", "1");
		bool Evaluate(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, MapShapeNbElems & aResMap, const bool anUpward=false, TSetOfInt* aShapesId=0);
		%feature("autodoc", "1");
		bool CheckAlgoState(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		void SetBoundaryBoxSegmentation(int );
		%feature("autodoc", "1");
		int GetBoundaryBoxSegmentation() const;
		%feature("autodoc", "1");
		void SetDefaultNbSegments(int );
		%feature("autodoc", "1");
		int GetDefaultNbSegments() const;
		%feature("autodoc", "1");
		bool GetAlgoState(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, std::list<SMESH_Gen::TAlgoStateError>);
		%feature("autodoc", "1");
		StudyContextStruct * GetStudyContext(int );
		%feature("autodoc", "1");
		static		int GetShapeDim(const TopAbs_ShapeEnum &aShapeType);
		%feature("autodoc", "1");
		static		int GetShapeDim(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		SMESH_Algo * GetAlgo(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, TopoDS_Shape* assignedTo=0);
		%feature("autodoc", "1");
		static		bool IsGlobalHypothesis(const SMESH_Hypothesis *theHyp, SMESH_Mesh & aMesh);
		%feature("autodoc", "1");
		int GetANewId();

};
%feature("shadow") SMESH_Gen::~SMESH_Gen %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Gen {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Hypothesis;
class SMESH_Hypothesis : public SMESHDS_Hypothesis {
	public:
		enum Hypothesis_Status {
			HYP_OK,
			HYP_MISSING,
			HYP_CONCURENT,
			HYP_BAD_PARAMETER,
			HYP_HIDDEN_ALGO,
			HYP_HIDING_ALGO,
			HYP_UNKNOWN_FATAL,
			HYP_INCOMPATIBLE,
			HYP_NOTCONFORM,
			HYP_ALREADY_EXIST,
			HYP_BAD_DIM,
			HYP_BAD_SUBSHAPE,
			HYP_BAD_GEOMETRY,
			HYP_NEED_SHAPE,
		};
		%feature("autodoc", "1");
		static		bool IsStatusFatal(SMESH_Hypothesis::Hypothesis_Status );
		%feature("autodoc", "1");
		virtual		int GetDim() const;
		%feature("autodoc", "1");
		int GetStudyId() const;
		%feature("autodoc", "1");
		virtual		void NotifySubMeshesHypothesisModification();
		%feature("autodoc", "1");
		virtual		int GetShapeType() const;
		%feature("autodoc", "1");
		virtual		const char * GetLibName() const;
		%feature("autodoc", "1");
		void SetLibName(const char *theLibName);
		%feature("autodoc", "1");
		void SetParameters(const char *theParameters);
		%feature("autodoc", "1");
		char * GetParameters() const;
		%feature("autodoc", "1");
		void SetLastParameters(const char *theParameters);
		%feature("autodoc", "1");
		char * GetLastParameters() const;
		%feature("autodoc", "1");
		void ClearParameters();
		%feature("autodoc", "1");
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);
		%feature("autodoc", "1");
		virtual		bool IsAuxiliary() const;

};
%feature("shadow") SMESH_Hypothesis::~SMESH_Hypothesis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Hypothesis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Mesh;
class SMESH_Mesh {
	public:
		%feature("autodoc", "1");
		SMESH_Mesh(int , int , SMESH_Gen* theGen, bool , SMESHDS_Document* theDocument);
		%feature("autodoc", "1");
		void ShapeToMesh(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		TopoDS_Shape GetShapeToMesh() const;
		%feature("autodoc", "1");
		bool HasShapeToMesh() const;
		%feature("autodoc", "1");
		double GetShapeDiagonalSize() const;
		%feature("autodoc", "1");
		static		double GetShapeDiagonalSize(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		static		const TopoDS_Solid & PseudoShape();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void ClearSubMesh(const int theShapeId);
		%feature("autodoc", "1");
		int UNVToMesh(const char *theFileName);
		%feature("autodoc", "1");
		int MEDToMesh(const char *theFileName, const char *theMeshName);
		%feature("autodoc", "1");
		int STLToMesh(const char *theFileName);
		%feature("autodoc", "1");
		int DATToMesh(const char *theFileName);
		%feature("autodoc", "1");
		SMESH_Hypothesis::Hypothesis_Status AddHypothesis(const TopoDS_Shape &aSubShape, int );
		%feature("autodoc", "1");
		SMESH_Hypothesis::Hypothesis_Status RemoveHypothesis(const TopoDS_Shape &aSubShape, int );
		%feature("autodoc", "1");
		std::list<SMESHDS_Hypothesis const*, std::allocator<SMESHDS_Hypothesis const*> > const & GetHypothesisList(const TopoDS_Shape &aSubShape) const;
		%feature("autodoc", "1");
		const SMESH_Hypothesis * GetHypothesis(const TopoDS_Shape &aSubShape, const SMESH_HypoFilter &aFilter, const bool andAncestors, TopoDS_Shape* assignedTo=0) const;
		%feature("autodoc", "1");
		std::list<SMESHDS_Command*, std::allocator<SMESHDS_Command*> > const & GetLog();
		%feature("autodoc", "1");
		void ClearLog();
		%feature("autodoc", "1");
		int GetId();
		%feature("autodoc", "1");
		SMESHDS_Mesh * GetMeshDS();
		%feature("autodoc", "1");
		SMESH_Gen * GetGen();
		%feature("autodoc", "1");
		SMESH_subMesh * GetSubMesh(const TopoDS_Shape &aSubShape);
		%feature("autodoc", "1");
		SMESH_subMesh * GetSubMeshContaining(const TopoDS_Shape &aSubShape) const;
		%feature("autodoc", "1");
		SMESH_subMesh * GetSubMeshContaining(const int aShapeID) const;
		%feature("autodoc", "1");
		void NotifySubMeshesHypothesisModification(const SMESH_Hypothesis *theChangedHyp);
		%feature("autodoc", "1");
		std::list<SMESH_subMesh*, std::allocator<SMESH_subMesh*> > const & GetSubMeshUsingHypothesis(SMESHDS_Hypothesis* anHyp);
		%feature("autodoc", "1");
		bool IsUsedHypothesis(SMESHDS_Hypothesis* anHyp, const SMESH_subMesh *aSubMesh);
		%feature("autodoc", "1");
		bool IsNotConformAllowed() const;
		%feature("autodoc", "1");
		bool IsMainShape(const TopoDS_Shape &theShape) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetAncestors(const TopoDS_Shape &theSubShape) const;
		%feature("autodoc", "1");
		void SetAutoColor(bool );
		%feature("autodoc", "1");
		bool GetAutoColor();
		%feature("autodoc", "1");
		const TopTools_IndexedDataMapOfShapeListOfShape & GetAncestorMap() const;
		%feature("autodoc", "1");
		bool HasDuplicatedGroupNamesMED();
		%feature("autodoc", "1");
		void ExportMED(const char *file, const char *theMeshName=0, bool =true, int =0);
		%feature("autodoc", "1");
		void ExportDAT(const char *file);
		%feature("autodoc", "1");
		void ExportUNV(const char *file);
		%feature("autodoc", "1");
		void ExportSTL(const char *file, const bool isascii);
		%feature("autodoc", "1");
		int NbNodes();
		%feature("autodoc", "1");
		int Nb0DElements();
		%feature("autodoc", "1");
		int NbEdges(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbFaces(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbTriangles(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbQuadrangles(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbPolygons();
		%feature("autodoc", "1");
		int NbVolumes(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbTetras(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbHexas(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbPyramids(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbPrisms(SMDSAbs_ElementOrder =ORDER_ANY);
		%feature("autodoc", "1");
		int NbPolyhedrons();
		%feature("autodoc", "1");
		int NbSubMesh();
		%feature("autodoc", "1");
		int NbGroup() const;
		%feature("autodoc", "1");
		SMESH_Group * AddGroup(const SMDSAbs_ElementType theType, const char *theName, int & theId, const TopoDS_Shape &theShape=TopoDS_Shape( ));
		%feature("autodoc", "1");
		boost::shared_ptr<SMDS_Iterator<SMESH_Group*> > GetGroups() const;
		%feature("autodoc", "1");
		SMESH_Group * GetGroup(const int theGroupID);
		%feature("autodoc", "1");
		void RemoveGroup(const int theGroupID);
		%feature("autodoc", "1");
		SMESH_Group * ConvertToStandalone(int );
		%feature("autodoc", "1");
		SMDSAbs_ElementType GetElementType(const int id, const bool iselem);
		%feature("autodoc", "1");
		std::ostream & Dump(std::ostream & save);

};
%feature("shadow") SMESH_Mesh::~SMESH_Mesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Mesh {
	void _kill_pointed() {
		delete $self;
	}
};
%extend SMESH_Mesh {
	SMESH_Mesh () {}
};


%nodefaultctor SMESH_HypoFilter;
class SMESH_HypoFilter : public SMESH_HypoPredicate {
	public:
		%feature("autodoc", "1");
		SMESH_HypoFilter();
		%feature("autodoc", "1");
		SMESH_HypoFilter(SMESH_HypoPredicate* aPredicate, bool =true);
		%feature("autodoc", "1");
		SMESH_HypoFilter & Init(SMESH_HypoPredicate* aPredicate, bool =true);
		%feature("autodoc", "1");
		SMESH_HypoFilter & And(SMESH_HypoPredicate* aPredicate);
		%feature("autodoc", "1");
		SMESH_HypoFilter & AndNot(SMESH_HypoPredicate* aPredicate);
		%feature("autodoc", "1");
		SMESH_HypoFilter & Or(SMESH_HypoPredicate* aPredicate);
		%feature("autodoc", "1");
		SMESH_HypoFilter & OrNot(SMESH_HypoPredicate* aPredicate);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * IsAlgo();
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * IsAuxiliary();
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * IsApplicableTo(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * IsAssignedTo(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * Is(const SMESH_Hypothesis *theHypo);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * IsGlobal(const TopoDS_Shape &theMainShape);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * IsMoreLocalThan(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * HasName(const std::string &theName);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * HasDim(const int theDim);
		%feature("autodoc", "1");
		static		SMESH_HypoPredicate * HasType(const int theHypType);
		%feature("autodoc", "1");
		virtual		bool IsOk(const SMESH_Hypothesis *aHyp, const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		bool IsAny() const;

};
%feature("shadow") SMESH_HypoFilter::~SMESH_HypoFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_HypoFilter {
	void _kill_pointed() {
		delete $self;
	}
};
%extend SMESH_HypoFilter {
	SMESH_HypoFilter () {}
};


%nodefaultctor SMESH_ComputeError;
class SMESH_ComputeError {
	public:
		%feature("autodoc", "1");
		static		SMESH_ComputeErrorPtr New(int =int(::COMPERR_OK), std::string ="", const SMESH_Algo *algo=0);
		%feature("autodoc", "1");
		SMESH_ComputeError(int =int(::COMPERR_OK), std::string ="", const SMESH_Algo *algo=0);
		%feature("autodoc", "1");
		bool IsOK();
		%feature("autodoc", "1");
		bool IsCommon();
		%feature("autodoc", "1");
		std::string CommonName() const;

};
%feature("shadow") SMESH_ComputeError::~SMESH_ComputeError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_ComputeError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_subMeshEventListener;
class SMESH_subMeshEventListener {
	public:
		%feature("autodoc", "1");
		SMESH_subMeshEventListener(bool );
		%feature("autodoc", "1");
		bool IsDeletable() const;
		%feature("autodoc", "1");
		virtual		void ProcessEvent(const int event, const int eventType, SMESH_subMesh* subMesh, SMESH_subMeshEventListenerData* data, const SMESH_Hypothesis *hyp=0);

};
%feature("shadow") SMESH_subMeshEventListener::~SMESH_subMeshEventListener %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_subMeshEventListener {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Algo;
class SMESH_Algo : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		virtual		std::ostream & SaveTo(std::ostream & save);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void LoadFromFromString(std::string src) {
			std::stringstream s(src);
			self->LoadFrom(s);}
		};
		%feature("autodoc", "1");
		std::vector<std::string, std::allocator<std::string> > const & GetCompatibleHypothesis();
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, SMESH_MesherHelper* aHelper);
		%feature("autodoc", "1");
		virtual		bool Evaluate(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, MapShapeNbElems & aResMap);
		%feature("autodoc", "1");
		virtual		std::list<SMESHDS_Hypothesis const*, std::allocator<SMESHDS_Hypothesis const*> > const & GetUsedHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, const bool ignoreAuxiliary=true);
		%feature("autodoc", "1");
		std::list<SMESHDS_Hypothesis const*, std::allocator<SMESHDS_Hypothesis const*> > const & GetAppliedHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, const bool ignoreAuxiliary=true);
		%feature("autodoc", "1");
		bool InitCompatibleHypoFilter(SMESH_HypoFilter & theFilter, const bool ignoreAuxiliary) const;
		%feature("autodoc", "1");
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);
		%feature("autodoc", "1");
		SMESH_ComputeErrorPtr GetComputeError() const;
		%feature("autodoc", "1");
		void InitComputeError();
		%feature("autodoc", "1");
		bool OnlyUnaryInput() const;
		%feature("autodoc", "1");
		bool NeedDescretBoundary() const;
		%feature("autodoc", "1");
		bool NeedShape() const;
		%feature("autodoc", "1");
		bool SupportSubmeshes() const;
		%feature("autodoc", "1");
		virtual		void SetEventListener(SMESH_subMesh* subMesh);
		%feature("autodoc", "1");
		virtual		void SubmeshRestored(SMESH_subMesh* subMesh);
		%feature("autodoc", "1");
		static		bool IsReversedSubMesh(const TopoDS_Face &theFace, SMESHDS_Mesh* theMeshDS);
		%feature("autodoc", "1");
		static		double EdgeLength(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const TopoDS_Edge &E1, const TopoDS_Edge &E2);
		%feature("autodoc", "1");
		static		bool IsContinuous(const TopoDS_Edge &E1, const TopoDS_Edge &E2);
		%feature("autodoc", "1");
		static		const SMDS_MeshNode * VertexNode(const TopoDS_Vertex &V, const SMESHDS_Mesh *meshDS);

};
%feature("shadow") SMESH_Algo::~SMESH_Algo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Algo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_subMeshEventListenerData;
class SMESH_subMeshEventListenerData {
	public:
		%feature("autodoc", "1");
		SMESH_subMeshEventListenerData(bool );
		%feature("autodoc", "1");
		bool IsDeletable() const;
		%feature("autodoc", "1");
		static		SMESH_subMeshEventListenerData * MakeData(SMESH_subMesh* dependentSM, const int type=0);

};
%feature("shadow") SMESH_subMeshEventListenerData::~SMESH_subMeshEventListenerData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_subMeshEventListenerData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_ElementSearcher;
class SMESH_ElementSearcher {
	public:
		%feature("autodoc", "1");
		virtual		void FindElementsByPoint(const gp_Pnt &point, SMDSAbs_ElementType , std::vector<SMDS_MeshElement const*, std::allocator<SMDS_MeshElement const*> > & foundElems);

};
%feature("shadow") SMESH_ElementSearcher::~SMESH_ElementSearcher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_ElementSearcher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_subMesh;
class SMESH_subMesh {
	public:
		enum compute_state {
			NOT_READY,
			READY_TO_COMPUTE,
			COMPUTE_OK,
			FAILED_TO_COMPUTE,
		};
		enum algo_state {
			NO_ALGO,
			MISSING_HYP,
			HYP_OK,
		};
		enum event_type {
			ALGO_EVENT,
			COMPUTE_EVENT,
		};
		enum algo_event {
			ADD_HYP,
			ADD_ALGO,
			REMOVE_HYP,
			REMOVE_ALGO,
			ADD_FATHER_HYP,
			ADD_FATHER_ALGO,
			REMOVE_FATHER_HYP,
			REMOVE_FATHER_ALGO,
			MODIF_HYP,
		};
		enum compute_event {
			MODIF_ALGO_STATE,
			COMPUTE,
			CLEAN,
			SUBMESH_COMPUTED,
			SUBMESH_RESTORED,
			MESH_ENTITY_REMOVED,
			CHECK_COMPUTE_STATE,
		};
		%feature("autodoc", "1");
		SMESH_subMesh(int , SMESH_Mesh* father, SMESHDS_Mesh* meshDS, const TopoDS_Shape &aSubShape);
		%feature("autodoc", "1");
		int GetId() const;
		%feature("autodoc", "1");
		SMESH_Mesh * GetFather();
		%feature("autodoc", "1");
		SMESHDS_SubMesh * GetSubMeshDS();
		%feature("autodoc", "1");
		SMESHDS_SubMesh * CreateSubMeshDS();
		%feature("autodoc", "1");
		SMESH_subMesh * GetFirstToCompute();
		%feature("autodoc", "1");
		std::map<int, SMESH_subMesh*, std::less<int>, std::allocator<std::pair<int const, SMESH_subMesh*> > > const & DependsOn();
		%feature("autodoc", "1");
		SMESH_subMeshIteratorPtr getDependsOnIterator(const bool includeSelf, const bool complexShapeFirst);
		%feature("autodoc", "1");
		const TopoDS_Shape & GetSubShape() const;
		%feature("autodoc", "1");
		void SetEventListener(EventListener* listener, EventListenerData* data, SMESH_subMesh* where);
		%feature("autodoc", "1");
		EventListenerData * GetEventListenerData(EventListener* listener) const;
		%feature("autodoc", "1");
		void DeleteEventListener(EventListener* listener);
		%feature("autodoc", "1");
		SMESH_Hypothesis::Hypothesis_Status AlgoStateEngine(int , SMESH_Hypothesis* anHyp);
		%feature("autodoc", "1");
		SMESH_Hypothesis::Hypothesis_Status SubMeshesAlgoStateEngine(int , SMESH_Hypothesis* anHyp);
		%feature("autodoc", "1");
		int GetAlgoState() const;
		%feature("autodoc", "1");
		int GetComputeState() const;
		%feature("autodoc", "1");
		SMESH_ComputeErrorPtr & GetComputeError();
		%feature("autodoc", "1");
		void DumpAlgoState(bool );
		%feature("autodoc", "1");
		bool ComputeStateEngine(int );
		%feature("autodoc", "1");
		bool Evaluate(MapShapeNbElems & aResMap);
		%feature("autodoc", "1");
		bool IsConform(const SMESH_Algo *theAlgo);
		%feature("autodoc", "1");
		bool CanAddHypothesis(const SMESH_Hypothesis *theHypothesis) const;
		%feature("autodoc", "1");
		static		bool IsApplicableHypotesis(const SMESH_Hypothesis *theHypothesis, const TopAbs_ShapeEnum theShapeType);
		%feature("autodoc", "1");
		bool IsApplicableHypotesis(const SMESH_Hypothesis *theHypothesis) const;
		%feature("autodoc", "1");
		SMESH_Hypothesis::Hypothesis_Status CheckConcurentHypothesis(const int theHypType);
		%feature("autodoc", "1");
		bool IsEmpty() const;
		%feature("autodoc", "1");
		bool IsMeshComputed() const;
		%feature("autodoc", "1");
		void SetIsAlwaysComputed(bool );
		%feature("autodoc", "1");
		bool IsAlwaysComputed();

};
%feature("shadow") SMESH_subMesh::~SMESH_subMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_subMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_Exception;
class SMESH_Exception : public exception {
	public:
		%feature("autodoc", "1");
		SMESH_Exception(const char *text, const char *fileName=0, int unsigned constlineNumber=0);
		%feature("autodoc", "1");
		SMESH_Exception(const SMESH_Exception &ex);
		%feature("autodoc", "1");
		virtual		const char * what() const;

};
%feature("shadow") SMESH_Exception::~SMESH_Exception %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_Exception {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESH_TLink;
class SMESH_TLink : public pair<SMDS_MeshNode const*, SMDS_MeshNode const*> {
	public:
		%feature("autodoc", "1");
		SMESH_TLink(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2);
		%feature("autodoc", "1");
		SMESH_TLink(const NLink &link);
		%feature("autodoc", "1");
		const SMDS_MeshNode * node1() const;
		%feature("autodoc", "1");
		const SMDS_MeshNode * node2() const;

};
%feature("shadow") SMESH_TLink::~SMESH_TLink %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESH_TLink {
	void _kill_pointed() {
		delete $self;
	}
};
