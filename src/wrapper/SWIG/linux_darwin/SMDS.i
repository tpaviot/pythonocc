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
%module SMDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i
%include ../StandardTemplateLibrary.i

%pythoncode {
import GarbageCollector
};

%include SMDS_dependencies.i


%include SMDS_headers.i

typedef SMDS_MeshNode const * SMDS_pNode;
typedef SMDS_Iterator<SMDS_MeshElement const*> SMDS_ElemIterator;
typedef SMDS_Iterator<const SMDS_MeshFace*> SMDS_FaceIterator;
typedef SMDS_Iterator<const SMDS_MeshVolume*> SMDS_VolumeIterator;
typedef SMDS_Iterator<const SMDS_Mesh0DElement*> SMDS_0DElementIterator;
typedef NCollection_DataMap<int, SMDS_MeshElement*> SMDS_IdElementMap;
typedef SMDS_Iterator<const SMDS_MeshEdge*> SMDS_EdgeIterator;
typedef SMDS_MeshElement const * SMDS_pElement;
typedef SMDS_Iterator<const SMDS_MeshNode*> SMDS_NodeIterator;

enum SMDS_TypeOfPosition {
	SMDS_TOP_UNSPEC,
	SMDS_TOP_VERTEX,
	SMDS_TOP_EDGE,
	SMDS_TOP_FACE,
	SMDS_TOP_3DSPACE,
	};



%nodefaultctor SMDS_MeshObject;
class SMDS_MeshObject {
	public:
		%feature("autodoc", "1");
		SMDS_MeshObject();

};
%feature("shadow") SMDS_MeshObject::~SMDS_MeshObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshElement;
class SMDS_MeshElement : public SMDS_MeshObject {
	public:
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr nodesIterator() const;
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr edgesIterator() const;
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr facesIterator() const;
		%feature("autodoc", "1");
		virtual		SMDS_ElemIteratorPtr elementsIterator(SMDSAbs_ElementType ) const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;
		%feature("autodoc", "1");
		int GetID() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		virtual		bool IsPoly() const;
		%feature("autodoc", "1");
		virtual		bool IsQuadratic() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		bool IsMediumNode(const SMDS_MeshNode *node) const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;
		%feature("autodoc", "1");
		const SMDS_MeshNode * GetNodeWrap(const int ind) const;
		%feature("autodoc", "1");
		virtual		bool IsValidIndex(const int ind) const;
		%feature("autodoc", "1");
		int WrappedIndex(const int ind) const;
		%feature("autodoc", "1");
		int GetNodeIndex(const SMDS_MeshNode *node) const;

};
%feature("shadow") SMDS_MeshElement::~SMDS_MeshElement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshElement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshNode;
class SMDS_MeshNode : public SMDS_MeshElement {
	public:
		%feature("autodoc", "1");
		SMDS_MeshNode(double , double , double );
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		double X() const;
		%feature("autodoc", "1");
		double Y() const;
		%feature("autodoc", "1");
		double Z() const;
		%feature("autodoc", "1");
		void AddInverseElement(const SMDS_MeshElement *ME);
		%feature("autodoc", "1");
		void RemoveInverseElement(const SMDS_MeshElement *parent);
		%feature("autodoc", "1");
		void ClearInverseElements();
		%feature("autodoc", "1");
		bool emptyInverseElements();
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr GetInverseElementIterator(SMDSAbs_ElementType =SMDSAbs_All) const;
		%feature("autodoc", "1");
		int NbInverseElements(SMDSAbs_ElementType =SMDSAbs_All) const;
		%feature("autodoc", "1");
		void SetPosition(const SMDS_PositionPtr &aPos);
		%feature("autodoc", "1");
		const SMDS_PositionPtr & GetPosition() const;
		%feature("autodoc", "1");
		void setXYZ(double , double , double );
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int arg0) const;

};
%feature("shadow") SMDS_MeshNode::~SMDS_MeshNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_Position;
class SMDS_Position {
	public:
		%feature("autodoc", "1");
		virtual		const double * Coords() const;
		%feature("autodoc", "1");
		virtual		SMDS_TypeOfPosition GetTypeOfPosition() const;
		%feature("autodoc", "1");
		virtual		int GetDim() const;
		%feature("autodoc", "1");
		void SetShapeId(int );
		%feature("autodoc", "1");
		int GetShapeId() const;

};
%feature("shadow") SMDS_Position::~SMDS_Position %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_Position {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_SpacePosition;
class SMDS_SpacePosition : public SMDS_Position {
	public:
		%feature("autodoc", "1");
		SMDS_SpacePosition(double =0, double =0, double =0);
		%feature("autodoc", "1");
		virtual		const double * Coords() const;
		%feature("autodoc", "1");
		virtual		SMDS_TypeOfPosition GetTypeOfPosition() const;
		%feature("autodoc", "1");
		SMDS_PositionPtr originSpacePosition();

};
%feature("shadow") SMDS_SpacePosition::~SMDS_SpacePosition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_SpacePosition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshVolume;
class SMDS_MeshVolume : public SMDS_MeshElement {
	public:
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;

};
%feature("shadow") SMDS_MeshVolume::~SMDS_MeshVolume %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshVolume {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_QuadraticVolumeOfNodes;
class SMDS_QuadraticVolumeOfNodes : public SMDS_MeshVolume {
	public:
		%feature("autodoc", "1");
		SMDS_QuadraticVolumeOfNodes(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31, const SMDS_MeshNode *n14, const SMDS_MeshNode *n24, const SMDS_MeshNode *n34);
		%feature("autodoc", "1");
		SMDS_QuadraticVolumeOfNodes(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41, const SMDS_MeshNode *n15, const SMDS_MeshNode *n25, const SMDS_MeshNode *n35, const SMDS_MeshNode *n45);
		%feature("autodoc", "1");
		SMDS_QuadraticVolumeOfNodes(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31, const SMDS_MeshNode *n45, const SMDS_MeshNode *n56, const SMDS_MeshNode *n64, const SMDS_MeshNode *n14, const SMDS_MeshNode *n25, const SMDS_MeshNode *n36);
		%feature("autodoc", "1");
		SMDS_QuadraticVolumeOfNodes(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n7, const SMDS_MeshNode *n8, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41, const SMDS_MeshNode *n56, const SMDS_MeshNode *n67, const SMDS_MeshNode *n78, const SMDS_MeshNode *n85, const SMDS_MeshNode *n15, const SMDS_MeshNode *n26, const SMDS_MeshNode *n37, const SMDS_MeshNode *n48);
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		bool IsQuadratic() const;
		%feature("autodoc", "1");
		virtual		bool IsMediumNode(const SMDS_MeshNode *node) const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;

};
%feature("shadow") SMDS_QuadraticVolumeOfNodes::~SMDS_QuadraticVolumeOfNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_QuadraticVolumeOfNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_VolumeTool;
class SMDS_VolumeTool {
	public:
		enum VolumeType {
			UNKNOWN,
			TETRA,
			PYRAM,
			PENTA,
			HEXA,
			QUAD_TETRA,
			QUAD_PYRAM,
			QUAD_PENTA,
			QUAD_HEXA,
			POLYHEDA,
		};
		%feature("autodoc", "1");
		SMDS_VolumeTool();
		%feature("autodoc", "1");
		SMDS_VolumeTool(const SMDS_MeshElement *theVolume);
		%feature("autodoc", "1");
		bool Set(const SMDS_MeshElement *theVolume);
		%feature("autodoc", "1");
		const SMDS_MeshVolume * Get() const;
		%feature("autodoc", "1");
		int ID() const;
		%feature("autodoc", "1");
		SMDS_VolumeTool::VolumeType GetVolumeType() const;
		%feature("autodoc", "1");
		bool IsForward() const;
		%feature("autodoc", "1");
		void Inverse();
		%feature("autodoc", "1");
		SMDS_MeshNode const * * GetNodes();
		%feature("autodoc", "1");
		int NbNodes();
		%feature("autodoc", "1");
		double GetSize() const;
		%feature("autodoc", "1");
		bool GetBaryCenter(double & X, double & Y, double & Z) const;
		%feature("autodoc", "1");
		bool IsOut(double , double , double , double );
		%feature("autodoc", "1");
		bool IsLinked(const SMDS_MeshNode *theNode1, const SMDS_MeshNode *theNode2) const;
		%feature("autodoc", "1");
		bool IsLinked(const int theNode1Index, const int theNode2Index) const;
		%feature("autodoc", "1");
		int GetNodeIndex(const SMDS_MeshNode *theNode) const;
		%feature("autodoc", "1");
		int GetAllExistingEdges(std::vector<SMDS_MeshElement const*, std::allocator<SMDS_MeshElement const*> > & edges) const;
		%feature("autodoc", "1");
		void SetExternalNormal();
		%feature("autodoc", "1");
		int NbFaces() const;
		%feature("autodoc", "1");
		int NbFaceNodes(int );
		%feature("autodoc", "1");
		const int * GetFaceNodesIndices(int );
		%feature("autodoc", "1");
		SMDS_MeshNode const * * GetFaceNodes(int );
		%feature("autodoc", "1");
		bool GetFaceNodes(int , std::set<const SMDS_MeshNode*,std::less<const SMDS_MeshNode*>,std::allocator<const SMDS_MeshNode*> > & theFaceNodes);
		%feature("autodoc", "1");
		bool IsFaceExternal(int );
		%feature("autodoc", "1");
		bool IsFreeFace(int );
		%feature("autodoc", "1");
		bool GetFaceNormal(int , double & X, double & Y, double & Z);
		%feature("autodoc", "1");
		double GetFaceArea(int );
		%feature("autodoc", "1");
		int GetOppFaceIndex(int ) const;
		%feature("autodoc", "1");
		int GetFaceIndex(std::set<const SMDS_MeshNode*,std::less<const SMDS_MeshNode*>,std::allocator<const SMDS_MeshNode*> > const & theFaceNodes);
		%feature("autodoc", "1");
		int GetAllExistingFaces(std::vector<SMDS_MeshElement const*, std::allocator<SMDS_MeshElement const*> > & faces);
		%feature("autodoc", "1");
		SMDS_VolumeTool::VolumeType GetType(int );
		%feature("autodoc", "1");
		int NbFaces(SMDS_VolumeTool::VolumeType );
		%feature("autodoc", "1");
		const int * GetFaceNodesIndices(SMDS_VolumeTool::VolumeType , int , bool );
		%feature("autodoc", "1");
		int NbFaceNodes(SMDS_VolumeTool::VolumeType , int );
		%feature("autodoc", "1");
		int NbCornerNodes(SMDS_VolumeTool::VolumeType );

};
%feature("shadow") SMDS_VolumeTool::~SMDS_VolumeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_VolumeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_Iterator<SMDS_MeshElement const*>;
class SMDS_Iterator<SMDS_MeshElement const*> {
	public:
		%feature("autodoc", "1");
		virtual		bool more();
		%feature("autodoc", "1");
		virtual		const SMDS_MeshElement * next();
		%feature("autodoc", "1");
		virtual		void remove();

};
%feature("shadow") SMDS_Iterator<SMDS_MeshElement const*>::~SMDS_Iterator<SMDS_MeshElement const*> %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_Iterator<SMDS_MeshElement const*> {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_VertexPosition;
class SMDS_VertexPosition : public SMDS_Position {
	public:
		%feature("autodoc", "1");
		virtual		SMDS_TypeOfPosition GetTypeOfPosition() const;
		%feature("autodoc", "1");
		SMDS_VertexPosition(int =0);
		%feature("autodoc", "1");
		virtual		const double * Coords() const;

};
%feature("shadow") SMDS_VertexPosition::~SMDS_VertexPosition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_VertexPosition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_FacePosition;
class SMDS_FacePosition : public SMDS_Position {
	public:
		%feature("autodoc", "1");
		SMDS_FacePosition(int =0, double =0, double =0);
		%feature("autodoc", "1");
		virtual		const double * Coords() const;
		%feature("autodoc", "1");
		virtual		SMDS_TypeOfPosition GetTypeOfPosition() const;
		%feature("autodoc", "1");
		void SetUParameter(double );
		%feature("autodoc", "1");
		void SetVParameter(double );
		%feature("autodoc", "1");
		double GetUParameter() const;
		%feature("autodoc", "1");
		double GetVParameter() const;

};
%feature("shadow") SMDS_FacePosition::~SMDS_FacePosition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_FacePosition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_VolumeOfNodes;
class SMDS_VolumeOfNodes : public SMDS_MeshVolume {
	public:
		%feature("autodoc", "1");
		SMDS_VolumeOfNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node3, const SMDS_MeshNode *node4);
		%feature("autodoc", "1");
		SMDS_VolumeOfNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node3, const SMDS_MeshNode *node4, const SMDS_MeshNode *node5);
		%feature("autodoc", "1");
		SMDS_VolumeOfNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node3, const SMDS_MeshNode *node4, const SMDS_MeshNode *node5, const SMDS_MeshNode *node6);
		%feature("autodoc", "1");
		SMDS_VolumeOfNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node3, const SMDS_MeshNode *node4, const SMDS_MeshNode *node5, const SMDS_MeshNode *node6, const SMDS_MeshNode *node7, const SMDS_MeshNode *node8);
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;

};
%feature("shadow") SMDS_VolumeOfNodes::~SMDS_VolumeOfNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_VolumeOfNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshFace;
class SMDS_MeshFace : public SMDS_MeshElement {
	public:
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;

};
%feature("shadow") SMDS_MeshFace::~SMDS_MeshFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshIDFactory;
class SMDS_MeshIDFactory : public SMDS_MeshObject {
	public:
		%feature("autodoc", "1");
		virtual		int GetFreeID();
		%feature("autodoc", "1");
		virtual		void ReleaseID(int );
		%feature("autodoc", "1");
		virtual		void Clear();

};
%feature("shadow") SMDS_MeshIDFactory::~SMDS_MeshIDFactory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshIDFactory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshElementIDFactory;
class SMDS_MeshElementIDFactory : public SMDS_MeshIDFactory {
	public:
		%feature("autodoc", "1");
		SMDS_MeshElementIDFactory();
		%feature("autodoc", "1");
		bool BindID(int , SMDS_MeshElement* elem);
		%feature("autodoc", "1");
		SMDS_MeshElement * MeshElement(int );
		%feature("autodoc", "1");
		int GetMaxID() const;
		%feature("autodoc", "1");
		int GetMinID() const;
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr elementsIterator() const;

};
%feature("shadow") SMDS_MeshElementIDFactory::~SMDS_MeshElementIDFactory %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshElementIDFactory {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshInfo;
class SMDS_MeshInfo {
	public:
		%feature("autodoc", "1");
		SMDS_MeshInfo();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		int NbNodes() const;
		%feature("autodoc", "1");
		int NbElements(SMDSAbs_ElementType =SMDSAbs_All) const;
		%feature("autodoc", "1");
		int NbEntities(SMDSAbs_EntityType ) const;
		%feature("autodoc", "1");
		int Nb0DElements() const;
		%feature("autodoc", "1");
		int NbEdges(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbFaces(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbTriangles(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbQuadrangles(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbPolygons() const;
		%feature("autodoc", "1");
		int NbVolumes(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbTetras(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbHexas(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbPyramids(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbPrisms(SMDSAbs_ElementOrder =ORDER_ANY) const;
		%feature("autodoc", "1");
		int NbPolyhedrons() const;

};
%feature("shadow") SMDS_MeshInfo::~SMDS_MeshInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_Mesh;
class SMDS_Mesh : public SMDS_MeshObject {
	public:
		%feature("autodoc", "1");
		SMDS_Mesh();
		%feature("autodoc", "1");
		SMDS_NodeIteratorPtr nodesIterator() const;
		%feature("autodoc", "1");
		SMDS_0DElementIteratorPtr elements0dIterator() const;
		%feature("autodoc", "1");
		SMDS_EdgeIteratorPtr edgesIterator() const;
		%feature("autodoc", "1");
		SMDS_FaceIteratorPtr facesIterator() const;
		%feature("autodoc", "1");
		SMDS_VolumeIteratorPtr volumesIterator() const;
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr elementsIterator(SMDSAbs_ElementType =SMDSAbs_All) const;
		%feature("autodoc", "1");
		SMDSAbs_ElementType GetElementType(const int id, const bool iselem) const;
		%feature("autodoc", "1");
		SMDS_Mesh * AddSubMesh();
		%feature("autodoc", "1");
		virtual		SMDS_MeshNode * AddNodeWithID(double , double , double , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshNode * AddNode(double , double , double );
		%feature("autodoc", "1");
		virtual		SMDS_Mesh0DElement * Add0DElementWithID(int , int );
		%feature("autodoc", "1");
		virtual		SMDS_Mesh0DElement * Add0DElementWithID(const SMDS_MeshNode *n, int );
		%feature("autodoc", "1");
		virtual		SMDS_Mesh0DElement * Add0DElement(const SMDS_MeshNode *n);
		%feature("autodoc", "1");
		virtual		SMDS_MeshEdge * AddEdgeWithID(int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshEdge * AddEdgeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshEdge * AddEdge(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2);
		%feature("autodoc", "1");
		virtual		SMDS_MeshEdge * AddEdgeWithID(int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshEdge * AddEdgeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n12, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshEdge * AddEdge(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n12);
		%feature("autodoc", "1");
		virtual		void RemoveNode(const SMDS_MeshNode *node);
		%feature("autodoc", "1");
		virtual		void Remove0DElement(const SMDS_Mesh0DElement *elem0d);
		%feature("autodoc", "1");
		virtual		void RemoveEdge(const SMDS_MeshEdge *edge);
		%feature("autodoc", "1");
		virtual		void RemoveFace(const SMDS_MeshFace *face);
		%feature("autodoc", "1");
		virtual		void RemoveVolume(const SMDS_MeshVolume *volume);
		%feature("autodoc", "1");
		virtual		void RemoveFreeElement(const SMDS_MeshElement *elem);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		bool RemoveFromParent();
		%feature("autodoc", "1");
		virtual		bool RemoveSubMesh(const SMDS_Mesh *aMesh);
		%feature("autodoc", "1");
		bool ChangePolyhedronNodes(const SMDS_MeshElement *elem, std::vector<SMDS_MeshNode const*, std::allocator<SMDS_MeshNode const*> > const & nodes, std::vector<int, std::allocator<int> > const & quantities);
		%feature("autodoc", "1");
		virtual		void Renumber(const bool isNodes, const int startID=1, const int deltaID=1);
		%feature("autodoc", "1");
		const SMDS_MeshNode * FindNode(int ) const;
		%feature("autodoc", "1");
		const SMDS_Mesh0DElement * Find0DElement(int ) const;
		%feature("autodoc", "1");
		const SMDS_MeshEdge * FindEdge(int , int ) const;
		%feature("autodoc", "1");
		const SMDS_MeshEdge * FindEdge(int , int , int ) const;
		%feature("autodoc", "1");
		const SMDS_MeshElement * FindElement(int ) const;
		%feature("autodoc", "1");
		const SMDS_Mesh0DElement * Find0DElement(const SMDS_MeshNode *n);
		%feature("autodoc", "1");
		const SMDS_MeshEdge * FindEdge(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2);
		%feature("autodoc", "1");
		const SMDS_MeshEdge * FindEdge(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3);
		%feature("autodoc", "1");
		int CheckMemory(const bool doNotRaise=false);
		%feature("autodoc", "1");
		int MaxNodeID() const;
		%feature("autodoc", "1");
		int MinNodeID() const;
		%feature("autodoc", "1");
		int MaxElementID() const;
		%feature("autodoc", "1");
		int MinElementID() const;
		%feature("autodoc", "1");
		const SMDS_MeshInfo & GetMeshInfo() const;
		%feature("autodoc", "1");
		int NbNodes() const;
		%feature("autodoc", "1");
		int Nb0DElements() const;
		%feature("autodoc", "1");
		int NbEdges() const;
		%feature("autodoc", "1");
		int NbFaces() const;
		%feature("autodoc", "1");
		int NbVolumes() const;
		%feature("autodoc", "1");
		int NbSubMesh() const;
		%feature("autodoc", "1");
		void DumpNodes() const;
		%feature("autodoc", "1");
		void Dump0DElements() const;
		%feature("autodoc", "1");
		void DumpEdges() const;
		%feature("autodoc", "1");
		void DumpFaces() const;
		%feature("autodoc", "1");
		void DumpVolumes() const;
		%feature("autodoc", "1");
		void DebugStats() const;
		%feature("autodoc", "1");
		bool hasConstructionEdges();
		%feature("autodoc", "1");
		bool hasConstructionFaces();
		%feature("autodoc", "1");
		bool hasInverseElements();
		%feature("autodoc", "1");
		void setConstructionEdges(bool );
		%feature("autodoc", "1");
		void setConstructionFaces(bool );
		%feature("autodoc", "1");
		void setInverseElements(bool );
		%feature("autodoc", "1");
		bool Contains(const SMDS_MeshElement *elem) const;

};
%feature("shadow") SMDS_Mesh::~SMDS_Mesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_Mesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_EdgePosition;
class SMDS_EdgePosition : public SMDS_Position {
	public:
		%feature("autodoc", "1");
		SMDS_EdgePosition(const int aEdgeId=0, const double aUParam=0);
		%feature("autodoc", "1");
		virtual		const double * Coords() const;
		%feature("autodoc", "1");
		virtual		SMDS_TypeOfPosition GetTypeOfPosition() const;
		%feature("autodoc", "1");
		void SetUParameter(double );
		%feature("autodoc", "1");
		double GetUParameter() const;

};
%feature("shadow") SMDS_EdgePosition::~SMDS_EdgePosition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_EdgePosition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_VolumeOfFaces;
class SMDS_VolumeOfFaces : public SMDS_MeshVolume {
	public:
		%feature("autodoc", "1");
		SMDS_VolumeOfFaces(const SMDS_MeshFace *face1, const SMDS_MeshFace *face2, const SMDS_MeshFace *face3, const SMDS_MeshFace *face4);
		%feature("autodoc", "1");
		SMDS_VolumeOfFaces(const SMDS_MeshFace *face1, const SMDS_MeshFace *face2, const SMDS_MeshFace *face3, const SMDS_MeshFace *face4, const SMDS_MeshFace *face5);
		%feature("autodoc", "1");
		SMDS_VolumeOfFaces(const SMDS_MeshFace *face1, const SMDS_MeshFace *face2, const SMDS_MeshFace *face3, const SMDS_MeshFace *face4, const SMDS_MeshFace *face5, const SMDS_MeshFace *face6);
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;

};
%feature("shadow") SMDS_VolumeOfFaces::~SMDS_VolumeOfFaces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_VolumeOfFaces {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshEdge;
class SMDS_MeshEdge : public SMDS_MeshElement {
	public:
		%feature("autodoc", "1");
		SMDS_MeshEdge(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2);
		%feature("autodoc", "1");
		bool ChangeNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2);
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;

};
%feature("shadow") SMDS_MeshEdge::~SMDS_MeshEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_QuadraticEdge;
class SMDS_QuadraticEdge : public SMDS_MeshEdge {
	public:
		%feature("autodoc", "1");
		SMDS_QuadraticEdge(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node12);
		%feature("autodoc", "1");
		bool ChangeNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node12);
		%feature("autodoc", "1");
		virtual		bool IsQuadratic() const;
		%feature("autodoc", "1");
		virtual		bool IsMediumNode(const SMDS_MeshNode *node) const;
		%feature("autodoc", "1");
		SMDS_NodeIteratorPtr interlacedNodesIterator() const;
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr interlacedNodesElemIterator() const;

};
%feature("shadow") SMDS_QuadraticEdge::~SMDS_QuadraticEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_QuadraticEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_PolygonalFaceOfNodes;
class SMDS_PolygonalFaceOfNodes : public SMDS_MeshFace {
	public:
		%feature("autodoc", "1");
		SMDS_PolygonalFaceOfNodes(std::vector<SMDS_MeshNode const*, std::allocator<SMDS_MeshNode const*> > nodes);
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		bool IsPoly() const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;

};
%feature("shadow") SMDS_PolygonalFaceOfNodes::~SMDS_PolygonalFaceOfNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_PolygonalFaceOfNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_FaceOfNodes;
class SMDS_FaceOfNodes : public SMDS_MeshFace {
	public:
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		SMDS_FaceOfNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node3);
		%feature("autodoc", "1");
		SMDS_FaceOfNodes(const SMDS_MeshNode *node1, const SMDS_MeshNode *node2, const SMDS_MeshNode *node3, const SMDS_MeshNode *node4);
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;

};
%feature("shadow") SMDS_FaceOfNodes::~SMDS_FaceOfNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_FaceOfNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_Mesh0DElement;
class SMDS_Mesh0DElement : public SMDS_MeshElement {
	public:
		%feature("autodoc", "1");
		SMDS_Mesh0DElement(const SMDS_MeshNode *node);
		%feature("autodoc", "1");
		bool ChangeNode(const SMDS_MeshNode *node);
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;

};
%feature("shadow") SMDS_Mesh0DElement::~SMDS_Mesh0DElement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_Mesh0DElement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_QuadraticFaceOfNodes;
class SMDS_QuadraticFaceOfNodes : public SMDS_MeshFace {
	public:
		%feature("autodoc", "1");
		SMDS_QuadraticFaceOfNodes(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31);
		%feature("autodoc", "1");
		SMDS_QuadraticFaceOfNodes(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41);
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		bool IsQuadratic() const;
		%feature("autodoc", "1");
		virtual		bool IsMediumNode(const SMDS_MeshNode *node) const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		SMDS_NodeIteratorPtr interlacedNodesIterator() const;
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr interlacedNodesElemIterator() const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;

};
%feature("shadow") SMDS_QuadraticFaceOfNodes::~SMDS_QuadraticFaceOfNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_QuadraticFaceOfNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_FaceOfEdges;
class SMDS_FaceOfEdges : public SMDS_MeshFace {
	public:
		%feature("autodoc", "1");
		virtual		void Print(std::ostream & OS) const;
		%feature("autodoc", "1");
		SMDS_FaceOfEdges(const SMDS_MeshEdge *edge1, const SMDS_MeshEdge *edge2, const SMDS_MeshEdge *edge3);
		%feature("autodoc", "1");
		SMDS_FaceOfEdges(const SMDS_MeshEdge *edge1, const SMDS_MeshEdge *edge2, const SMDS_MeshEdge *edge3, const SMDS_MeshEdge *edge4);
		%feature("autodoc", "1");
		virtual		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		virtual		SMDSAbs_EntityType GetEntityType() const;
		%feature("autodoc", "1");
		virtual		int NbNodes() const;
		%feature("autodoc", "1");
		virtual		int NbEdges() const;
		%feature("autodoc", "1");
		virtual		int NbFaces() const;
		%feature("autodoc", "1");
		virtual		const SMDS_MeshNode * GetNode(const int ind) const;

};
%feature("shadow") SMDS_FaceOfEdges::~SMDS_FaceOfEdges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_FaceOfEdges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMDS_MeshGroup;
class SMDS_MeshGroup : public SMDS_MeshObject {
	public:
		%feature("autodoc", "1");
		SMDS_MeshGroup(const SMDS_Mesh *theMesh, const SMDSAbs_ElementType theType=SMDSAbs_All);
		%feature("autodoc", "1");
		const SMDS_MeshGroup * AddSubGroup(const SMDSAbs_ElementType theType=SMDSAbs_All);
		%feature("autodoc", "1");
		virtual		bool RemoveSubGroup(const SMDS_MeshGroup *theGroup);
		%feature("autodoc", "1");
		virtual		bool RemoveFromParent();
		%feature("autodoc", "1");
		const SMDS_Mesh * GetMesh() const;
		%feature("autodoc", "1");
		void SetType(const SMDSAbs_ElementType theType);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const SMDS_MeshElement *theElem);
		%feature("autodoc", "1");
		bool Remove(const SMDS_MeshElement *theElem);
		%feature("autodoc", "1");
		bool IsEmpty() const;
		%feature("autodoc", "1");
		int Extent() const;
		%feature("autodoc", "1");
		int SubGroupsNb() const;
		%feature("autodoc", "1");
		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		bool Contains(const SMDS_MeshElement *theElem) const;
		%feature("autodoc", "1");
		void InitIterator() const;
		%feature("autodoc", "1");
		bool More() const;
		%feature("autodoc", "1");
		const SMDS_MeshElement * Next() const;
		%feature("autodoc", "1");
		void InitSubGroupsIterator() const;
		%feature("autodoc", "1");
		bool MoreSubGroups() const;
		%feature("autodoc", "1");
		const SMDS_MeshGroup * NextSubGroup() const;

};
%feature("shadow") SMDS_MeshGroup::~SMDS_MeshGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMDS_MeshGroup {
	void _kill_pointed() {
		delete $self;
	}
};
