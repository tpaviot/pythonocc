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

%module GEOMAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GEOMAlgo_renames.i


%include GEOMAlgo_required_python_modules.i


%include GEOMAlgo_dependencies.i


%include GEOMAlgo_headers.i

typedef NCollection_DataMap<GEOMAlgo_PassKey, int, GEOMAlgo_PassKeyMapHasher> GEOMAlgo_DataMapOfPassKeyInteger;
typedef NCollection_DataMap<TopoDS_Shape, GEOMAlgo_ShapeSet, TopTools_ShapeMapHasher> GEOMAlgo_DataMapOfShapeShapeSet;
typedef NCollection_DataMap<TopoDS_Shape, gp_Pnt, TopTools_ShapeMapHasher> GEOMAlgo_DataMapOfShapePnt;
typedef NCollection_DataMap<TopoDS_Shape, TopoDS_Shape, TopTools_OrientedShapeMapHasher> GEOMAlgo_DataMapOfOrientedShapeShape;
typedef GEOMAlgo_WireEdgeSet * GEOMAlgo_PWireEdgeSet;
typedef NCollection_IndexedDataMap<TopoDS_Shape,Bnd_Box,TopTools_ShapeMapHasher> GEOMAlgo_IndexedDataMapOfShapeBox;
typedef NCollection_IndexedDataMap<TopoDS_Shape, TopAbs_State, TopTools_ShapeMapHasher> GEOMAlgo_IndexedDataMapOfShapeState;
typedef NCollection_IndexedDataMap<int,TopoDS_Shape,TColStd_MapIntegerHasher> GEOMAlgo_IndexedDataMapOfIntegerShape;
typedef NCollection_DataMap<GEOMAlgo_PassKey, TopoDS_Shape, GEOMAlgo_PassKeyMapHasher> GEOMAlgo_DataMapOfPassKeyShapeShape;
typedef NCollection_DataMap<TopoDS_Shape, TopTools_MapOfShape, TopTools_ShapeMapHasher> GEOMAlgo_DataMapOfShapeMapOfShape;
typedef NCollection_TListIterator<GEOMAlgo_CoupleOfShapes> GEOMAlgo_ListIteratorOfListOfCoupleOfShapes;
typedef NCollection_IndexedDataMap<TopoDS_Shape, GEOMAlgo_ShapeInfo, TopTools_ShapeMapHasher> GEOMAlgo_IndexedDataMapOfShapeShapeInfo;
typedef NCollection_List<GEOMAlgo_CoupleOfShapes> GEOMAlgo_ListOfCoupleOfShapes;
typedef NCollection_TListIterator<gp_Pnt> GEOMAlgo_ListIteratorOfListOfPnt;
typedef NCollection_List<gp_Pnt> GEOMAlgo_ListOfPnt;
typedef NCollection_DataMap<TopoDS_Shape, double, TopTools_ShapeMapHasher> GEOMAlgo_DataMapOfShapeReal;
typedef NCollection_IndexedDataMap<GEOMAlgo_PassKeyShape,TopTools_ListOfShape,GEOMAlgo_PassKeyShapeMapHasher> GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape;
typedef NCollection_DataMap<double, TopTools_ListOfShape, TColStd_MapRealHasher> GEOMAlgo_DataMapOfRealListOfShape;

enum GEOMAlgo_KindOfShape {
	GEOMAlgo_KS_UNKNOWN,
	GEOMAlgo_KS_SPHERE,
	GEOMAlgo_KS_CYLINDER,
	GEOMAlgo_KS_BOX,
	GEOMAlgo_KS_TORUS,
	GEOMAlgo_KS_CONE,
	GEOMAlgo_KS_ELLIPSE,
	GEOMAlgo_KS_PLANE,
	GEOMAlgo_KS_CIRCLE,
	GEOMAlgo_KS_LINE,
	GEOMAlgo_KS_DEGENERATED,
	};

enum GEOMAlgo_State {
	GEOMAlgo_ST_UNKNOWN,
	GEOMAlgo_ST_IN,
	GEOMAlgo_ST_OUT,
	GEOMAlgo_ST_ON,
	GEOMAlgo_ST_ONIN,
	GEOMAlgo_ST_ONOUT,
	GEOMAlgo_ST_INOUT,
	};

enum GEOMAlgo_KindOfClosed {
	GEOMAlgo_KC_UNKNOWN,
	GEOMAlgo_KC_CLOSED,
	GEOMAlgo_KC_NOTCLOSED,
	};

enum GEOMAlgo_KindOfBounds {
	GEOMAlgo_KB_UNKNOWN,
	GEOMAlgo_KB_TRIMMED,
	GEOMAlgo_KB_INFINITE,
	};

enum GEOMAlgo_KindOfName {
	GEOMAlgo_KN_UNKNOWN,
	GEOMAlgo_KN_SPHERE,
	GEOMAlgo_KN_CYLINDER,
	GEOMAlgo_KN_TORUS,
	GEOMAlgo_KN_CONE,
	GEOMAlgo_KN_ELLIPSE,
	GEOMAlgo_KN_CIRCLE,
	GEOMAlgo_KN_PLANE,
	GEOMAlgo_KN_LINE,
	GEOMAlgo_KN_BOX,
	GEOMAlgo_KN_SEGMENT,
	GEOMAlgo_KN_ARCCIRCLE,
	GEOMAlgo_KN_POLYGON,
	GEOMAlgo_KN_POLYHEDRON,
	GEOMAlgo_KN_DISKCIRCLE,
	GEOMAlgo_KN_DISKELLIPSE,
	GEOMAlgo_KN_RECTANGLE,
	GEOMAlgo_KN_TRIANGLE,
	GEOMAlgo_KN_QUADRANGLE,
	GEOMAlgo_KN_ARCELLIPSE,
	};



%nodefaultctor Handle_GEOMAlgo_HAlgo;
class Handle_GEOMAlgo_HAlgo : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo(const Handle_GEOMAlgo_HAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo(const GEOMAlgo_HAlgo *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo & operator=(const Handle_GEOMAlgo_HAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo & operator=(const GEOMAlgo_HAlgo *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_HAlgo DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_HAlgo {
	GEOMAlgo_HAlgo* GetObject() {
	return (GEOMAlgo_HAlgo*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_HAlgo::~Handle_GEOMAlgo_HAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_HAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_Clsf;
class Handle_GEOMAlgo_Clsf : public Handle_GEOMAlgo_HAlgo {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf(const Handle_GEOMAlgo_Clsf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf(const GEOMAlgo_Clsf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf & operator=(const Handle_GEOMAlgo_Clsf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf & operator=(const GEOMAlgo_Clsf *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_Clsf DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_Clsf {
	GEOMAlgo_Clsf* GetObject() {
	return (GEOMAlgo_Clsf*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_Clsf::~Handle_GEOMAlgo_Clsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_Clsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfBox;
class Handle_GEOMAlgo_ClsfBox : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox(const Handle_GEOMAlgo_ClsfBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox(const GEOMAlgo_ClsfBox *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox & operator=(const Handle_GEOMAlgo_ClsfBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox & operator=(const GEOMAlgo_ClsfBox *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ClsfBox DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfBox {
	GEOMAlgo_ClsfBox* GetObject() {
	return (GEOMAlgo_ClsfBox*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ClsfBox::~Handle_GEOMAlgo_ClsfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ClsfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfSurf;
class Handle_GEOMAlgo_ClsfSurf : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf(const Handle_GEOMAlgo_ClsfSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf(const GEOMAlgo_ClsfSurf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf & operator=(const Handle_GEOMAlgo_ClsfSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf & operator=(const GEOMAlgo_ClsfSurf *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ClsfSurf DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfSurf {
	GEOMAlgo_ClsfSurf* GetObject() {
	return (GEOMAlgo_ClsfSurf*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ClsfSurf::~Handle_GEOMAlgo_ClsfSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ClsfSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfSolid;
class Handle_GEOMAlgo_ClsfSolid : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid(const Handle_GEOMAlgo_ClsfSolid &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid(const GEOMAlgo_ClsfSolid *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid & operator=(const Handle_GEOMAlgo_ClsfSolid &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid & operator=(const GEOMAlgo_ClsfSolid *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMAlgo_ClsfSolid DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfSolid {
	GEOMAlgo_ClsfSolid* GetObject() {
	return (GEOMAlgo_ClsfSolid*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMAlgo_ClsfSolid::~Handle_GEOMAlgo_ClsfSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMAlgo_ClsfSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKeyShapeMapHasher;
class GEOMAlgo_PassKeyShapeMapHasher {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShapeMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const GEOMAlgo_PassKeyShape &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const GEOMAlgo_PassKeyShape &aPKey1, const GEOMAlgo_PassKeyShape &aPKey2);

};
%feature("shadow") GEOMAlgo_PassKeyShapeMapHasher::~GEOMAlgo_PassKeyShapeMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKeyShapeMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Algo;


%nodefaultdtor GEOMAlgo_Algo;
class GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		Standard_Integer WarningStatus() const;
		%feature("autodoc", "1");
		void ComputeInternalShapes(const Standard_Boolean theFlag);

};

%nodefaultctor GEOMAlgo_BuilderArea;


%nodefaultdtor GEOMAlgo_BuilderArea;
class GEOMAlgo_BuilderArea : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetContext(const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		const Handle_IntTools_Context & Context() const;
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &theLS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Loops() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Areas() const;

};%extend GEOMAlgo_BuilderArea {
	GEOMAlgo_BuilderArea () {}
};


%nodefaultctor GEOMAlgo_BuilderSolid;
class GEOMAlgo_BuilderSolid : public GEOMAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderSolid();

};
%feature("shadow") GEOMAlgo_BuilderSolid::~GEOMAlgo_BuilderSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_BuilderSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeAlgo;


%nodefaultdtor GEOMAlgo_ShapeAlgo;
class GEOMAlgo_ShapeAlgo : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetContext(const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		const Handle_IntTools_Context & Context() const;
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Result() const;
		%feature("autodoc", "1");
		virtual		void Perform();

};%extend GEOMAlgo_ShapeAlgo {
	GEOMAlgo_ShapeAlgo () {}
};


%nodefaultctor GEOMAlgo_FinderShapeOn;
class GEOMAlgo_FinderShapeOn : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		static		void CopySource(const TopoDS_Shape aS, TopTools_DataMapOfShapeShape & aImages, TopTools_DataMapOfShapeShape & aOriginals, TopoDS_Shape & aSC);
		%feature("autodoc", "1");
		static		Standard_Boolean BuildTriangulation(const TopoDS_Shape aS);

};
%feature("shadow") GEOMAlgo_FinderShapeOn::~GEOMAlgo_FinderShapeOn %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOn {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Gluer;
class GEOMAlgo_Gluer : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Gluer();
		%feature("autodoc", "1");
		void SetCheckGeometry(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		Standard_Boolean CheckGeometry() const;
		%feature("autodoc", "1");
		void SetKeepNonSolids(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer AloneShapes() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape S);
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Images() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Origins() const;

};
%feature("shadow") GEOMAlgo_Gluer::~GEOMAlgo_Gluer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Gluer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_GlueAnalyser;
class GEOMAlgo_GlueAnalyser : public GEOMAlgo_Gluer {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_GlueAnalyser();
		%feature("autodoc", "1");
		Standard_Boolean HasSolidsToGlue() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & SolidsToGlue() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSolidsAlone() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SolidsAlone() const;

};
%feature("shadow") GEOMAlgo_GlueAnalyser::~GEOMAlgo_GlueAnalyser %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_GlueAnalyser {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_BuilderShape;


%nodefaultdtor GEOMAlgo_BuilderShape;
class GEOMAlgo_BuilderShape : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		Standard_Boolean HasDeleted() const;
		%feature("autodoc", "1");
		Standard_Boolean HasGenerated() const;
		%feature("autodoc", "1");
		Standard_Boolean HasModified() const;
		%feature("autodoc", "1");
		const TopTools_IndexedDataMapOfShapeListOfShape & ImagesResult() const;

};

%nodefaultctor GEOMAlgo_Builder;
class GEOMAlgo_Builder : public GEOMAlgo_BuilderShape {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Builder();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void PerformWithFiller(const NMTTools_PaveFiller &theDSF);
		%feature("autodoc", "1");
		virtual		void AddShape(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		void AddCompound(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes1(const Standard_Integer theType) const;
		%feature("autodoc", "1");
		const BRepAlgo_Image & Images() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & InParts(const TopoDS_Shape theShape) const;

};
%feature("shadow") GEOMAlgo_Builder::~GEOMAlgo_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Builder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_HAlgo;


%nodefaultdtor GEOMAlgo_HAlgo;
class GEOMAlgo_HAlgo : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		void CheckResult();
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		Standard_Integer WarningStatus() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_HAlgo {
	Handle_GEOMAlgo_HAlgo GetHandle() {
	return *(Handle_GEOMAlgo_HAlgo*) &$self;
	}
};
%extend GEOMAlgo_HAlgo {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};

%nodefaultctor GEOMAlgo_Clsf;


%nodefaultdtor GEOMAlgo_Clsf;
class GEOMAlgo_Clsf : public GEOMAlgo_HAlgo {
	public:
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Pnt() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aCT) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Surface &aST) const;

};
%extend GEOMAlgo_Clsf {
	Handle_GEOMAlgo_Clsf GetHandle() {
	return *(Handle_GEOMAlgo_Clsf*) &$self;
	}
};
%extend GEOMAlgo_Clsf {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};

%nodefaultctor GEOMAlgo_ClsfSolid;
class GEOMAlgo_ClsfSolid : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfSolid();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;

};
%extend GEOMAlgo_ClsfSolid {
	Handle_GEOMAlgo_ClsfSolid GetHandle() {
	return *(Handle_GEOMAlgo_ClsfSolid*) &$self;
	}
};
%extend GEOMAlgo_ClsfSolid {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMAlgo_ClsfSolid::~GEOMAlgo_ClsfSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ClsfSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ClsfSurf;
class GEOMAlgo_ClsfSurf : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfSurf();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Surface &aST) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ClsfSurf {
	Handle_GEOMAlgo_ClsfSurf GetHandle() {
	return *(Handle_GEOMAlgo_ClsfSurf*) &$self;
	}
};
%extend GEOMAlgo_ClsfSurf {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMAlgo_ClsfSurf::~GEOMAlgo_ClsfSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ClsfSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ClsfBox;
class GEOMAlgo_ClsfBox : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfBox();
		%feature("autodoc", "1");
		void SetBox(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Box() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Surface &aST) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ClsfBox {
	Handle_GEOMAlgo_ClsfBox GetHandle() {
	return *(Handle_GEOMAlgo_ClsfBox*) &$self;
	}
};
%extend GEOMAlgo_ClsfBox {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMAlgo_ClsfBox::~GEOMAlgo_ClsfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ClsfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKey;
class GEOMAlgo_PassKey {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKey();
		%feature("autodoc", "1");
		GEOMAlgo_PassKey(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & Assign(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & operator=(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3, const Standard_Integer aI4);
		%feature("autodoc", "1");
		void SetIds(const TColStd_ListOfInteger &aLS);
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKey &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Integer Id(const Standard_Integer aIndex) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend GEOMAlgo_PassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") GEOMAlgo_PassKey::~GEOMAlgo_PassKey %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKey {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_GlueDetector;
class GEOMAlgo_GlueDetector : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_GlueDetector();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopTools_IndexedDataMapOfShapeListOfShape & StickedShapes();

};
%feature("shadow") GEOMAlgo_GlueDetector::~GEOMAlgo_GlueDetector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_GlueDetector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_GluerAlgo;
class GEOMAlgo_GluerAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_GluerAlgo();
		%feature("autodoc", "1");
		virtual		void SetArgument(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  Argument() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void SetCheckGeometry(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		Standard_Boolean CheckGeometry() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		const Handle_IntTools_Context & Context();
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Images() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Origins() const;

};
%feature("shadow") GEOMAlgo_GluerAlgo::~GEOMAlgo_GluerAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_GluerAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOn1;
class GEOMAlgo_FinderShapeOn1 : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn1();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		void SetNbPntsMin(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMin() const;
		%feature("autodoc", "1");
		void SetNbPntsMax(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMax() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const GEOMAlgo_IndexedDataMapOfShapeState & MSS() const;

};
%feature("shadow") GEOMAlgo_FinderShapeOn1::~GEOMAlgo_FinderShapeOn1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOn1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WireEdgeSet;
class GEOMAlgo_WireEdgeSet {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		void AddStartElement(const TopoDS_Shape sS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & StartElements() const;
		%feature("autodoc", "1");
		void AddShape(const TopoDS_Shape sS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;

};
%feature("shadow") GEOMAlgo_WireEdgeSet::~GEOMAlgo_WireEdgeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WireEdgeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Tools3D;
class GEOMAlgo_Tools3D {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Tools3D();
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Shape theSplit, const TopoDS_Shape theShape, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Face theSplit, const TopoDS_Face theShape, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsSplitToReverse(const TopoDS_Edge theEdge, const TopoDS_Edge theSplit, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		Standard_Integer Sense(const TopoDS_Face theF1, const TopoDS_Face theF2);
		%feature("autodoc", "1");
		static		void CopyFace(const TopoDS_Face theF1, TopoDS_Face & theF2);
		%feature("autodoc", "1");
		static		void MakeContainer(const TopAbs_ShapeEnum theType, TopoDS_Shape & theShape);
		%feature("autodoc", "1");
		static		void MakeConnexityBlock(const TopTools_ListOfShape &theLS, const TopTools_IndexedMapOfShape &theMapAvoid, TopTools_ListOfShape & theLSCB);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeStateByOnePoint(const TopoDS_Shape theShape, const TopoDS_Solid theSolid, const Standard_Real theTol, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const gp_Pnt thePoint, const TopoDS_Solid theSolid, const Standard_Real theTol, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Vertex theVertex, const TopoDS_Solid theSolid, const Standard_Real theTol, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Edge theEdge, const TopoDS_Solid theSolid, const Standard_Real theTol, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		TopAbs_State ComputeState(const TopoDS_Face theFace, const TopoDS_Solid theSolid, const Standard_Real theTol, const TopTools_IndexedMapOfShape &theBounds, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Edge theEdge, const TopoDS_Face theFace1, const TopoDS_Face theFace2, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Edge theEdge, const TopTools_ListOfShape &theLF, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		Standard_Boolean IsInternalFace(const TopoDS_Face theFace, const TopoDS_Solid theSolid, const TopTools_IndexedDataMapOfShapeListOfShape &theMEF, const Standard_Real theTol, const Handle_IntTools_Context &theContext);
		%feature("autodoc", "1");
		static		void GetFaceOff(const TopoDS_Edge theEdge, const TopoDS_Face theFace, const NMTTools_ListOfCoupleOfShape &theLCEF, TopoDS_Face & theFaceOff);
		%feature("autodoc", "1");
		static		Standard_Boolean GetEdgeOnFace(const TopoDS_Edge theEdge, const TopoDS_Face theFace, TopoDS_Edge & theEdgeOnF);
		%feature("autodoc", "1");
		static		Standard_Boolean GetEdgeOff(const TopoDS_Edge theEdge, const TopoDS_Face theFace, TopoDS_Edge & theEdgeOff);
		%feature("autodoc", "1");
		static		Standard_Integer PntInFace(const TopoDS_Face theF, gp_Pnt & theP, gp_Pnt2d & theP2D);

};
%feature("shadow") GEOMAlgo_Tools3D::~GEOMAlgo_Tools3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Tools3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_StateCollector;
class GEOMAlgo_StateCollector {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_StateCollector();
		%feature("autodoc", "1");
		Standard_Boolean AppendState(const TopAbs_State aSt);
		%feature("autodoc", "1");
		TopAbs_State State() const;

};
%feature("shadow") GEOMAlgo_StateCollector::~GEOMAlgo_StateCollector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_StateCollector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WESScaler;
class GEOMAlgo_WESScaler : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WESScaler();
		%feature("autodoc", "1");
		void SetScale(const Standard_Real aWES);
		%feature("autodoc", "1");
		Standard_Real Scale() const;
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		void SetEdges(const TopTools_ListOfShape &aLE);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Edges() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopoDS_Face  FaceScaled() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & EdgesScaled() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Image(const TopoDS_Shape aS) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Origin(const TopoDS_Shape aS) const;
		%feature("autodoc", "1");
		const GEOMAlgo_DataMapOfOrientedShapeShape & Images() const;
		%feature("autodoc", "1");
		const GEOMAlgo_DataMapOfOrientedShapeShape & Origins() const;

};
%feature("shadow") GEOMAlgo_WESScaler::~GEOMAlgo_WESScaler %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WESScaler {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOnQuad;
class GEOMAlgo_FinderShapeOnQuad : public GEOMAlgo_FinderShapeOn1 {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOnQuad(const gp_Pnt theTopLeftPoint, const gp_Pnt theTopRigthPoint, const gp_Pnt theBottomLeftPoint, const gp_Pnt theBottomRigthPoint);

};
%feature("shadow") GEOMAlgo_FinderShapeOnQuad::~GEOMAlgo_FinderShapeOnQuad %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOnQuad {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeSet;
class GEOMAlgo_ShapeSet {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet();
		%feature("autodoc", "1");
		void Add(const TopTools_ListOfShape &theLS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape theShape, const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		void Subtract(const GEOMAlgo_ShapeSet &theSet);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const GEOMAlgo_ShapeSet &theSet) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSet() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_ShapeSet &theOther) const;
		%extend{
			bool __eq_wrapper__(const GEOMAlgo_ShapeSet &theOther) {
				if (*self==theOther) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}

};
%feature("shadow") GEOMAlgo_ShapeSet::~GEOMAlgo_ShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeSolid;
class GEOMAlgo_ShapeSolid : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes(const TopAbs_State aState) const;

};
%feature("shadow") GEOMAlgo_ShapeSolid::~GEOMAlgo_ShapeSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShellSolid;
class GEOMAlgo_ShellSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShellSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_ShellSolid::~GEOMAlgo_ShellSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShellSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeInfo;
class GEOMAlgo_ShapeInfo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void SetType(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		void SetNbSubShapes(const TopAbs_ShapeEnum aType, const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbSubShapes(const TopAbs_ShapeEnum aType) const;
		%feature("autodoc", "1");
		void SetKindOfShape(const GEOMAlgo_KindOfShape aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfShape KindOfShape() const;
		%feature("autodoc", "1");
		void SetKindOfName(const GEOMAlgo_KindOfName aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfName KindOfName() const;
		%feature("autodoc", "1");
		void SetKindOfBounds(const GEOMAlgo_KindOfBounds aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfBounds KindOfBounds() const;
		%feature("autodoc", "1");
		void SetKindOfClosed(const GEOMAlgo_KindOfClosed aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfClosed KindOfClosed() const;
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Location() const;
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir aD);
		%feature("autodoc", "1");
		const gp_Dir  Direction() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 aAx2);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 aAx3);
		%feature("autodoc", "1");
		const gp_Ax3  Position() const;
		%feature("autodoc", "1");
		void SetPnt1(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Pnt1() const;
		%feature("autodoc", "1");
		void SetPnt2(const gp_Pnt aP);
		%feature("autodoc", "1");
		const gp_Pnt  Pnt2() const;
		%feature("autodoc", "1");
		void SetRadius1(const Standard_Real aR);
		%feature("autodoc", "1");
		Standard_Real Radius1() const;
		%feature("autodoc", "1");
		void SetRadius2(const Standard_Real aR);
		%feature("autodoc", "1");
		Standard_Real Radius2() const;
		%feature("autodoc", "1");
		void SetLength(const Standard_Real aL);
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aW);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aH);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%feature("shadow") GEOMAlgo_ShapeInfo::~GEOMAlgo_ShapeInfo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeInfo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Gluer2;
class GEOMAlgo_Gluer2 : public GEOMAlgo_BuilderShape {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Gluer2();
		%feature("autodoc", "1");
		void SetShapesToGlue(const TopTools_DataMapOfShapeListOfShape &aM);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & ShapesToGlue() const;
		%feature("autodoc", "1");
		void SetKeepNonSolids(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		void Detect();
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & ShapesDetected() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & ImagesToWork() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape theS);
		%feature("autodoc", "1");
		static		void MakeVertex(const TopTools_ListOfShape &theLV, TopoDS_Vertex & theV);
		%feature("autodoc", "1");
		static		void MapBRepShapes(const TopoDS_Shape theS, TopTools_MapOfShape & theM);
		%feature("autodoc", "1");
		static		void MapShapes(const TopoDS_Shape theS, TopTools_MapOfShape & theM);
		%feature("autodoc", "1");
		const TopTools_IndexedDataMapOfShapeListOfShape & StickedShapes();

};
%feature("shadow") GEOMAlgo_Gluer2::~GEOMAlgo_Gluer2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Gluer2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_SolidSolid;
class GEOMAlgo_SolidSolid : public GEOMAlgo_ShellSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_SolidSolid();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;

};
%feature("shadow") GEOMAlgo_SolidSolid::~GEOMAlgo_SolidSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_SolidSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WESCorrector;
class GEOMAlgo_WESCorrector : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WESCorrector();
		%feature("autodoc", "1");
		void SetWES(const GEOMAlgo_WireEdgeSet &aWES);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet & WES();
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet & NewWES();

};
%feature("shadow") GEOMAlgo_WESCorrector::~GEOMAlgo_WESCorrector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WESCorrector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOn2;
class GEOMAlgo_FinderShapeOn2 : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn2();
		%feature("autodoc", "1");
		void SetClsf(const Handle_GEOMAlgo_Clsf &aClsf);
		%feature("autodoc", "1");
		const Handle_GEOMAlgo_Clsf & Clsf() const;
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		void SetNbPntsMin(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMin() const;
		%feature("autodoc", "1");
		void SetNbPntsMax(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMax() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const GEOMAlgo_IndexedDataMapOfShapeState & MSS() const;

};
%feature("shadow") GEOMAlgo_FinderShapeOn2::~GEOMAlgo_FinderShapeOn2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_FinderShapeOn2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_GetInPlace;
class GEOMAlgo_GetInPlace : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_GetInPlace();
		%feature("autodoc", "1");
		virtual		void SetShapeWhere(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape  ShapeWhere() const;
		%feature("autodoc", "1");
		void SetTolMass(const Standard_Real theTol);
		%feature("autodoc", "1");
		Standard_Real TolMass() const;
		%feature("autodoc", "1");
		void SetTolCG(const Standard_Real theTol);
		%feature("autodoc", "1");
		Standard_Real TolCG() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsFound() const;
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		const GEOMAlgo_DataMapOfShapeMapOfShape & ShapesIn() const;
		%feature("autodoc", "1");
		const GEOMAlgo_DataMapOfShapeMapOfShape & ShapesOn() const;

};
%feature("shadow") GEOMAlgo_GetInPlace::~GEOMAlgo_GetInPlace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_GetInPlace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_BuilderFace;
class GEOMAlgo_BuilderFace : public GEOMAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderFace();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face theFace);
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_BuilderFace::~GEOMAlgo_BuilderFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_BuilderFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKeyMapHasher;
class GEOMAlgo_PassKeyMapHasher {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const GEOMAlgo_PassKey &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const GEOMAlgo_PassKey &aPKey1, const GEOMAlgo_PassKey &aPKey2);

};
%feature("shadow") GEOMAlgo_PassKeyMapHasher::~GEOMAlgo_PassKeyMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKeyMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_PassKeyShape;
class GEOMAlgo_PassKeyShape {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape();
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & Assign(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & operator=(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2, const TopoDS_Shape aS3);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2, const TopoDS_Shape aS3, const TopoDS_Shape aS4);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &aLS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKeyShape &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend GEOMAlgo_PassKeyShape {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") GEOMAlgo_PassKeyShape::~GEOMAlgo_PassKeyShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_PassKeyShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_ShapeInfoFiller;
class GEOMAlgo_ShapeInfoFiller : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfoFiller();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & Info() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & Info(const TopoDS_Shape aS) const;
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_ShapeInfoFiller::~GEOMAlgo_ShapeInfoFiller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_ShapeInfoFiller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WireSolid;
class GEOMAlgo_WireSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_WireSolid::~GEOMAlgo_WireSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WireSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_VertexSolid;
class GEOMAlgo_VertexSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_VertexSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%feature("shadow") GEOMAlgo_VertexSolid::~GEOMAlgo_VertexSolid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_VertexSolid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_SurfaceTools;
class GEOMAlgo_SurfaceTools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_SurfaceTools();
		%feature("autodoc", "1");
		static		Standard_Boolean IsAnalytic(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		static		Standard_Boolean IsCoaxial(const gp_Pnt aP1, const gp_Pnt aP2, const gp_Cylinder aCyl, const Standard_Real aTol);
		%feature("autodoc", "1");
		static		Standard_Boolean IsConformState(const TopAbs_State aST1, const GEOMAlgo_State aST2);
		%feature("autodoc", "1");
		static		Standard_Integer GetState(const gp_Pnt aP, const GeomAdaptor_Surface &aS, const Standard_Real aTol, TopAbs_State & aSt);
		%feature("autodoc", "1");
		static		Standard_Integer GetState(const gp_Pnt aP, const Handle_Geom_Surface &aS, const Standard_Real aTol, TopAbs_State & aSt);
		%feature("autodoc", "1");
		static		Standard_Real Distance(const gp_Pnt aP, const gp_Pln aPln);
		%feature("autodoc", "1");
		static		Standard_Real Distance(const gp_Pnt aP, const gp_Cylinder aCyl);
		%feature("autodoc", "1");
		static		Standard_Real Distance(const gp_Pnt aP, const gp_Sphere aSph);
		%feature("autodoc", "1");
		static		TopAbs_State ReverseState(const TopAbs_State aSt);

};
%feature("shadow") GEOMAlgo_SurfaceTools::~GEOMAlgo_SurfaceTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_SurfaceTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_CoupleOfShapes;
class GEOMAlgo_CoupleOfShapes {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes();
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape aS1, const TopoDS_Shape aS2);
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape aS1);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape aS2);
		%feature("autodoc", "1");
		void Shapes(TopoDS_Shape & aS1, TopoDS_Shape & aS2) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape2() const;

};
%feature("shadow") GEOMAlgo_CoupleOfShapes::~GEOMAlgo_CoupleOfShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_CoupleOfShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_WireSplitter;
class GEOMAlgo_WireSplitter : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireSplitter();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		void SetEdges(const TopTools_ListOfShape &aLE);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Edges() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsNothingToDo() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		const BOPTColStd_ListOfListOfShape & Shapes() const;

};
%feature("shadow") GEOMAlgo_WireSplitter::~GEOMAlgo_WireSplitter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_WireSplitter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Tools;
class GEOMAlgo_Tools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Tools();
		%feature("autodoc", "1");
		static		Standard_Boolean IsCompositeShape(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		static		Standard_Integer RefineSDShapes(GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape & aMSD, const Standard_Real aTol, const Handle_IntTools_Context &aCtx);
		%feature("autodoc", "1");
		static		Standard_Integer FindSDShapes(const TopTools_ListOfShape &aLE, const Standard_Real aTol, TopTools_IndexedDataMapOfShapeListOfShape & aMEE, const Handle_IntTools_Context &aCtx);
		%feature("autodoc", "1");
		static		Standard_Integer FindSDShapes(const TopoDS_Shape aE1, const TopTools_ListOfShape &aLE, const Standard_Real aTol, TopTools_ListOfShape & aLESD, const Handle_IntTools_Context &aCtx);
		%feature("autodoc", "1");
		static		Standard_Boolean ProjectPointOnShape(const gp_Pnt aP1, const TopoDS_Shape aS, gp_Pnt & aP2, const Handle_IntTools_Context &aCtx);
		%feature("autodoc", "1");
		static		void PointOnShape(const TopoDS_Shape aS, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnEdge(const TopoDS_Edge aE, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnEdge(const TopoDS_Edge aE, const Standard_Real aT, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnFace(const TopoDS_Face aF, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void PointOnFace(const TopoDS_Face aF, const Standard_Real aU, const Standard_Real aV, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		static		void RefinePCurveForEdgeOnFace(const TopoDS_Edge aE, const TopoDS_Face aF, const Standard_Real aU1, const Standard_Real aU2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUPeriodic(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		static		Standard_Boolean CorrectWires(const TopoDS_Shape aS);
		%feature("autodoc", "1");
		static		Standard_Integer BuildPCurveForEdgeOnFace(const TopoDS_Edge aE, const TopoDS_Edge aEold, const TopoDS_Face aF, const Handle_IntTools_Context &aCtx);

};
%feature("shadow") GEOMAlgo_Tools::~GEOMAlgo_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_BuilderTools;
class GEOMAlgo_BuilderTools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderTools();
		%feature("autodoc", "1");
		static		Standard_Boolean IsHole(const TopoDS_Shape aW, const TopoDS_Shape aF);
		%feature("autodoc", "1");
		static		Standard_Boolean IsHole(const TopoDS_Shape aShell);

};
%feature("shadow") GEOMAlgo_BuilderTools::~GEOMAlgo_BuilderTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_BuilderTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMAlgo_Splitter;
class GEOMAlgo_Splitter : public GEOMAlgo_Builder {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Splitter();
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void AddTool(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Tools() const;
		%feature("autodoc", "1");
		void SetLimit(const TopAbs_ShapeEnum aLimit);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Limit() const;
		%feature("autodoc", "1");
		void SetLimitMode(const Standard_Integer aLimitMode);
		%feature("autodoc", "1");
		Standard_Integer LimitMode() const;
		%feature("autodoc", "1");
		void AddToolCompound(const TopoDS_Shape theShape);

};
%feature("shadow") GEOMAlgo_Splitter::~GEOMAlgo_Splitter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMAlgo_Splitter {
	void _kill_pointed() {
		delete $self;
	}
};
