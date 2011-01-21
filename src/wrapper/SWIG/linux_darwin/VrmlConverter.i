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

%module VrmlConverter
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include VrmlConverter_renames.i


%include VrmlConverter_required_python_modules.i


%include VrmlConverter_dependencies.i


%include VrmlConverter_headers.i


enum VrmlConverter_TypeOfCamera {
	VrmlConverter_NoCamera,
	VrmlConverter_PerspectiveCamera,
	VrmlConverter_OrthographicCamera,
	};

enum VrmlConverter_TypeOfLight {
	VrmlConverter_NoLight,
	VrmlConverter_DirectionLight,
	VrmlConverter_PointLight,
	VrmlConverter_SpotLight,
	};



%nodefaultctor Handle_VrmlConverter_ShadingAspect;
class Handle_VrmlConverter_ShadingAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect(const Handle_VrmlConverter_ShadingAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect(const VrmlConverter_ShadingAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect & operator=(const Handle_VrmlConverter_ShadingAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect & operator=(const VrmlConverter_ShadingAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_VrmlConverter_ShadingAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_ShadingAspect {
	VrmlConverter_ShadingAspect* GetObject() {
	return (VrmlConverter_ShadingAspect*)$self->Access();
	}
};
%feature("shadow") Handle_VrmlConverter_ShadingAspect::~Handle_VrmlConverter_ShadingAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_VrmlConverter_ShadingAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_VrmlConverter_Drawer;
class Handle_VrmlConverter_Drawer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer();
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer(const Handle_VrmlConverter_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer(const VrmlConverter_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer & operator=(const Handle_VrmlConverter_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer & operator=(const VrmlConverter_Drawer *anItem);
		%feature("autodoc", "1");
		static		Handle_VrmlConverter_Drawer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_Drawer {
	VrmlConverter_Drawer* GetObject() {
	return (VrmlConverter_Drawer*)$self->Access();
	}
};
%feature("shadow") Handle_VrmlConverter_Drawer::~Handle_VrmlConverter_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_VrmlConverter_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_VrmlConverter_PointAspect;
class Handle_VrmlConverter_PointAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect(const Handle_VrmlConverter_PointAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect(const VrmlConverter_PointAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect & operator=(const Handle_VrmlConverter_PointAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect & operator=(const VrmlConverter_PointAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_VrmlConverter_PointAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_PointAspect {
	VrmlConverter_PointAspect* GetObject() {
	return (VrmlConverter_PointAspect*)$self->Access();
	}
};
%feature("shadow") Handle_VrmlConverter_PointAspect::~Handle_VrmlConverter_PointAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_VrmlConverter_PointAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_VrmlConverter_LineAspect;
class Handle_VrmlConverter_LineAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect(const Handle_VrmlConverter_LineAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect(const VrmlConverter_LineAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect & operator=(const Handle_VrmlConverter_LineAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect & operator=(const VrmlConverter_LineAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_VrmlConverter_LineAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_LineAspect {
	VrmlConverter_LineAspect* GetObject() {
	return (VrmlConverter_LineAspect*)$self->Access();
	}
};
%feature("shadow") Handle_VrmlConverter_LineAspect::~Handle_VrmlConverter_LineAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_VrmlConverter_LineAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_VrmlConverter_IsoAspect;
class Handle_VrmlConverter_IsoAspect : public Handle_VrmlConverter_LineAspect {
	public:
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect(const Handle_VrmlConverter_IsoAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect(const VrmlConverter_IsoAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect & operator=(const Handle_VrmlConverter_IsoAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect & operator=(const VrmlConverter_IsoAspect *anItem);
		%feature("autodoc", "1");
		static		Handle_VrmlConverter_IsoAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_IsoAspect {
	VrmlConverter_IsoAspect* GetObject() {
	return (VrmlConverter_IsoAspect*)$self->Access();
	}
};
%feature("shadow") Handle_VrmlConverter_IsoAspect::~Handle_VrmlConverter_IsoAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_VrmlConverter_IsoAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_VrmlConverter_Projector;
class Handle_VrmlConverter_Projector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector();
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector(const Handle_VrmlConverter_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector(const VrmlConverter_Projector *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector & operator=(const Handle_VrmlConverter_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector & operator=(const VrmlConverter_Projector *anItem);
		%feature("autodoc", "1");
		static		Handle_VrmlConverter_Projector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_Projector {
	VrmlConverter_Projector* GetObject() {
	return (VrmlConverter_Projector*)$self->Access();
	}
};
%feature("shadow") Handle_VrmlConverter_Projector::~Handle_VrmlConverter_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_VrmlConverter_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_WFDeflectionShape;
class VrmlConverter_WFDeflectionShape {
	public:
		%feature("autodoc", "1");
		VrmlConverter_WFDeflectionShape();
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const TopoDS_Shape aShape, const Handle_VrmlConverter_Drawer &aDrawer);

};
%feature("shadow") VrmlConverter_WFDeflectionShape::~VrmlConverter_WFDeflectionShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_WFDeflectionShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_WFDeflectionRestrictedFace;
class VrmlConverter_WFDeflectionRestrictedFace {
	public:
		%feature("autodoc", "1");
		VrmlConverter_WFDeflectionRestrictedFace();
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddUIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddVIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Quantity_Length Deflection, const Standard_Integer NBUiso, const Standard_Integer NBViso, const Handle_VrmlConverter_Drawer &aDrawer);

};
%feature("shadow") VrmlConverter_WFDeflectionRestrictedFace::~VrmlConverter_WFDeflectionRestrictedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_WFDeflectionRestrictedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_WFRestrictedFace;
class VrmlConverter_WFRestrictedFace {
	public:
		%feature("autodoc", "1");
		VrmlConverter_WFRestrictedFace();
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddUIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void AddVIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Standard_Integer NBUiso, const Standard_Integer NBViso, const Handle_VrmlConverter_Drawer &aDrawer);

};
%feature("shadow") VrmlConverter_WFRestrictedFace::~VrmlConverter_WFRestrictedFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_WFRestrictedFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_ShadedShape;
class VrmlConverter_ShadedShape {
	public:
		%feature("autodoc", "1");
		VrmlConverter_ShadedShape();
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const TopoDS_Shape aShape, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void ComputeNormal(const TopoDS_Face aFace, Poly_Connect & pc, TColgp_Array1OfDir & Nor);

};
%feature("shadow") VrmlConverter_ShadedShape::~VrmlConverter_ShadedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_ShadedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_Drawer;
class VrmlConverter_Drawer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_Drawer();
		%feature("autodoc", "1");
		void SetTypeOfDeflection(const Aspect_TypeOfDeflection aTypeOfDeflection);
		%feature("autodoc", "1");
		Aspect_TypeOfDeflection TypeOfDeflection() const;
		%feature("autodoc", "1");
		void SetMaximalChordialDeviation(const Quantity_Length aChordialDeviation);
		%feature("autodoc", "1");
		Quantity_Length MaximalChordialDeviation() const;
		%feature("autodoc", "1");
		void SetDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		Standard_Real DeviationCoefficient() const;
		%feature("autodoc", "1");
		void SetDiscretisation(const Standard_Integer d);
		%feature("autodoc", "1");
		Standard_Integer Discretisation() const;
		%feature("autodoc", "1");
		void SetMaximalParameterValue(const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real MaximalParameterValue() const;
		%feature("autodoc", "1");
		void SetIsoOnPlane(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean IsoOnPlane() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect UIsoAspect();
		%feature("autodoc", "1");
		void SetUIsoAspect(const Handle_VrmlConverter_IsoAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect VIsoAspect();
		%feature("autodoc", "1");
		void SetVIsoAspect(const Handle_VrmlConverter_IsoAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect FreeBoundaryAspect();
		%feature("autodoc", "1");
		void SetFreeBoundaryAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		void SetFreeBoundaryDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean FreeBoundaryDraw() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect WireAspect();
		%feature("autodoc", "1");
		void SetWireAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		void SetWireDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean WireDraw() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect UnFreeBoundaryAspect();
		%feature("autodoc", "1");
		void SetUnFreeBoundaryAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		void SetUnFreeBoundaryDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean UnFreeBoundaryDraw() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect LineAspect();
		%feature("autodoc", "1");
		void SetLineAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect PointAspect();
		%feature("autodoc", "1");
		void SetPointAspect(const Handle_VrmlConverter_PointAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect ShadingAspect();
		%feature("autodoc", "1");
		void SetShadingAspect(const Handle_VrmlConverter_ShadingAspect &anAspect);
		%feature("autodoc", "1");
		Standard_Boolean DrawHiddenLine() const;
		%feature("autodoc", "1");
		void EnableDrawHiddenLine();
		%feature("autodoc", "1");
		void DisableDrawHiddenLine();
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect HiddenLineAspect();
		%feature("autodoc", "1");
		void SetHiddenLineAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect SeenLineAspect();
		%feature("autodoc", "1");
		void SetSeenLineAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend VrmlConverter_Drawer {
	Handle_VrmlConverter_Drawer GetHandle() {
	return *(Handle_VrmlConverter_Drawer*) &$self;
	}
};
%extend VrmlConverter_Drawer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") VrmlConverter_Drawer::~VrmlConverter_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_ShadingAspect;
class VrmlConverter_ShadingAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_ShadingAspect();
		%feature("autodoc", "1");
		void SetFrontMaterial(const Handle_Vrml_Material &aMaterial);
		%feature("autodoc", "1");
		Handle_Vrml_Material FrontMaterial() const;
		%feature("autodoc", "1");
		void SetShapeHints(const Vrml_ShapeHints &aShapeHints);
		%feature("autodoc", "1");
		Vrml_ShapeHints ShapeHints() const;
		%feature("autodoc", "1");
		void SetHasNormals(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasNormals() const;
		%feature("autodoc", "1");
		void SetHasMaterial(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasMaterial() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend VrmlConverter_ShadingAspect {
	Handle_VrmlConverter_ShadingAspect GetHandle() {
	return *(Handle_VrmlConverter_ShadingAspect*) &$self;
	}
};
%extend VrmlConverter_ShadingAspect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") VrmlConverter_ShadingAspect::~VrmlConverter_ShadingAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_ShadingAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_LineAspect;
class VrmlConverter_LineAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_LineAspect();
		%feature("autodoc", "1");
		VrmlConverter_LineAspect(const Handle_Vrml_Material &aMaterial, const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		void SetMaterial(const Handle_Vrml_Material &aMaterial);
		%feature("autodoc", "1");
		Handle_Vrml_Material Material() const;
		%feature("autodoc", "1");
		void SetHasMaterial(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasMaterial() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend VrmlConverter_LineAspect {
	Handle_VrmlConverter_LineAspect GetHandle() {
	return *(Handle_VrmlConverter_LineAspect*) &$self;
	}
};
%extend VrmlConverter_LineAspect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") VrmlConverter_LineAspect::~VrmlConverter_LineAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_LineAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_IsoAspect;
class VrmlConverter_IsoAspect : public VrmlConverter_LineAspect {
	public:
		%feature("autodoc", "1");
		VrmlConverter_IsoAspect();
		%feature("autodoc", "1");
		VrmlConverter_IsoAspect(const Handle_Vrml_Material &aMaterial, const Standard_Boolean OnOff, const Standard_Integer aNumber);
		%feature("autodoc", "1");
		void SetNumber(const Standard_Integer aNumber);
		%feature("autodoc", "1");
		Standard_Integer Number() const;

};
%extend VrmlConverter_IsoAspect {
	Handle_VrmlConverter_IsoAspect GetHandle() {
	return *(Handle_VrmlConverter_IsoAspect*) &$self;
	}
};
%extend VrmlConverter_IsoAspect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") VrmlConverter_IsoAspect::~VrmlConverter_IsoAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_IsoAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_Projector;
class VrmlConverter_Projector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_Projector(const TopTools_Array1OfShape &Shapes, const Quantity_Length Focus, const Quantity_Length DX, const Quantity_Length DY, const Quantity_Length DZ, const Quantity_Length XUp, const Quantity_Length YUp, const Quantity_Length ZUp, const VrmlConverter_TypeOfCamera Camera=VrmlConverter_NoCamera, const VrmlConverter_TypeOfLight Light=VrmlConverter_NoLight);
		%feature("autodoc", "1");
		void SetCamera(const VrmlConverter_TypeOfCamera aCamera);
		%feature("autodoc", "1");
		VrmlConverter_TypeOfCamera Camera() const;
		%feature("autodoc", "1");
		void SetLight(const VrmlConverter_TypeOfLight aLight);
		%feature("autodoc", "1");
		VrmlConverter_TypeOfLight Light() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string AddToString() {
			std::stringstream s;
			self->Add(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		HLRAlgo_Projector Projector() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend VrmlConverter_Projector {
	Handle_VrmlConverter_Projector GetHandle() {
	return *(Handle_VrmlConverter_Projector*) &$self;
	}
};
%extend VrmlConverter_Projector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") VrmlConverter_Projector::~VrmlConverter_Projector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_Projector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_Curve;
class VrmlConverter_Curve {
	public:
		%feature("autodoc", "1");
		VrmlConverter_Curve();
		%feature("autodoc", "1");
		static		void Add(const Adaptor3d_Curve &aCurve, const Handle_VrmlConverter_Drawer &aDrawer, Standard_OStream & anOStream);
		%feature("autodoc", "1");
		static		void Add(const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, const Handle_VrmlConverter_Drawer &aDrawer, Standard_OStream & anOStream);
		%feature("autodoc", "1");
		static		void Add(const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, Standard_OStream & anOStream, const Standard_Integer aNbPoints);

};
%feature("shadow") VrmlConverter_Curve::~VrmlConverter_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_HLRShape;
class VrmlConverter_HLRShape {
	public:
		%feature("autodoc", "1");
		VrmlConverter_HLRShape();
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const TopoDS_Shape aShape, const Handle_VrmlConverter_Drawer &aDrawer, const Handle_VrmlConverter_Projector &aProjector);

};
%feature("shadow") VrmlConverter_HLRShape::~VrmlConverter_HLRShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_HLRShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_PointAspect;
class VrmlConverter_PointAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_PointAspect();
		%feature("autodoc", "1");
		VrmlConverter_PointAspect(const Handle_Vrml_Material &aMaterial, const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		void SetMaterial(const Handle_Vrml_Material &aMaterial);
		%feature("autodoc", "1");
		Handle_Vrml_Material Material() const;
		%feature("autodoc", "1");
		void SetHasMaterial(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasMaterial() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend VrmlConverter_PointAspect {
	Handle_VrmlConverter_PointAspect GetHandle() {
	return *(Handle_VrmlConverter_PointAspect*) &$self;
	}
};
%extend VrmlConverter_PointAspect {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") VrmlConverter_PointAspect::~VrmlConverter_PointAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_PointAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_WFShape;
class VrmlConverter_WFShape {
	public:
		%feature("autodoc", "1");
		VrmlConverter_WFShape();
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, const TopoDS_Shape aShape, const Handle_VrmlConverter_Drawer &aDrawer);

};
%feature("shadow") VrmlConverter_WFShape::~VrmlConverter_WFShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_WFShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor VrmlConverter_DeflectionCurve;
class VrmlConverter_DeflectionCurve {
	public:
		%feature("autodoc", "1");
		VrmlConverter_DeflectionCurve();
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real U1, const Standard_Real U2, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real aDeflection, const Standard_Real aLimit);
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real aDeflection, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		static		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real U1, const Standard_Real U2, const Standard_Real aDeflection);

};
%feature("shadow") VrmlConverter_DeflectionCurve::~VrmlConverter_DeflectionCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend VrmlConverter_DeflectionCurve {
	void _kill_pointed() {
		delete $self;
	}
};
