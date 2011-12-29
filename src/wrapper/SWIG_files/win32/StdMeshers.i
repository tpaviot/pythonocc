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

%module StdMeshers
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i
%include ../StandardTemplateLibrary.i

%include StdMeshers_renames.i


%include StdMeshers_required_python_modules.i


%include StdMeshers_dependencies.i


%include StdMeshers_headers.i




%nodefaultctor StdMeshers_NumberOfSegments;
class StdMeshers_NumberOfSegments : public SMESH_Hypothesis {
	public:
		enum DistrType {
			DT_Regular,
			DT_Scale,
			DT_TabFunc,
			DT_ExprFunc,
		};
		%feature("autodoc", "1");
		StdMeshers_NumberOfSegments(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		std::vector<double, std::allocator<double> > const & BuildDistributionExpr(const char *arg0, int , int );
		%feature("autodoc", "1");
		std::vector<double, std::allocator<double> > const & BuildDistributionTab(std::vector<double, std::allocator<double> > const & arg0, int , int );
		%feature("autodoc", "1");
		void SetNumberOfSegments(int );
		%feature("autodoc", "1");
		int GetNumberOfSegments() const;
		%feature("autodoc", "1");
		void SetDistrType(StdMeshers_NumberOfSegments::DistrType );
		%feature("autodoc", "1");
		StdMeshers_NumberOfSegments::DistrType GetDistrType() const;
		%feature("autodoc", "1");
		virtual		void SetScaleFactor(double );
		%feature("autodoc", "1");
		double GetScaleFactor() const;
		%feature("autodoc", "1");
		void SetTableFunction(std::vector<double, std::allocator<double> > const & table);
		%feature("autodoc", "1");
		std::vector<double, std::allocator<double> > const & GetTableFunction() const;
		%feature("autodoc", "1");
		void SetExpressionFunction(const char *expr);
		%feature("autodoc", "1");
		const char * GetExpressionFunction() const;
		%feature("autodoc", "1");
		void SetConversionMode(int );
		%feature("autodoc", "1");
		int ConversionMode() const;
		%feature("autodoc", "1");
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);
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
%feature("shadow") StdMeshers_NumberOfSegments::~StdMeshers_NumberOfSegments %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_NumberOfSegments {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_MaxElementArea;
class StdMeshers_MaxElementArea : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_MaxElementArea(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetMaxArea(double );
		%feature("autodoc", "1");
		double GetMaxArea() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_MaxElementArea::~StdMeshers_MaxElementArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_MaxElementArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_MaxElementVolume;
class StdMeshers_MaxElementVolume : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_MaxElementVolume(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetMaxVolume(double );
		%feature("autodoc", "1");
		double GetMaxVolume() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_MaxElementVolume::~StdMeshers_MaxElementVolume %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_MaxElementVolume {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_QuadToTriaAdaptor;
class StdMeshers_QuadToTriaAdaptor {
	public:
		%feature("autodoc", "1");
		StdMeshers_QuadToTriaAdaptor();
		%feature("autodoc", "1");
		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		bool Compute(SMESH_Mesh & aMesh);
		%feature("autodoc", "1");
		std::list<const SMDS_FaceOfNodes*,std::allocator<const SMDS_FaceOfNodes*> > const * GetTriangles(const SMDS_MeshElement *aFace);

};
%feature("shadow") StdMeshers_QuadToTriaAdaptor::~StdMeshers_QuadToTriaAdaptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_QuadToTriaAdaptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Projection_1D;
class StdMeshers_Projection_1D : public SMESH_1D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_Projection_1D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		virtual		void SetEventListener(SMESH_subMesh* whenSetToSubMesh);

};
%feature("shadow") StdMeshers_Projection_1D::~StdMeshers_Projection_1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Projection_1D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Projection_3D;
class StdMeshers_Projection_3D : public SMESH_3D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_Projection_3D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		virtual		void SetEventListener(SMESH_subMesh* whenSetToSubMesh);

};
%feature("shadow") StdMeshers_Projection_3D::~StdMeshers_Projection_3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Projection_3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_MEFISTO_2D;
class StdMeshers_MEFISTO_2D : public SMESH_2D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_MEFISTO_2D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		void ComputeScaleOnFace(SMESH_Mesh & aMesh, const TopoDS_Face aFace, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void StoreResult(Z , R2* uvst, Z , Z* nust, std::vector<SMDS_MeshNode const*, std::allocator<SMDS_MeshNode const*> > & mefistoToDS, double , double );

};
%feature("shadow") StdMeshers_MEFISTO_2D::~StdMeshers_MEFISTO_2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_MEFISTO_2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_ProjectionSource2D;
class StdMeshers_ProjectionSource2D : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_ProjectionSource2D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetSourceFace(const TopoDS_Shape face);
		%feature("autodoc", "1");
		TopoDS_Shape GetSourceFace() const;
		%feature("autodoc", "1");
		bool IsCompoundSource() const;
		%feature("autodoc", "1");
		void SetSourceMesh(SMESH_Mesh* mesh);
		%feature("autodoc", "1");
		SMESH_Mesh * GetSourceMesh() const;
		%feature("autodoc", "1");
		void SetVertexAssociation(const TopoDS_Shape sourceVertex1, const TopoDS_Shape sourceVertex2, const TopoDS_Shape targetVertex1, const TopoDS_Shape targetVertex2);
		%feature("autodoc", "1");
		TopoDS_Vertex GetSourceVertex(int ) const;
		%feature("autodoc", "1");
		TopoDS_Vertex GetTargetVertex(int ) const;
		%feature("autodoc", "1");
		bool HasVertexAssociation() const;
		%feature("autodoc", "1");
		void GetStoreParams(TopoDS_Shape & s1, TopoDS_Shape & s2, TopoDS_Shape & s3, TopoDS_Shape & s4, TopoDS_Shape & s5) const;
		%feature("autodoc", "1");
		void RestoreParams(const TopoDS_Shape s1, const TopoDS_Shape s2, const TopoDS_Shape s3, const TopoDS_Shape s4, const TopoDS_Shape s5, SMESH_Mesh* mesh);
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_ProjectionSource2D::~StdMeshers_ProjectionSource2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_ProjectionSource2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_ProjectionSource3D;
class StdMeshers_ProjectionSource3D : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_ProjectionSource3D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetSource3DShape(const TopoDS_Shape shape);
		%feature("autodoc", "1");
		TopoDS_Shape GetSource3DShape() const;
		%feature("autodoc", "1");
		void SetSourceMesh(SMESH_Mesh* mesh);
		%feature("autodoc", "1");
		SMESH_Mesh * GetSourceMesh() const;
		%feature("autodoc", "1");
		void SetVertexAssociation(const TopoDS_Shape sourceVertex1, const TopoDS_Shape sourceVertex2, const TopoDS_Shape targetVertex1, const TopoDS_Shape targetVertex2);
		%feature("autodoc", "1");
		TopoDS_Vertex GetSourceVertex(int ) const;
		%feature("autodoc", "1");
		TopoDS_Vertex GetTargetVertex(int ) const;
		%feature("autodoc", "1");
		bool HasVertexAssociation() const;
		%feature("autodoc", "1");
		void GetStoreParams(TopoDS_Shape & s1, TopoDS_Shape & s2, TopoDS_Shape & s3, TopoDS_Shape & s4, TopoDS_Shape & s5) const;
		%feature("autodoc", "1");
		void RestoreParams(const TopoDS_Shape s1, const TopoDS_Shape s2, const TopoDS_Shape s3, const TopoDS_Shape s4, const TopoDS_Shape s5, SMESH_Mesh* mesh);
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_ProjectionSource3D::~StdMeshers_ProjectionSource3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_ProjectionSource3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Propagation;
class StdMeshers_Propagation : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_Propagation(int , int , SMESH_Gen* gen);
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
		static		std::string GetName();
		%feature("autodoc", "1");
		static		void SetPropagationMgr(SMESH_subMesh* subMesh);
		%feature("autodoc", "1");
		static		TopoDS_Edge GetPropagationSource(SMESH_Mesh & theMesh, const TopoDS_Shape theEdge);
		%feature("autodoc", "1");
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_Propagation::~StdMeshers_Propagation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Propagation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_TrianglePreference;
class StdMeshers_TrianglePreference : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_TrianglePreference(int , int , SMESH_Gen* gen);
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_TrianglePreference::~StdMeshers_TrianglePreference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_TrianglePreference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_LocalLength;
class StdMeshers_LocalLength : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_LocalLength(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetLength(double );
		%feature("autodoc", "1");
		void SetPrecision(double );
		%feature("autodoc", "1");
		double GetLength() const;
		%feature("autodoc", "1");
		double GetPrecision() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_LocalLength::~StdMeshers_LocalLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_LocalLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_NumberOfLayers;
class StdMeshers_NumberOfLayers : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_NumberOfLayers(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetNumberOfLayers(int );
		%feature("autodoc", "1");
		int GetNumberOfLayers() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_NumberOfLayers::~StdMeshers_NumberOfLayers %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_NumberOfLayers {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_LengthFromEdges;
class StdMeshers_LengthFromEdges : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_LengthFromEdges(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetMode(int );
		%feature("autodoc", "1");
		int GetMode();
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_LengthFromEdges::~StdMeshers_LengthFromEdges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_LengthFromEdges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Quadrangle_2D;
class StdMeshers_Quadrangle_2D : public SMESH_2D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_Quadrangle_2D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		FaceQuadStruct * CheckAnd2Dcompute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, const bool CreateQuadratic);

};
%feature("shadow") StdMeshers_Quadrangle_2D::~StdMeshers_Quadrangle_2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Quadrangle_2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Deflection1D;
class StdMeshers_Deflection1D : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_Deflection1D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetDeflection(double );
		%feature("autodoc", "1");
		double GetDeflection() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_Deflection1D::~StdMeshers_Deflection1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Deflection1D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_PrismAsBlock;
class StdMeshers_PrismAsBlock : public SMESH_Block {
	public:
		%feature("autodoc", "1");
		StdMeshers_PrismAsBlock();
		%feature("autodoc", "1");
		bool Init(SMESH_MesherHelper* helper, const TopoDS_Shape shape3D);
		%feature("autodoc", "1");
		SMESH_ComputeErrorPtr GetError() const;
		%feature("autodoc", "1");
		int VerticalSize() const;
		%feature("autodoc", "1");
		bool HasNotQuadElemOnTop() const;
		%feature("autodoc", "1");
		const TNodeColumn * GetNodeColumn(const SMDS_MeshNode *node) const;
		%feature("autodoc", "1");
		const TParam2ColumnMap & GetParam2ColumnMap(const int baseEdgeID, bool & isReverse);
		%feature("autodoc", "1");
		SMESH_Mesh * Mesh() const;
		%feature("autodoc", "1");
		SMESHDS_Mesh * MeshDS() const;
		%feature("autodoc", "1");
		SMESH_subMesh * SubMesh(const int shapeID) const;
		%feature("autodoc", "1");
		SMESHDS_SubMesh * SubMeshDS(const int shapeID) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const int shapeID) const;
		%feature("autodoc", "1");
		int ShapeID(const TopoDS_Shape shape) const;
		%feature("autodoc", "1");
		static		bool IsForwardEdge(SMESHDS_Mesh* meshDS, const TParam2ColumnMap &columnsMap, const TopoDS_Edge bottomEdge, const int sideFaceID);
		%feature("autodoc", "1");
		static		bool GetWallFaces(SMESH_Mesh* mesh, const TopoDS_Shape mainShape, const TopoDS_Shape bottomFace, std::list<TopoDS_Edge>, std::list<TopoDS_Face>);

};
%feature("shadow") StdMeshers_PrismAsBlock::~StdMeshers_PrismAsBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_PrismAsBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_SMESHBlock;
class StdMeshers_SMESHBlock {
	public:
		%feature("autodoc", "1");
		StdMeshers_SMESHBlock();
		%feature("autodoc", "1");
		void Load(const TopoDS_Shell theShell);
		%feature("autodoc", "1");
		void Load(const TopoDS_Shell theShell, const TopoDS_Vertex theV000, const TopoDS_Vertex theV001);
		%feature("autodoc", "1");
		void ComputeParameters(const gp_Pnt thePnt, gp_XYZ & theXYZ);
		%feature("autodoc", "1");
		void ComputeParameters(const gp_Pnt thePnt, const TopoDS_Shape theShape, gp_XYZ & theXYZ);
		%feature("autodoc", "1");
		void ComputeParameters(const double &theU, const TopoDS_Shape theShape, gp_XYZ & theXYZ);
		%feature("autodoc", "1");
		void Point(const gp_XYZ theParams, gp_Pnt & thePnt);
		%feature("autodoc", "1");
		void Point(const gp_XYZ theParams, const TopoDS_Shape theShape, gp_Pnt & thePnt);
		%feature("autodoc", "1");
		int ShapeID(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const int theID);
		%feature("autodoc", "1");
		SMESH_Block & Block();
		%feature("autodoc", "1");
		bool IsForwadEdge(const int theEdgeID);
		%feature("autodoc", "1");
		int ErrorStatus() const;
		%feature("autodoc", "1");
		SMESH_ComputeErrorPtr GetError() const;

};
%feature("shadow") StdMeshers_SMESHBlock::~StdMeshers_SMESHBlock %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_SMESHBlock {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_ProjectionSource1D;
class StdMeshers_ProjectionSource1D : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_ProjectionSource1D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetSourceEdge(const TopoDS_Shape edge);
		%feature("autodoc", "1");
		TopoDS_Shape GetSourceEdge() const;
		%feature("autodoc", "1");
		bool IsCompoundSource() const;
		%feature("autodoc", "1");
		void SetSourceMesh(SMESH_Mesh* mesh);
		%feature("autodoc", "1");
		SMESH_Mesh * GetSourceMesh() const;
		%feature("autodoc", "1");
		void SetVertexAssociation(const TopoDS_Shape sourceVertex, const TopoDS_Shape targetVertex);
		%feature("autodoc", "1");
		TopoDS_Vertex GetSourceVertex() const;
		%feature("autodoc", "1");
		TopoDS_Vertex GetTargetVertex() const;
		%feature("autodoc", "1");
		bool HasVertexAssociation() const;
		%feature("autodoc", "1");
		void GetStoreParams(TopoDS_Shape & s1, TopoDS_Shape & s2, TopoDS_Shape & s3) const;
		%feature("autodoc", "1");
		void RestoreParams(const TopoDS_Shape s1, const TopoDS_Shape s2, const TopoDS_Shape s3, SMESH_Mesh* mesh);
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_ProjectionSource1D::~StdMeshers_ProjectionSource1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_ProjectionSource1D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_StartEndLength;
class StdMeshers_StartEndLength : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_StartEndLength(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetLength(double , bool );
		%feature("autodoc", "1");
		double GetLength(bool ) const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_StartEndLength::~StdMeshers_StartEndLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_StartEndLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Prism_3D;
class StdMeshers_Prism_3D : public SMESH_3D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_Prism_3D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		void ProjectTriangles();
		%feature("autodoc", "1");
		static		void AddPrisms(std::vector<const std::vector<const SMDS_MeshNode*, std::allocator<const SMDS_MeshNode*> >*,std::allocator<const std::vector<const SMDS_MeshNode*, std::allocator<const SMDS_MeshNode*> >*> > & nodeColumns, SMESH_MesherHelper* helper);

};
%feature("shadow") StdMeshers_Prism_3D::~StdMeshers_Prism_3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Prism_3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_AutomaticLength;
class StdMeshers_AutomaticLength : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_AutomaticLength(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		double GetLength(const SMESH_Mesh *aMesh, const TopoDS_Shape anEdge);
		%feature("autodoc", "1");
		double GetLength(const SMESH_Mesh *aMesh, const double edgeLength);
		%feature("autodoc", "1");
		void SetFineness(double );
		%feature("autodoc", "1");
		double GetFineness() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_AutomaticLength::~StdMeshers_AutomaticLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_AutomaticLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Regular_1D;
class StdMeshers_Regular_1D : public SMESH_1D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_Regular_1D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		virtual		std::list<SMESHDS_Hypothesis const*, std::allocator<SMESHDS_Hypothesis const*> > const & GetUsedHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, const bool arg2=true);
		%feature("autodoc", "1");
		virtual		void SetEventListener(SMESH_subMesh* subMesh);
		%feature("autodoc", "1");
		virtual		void SubmeshRestored(SMESH_subMesh* subMesh);

};
%feature("shadow") StdMeshers_Regular_1D::~StdMeshers_Regular_1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Regular_1D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Penta_3D;
class StdMeshers_Penta_3D {
	public:
		%feature("autodoc", "1");
		StdMeshers_Penta_3D();
		%feature("autodoc", "1");
		bool Compute(SMESH_Mesh & arg0, const TopoDS_Shape arg1);
		%feature("autodoc", "1");
		int ErrorStatus() const;
		%feature("autodoc", "1");
		SMESH_ComputeErrorPtr GetComputeError() const;
		%feature("autodoc", "1");
		void SetTolerance(const double theTol3D);
		%feature("autodoc", "1");
		double Tolerance() const;
		%feature("autodoc", "1");
		bool LoadIJNodes(StdMeshers_IJNodeMap & theIJNodes, const TopoDS_Face theFace, const TopoDS_Edge theBaseEdge, SMESHDS_Mesh* theMesh);

};
%feature("shadow") StdMeshers_Penta_3D::~StdMeshers_Penta_3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Penta_3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_RadialPrism_3D;
class StdMeshers_RadialPrism_3D : public SMESH_3D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_RadialPrism_3D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);

};
%feature("shadow") StdMeshers_RadialPrism_3D::~StdMeshers_RadialPrism_3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_RadialPrism_3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_SegmentLengthAroundVertex;
class StdMeshers_SegmentLengthAroundVertex : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_SegmentLengthAroundVertex(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetLength(double );
		%feature("autodoc", "1");
		double GetLength() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_SegmentLengthAroundVertex::~StdMeshers_SegmentLengthAroundVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_SegmentLengthAroundVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Hexa_3D;
class StdMeshers_Hexa_3D : public SMESH_3D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_Hexa_3D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);

};
%feature("shadow") StdMeshers_Hexa_3D::~StdMeshers_Hexa_3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Hexa_3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_MaxLength;
class StdMeshers_MaxLength : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_MaxLength(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetLength(double );
		%feature("autodoc", "1");
		double GetLength() const;
		%feature("autodoc", "1");
		bool HavePreestimatedLength() const;
		%feature("autodoc", "1");
		double GetPreestimatedLength() const;
		%feature("autodoc", "1");
		void SetPreestimatedLength(double );
		%feature("autodoc", "1");
		void SetUsePreestimatedLength(bool );
		%feature("autodoc", "1");
		bool GetUsePreestimatedLength() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_MaxLength::~StdMeshers_MaxLength %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_MaxLength {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_UseExisting_1D;
class StdMeshers_UseExisting_1D : public SMESH_1D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_UseExisting_1D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);

};
%feature("shadow") StdMeshers_UseExisting_1D::~StdMeshers_UseExisting_1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_UseExisting_1D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_UseExisting_2D;
class StdMeshers_UseExisting_2D : public SMESH_2D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_UseExisting_2D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);

};
%feature("shadow") StdMeshers_UseExisting_2D::~StdMeshers_UseExisting_2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_UseExisting_2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Arithmetic1D;
class StdMeshers_Arithmetic1D : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_Arithmetic1D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetLength(double , bool );
		%feature("autodoc", "1");
		double GetLength(bool ) const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_Arithmetic1D::~StdMeshers_Arithmetic1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Arithmetic1D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_Projection_2D;
class StdMeshers_Projection_2D : public SMESH_2D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_Projection_2D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		virtual		void SetEventListener(SMESH_subMesh* whenSetToSubMesh);

};
%feature("shadow") StdMeshers_Projection_2D::~StdMeshers_Projection_2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_Projection_2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_QuadranglePreference;
class StdMeshers_QuadranglePreference : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_QuadranglePreference(int , int , SMESH_Gen* gen);
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_QuadranglePreference::~StdMeshers_QuadranglePreference %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_QuadranglePreference {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_TNode;
class StdMeshers_TNode {
	public:
		%feature("autodoc", "1");
		StdMeshers_TNode();
		%feature("autodoc", "1");
		void SetNode(const SMDS_MeshNode *theNode);
		%feature("autodoc", "1");
		const SMDS_MeshNode * Node() const;
		%feature("autodoc", "1");
		void SetShapeSupportID(const int theID);
		%feature("autodoc", "1");
		int ShapeSupportID() const;
		%feature("autodoc", "1");
		void SetNormCoord(const gp_XYZ theXYZ);
		%feature("autodoc", "1");
		const gp_XYZ  NormCoord() const;
		%feature("autodoc", "1");
		void SetBaseNodeID(const int theID);
		%feature("autodoc", "1");
		int BaseNodeID() const;

};
%feature("shadow") StdMeshers_TNode::~StdMeshers_TNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_TNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_QuadraticMesh;
class StdMeshers_QuadraticMesh : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_QuadraticMesh(int , int , SMESH_Gen* gen);
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_QuadraticMesh::~StdMeshers_QuadraticMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_QuadraticMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_SegmentAroundVertex_0D;
class StdMeshers_SegmentAroundVertex_0D : public SMESH_0D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_SegmentAroundVertex_0D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);

};
%feature("shadow") StdMeshers_SegmentAroundVertex_0D::~StdMeshers_SegmentAroundVertex_0D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_SegmentAroundVertex_0D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_CompositeHexa_3D;
class StdMeshers_CompositeHexa_3D : public SMESH_3D_Algo {
	public:
		%feature("autodoc", "1");
		StdMeshers_CompositeHexa_3D(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		virtual		bool Compute(SMESH_Mesh & aMesh, const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		virtual		bool CheckHypothesis(SMESH_Mesh & aMesh, const TopoDS_Shape aShape, SMESH_Hypothesis::Hypothesis_Status & aStatus);

};
%feature("shadow") StdMeshers_CompositeHexa_3D::~StdMeshers_CompositeHexa_3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_CompositeHexa_3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_FaceSide;
class StdMeshers_FaceSide {
	public:
		%feature("autodoc", "1");
		StdMeshers_FaceSide(const TopoDS_Face theFace, const TopoDS_Edge theEdge, SMESH_Mesh* theMesh, const bool theIsForward, const bool theIgnoreMediumNodes);
		%feature("autodoc", "1");
		StdMeshers_FaceSide(const TopoDS_Face theFace, std::list<TopoDS_Edge>, SMESH_Mesh* theMesh, const bool theIsForward, const bool theIgnoreMediumNodes);
		%feature("autodoc", "1");
		static		TSideVector GetFaceWires(const TopoDS_Face theFace, SMESH_Mesh & theMesh, const bool theIgnoreMediumNodes, TError & theError);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		int NbPoints() const;
		%feature("autodoc", "1");
		int NbSegments() const;
		%feature("autodoc", "1");
		SMESH_Mesh * GetMesh() const;
		%feature("autodoc", "1");
		bool MissVertexNode() const;
		%feature("autodoc", "1");
		std::vector<uvPtStruct, std::allocator<uvPtStruct> > const & GetUVPtStruct(bool =0, double =0) const;
		%feature("autodoc", "1");
		std::vector<uvPtStruct, std::allocator<uvPtStruct> > const & SimulateUVPtStruct(int , bool =0, double =0) const;
		%feature("autodoc", "1");
		double Parameter(double , TopoDS_Edge & edge) const;
		%feature("autodoc", "1");
		gp_Pnt2d Value2d(double ) const;
		%feature("autodoc", "1");
		Adaptor2d_Curve2d * GetCurve2d() const;
		%feature("autodoc", "1");
		BRepAdaptor_CompCurve * GetCurve3d() const;
		%feature("autodoc", "1");
		int NbEdges() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge(int ) const;
		%feature("autodoc", "1");
		TopoDS_Vertex FirstVertex(int =0) const;
		%feature("autodoc", "1");
		TopoDS_Vertex LastVertex(int =-0x000000001) const;
		%feature("autodoc", "1");
		double FirstParameter(int ) const;
		%feature("autodoc", "1");
		double LastParameter(int ) const;
		%feature("autodoc", "1");
		double Length() const;
		%feature("autodoc", "1");
		int EdgeIndex(double ) const;
		%feature("autodoc", "1");
		void dump(const char *msg=0) const;

};
%feature("shadow") StdMeshers_FaceSide::~StdMeshers_FaceSide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_FaceSide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_NotConformAllowed;
class StdMeshers_NotConformAllowed : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_NotConformAllowed(int , int , SMESH_Gen* gen);
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_NotConformAllowed::~StdMeshers_NotConformAllowed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_NotConformAllowed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StdMeshers_LayerDistribution;
class StdMeshers_LayerDistribution : public SMESH_Hypothesis {
	public:
		%feature("autodoc", "1");
		StdMeshers_LayerDistribution(int , int , SMESH_Gen* gen);
		%feature("autodoc", "1");
		void SetLayerDistribution(SMESH_Hypothesis* hyp1D);
		%feature("autodoc", "1");
		SMESH_Hypothesis * GetLayerDistribution() const;
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
		virtual		bool SetParametersByMesh(const SMESH_Mesh *theMesh, const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		bool SetParametersByDefaults(const SMESH_Hypothesis::TDefaults &dflts, const SMESH_Mesh *theMesh=0);

};
%feature("shadow") StdMeshers_LayerDistribution::~StdMeshers_LayerDistribution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StdMeshers_LayerDistribution {
	void _kill_pointed() {
		delete $self;
	}
};
