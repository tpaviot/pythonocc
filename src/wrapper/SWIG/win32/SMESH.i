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
%module SMESH

%include SMESH_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include SMESH_dependencies.i


%include SMESH_headers.i

typedef NCollection_IndexedMap<TopoDS_Shape> SMESH_IndexedMapOfShape;
typedef NCollection_DataMap<const SMDS_MeshElement*,NCollection_Sequence<const SMDS_MeshElement*> > SMESH_DataMapOfElemPtrSequenceOfElemPtr;
typedef NCollection_BaseCollection<SMDS_MeshElement const*> SMESH_BaseCollectionElemPtr;
typedef SMDS_Iterator<SMESH_OctreeNode*> SMESH_OctreeNodeIterator;
typedef NCollection_Sequence<SMDS_MeshElement const*> SMESH_SequenceOfElemPtr;
typedef NCollection_Sequence<SMDS_MeshNode const*> SMESH_SequenceOfNode;
typedef NCollection_BaseCollection<SMDS_MeshNode const*> SMESH_BaseCollectionNodePtr;
typedef NCollection_BaseCollection<TopoDS_Shape> SMESH_BaseCollectionShape;
typedef NCollection_BaseCollection<NCollection_IndexedMap<TopoDS_Shape> > SMESH_BaseCollectionIndexedMapOfShape;
typedef NCollection_BaseCollection<NCollection_Sequence<const SMDS_MeshElement*> > SMESH_BaseCollectionSequenceOfElemPtr;
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
		Handle_SMESH_MeshVSLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SMESH_MeshVSLink {
	SMESH_MeshVSLink* GetObject() {
	return (SMESH_MeshVSLink*)$self->Access();
	}
};
%extend Handle_SMESH_MeshVSLink {
	~Handle_SMESH_MeshVSLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_SMESH_MeshVSLink\n");}
	}
};


%nodefaultctor SMESH_ComputeError;
class SMESH_ComputeError {
	public:
		%feature("autodoc", "1");
		SMESH_ComputeErrorPtr New(int =int(::COMPERR_OK), std::string ="", const SMESH_Algo *algo=0);
		%feature("autodoc", "1");
		SMESH_ComputeError(int =int(::COMPERR_OK), std::string ="", const SMESH_Algo *algo=0);
		%feature("autodoc", "1");
		bool IsOK();
		%feature("autodoc", "1");
		bool IsCommon();
		%feature("autodoc", "1");
		std::string CommonName() const;

};
%extend SMESH_ComputeError {
	~SMESH_ComputeError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_ComputeError\n");}
	}
};


%nodefaultctor SMESH_HypoPredicate;
class SMESH_HypoPredicate {
	public:
		%feature("autodoc", "1");
		virtual		bool IsOk(const SMESH_Hypothesis *aHyp, const TopoDS_Shape &aShape) const;

};
%extend SMESH_HypoPredicate {
	~SMESH_HypoPredicate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_HypoPredicate\n");}
	}
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
		SMESH_HypoPredicate * IsAlgo();
		%feature("autodoc", "1");
		SMESH_HypoPredicate * IsAuxiliary();
		%feature("autodoc", "1");
		SMESH_HypoPredicate * IsApplicableTo(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		SMESH_HypoPredicate * IsAssignedTo(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		SMESH_HypoPredicate * Is(const SMESH_Hypothesis *theHypo);
		%feature("autodoc", "1");
		SMESH_HypoPredicate * IsGlobal(const TopoDS_Shape &theMainShape);
		%feature("autodoc", "1");
		SMESH_HypoPredicate * IsMoreLocalThan(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		SMESH_HypoPredicate * HasName(const std::string &theName);
		%feature("autodoc", "1");
		SMESH_HypoPredicate * HasDim(const int theDim);
		%feature("autodoc", "1");
		SMESH_HypoPredicate * HasType(const int theHypType);
		%feature("autodoc", "1");
		bool IsAny() const;

};
%extend SMESH_HypoFilter {
	~SMESH_HypoFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_HypoFilter\n");}
	}
};


%nodefaultctor SMESH_MesherHelper;
class SMESH_MesherHelper {
	public:
		%feature("autodoc", "1");
		bool IsMedium(const SMDS_MeshNode *node, const SMDSAbs_ElementType typeToCheck=SMDSAbs_All);
		%feature("autodoc", "1");
		bool LoadNodeColumns(TParam2ColumnMap & theParam2ColumnMap, const TopoDS_Face &theFace, const TopoDS_Edge &theBaseEdge, SMESHDS_Mesh* theMesh);
		%feature("autodoc", "1");
		const TopoDS_Shape & GetSubShapeByNode(const SMDS_MeshNode *node, SMESHDS_Mesh* meshDS);
		%feature("autodoc", "1");
		int WrapIndex(const int ind, const int nbNodes);
		%feature("autodoc", "1");
		int NbAncestors(const TopoDS_Shape &shape, const SMESH_Mesh &mesh, TopAbs_ShapeEnum =TopAbs_SHAPE);
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
		double GetNodeU(const TopoDS_Edge &theEdge, const SMDS_MeshNode *theNode);
		%feature("autodoc", "1");
		gp_XY GetNodeUV(const TopoDS_Face &F, const SMDS_MeshNode *n, const SMDS_MeshNode *inFaceNode=0) const;
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
		void AddNLinkNode(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n12);
		%feature("autodoc", "1");
		void AddNLinkNodeMap(const NLinkNodeMap &aMap);
		%feature("autodoc", "1");
		const NLinkNodeMap & GetNLinkNodeMap() const;
		%feature("autodoc", "1");
		SMESH_MesherHelper::MType IsQuadraticMesh();

};
%extend SMESH_MesherHelper {
	~SMESH_MesherHelper() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_MesherHelper\n");}
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
%extend SMESH_Group {
	~SMESH_Group() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Group\n");}
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
		SMESH_subMeshEventListenerData * MakeData(SMESH_subMesh* dependentSM, const int type=0);

};
%extend SMESH_subMeshEventListenerData {
	~SMESH_subMeshEventListenerData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_subMeshEventListenerData\n");}
	}
};


%nodefaultctor SMESH_MeshVSLink;
class SMESH_MeshVSLink : public MeshVS_DataSource3D {
	public:
		%feature("autodoc", "1");
		SMESH_MeshVSLink(const SMESH_Mesh *aMesh);
		%feature("autodoc","GetGeom(Standard_Integer ID, Standard_Boolean IsElement)->Standard_Integer");
		virtual		Standard_Boolean GetGeom(const Standard_Integer ID, const Standard_Boolean IsElement, TColStd_Array1OfReal & Coords, Standard_Integer &OutValue, MeshVS_EntityType & Type) const;
		%feature("autodoc","Get3DGeom(Standard_Integer ID)->Standard_Integer");
		virtual		Standard_Boolean Get3DGeom(const Standard_Integer ID, Standard_Integer &OutValue, Handle_MeshVS_HArray1OfSequenceOfInteger & Data) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetGeomType(const Standard_Integer ID, const Standard_Boolean IsElement, MeshVS_EntityType & Type) const;
		%feature("autodoc", "1");
		virtual		Standard_Address GetAddr(const Standard_Integer ID, const Standard_Boolean IsElement) const;
		%feature("autodoc","GetNodesByElement(Standard_Integer ID)->Standard_Integer");
		virtual		Standard_Boolean GetNodesByElement(const Standard_Integer ID, TColStd_Array1OfInteger & NodeIDs, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllNodes() const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllElements() const;
		%feature("autodoc","GetNormal(Standard_Integer Id, Standard_Integer Max)->[Standard_RealStandard_RealStandard_Real]");
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
%extend SMESH_MeshVSLink {
	~SMESH_MeshVSLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_MeshVSLink\n");}
	}
};


%nodefaultctor SMESH_Block;
class SMESH_Block : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		int NbVertices();
		%feature("autodoc", "1");
		int NbEdges();
		%feature("autodoc", "1");
		int NbFaces();
		%feature("autodoc", "1");
		int NbSubShapes();
		%feature("autodoc", "1");
		bool IsVertexID(int );
		%feature("autodoc", "1");
		bool IsEdgeID(int );
		%feature("autodoc", "1");
		bool IsFaceID(int );
		%feature("autodoc", "1");
		int ShapeIndex(int );
		%feature("autodoc", "1");
		int GetCoordIndOnEdge(const int theEdgeID);
		%feature("autodoc", "1");
		double * GetShapeCoef(const int theShapeID);
		%feature("autodoc", "1");
		int GetShapeIDByParams(const gp_XYZ &theParams);
		%feature("autodoc", "1");
		std::ostream & DumpShapeID(const int theBlockShapeID, std::ostream & stream);
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
		bool Insert(const TopoDS_Shape &theShape, const int theShapeID, TopTools_IndexedMapOfOrientedShape & theShapeIDMap);
		%feature("autodoc", "1");
		bool FindBlockShapes(const TopoDS_Shell &theShell, const TopoDS_Vertex &theVertex000, const TopoDS_Vertex &theVertex001, TopTools_IndexedMapOfOrientedShape & theShapeIDMap);
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
		bool ShellPoint(const gp_XYZ &theParams, std::vector<gp_XYZ, std::allocator<gp_XYZ> > const & thePointOnShape, gp_XYZ & thePoint);
		%feature("autodoc", "1");
		bool ComputeParameters(const gp_Pnt &thePoint, gp_XYZ & theParams, const int theShapeID=(int const)(::SMESH_Block::ID_Shell), const gp_XYZ &theParamsHint=gp_XYZ( -1.0e+0, -1.0e+0, -1.0e+0 ));
		%feature("autodoc", "1");
		bool VertexParameters(const int theVertexID, gp_XYZ & theParams);
		%feature("autodoc", "1");
		bool EdgeParameters(const int theEdgeID, const double theU, gp_XYZ & theParams);
		%feature("autodoc", "1");
		bool IsForwardEdge(const TopoDS_Edge &theEdge, const TopTools_IndexedMapOfOrientedShape &theShapeIDMap);
		%feature("autodoc", "1");
		int GetOrderedEdges(const TopoDS_Face &theFace, TopoDS_Vertex , std::list<TopoDS_Edge>, std::list<int>);
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
%extend SMESH_Block {
	~SMESH_Block() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Block\n");}
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
%extend SMESH_subMeshEventListener {
	~SMESH_subMeshEventListener() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_subMeshEventListener\n");}
	}
};


%nodefaultctor SMESH_TLink;
class SMESH_TLink : public pair<SMDS_MeshNode const*, SMDS_MeshNode const*> {
	public:
		%feature("autodoc", "1");
		SMESH_TLink(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2);
		%feature("autodoc", "1");
		SMESH_TLink(const NLink &link);

};
%extend SMESH_TLink {
	~SMESH_TLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_TLink\n");}
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
%extend SMESH_Exception {
	~SMESH_Exception() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Exception\n");}
	}
};


%nodefaultctor SMESH_Hypothesis;
class SMESH_Hypothesis : public SMESHDS_Hypothesis {
	public:
		%feature("autodoc", "1");
		bool IsStatusFatal(SMESH_Hypothesis::Hypothesis_Status );
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
%extend SMESH_Hypothesis {
	~SMESH_Hypothesis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Hypothesis\n");}
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
		virtual		std::list<SMESHDS_Hypothesis const*, std::allocator<SMESHDS_Hypothesis const*> > const & GetUsedHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, const bool ignoreAuxiliary=true);
		%feature("autodoc", "1");
		std::list<SMESHDS_Hypothesis const*, std::allocator<SMESHDS_Hypothesis const*> > const & GetAppliedHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, const bool ignoreAuxiliary=true);
		%feature("autodoc", "1");
		bool InitCompatibleHypoFilter(SMESH_HypoFilter & theFilter, const bool ignoreAuxiliary) const;
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
		bool IsReversedSubMesh(const TopoDS_Face &theFace, SMESHDS_Mesh* theMeshDS);
		%feature("autodoc", "1");
		double EdgeLength(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const TopoDS_Edge &E1, const TopoDS_Edge &E2);
		%feature("autodoc", "1");
		bool IsContinuous(const TopoDS_Edge &E1, const TopoDS_Edge &E2);
		%feature("autodoc", "1");
		const SMDS_MeshNode * VertexNode(const TopoDS_Vertex &V, const SMESHDS_Mesh *meshDS);

};
%extend SMESH_Algo {
	~SMESH_Algo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Algo\n");}
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
		double GetShapeDiagonalSize(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		const TopoDS_Solid & PseudoShape();
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
		void ExportSTL(const char *file, const bool __isascii);
		%feature("autodoc", "1");
		int NbNodes();
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
%extend SMESH_Mesh {
	~SMESH_Mesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Mesh\n");}
	}
};

%nodefaultctor SMESH_subMesh;
class SMESH_subMesh {
	public:
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
		bool IsConform(const SMESH_Algo *theAlgo);
		%feature("autodoc", "1");
		bool CanAddHypothesis(const SMESH_Hypothesis *theHypothesis) const;
		%feature("autodoc", "1");
		bool IsApplicableHypotesis(const SMESH_Hypothesis *theHypothesis, const TopAbs_ShapeEnum theShapeType);
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
%extend SMESH_subMesh {
	~SMESH_subMesh() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_subMesh\n");}
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
		int GetShapeDim(const TopAbs_ShapeEnum &aShapeType);
		%feature("autodoc", "1");
		int GetShapeDim(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		SMESH_Algo * GetAlgo(SMESH_Mesh & aMesh, const TopoDS_Shape &aShape, TopoDS_Shape* assignedTo=0);
		%feature("autodoc", "1");
		bool IsGlobalHypothesis(const SMESH_Hypothesis *theHyp, SMESH_Mesh & aMesh);
		%feature("autodoc", "1");
		int GetANewId();

};
%extend SMESH_Gen {
	~SMESH_Gen() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Gen\n");}
	}
};


%nodefaultctor SMESH_NodeSearcher;
class SMESH_NodeSearcher {
	public:
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * FindClosestTo(const gp_Pnt &pnt);

};
%extend SMESH_NodeSearcher {
	~SMESH_NodeSearcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_NodeSearcher\n");}
	}
};


%nodefaultctor SMESH_Pattern;
class SMESH_Pattern {
	public:
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
%extend SMESH_Pattern {
	~SMESH_Pattern() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of SMESH_Pattern\n");}
	}
};
