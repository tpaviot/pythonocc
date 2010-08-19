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

%module SMESHDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include SMESHDS_renames.i


%include SMESHDS_required_python_modules.i


%include SMESHDS_dependencies.i


%include SMESHDS_headers.i

typedef SMDS_Iterator<const SMESHDS_SubMesh*> SMESHDS_SubMeshIterator;

enum SMESHDS_CommandType {
	SMESHDS_AddNode,
	SMESHDS_AddEdge,
	SMESHDS_AddTriangle,
	SMESHDS_AddQuadrangle,
	SMESHDS_AddPolygon,
	SMESHDS_AddTetrahedron,
	SMESHDS_AddPyramid,
	SMESHDS_AddPrism,
	SMESHDS_AddHexahedron,
	SMESHDS_AddPolyhedron,
	SMESHDS_RemoveNode,
	SMESHDS_RemoveElement,
	SMESHDS_MoveNode,
	SMESHDS_ChangeElementNodes,
	SMESHDS_ChangePolyhedronNodes,
	SMESHDS_Renumber,
	SMESHDS_ClearAll,
	SMESHDS_AddQuadEdge,
	SMESHDS_AddQuadTriangle,
	SMESHDS_AddQuadQuadrangle,
	SMESHDS_AddQuadTetrahedron,
	SMESHDS_AddQuadPyramid,
	SMESHDS_AddQuadPentahedron,
	SMESHDS_AddQuadHexahedron,
	SMESHDS_Add0DElement,
	};



%nodefaultctor SMESHDS_Document;
class SMESHDS_Document {
	public:
		%feature("autodoc", "1");
		SMESHDS_Document(int );
		%feature("autodoc", "1");
		int NewMesh(bool );
		%feature("autodoc", "1");
		void RemoveMesh(int );
		%feature("autodoc", "1");
		SMESHDS_Mesh * GetMesh(int );
		%feature("autodoc", "1");
		void AddHypothesis(SMESHDS_Hypothesis* H);
		%feature("autodoc", "1");
		void RemoveHypothesis(int );
		%feature("autodoc", "1");
		SMESHDS_Hypothesis * GetHypothesis(int );
		%feature("autodoc", "1");
		int NbMeshes();
		%feature("autodoc", "1");
		int NbHypothesis();
		%feature("autodoc", "1");
		void InitMeshesIterator();
		%feature("autodoc", "1");
		SMESHDS_Mesh * NextMesh();
		%feature("autodoc", "1");
		bool MoreMesh();
		%feature("autodoc", "1");
		void InitHypothesisIterator();
		%feature("autodoc", "1");
		SMESHDS_Hypothesis * NextHypothesis();
		%feature("autodoc", "1");
		bool MoreHypothesis();

};
%feature("shadow") SMESHDS_Document::~SMESHDS_Document %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_Document {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_GroupBase;
class SMESHDS_GroupBase {
	public:
		%feature("autodoc", "1");
		int GetID() const;
		%feature("autodoc", "1");
		const SMESHDS_Mesh * GetMesh() const;
		%feature("autodoc", "1");
		virtual		void SetType(SMDSAbs_ElementType );
		%feature("autodoc", "1");
		SMDSAbs_ElementType GetType() const;
		%feature("autodoc", "1");
		void SetStoreName(const char *theName);
		%feature("autodoc", "1");
		const char * GetStoreName() const;
		%feature("autodoc", "1");
		virtual		int Extent();
		%feature("autodoc", "1");
		virtual		bool IsEmpty();
		%feature("autodoc", "1");
		virtual		bool Contains(const int theID);
		%feature("autodoc", "1");
		virtual		bool Contains(const SMDS_MeshElement *elem);
		%feature("autodoc", "1");
		virtual		SMDS_ElemIteratorPtr GetElements();
		%feature("autodoc", "1");
		int GetID(const int theIndex);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &theColor);
		%feature("autodoc", "1");
		Quantity_Color GetColor() const;
		%feature("autodoc", "1");
		void SetColorGroup(int );
		%feature("autodoc", "1");
		int GetColorGroup() const;

};
%feature("shadow") SMESHDS_GroupBase::~SMESHDS_GroupBase %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_GroupBase {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_SubMesh;
class SMESHDS_SubMesh {
	public:
		%feature("autodoc", "1");
		SMESHDS_SubMesh();
		%feature("autodoc", "1");
		bool IsComplexSubmesh() const;
		%feature("autodoc", "1");
		void AddElement(const SMDS_MeshElement *ME);
		%feature("autodoc", "1");
		bool RemoveElement(const SMDS_MeshElement *ME, bool );
		%feature("autodoc", "1");
		void AddNode(const SMDS_MeshNode *ME);
		%feature("autodoc", "1");
		bool RemoveNode(const SMDS_MeshNode *ME, bool );
		%feature("autodoc", "1");
		void AddSubMesh(const SMESHDS_SubMesh *theSubMesh);
		%feature("autodoc", "1");
		bool RemoveSubMesh(const SMESHDS_SubMesh *theSubMesh);
		%feature("autodoc", "1");
		bool ContainsSubMesh(const SMESHDS_SubMesh *theSubMesh) const;
		%feature("autodoc", "1");
		int NbSubMeshes() const;
		%feature("autodoc", "1");
		SMESHDS_SubMeshIteratorPtr GetSubMeshIterator() const;
		%feature("autodoc", "1");
		int NbElements() const;
		%feature("autodoc", "1");
		SMDS_ElemIteratorPtr GetElements() const;
		%feature("autodoc", "1");
		int NbNodes() const;
		%feature("autodoc", "1");
		SMDS_NodeIteratorPtr GetNodes() const;
		%feature("autodoc", "1");
		bool Contains(const SMDS_MeshElement *ME) const;
		%feature("autodoc", "1");
		void Clear();

};
%feature("shadow") SMESHDS_SubMesh::~SMESHDS_SubMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_SubMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_Command;
class SMESHDS_Command {
	public:
		%feature("autodoc", "1");
		SMESHDS_Command(const SMESHDS_CommandType aType);
		%feature("autodoc", "1");
		void AddNode(int , double , double , double );
		%feature("autodoc", "1");
		void Add0DElement(int , int );
		%feature("autodoc", "1");
		void AddEdge(int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddEdge(int , int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void MoveNode(int , double , double , double );
		%feature("autodoc", "1");
		void RemoveNode(int );
		%feature("autodoc", "1");
		void RemoveElement(int );
		%feature("autodoc", "1");
		void ChangeElementNodes(int , int* nodes, int );
		%feature("autodoc", "1");
		void Renumber(const bool isNodes, const int startID, const int deltaID);
		%feature("autodoc", "1");
		SMESHDS_CommandType GetType();
		%feature("autodoc", "1");
		int GetNumber();
		%feature("autodoc", "1");
		std::list<int, std::allocator<int> > const & GetIndexes();
		%feature("autodoc", "1");
		std::list<double, std::allocator<double> > const & GetCoords();

};
%feature("shadow") SMESHDS_Command::~SMESHDS_Command %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_Command {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_Hypothesis;
class SMESHDS_Hypothesis {
	public:
		enum hypothesis_type {
			PARAM_ALGO,
			ALGO_0D,
			ALGO_1D,
			ALGO_2D,
			ALGO_3D,
		};
		%feature("autodoc", "1");
		const char * GetName() const;
		%feature("autodoc", "1");
		int GetID() const;
		%feature("autodoc", "1");
		int GetType() const;
		%feature("autodoc", "1");
		virtual		std::ostream & SaveTo(std::ostream & save);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void LoadFromFromString(std::string src) {
			std::stringstream s(src);
			self->LoadFrom(s);}
		};

};
%feature("shadow") SMESHDS_Hypothesis::~SMESHDS_Hypothesis %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_Hypothesis {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_Script;
class SMESHDS_Script {
	public:
		%feature("autodoc", "1");
		SMESHDS_Script(bool );
		%feature("autodoc", "1");
		void SetModified(bool );
		%feature("autodoc", "1");
		bool IsModified();
		%feature("autodoc", "1");
		void AddNode(int , double , double , double );
		%feature("autodoc", "1");
		void Add0DElement(int , int );
		%feature("autodoc", "1");
		void AddEdge(int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddEdge(int , int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddFace(int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void AddVolume(int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		void MoveNode(int , double , double , double );
		%feature("autodoc", "1");
		void RemoveNode(int );
		%feature("autodoc", "1");
		void RemoveElement(int );
		%feature("autodoc", "1");
		void ChangeElementNodes(int , int* nodes, int );
		%feature("autodoc", "1");
		void Renumber(const bool isNodes, const int startID, const int deltaID);
		%feature("autodoc", "1");
		void ClearMesh();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		std::list<SMESHDS_Command*, std::allocator<SMESHDS_Command*> > const & GetCommands();

};
%feature("shadow") SMESHDS_Script::~SMESHDS_Script %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_Script {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_Mesh;
class SMESHDS_Mesh : public SMDS_Mesh {
	public:
		%feature("autodoc", "1");
		SMESHDS_Mesh(int , bool );
		%feature("autodoc", "1");
		bool IsEmbeddedMode();
		%feature("autodoc", "1");
		void ShapeToMesh(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape ShapeToMesh() const;
		%feature("autodoc", "1");
		bool AddHypothesis(const TopoDS_Shape &SS, const SMESHDS_Hypothesis *H);
		%feature("autodoc", "1");
		bool RemoveHypothesis(const TopoDS_Shape &S, const SMESHDS_Hypothesis *H);
		%feature("autodoc", "1");
		virtual		SMDS_MeshNode * AddNodeWithID(double , double , double , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshNode * AddNode(double , double , double );
		%feature("autodoc", "1");
		virtual		SMDS_Mesh0DElement * Add0DElementWithID(int , int );
		%feature("autodoc", "1");
		virtual		SMDS_Mesh0DElement * Add0DElementWithID(const SMDS_MeshNode *node, int );
		%feature("autodoc", "1");
		virtual		SMDS_Mesh0DElement * Add0DElement(const SMDS_MeshNode *node);
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
		virtual		SMDS_MeshFace * AddFaceWithID(int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFaceWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFace(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3);
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFaceWithID(int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFaceWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFace(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4);
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFaceWithID(int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFaceWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFace(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31);
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFaceWithID(int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFaceWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshFace * AddFace(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n7, const SMDS_MeshNode *n8, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n7, const SMDS_MeshNode *n8);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31, const SMDS_MeshNode *n14, const SMDS_MeshNode *n24, const SMDS_MeshNode *n34, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31, const SMDS_MeshNode *n14, const SMDS_MeshNode *n24, const SMDS_MeshNode *n34);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41, const SMDS_MeshNode *n15, const SMDS_MeshNode *n25, const SMDS_MeshNode *n35, const SMDS_MeshNode *n45, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41, const SMDS_MeshNode *n15, const SMDS_MeshNode *n25, const SMDS_MeshNode *n35, const SMDS_MeshNode *n45);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31, const SMDS_MeshNode *n45, const SMDS_MeshNode *n56, const SMDS_MeshNode *n64, const SMDS_MeshNode *n14, const SMDS_MeshNode *n25, const SMDS_MeshNode *n36, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n31, const SMDS_MeshNode *n45, const SMDS_MeshNode *n56, const SMDS_MeshNode *n64, const SMDS_MeshNode *n14, const SMDS_MeshNode *n25, const SMDS_MeshNode *n36);
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int , int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolumeWithID(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n7, const SMDS_MeshNode *n8, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41, const SMDS_MeshNode *n56, const SMDS_MeshNode *n67, const SMDS_MeshNode *n78, const SMDS_MeshNode *n85, const SMDS_MeshNode *n15, const SMDS_MeshNode *n26, const SMDS_MeshNode *n37, const SMDS_MeshNode *n48, int );
		%feature("autodoc", "1");
		virtual		SMDS_MeshVolume * AddVolume(const SMDS_MeshNode *n1, const SMDS_MeshNode *n2, const SMDS_MeshNode *n3, const SMDS_MeshNode *n4, const SMDS_MeshNode *n5, const SMDS_MeshNode *n6, const SMDS_MeshNode *n7, const SMDS_MeshNode *n8, const SMDS_MeshNode *n12, const SMDS_MeshNode *n23, const SMDS_MeshNode *n34, const SMDS_MeshNode *n41, const SMDS_MeshNode *n56, const SMDS_MeshNode *n67, const SMDS_MeshNode *n78, const SMDS_MeshNode *n85, const SMDS_MeshNode *n15, const SMDS_MeshNode *n26, const SMDS_MeshNode *n37, const SMDS_MeshNode *n48);
		%feature("autodoc", "1");
		void MoveNode(const SMDS_MeshNode *arg0, double , double , double );
		%feature("autodoc", "1");
		virtual		void RemoveNode(const SMDS_MeshNode *arg0);
		%feature("autodoc", "1");
		void RemoveElement(const SMDS_MeshElement *arg0);
		%feature("autodoc", "1");
		void RemoveFreeNode(const SMDS_MeshNode *arg0, SMESHDS_SubMesh* arg1, bool =true);
		%feature("autodoc", "1");
		void RemoveFreeElement(const SMDS_MeshElement *arg0, SMESHDS_SubMesh* arg1, bool =true);
		%feature("autodoc", "1");
		void ClearMesh();
		%feature("autodoc", "1");
		virtual		void Renumber(const bool isNodes, const int startID=1, const int deltaID=1);
		%feature("autodoc", "1");
		void SetNodeInVolume(SMDS_MeshNode* aNode, const TopoDS_Shell &S);
		%feature("autodoc", "1");
		void SetNodeInVolume(SMDS_MeshNode* aNode, const TopoDS_Solid &S);
		%feature("autodoc", "1");
		void SetNodeOnFace(SMDS_MeshNode* aNode, const TopoDS_Face &S, double =0.0, double =0.0);
		%feature("autodoc", "1");
		void SetNodeOnEdge(SMDS_MeshNode* aNode, const TopoDS_Edge &S, double =0.0);
		%feature("autodoc", "1");
		void SetNodeOnVertex(SMDS_MeshNode* aNode, const TopoDS_Vertex &S);
		%feature("autodoc", "1");
		void UnSetNodeOnShape(const SMDS_MeshNode *aNode);
		%feature("autodoc", "1");
		void SetMeshElementOnShape(const SMDS_MeshElement *anElt, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		void UnSetMeshElementOnShape(const SMDS_MeshElement *anElt, const TopoDS_Shape &S);
		%feature("autodoc", "1");
		bool HasMeshElements(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		SMESHDS_SubMesh * MeshElements(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		SMESHDS_SubMesh * MeshElements(const int Index);
		%feature("autodoc", "1");
		std::map<int, SMESHDS_SubMesh*, std::less<int>, std::allocator<std::pair<int const, SMESHDS_SubMesh*> > > const & SubMeshes() const;
		%feature("autodoc", "1");
		bool HasHypothesis(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		std::list<const SMESHDS_Hypothesis*,std::allocator<const SMESHDS_Hypothesis*> > const & GetHypothesis(const TopoDS_Shape &S) const;
		%feature("autodoc", "1");
		SMESHDS_Script * GetScript();
		%feature("autodoc", "1");
		void ClearScript();
		%feature("autodoc", "1");
		int ShapeToIndex(const TopoDS_Shape &aShape) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & IndexToShape(int ) const;
		%feature("autodoc", "1");
		int MaxShapeIndex() const;
		%feature("autodoc", "1");
		SMESHDS_SubMesh * NewSubMesh(int );
		%feature("autodoc", "1");
		int AddCompoundSubmesh(const TopoDS_Shape &S, TopAbs_ShapeEnum =TopAbs_SHAPE);
		%feature("autodoc", "1");
		void SetNodeInVolume(const SMDS_MeshNode *aNode, int );
		%feature("autodoc", "1");
		void SetNodeOnFace(SMDS_MeshNode* aNode, int , double =0.0, double =0.0);
		%feature("autodoc", "1");
		void SetNodeOnEdge(SMDS_MeshNode* aNode, int , double =0.0);
		%feature("autodoc", "1");
		void SetNodeOnVertex(SMDS_MeshNode* aNode, int );
		%feature("autodoc", "1");
		void SetMeshElementOnShape(const SMDS_MeshElement *anElt, int );
		%feature("autodoc", "1");
		void AddGroup(SMESHDS_GroupBase* theGroup);
		%feature("autodoc", "1");
		void RemoveGroup(SMESHDS_GroupBase* theGroup);
		%feature("autodoc", "1");
		int GetNbGroups() const;
		%feature("autodoc", "1");
		std::set<SMESHDS_GroupBase*, std::less<SMESHDS_GroupBase*>, std::allocator<SMESHDS_GroupBase*> > const & GetGroups() const;
		%feature("autodoc", "1");
		bool IsGroupOfSubShapes(const TopoDS_Shape &aSubShape) const;

};
%feature("shadow") SMESHDS_Mesh::~SMESHDS_Mesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_Mesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_GroupOnGeom;
class SMESHDS_GroupOnGeom : public SMESHDS_GroupBase {
	public:
		%feature("autodoc", "1");
		SMESHDS_GroupOnGeom(const int theID, const SMESHDS_Mesh *theMesh, const SMDSAbs_ElementType theType, const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		TopoDS_Shape GetShape() const;
		%feature("autodoc", "1");
		virtual		bool Contains(const int theID);
		%feature("autodoc", "1");
		virtual		bool Contains(const SMDS_MeshElement *elem);
		%feature("autodoc", "1");
		virtual		SMDS_ElemIteratorPtr GetElements();

};
%feature("shadow") SMESHDS_GroupOnGeom::~SMESHDS_GroupOnGeom %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_GroupOnGeom {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SMESHDS_Group;
class SMESHDS_Group : public SMESHDS_GroupBase {
	public:
		%feature("autodoc", "1");
		SMESHDS_Group(const int theID, const SMESHDS_Mesh *theMesh, const SMDSAbs_ElementType theType);
		%feature("autodoc", "1");
		virtual		void SetType(SMDSAbs_ElementType );
		%feature("autodoc", "1");
		virtual		int Extent();
		%feature("autodoc", "1");
		virtual		bool IsEmpty();
		%feature("autodoc", "1");
		virtual		bool Contains(const int theID);
		%feature("autodoc", "1");
		virtual		bool Contains(const SMDS_MeshElement *elem);
		%feature("autodoc", "1");
		virtual		SMDS_ElemIteratorPtr GetElements();
		%feature("autodoc", "1");
		bool Add(const int theID);
		%feature("autodoc", "1");
		bool Remove(const int theID);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		SMDS_MeshGroup & SMDSGroup();

};
%feature("shadow") SMESHDS_Group::~SMESHDS_Group %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SMESHDS_Group {
	void _kill_pointed() {
		delete $self;
	}
};
