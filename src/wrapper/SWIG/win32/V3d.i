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
%module V3d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include V3d_dependencies.i


%include V3d_headers.i

typedef double V3d_Parameter;
typedef V3d_LayerMgr * V3d_LayerMgrPointer;
typedef double V3d_Coordinate;
typedef V3d_View * V3d_ViewPointer;
typedef V3d_Viewer * V3d_ViewerPointer;

enum V3d_TypeOfUpdate {
	V3d_ASAP,
	V3d_WAIT,
	};

enum V3d_TypeOfSurfaceDetail {
	V3d_TEX_NONE,
	V3d_TEX_ENVIRONMENT,
	V3d_TEX_ALL,
	};

enum V3d_TypeOfProjectionModel {
	V3d_TPM_SCREEN,
	V3d_TPM_WALKTHROUGH,
	};

enum V3d_TypeOfShadingModel {
	V3d_COLOR,
	V3d_MULTICOLOR,
	V3d_FLAT,
	V3d_GOURAUD,
	V3d_HIDDEN,
	};

enum V3d_TypeOfVisualization {
	V3d_WIREFRAME,
	V3d_ZBUFFER,
	};

enum V3d_TypeOfPickLight {
	V3d_POSITIONLIGHT,
	V3d_SPACELIGHT,
	V3d_RADIUSTEXTLIGHT,
	V3d_ExtRADIUSLIGHT,
	V3d_IntRADIUSLIGHT,
	V3d_NOTHING,
	};

enum V3d_TypeOfPickCamera {
	V3d_POSITIONCAMERA,
	V3d_SPACECAMERA,
	V3d_RADIUSTEXTCAMERA,
	V3d_ExtRADIUSCAMERA,
	V3d_IntRADIUSCAMERA,
	V3d_NOTHINGCAMERA,
	};

enum V3d_TypeOfBackfacingModel {
	V3d_TOBM_AUTOMATIC,
	V3d_TOBM_ALWAYS_DISPLAYED,
	V3d_TOBM_NEVER_DISPLAYED,
	};

enum V3d_TypeOfOrientation {
	V3d_Xpos,
	V3d_Ypos,
	V3d_Zpos,
	V3d_Xneg,
	V3d_Yneg,
	V3d_Zneg,
	V3d_XposYpos,
	V3d_XposZpos,
	V3d_YposZpos,
	V3d_XnegYneg,
	V3d_XnegYpos,
	V3d_XnegZneg,
	V3d_XnegZpos,
	V3d_YnegZneg,
	V3d_YnegZpos,
	V3d_XposYneg,
	V3d_XposZneg,
	V3d_YposZneg,
	V3d_XposYposZpos,
	V3d_XposYnegZpos,
	V3d_XposYposZneg,
	V3d_XnegYposZpos,
	V3d_XposYnegZneg,
	V3d_XnegYposZneg,
	V3d_XnegYnegZpos,
	V3d_XnegYnegZneg,
	};

enum V3d_TypeOfRepresentation {
	V3d_SIMPLE,
	V3d_COMPLETE,
	V3d_PARTIAL,
	V3d_SAMELAST,
	};

enum V3d_TypeOfZclipping {
	V3d_OFF,
	V3d_BACK,
	V3d_FRONT,
	V3d_SLICE,
	};

enum V3d_TypeOfAxe {
	V3d_X,
	V3d_Y,
	V3d_Z,
	};

enum V3d_TypeOfView {
	V3d_ORTHOGRAPHIC,
	V3d_PERSPECTIVE,
	};

enum V3d_TypeOfLight {
	V3d_AMBIENT,
	V3d_DIRECTIONAL,
	V3d_POSITIONAL,
	V3d_SPOT,
	};



%nodefaultctor Handle_V3d_UnMapped;
class Handle_V3d_UnMapped : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_V3d_UnMapped();
		%feature("autodoc", "1");
		Handle_V3d_UnMapped(const Handle_V3d_UnMapped &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_UnMapped(const V3d_UnMapped *anItem);
		%feature("autodoc", "1");
		Handle_V3d_UnMapped & operator=(const Handle_V3d_UnMapped &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_UnMapped & operator=(const V3d_UnMapped *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_UnMapped const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_UnMapped {
	V3d_UnMapped* GetObject() {
	return (V3d_UnMapped*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_UnMapped::~Handle_V3d_UnMapped %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_UnMapped {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_Plane;
class Handle_V3d_Plane : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_V3d_Plane();
		%feature("autodoc", "1");
		Handle_V3d_Plane(const Handle_V3d_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Plane(const V3d_Plane *anItem);
		%feature("autodoc", "1");
		Handle_V3d_Plane & operator=(const Handle_V3d_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Plane & operator=(const V3d_Plane *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_Plane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_Plane {
	V3d_Plane* GetObject() {
	return (V3d_Plane*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_Plane::~Handle_V3d_Plane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_Plane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_View;
class Handle_V3d_View : public Handle_Viewer_View {
	public:
		%feature("autodoc", "1");
		Handle_V3d_View();
		%feature("autodoc", "1");
		Handle_V3d_View(const Handle_V3d_View &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_View(const V3d_View *anItem);
		%feature("autodoc", "1");
		Handle_V3d_View & operator=(const Handle_V3d_View &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_View & operator=(const V3d_View *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_View const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_View {
	V3d_View* GetObject() {
	return (V3d_View*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_View::~Handle_V3d_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_PerspectiveView;
class Handle_V3d_PerspectiveView : public Handle_V3d_View {
	public:
		%feature("autodoc", "1");
		Handle_V3d_PerspectiveView();
		%feature("autodoc", "1");
		Handle_V3d_PerspectiveView(const Handle_V3d_PerspectiveView &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_PerspectiveView(const V3d_PerspectiveView *anItem);
		%feature("autodoc", "1");
		Handle_V3d_PerspectiveView & operator=(const Handle_V3d_PerspectiveView &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_PerspectiveView & operator=(const V3d_PerspectiveView *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_PerspectiveView const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_PerspectiveView {
	V3d_PerspectiveView* GetObject() {
	return (V3d_PerspectiveView*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_PerspectiveView::~Handle_V3d_PerspectiveView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_PerspectiveView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_Light;
class Handle_V3d_Light : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_V3d_Light();
		%feature("autodoc", "1");
		Handle_V3d_Light(const Handle_V3d_Light &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Light(const V3d_Light *anItem);
		%feature("autodoc", "1");
		Handle_V3d_Light & operator=(const Handle_V3d_Light &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Light & operator=(const V3d_Light *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_Light const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_Light {
	V3d_Light* GetObject() {
	return (V3d_Light*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_Light::~Handle_V3d_Light %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_Light {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_AmbientLight;
class Handle_V3d_AmbientLight : public Handle_V3d_Light {
	public:
		%feature("autodoc", "1");
		Handle_V3d_AmbientLight();
		%feature("autodoc", "1");
		Handle_V3d_AmbientLight(const Handle_V3d_AmbientLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_AmbientLight(const V3d_AmbientLight *anItem);
		%feature("autodoc", "1");
		Handle_V3d_AmbientLight & operator=(const Handle_V3d_AmbientLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_AmbientLight & operator=(const V3d_AmbientLight *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_AmbientLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_AmbientLight {
	V3d_AmbientLight* GetObject() {
	return (V3d_AmbientLight*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_AmbientLight::~Handle_V3d_AmbientLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_AmbientLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_Camera;
class Handle_V3d_Camera : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_V3d_Camera();
		%feature("autodoc", "1");
		Handle_V3d_Camera(const Handle_V3d_Camera &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Camera(const V3d_Camera *anItem);
		%feature("autodoc", "1");
		Handle_V3d_Camera & operator=(const Handle_V3d_Camera &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Camera & operator=(const V3d_Camera *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_Camera const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_Camera {
	V3d_Camera* GetObject() {
	return (V3d_Camera*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_Camera::~Handle_V3d_Camera %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_Camera {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_LayerMgr;
class Handle_V3d_LayerMgr : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_V3d_LayerMgr();
		%feature("autodoc", "1");
		Handle_V3d_LayerMgr(const Handle_V3d_LayerMgr &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_LayerMgr(const V3d_LayerMgr *anItem);
		%feature("autodoc", "1");
		Handle_V3d_LayerMgr & operator=(const Handle_V3d_LayerMgr &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_LayerMgr & operator=(const V3d_LayerMgr *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_LayerMgr const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_LayerMgr {
	V3d_LayerMgr* GetObject() {
	return (V3d_LayerMgr*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_LayerMgr::~Handle_V3d_LayerMgr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_LayerMgr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_CircularGrid;
class Handle_V3d_CircularGrid : public Handle_Aspect_CircularGrid {
	public:
		%feature("autodoc", "1");
		Handle_V3d_CircularGrid();
		%feature("autodoc", "1");
		Handle_V3d_CircularGrid(const Handle_V3d_CircularGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_CircularGrid(const V3d_CircularGrid *anItem);
		%feature("autodoc", "1");
		Handle_V3d_CircularGrid & operator=(const Handle_V3d_CircularGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_CircularGrid & operator=(const V3d_CircularGrid *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_CircularGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_CircularGrid {
	V3d_CircularGrid* GetObject() {
	return (V3d_CircularGrid*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_CircularGrid::~Handle_V3d_CircularGrid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_CircularGrid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_ColorScale;
class Handle_V3d_ColorScale : public Handle_Aspect_ColorScale {
	public:
		%feature("autodoc", "1");
		Handle_V3d_ColorScale();
		%feature("autodoc", "1");
		Handle_V3d_ColorScale(const Handle_V3d_ColorScale &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_ColorScale(const V3d_ColorScale *anItem);
		%feature("autodoc", "1");
		Handle_V3d_ColorScale & operator=(const Handle_V3d_ColorScale &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_ColorScale & operator=(const V3d_ColorScale *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_ColorScale const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_ColorScale {
	V3d_ColorScale* GetObject() {
	return (V3d_ColorScale*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_ColorScale::~Handle_V3d_ColorScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_ColorScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_OrthographicView;
class Handle_V3d_OrthographicView : public Handle_V3d_View {
	public:
		%feature("autodoc", "1");
		Handle_V3d_OrthographicView();
		%feature("autodoc", "1");
		Handle_V3d_OrthographicView(const Handle_V3d_OrthographicView &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_OrthographicView(const V3d_OrthographicView *anItem);
		%feature("autodoc", "1");
		Handle_V3d_OrthographicView & operator=(const Handle_V3d_OrthographicView &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_OrthographicView & operator=(const V3d_OrthographicView *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_OrthographicView const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_OrthographicView {
	V3d_OrthographicView* GetObject() {
	return (V3d_OrthographicView*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_OrthographicView::~Handle_V3d_OrthographicView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_OrthographicView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_PositionLight;
class Handle_V3d_PositionLight : public Handle_V3d_Light {
	public:
		%feature("autodoc", "1");
		Handle_V3d_PositionLight();
		%feature("autodoc", "1");
		Handle_V3d_PositionLight(const Handle_V3d_PositionLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_PositionLight(const V3d_PositionLight *anItem);
		%feature("autodoc", "1");
		Handle_V3d_PositionLight & operator=(const Handle_V3d_PositionLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_PositionLight & operator=(const V3d_PositionLight *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_PositionLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_PositionLight {
	V3d_PositionLight* GetObject() {
	return (V3d_PositionLight*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_PositionLight::~Handle_V3d_PositionLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_PositionLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_SpotLight;
class Handle_V3d_SpotLight : public Handle_V3d_PositionLight {
	public:
		%feature("autodoc", "1");
		Handle_V3d_SpotLight();
		%feature("autodoc", "1");
		Handle_V3d_SpotLight(const Handle_V3d_SpotLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_SpotLight(const V3d_SpotLight *anItem);
		%feature("autodoc", "1");
		Handle_V3d_SpotLight & operator=(const Handle_V3d_SpotLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_SpotLight & operator=(const V3d_SpotLight *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_SpotLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_SpotLight {
	V3d_SpotLight* GetObject() {
	return (V3d_SpotLight*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_SpotLight::~Handle_V3d_SpotLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_SpotLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_Viewer;
class Handle_V3d_Viewer : public Handle_Viewer_Viewer {
	public:
		%feature("autodoc", "1");
		Handle_V3d_Viewer();
		%feature("autodoc", "1");
		Handle_V3d_Viewer(const Handle_V3d_Viewer &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Viewer(const V3d_Viewer *anItem);
		%feature("autodoc", "1");
		Handle_V3d_Viewer & operator=(const Handle_V3d_Viewer &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_Viewer & operator=(const V3d_Viewer *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_Viewer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_Viewer {
	V3d_Viewer* GetObject() {
	return (V3d_Viewer*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_Viewer::~Handle_V3d_Viewer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_Viewer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_DirectionalLight;
class Handle_V3d_DirectionalLight : public Handle_V3d_PositionLight {
	public:
		%feature("autodoc", "1");
		Handle_V3d_DirectionalLight();
		%feature("autodoc", "1");
		Handle_V3d_DirectionalLight(const Handle_V3d_DirectionalLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_DirectionalLight(const V3d_DirectionalLight *anItem);
		%feature("autodoc", "1");
		Handle_V3d_DirectionalLight & operator=(const Handle_V3d_DirectionalLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_DirectionalLight & operator=(const V3d_DirectionalLight *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_DirectionalLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_DirectionalLight {
	V3d_DirectionalLight* GetObject() {
	return (V3d_DirectionalLight*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_DirectionalLight::~Handle_V3d_DirectionalLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_DirectionalLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_RectangularGrid;
class Handle_V3d_RectangularGrid : public Handle_Aspect_RectangularGrid {
	public:
		%feature("autodoc", "1");
		Handle_V3d_RectangularGrid();
		%feature("autodoc", "1");
		Handle_V3d_RectangularGrid(const Handle_V3d_RectangularGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_RectangularGrid(const V3d_RectangularGrid *anItem);
		%feature("autodoc", "1");
		Handle_V3d_RectangularGrid & operator=(const Handle_V3d_RectangularGrid &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_RectangularGrid & operator=(const V3d_RectangularGrid *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_RectangularGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_RectangularGrid {
	V3d_RectangularGrid* GetObject() {
	return (V3d_RectangularGrid*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_RectangularGrid::~Handle_V3d_RectangularGrid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_RectangularGrid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_V3d_PositionalLight;
class Handle_V3d_PositionalLight : public Handle_V3d_PositionLight {
	public:
		%feature("autodoc", "1");
		Handle_V3d_PositionalLight();
		%feature("autodoc", "1");
		Handle_V3d_PositionalLight(const Handle_V3d_PositionalLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_PositionalLight(const V3d_PositionalLight *anItem);
		%feature("autodoc", "1");
		Handle_V3d_PositionalLight & operator=(const Handle_V3d_PositionalLight &aHandle);
		%feature("autodoc", "1");
		Handle_V3d_PositionalLight & operator=(const V3d_PositionalLight *anItem);
		%feature("autodoc", "1");
		static		Handle_V3d_PositionalLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_V3d_PositionalLight {
	V3d_PositionalLight* GetObject() {
	return (V3d_PositionalLight*)$self->Access();
	}
};
%feature("shadow") Handle_V3d_PositionalLight::~Handle_V3d_PositionalLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_V3d_PositionalLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_Camera;
class V3d_Camera : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		V3d_Camera(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void SetPosition(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetAngle(const Quantity_PlaneAngle Angle);
		%feature("autodoc", "1");
		void SetAperture(const Quantity_PlaneAngle Angle);
		%feature("autodoc", "1");
		void SetTarget(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetRadius(const Quantity_Parameter Radius);
		%feature("autodoc", "1");
		void OnHideFace(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void OnSeeFace(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void Tracking(const Handle_V3d_View &aView, const V3d_TypeOfPickCamera WathPick, const Standard_Integer Xpix, const Standard_Integer Ypix);
		%feature("autodoc", "1");
		void AerialPilot(const Handle_V3d_View &aView, const Standard_Integer Xpix, const Standard_Integer Ypix);
		%feature("autodoc", "1");
		void EarthPilot(const Handle_V3d_View &aView, const Standard_Integer Xpix, const Standard_Integer Ypix);
		%feature("autodoc", "1");
		void Move(const Quantity_Parameter Dist);
		%feature("autodoc", "1");
		void GoUp(const Quantity_Parameter Haut);
		%feature("autodoc", "1");
		void Display(const Handle_V3d_View &aView, const V3d_TypeOfRepresentation Representation);
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Position(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Target() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Target(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Aperture() const;
		%feature("autodoc", "1");
		Quantity_Parameter Radius() const;
		%feature("autodoc", "1");
		Standard_Boolean SeeOrHide(const Handle_V3d_View &aView) const;
		%feature("autodoc", "1");
		V3d_TypeOfPickCamera Pick(const Handle_V3d_View &aView, const Standard_Integer Xpix, const Standard_Integer Ypix) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_Camera {
	Handle_V3d_Camera GetHandle() {
	return *(Handle_V3d_Camera*) &$self;
	}
};
%extend V3d_Camera {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_Camera::~V3d_Camera %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_Camera {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_Light;
class V3d_Light : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetColor(const Quantity_TypeOfColor Type, const Quantity_Parameter V1, const Quantity_Parameter V2, const Quantity_Parameter V3);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor Name);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &Name);
		%feature("autodoc","Color(Quantity_TypeOfColor Type) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Color(const Quantity_TypeOfColor Type, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Color(Quantity_NameOfColor & Name) const;
		%feature("autodoc", "1");
		Quantity_Color Color() const;
		%feature("autodoc", "1");
		V3d_TypeOfLight Type() const;
		%feature("autodoc", "1");
		Standard_Boolean Headlight() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_Light {
	Handle_V3d_Light GetHandle() {
	return *(Handle_V3d_Light*) &$self;
	}
};
%extend V3d_Light {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_Light::~V3d_Light %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_Light {
	void _kill_pointed() {
		delete $self;
	}
};
%extend V3d_Light {
	V3d_Light () {}
};


%nodefaultctor V3d_PositionLight;
class V3d_PositionLight : public V3d_Light {
	public:
		%feature("autodoc", "1");
		virtual		void SetPosition(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetTarget(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetRadius(const Quantity_Parameter Radius);
		%feature("autodoc", "1");
		void OnHideFace(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void OnSeeFace(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void Tracking(const Handle_V3d_View &aView, const V3d_TypeOfPickLight WathPick, const Standard_Integer Xpix, const Standard_Integer Ypix);
		%feature("autodoc", "1");
		virtual		void Display(const Handle_V3d_View &aView, const V3d_TypeOfRepresentation Representation=V3d_SIMPLE);
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc", "1");
		virtual		V3d_TypeOfPickLight Pick(const Handle_V3d_View &aView, const Standard_Integer Xpix, const Standard_Integer Ypix) const;
		%feature("autodoc", "1");
		Quantity_Parameter Radius() const;
		%feature("autodoc", "1");
		Standard_Boolean SeeOrHide(const Handle_V3d_View &aView) const;
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Position(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Target() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Target(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_PositionLight {
	Handle_V3d_PositionLight GetHandle() {
	return *(Handle_V3d_PositionLight*) &$self;
	}
};
%extend V3d_PositionLight {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_PositionLight::~V3d_PositionLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_PositionLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_AmbientLight;
class V3d_AmbientLight : public V3d_Light {
	public:
		%feature("autodoc", "1");
		V3d_AmbientLight(const Handle_V3d_Viewer &VM, const Quantity_NameOfColor Color=Quantity_NOC_WHITE);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_AmbientLight {
	Handle_V3d_AmbientLight GetHandle() {
	return *(Handle_V3d_AmbientLight*) &$self;
	}
};
%extend V3d_AmbientLight {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_AmbientLight::~V3d_AmbientLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_AmbientLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_RectangularGrid;
class V3d_RectangularGrid : public Aspect_RectangularGrid {
	public:
		%feature("autodoc", "1");
		V3d_RectangularGrid(const V3d_ViewerPointer &aViewer, const Quantity_Color &aColor, const Quantity_Color &aTenthColor);
		%feature("autodoc", "1");
		virtual		void SetColors(const Quantity_Color &aColor, const Quantity_Color &aTenthColor);
		%feature("autodoc", "1");
		virtual		void Display();
		%feature("autodoc", "1");
		virtual		void Erase() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDisplayed() const;
		%feature("autodoc","GraphicValues() -> [Standard_Real, Standard_Real, Standard_Real]");

		void GraphicValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetGraphicValues(const Standard_Real XSize, const Standard_Real YSize, const Standard_Real OffSet);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_RectangularGrid {
	Handle_V3d_RectangularGrid GetHandle() {
	return *(Handle_V3d_RectangularGrid*) &$self;
	}
};
%extend V3d_RectangularGrid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_RectangularGrid::~V3d_RectangularGrid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_RectangularGrid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_SpotLight;
class V3d_SpotLight : public V3d_PositionLight {
	public:
		%feature("autodoc", "1");
		V3d_SpotLight(const Handle_V3d_Viewer &VM, const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, const V3d_TypeOfOrientation Direction=V3d_XnegYnegZpos, const Quantity_NameOfColor Color=Quantity_NOC_WHITE, const Quantity_Coefficient Attenuation1=1.0e+0, const Quantity_Coefficient Attenuation2=0.0, const Quantity_Coefficient Concentration=1.0e+0, const Quantity_PlaneAngle Angle=5.23599000000000036614267173717962577939033508301e-1);
		%feature("autodoc", "1");
		V3d_SpotLight(const Handle_V3d_Viewer &VM, const V3d_Coordinate Xt, const V3d_Coordinate Yt, const V3d_Coordinate Zt, const V3d_Coordinate Xp, const V3d_Coordinate Yp, const V3d_Coordinate Zp, const Quantity_NameOfColor Color=Quantity_NOC_WHITE, const Quantity_Coefficient Attenuation1=1.0e+0, const Quantity_Coefficient Attenuation2=0.0, const Quantity_Coefficient Concentration=1.0e+0, const Quantity_PlaneAngle Angle=5.23599000000000036614267173717962577939033508301e-1);
		%feature("autodoc", "1");
		virtual		void SetPosition(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetDirection(const Quantity_Parameter Vx, const Quantity_Parameter Vy, const Quantity_Parameter Vz);
		%feature("autodoc", "1");
		void SetDirection(const V3d_TypeOfOrientation Orientation);
		%feature("autodoc", "1");
		void SetAttenuation(const Quantity_Coefficient A1, const Quantity_Coefficient A2);
		%feature("autodoc", "1");
		void SetConcentration(const Quantity_Coefficient C);
		%feature("autodoc", "1");
		void SetAngle(const Quantity_PlaneAngle Angle);
		%feature("autodoc", "1");
		virtual		void Display(const Handle_V3d_View &aView, const V3d_TypeOfRepresentation Representation);
		%feature("autodoc","Direction() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Direction(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Position(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Attenuation(Quantity_Coefficient & A1, Quantity_Coefficient & A2) const;
		%feature("autodoc", "1");
		Quantity_Coefficient Concentration() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_SpotLight {
	Handle_V3d_SpotLight GetHandle() {
	return *(Handle_V3d_SpotLight*) &$self;
	}
};
%extend V3d_SpotLight {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_SpotLight::~V3d_SpotLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_SpotLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_ListOfTransient;
class V3d_ListOfTransient : public TColStd_ListOfTransient {
	public:
		%feature("autodoc", "1");
		V3d_ListOfTransient();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &aTransient) const;
		%feature("autodoc", "1");
		void Remove(const Handle_Standard_Transient &aTransient);

};
%feature("shadow") V3d_ListOfTransient::~V3d_ListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_ListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d;
class V3d {
	public:
		%feature("autodoc", "1");
		V3d();
		%feature("autodoc", "1");
		static		Graphic3d_Vector GetProjAxis(const V3d_TypeOfOrientation Orientation);
		%feature("autodoc", "1");
		static		void ArrowOfRadius(const Handle_Graphic3d_Group &garrow, const V3d_Coordinate X0, const V3d_Coordinate Y0, const V3d_Coordinate Z0, const V3d_Parameter DX, const V3d_Parameter DY, const V3d_Parameter DZ, const Quantity_PlaneAngle Alpha, const V3d_Parameter Lng);
		%feature("autodoc", "1");
		static		void CircleInPlane(const Handle_Graphic3d_Group &gcircle, const V3d_Coordinate X0, const V3d_Coordinate Y0, const V3d_Coordinate Z0, const V3d_Parameter VX, const V3d_Parameter VY, const V3d_Parameter VZ, const V3d_Parameter Radius);
		%feature("autodoc", "1");
		static		void SwitchViewsinWindow(const Handle_V3d_View &aPreviousView, const Handle_V3d_View &aNextView);
		%feature("autodoc", "1");
		static		void DrawSphere(const Handle_V3d_Viewer &aViewer, const Quantity_Length aRadius=1000);
		%feature("autodoc", "1");
		static		void PickGrid(const Handle_V3d_Viewer &aViewer, const Quantity_Length aRadius=1000);
		%feature("autodoc", "1");
		static		void SetPlane(const Handle_V3d_Viewer &aViewer, const Quantity_Length x1, const Quantity_Length y1, const Quantity_Length z1, const Quantity_Length x2, const Quantity_Length y2, const Quantity_Length z2);

};
%feature("shadow") V3d::~V3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_Viewer;
class V3d_Viewer : public Viewer_Viewer {
	public:
		%feature("autodoc", "1");
		V3d_Viewer(const Handle_Aspect_GraphicDevice &Device, const Standard_ExtString aName, const char * aDomain="", const Quantity_Length ViewSize=1.0e+3, const V3d_TypeOfOrientation ViewProj=V3d_XposYnegZpos, const Quantity_NameOfColor ViewBackground=Quantity_NOC_GRAY30, const V3d_TypeOfVisualization Visualization=V3d_ZBUFFER, const V3d_TypeOfShadingModel ShadingModel=V3d_GOURAUD, const V3d_TypeOfUpdate UpdateMode=V3d_WAIT, const Standard_Boolean ComputedMode=1, const Standard_Boolean DefaultComputedMode=1, const V3d_TypeOfSurfaceDetail SurfaceDetail=V3d_TEX_NONE);
		%feature("autodoc", "1");
		Handle_V3d_View CreateView();
		%feature("autodoc", "1");
		Handle_V3d_OrthographicView DefaultOrthographicView();
		%feature("autodoc", "1");
		Handle_V3d_PerspectiveView DefaultPerspectiveView();
		%feature("autodoc", "1");
		void SetViewOn();
		%feature("autodoc", "1");
		void SetViewOn(const Handle_V3d_View &View);
		%feature("autodoc", "1");
		void SetViewOff();
		%feature("autodoc", "1");
		void SetViewOff(const Handle_V3d_View &View);
		%feature("autodoc", "1");
		virtual		void Update();
		%feature("autodoc", "1");
		void UpdateLights();
		%feature("autodoc", "1");
		void Redraw() const;
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void Erase() const;
		%feature("autodoc", "1");
		void UnHighlight() const;
		%feature("autodoc", "1");
		void SetDefaultBackgroundColor(const Quantity_TypeOfColor Type, const Quantity_Parameter V1, const Quantity_Parameter V2, const Quantity_Parameter V3);
		%feature("autodoc", "1");
		void SetDefaultBackgroundColor(const Quantity_NameOfColor Name);
		%feature("autodoc", "1");
		void SetDefaultBackgroundColor(const Quantity_Color &Color);
		%feature("autodoc", "1");
		void SetDefaultViewSize(const Quantity_Length Size);
		%feature("autodoc", "1");
		void SetDefaultViewProj(const V3d_TypeOfOrientation Orientation);
		%feature("autodoc", "1");
		void SetDefaultVisualization(const V3d_TypeOfVisualization Type);
		%feature("autodoc", "1");
		void SetZBufferManagment(const Standard_Boolean Automatic);
		%feature("autodoc", "1");
		Standard_Boolean ZBufferManagment() const;
		%feature("autodoc", "1");
		void SetDefaultShadingModel(const V3d_TypeOfShadingModel Type);
		%feature("autodoc", "1");
		void SetDefaultSurfaceDetail(const V3d_TypeOfSurfaceDetail Type);
		%feature("autodoc", "1");
		void SetDefaultAngle(const Quantity_PlaneAngle Angle);
		%feature("autodoc", "1");
		void SetUpdateMode(const V3d_TypeOfUpdate Mode);
		%feature("autodoc", "1");
		void SetDefaultTypeOfView(const V3d_TypeOfView Type);
		%feature("autodoc", "1");
		void SetPrivilegedPlane(const gp_Ax3 &aPlane);
		%feature("autodoc", "1");
		gp_Ax3 PrivilegedPlane() const;
		%feature("autodoc", "1");
		void DisplayPrivilegedPlane(const Standard_Boolean OnOff, const Quantity_Length aSize=1);
		%feature("autodoc", "1");
		void SetLightOn(const Handle_V3d_Light &MyLight);
		%feature("autodoc", "1");
		void SetLightOn();
		%feature("autodoc", "1");
		void SetLightOff(const Handle_V3d_Light &MyLight);
		%feature("autodoc", "1");
		void SetLightOff();
		%feature("autodoc", "1");
		void DelLight(const Handle_V3d_Light &MyLight);
		%feature("autodoc", "1");
		void SetCurrentSelectedLight(const Handle_V3d_Light &TheLight);
		%feature("autodoc", "1");
		void ClearCurrentSelectedLight();
		%feature("autodoc","DefaultBackgroundColor(Quantity_TypeOfColor Type) -> [Standard_Real, Standard_Real, Standard_Real]");

		void DefaultBackgroundColor(const Quantity_TypeOfColor Type, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Color DefaultBackgroundColor() const;
		%feature("autodoc", "1");
		Quantity_Length DefaultViewSize() const;
		%feature("autodoc", "1");
		V3d_TypeOfOrientation DefaultViewProj() const;
		%feature("autodoc", "1");
		V3d_TypeOfVisualization DefaultVisualization() const;
		%feature("autodoc", "1");
		V3d_TypeOfShadingModel DefaultShadingModel() const;
		%feature("autodoc", "1");
		V3d_TypeOfSurfaceDetail DefaultSurfaceDetail() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle DefaultAngle() const;
		%feature("autodoc", "1");
		V3d_TypeOfUpdate UpdateMode() const;
		%feature("autodoc", "1");
		Standard_Boolean IfMoreViews() const;
		%feature("autodoc", "1");
		void InitActiveViews();
		%feature("autodoc", "1");
		Standard_Boolean MoreActiveViews() const;
		%feature("autodoc", "1");
		void NextActiveViews();
		%feature("autodoc", "1");
		Handle_V3d_View ActiveView() const;
		%feature("autodoc", "1");
		Standard_Boolean LastActiveView() const;
		%feature("autodoc", "1");
		void InitDefinedViews();
		%feature("autodoc", "1");
		Standard_Boolean MoreDefinedViews() const;
		%feature("autodoc", "1");
		void NextDefinedViews();
		%feature("autodoc", "1");
		Handle_V3d_View DefinedView() const;
		%feature("autodoc", "1");
		void InitActiveLights();
		%feature("autodoc", "1");
		Standard_Boolean MoreActiveLights() const;
		%feature("autodoc", "1");
		void NextActiveLights();
		%feature("autodoc", "1");
		Handle_V3d_Light ActiveLight() const;
		%feature("autodoc", "1");
		void InitDefinedLights();
		%feature("autodoc", "1");
		Standard_Boolean MoreDefinedLights() const;
		%feature("autodoc", "1");
		void NextDefinedLights();
		%feature("autodoc", "1");
		Handle_V3d_Light DefinedLight() const;
		%feature("autodoc", "1");
		void InitDefinedPlanes();
		%feature("autodoc", "1");
		Standard_Boolean MoreDefinedPlanes() const;
		%feature("autodoc", "1");
		void NextDefinedPlanes();
		%feature("autodoc", "1");
		Handle_V3d_Plane DefinedPlane() const;
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager Viewer() const;
		%feature("autodoc", "1");
		Handle_V3d_Light CurrentSelectedLight() const;
		%feature("autodoc", "1");
		Standard_Boolean IsGlobalLight(const Handle_V3d_Light &TheLight) const;
		%feature("autodoc", "1");
		Standard_Boolean ComputedMode() const;
		%feature("autodoc", "1");
		Standard_Boolean DefaultComputedMode() const;
		%feature("autodoc", "1");
		void ActivateGrid(const Aspect_GridType aGridType, const Aspect_GridDrawMode aGridDrawMode);
		%feature("autodoc", "1");
		void DeactivateGrid();
		%feature("autodoc", "1");
		void SetGridEcho(const Standard_Boolean showGrid=1);
		%feature("autodoc", "1");
		void SetGridEcho(const Handle_Graphic3d_AspectMarker3d &aMarker);
		%feature("autodoc", "1");
		Standard_Boolean GridEcho() const;
		%feature("autodoc", "1");
		Standard_Boolean IsActive() const;
		%feature("autodoc", "1");
		Handle_Aspect_Grid Grid() const;
		%feature("autodoc", "1");
		Aspect_GridType GridType() const;
		%feature("autodoc", "1");
		Aspect_GridDrawMode GridDrawMode() const;
		%feature("autodoc","RectangularGridValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void RectangularGridValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Quantity_PlaneAngle & RotationAngle) const;
		%feature("autodoc", "1");
		void SetRectangularGridValues(const Quantity_Length XOrigin, const Quantity_Length YOrigin, const Quantity_Length XStep, const Quantity_Length YStep, const Quantity_PlaneAngle RotationAngle);
		%feature("autodoc","CircularGridValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Integer]");

		void CircularGridValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Integer &OutValue, Quantity_PlaneAngle & RotationAngle) const;
		%feature("autodoc", "1");
		void SetCircularGridValues(const Quantity_Length XOrigin, const Quantity_Length YOrigin, const Quantity_Length RadiusStep, const Standard_Integer DivisionNumber, const Quantity_PlaneAngle RotationAngle);
		%feature("autodoc","CircularGridGraphicValues() -> [Standard_Real, Standard_Real]");

		void CircularGridGraphicValues(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetCircularGridGraphicValues(const Quantity_Length Radius, const Quantity_Length OffSet);
		%feature("autodoc","RectangularGridGraphicValues() -> [Standard_Real, Standard_Real, Standard_Real]");

		void RectangularGridGraphicValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetRectangularGridGraphicValues(const Quantity_Length XSize, const Quantity_Length YSize, const Quantity_Length OffSet);
		%feature("autodoc", "1");
		void SetDefaultLights();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_Viewer {
	Handle_V3d_Viewer GetHandle() {
	return *(Handle_V3d_Viewer*) &$self;
	}
};
%extend V3d_Viewer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_Viewer::~V3d_Viewer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_Viewer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_CircularGrid;
class V3d_CircularGrid : public Aspect_CircularGrid {
	public:
		%feature("autodoc", "1");
		V3d_CircularGrid(const V3d_ViewerPointer &aViewer, const Quantity_Color &aColor, const Quantity_Color &aTenthColor);
		%feature("autodoc", "1");
		virtual		void SetColors(const Quantity_Color &aColor, const Quantity_Color &aTenthColor);
		%feature("autodoc", "1");
		virtual		void Display();
		%feature("autodoc", "1");
		virtual		void Erase() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDisplayed() const;
		%feature("autodoc","GraphicValues() -> [Standard_Real, Standard_Real]");

		void GraphicValues(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetGraphicValues(const Standard_Real Radius, const Standard_Real OffSet);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_CircularGrid {
	Handle_V3d_CircularGrid GetHandle() {
	return *(Handle_V3d_CircularGrid*) &$self;
	}
};
%extend V3d_CircularGrid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_CircularGrid::~V3d_CircularGrid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_CircularGrid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_View;
class V3d_View : public Viewer_View {
	public:
		%feature("autodoc", "1");
		void SetWindow(const Handle_Aspect_Window &IdWin);
		%feature("autodoc", "1");
		void SetMagnify(const Handle_Aspect_Window &IdWin, const Handle_V3d_View &aPreviousView, const Standard_Integer x1, const Standard_Integer y1, const Standard_Integer x2, const Standard_Integer y2);
		%feature("autodoc", "1");
		void Remove() const;
		%feature("autodoc", "1");
		virtual		void Update() const;
		%feature("autodoc", "1");
		void Redraw() const;
		%feature("autodoc", "1");
		void Redraw(const Standard_Integer x, const Standard_Integer y, const Standard_Integer width, const Standard_Integer height) const;
		%feature("autodoc", "1");
		void MustBeResized();
		%feature("autodoc", "1");
		void DoMapping();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void UpdateLights() const;
		%feature("autodoc", "1");
		void SetBackgroundColor(const Quantity_TypeOfColor Type, const Quantity_Parameter V1, const Quantity_Parameter V2, const Quantity_Parameter V3);
		%feature("autodoc", "1");
		void SetBackgroundColor(const Quantity_Color &Color);
		%feature("autodoc", "1");
		void SetBackgroundColor(const Quantity_NameOfColor Name);
		%feature("autodoc", "1");
		void SetBackgroundImage(const char * FileName, const Aspect_FillMethod FillStyle=Aspect_FM_CENTERED, const Standard_Boolean update=0);
		%feature("autodoc", "1");
		void SetBgImageStyle(const Aspect_FillMethod FillStyle, const Standard_Boolean update=0);
		%feature("autodoc", "1");
		void SetAxis(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, const Quantity_Parameter Vx, const Quantity_Parameter Vy, const Quantity_Parameter Vz);
		%feature("autodoc", "1");
		void SetShadingModel(const V3d_TypeOfShadingModel Model);
		%feature("autodoc", "1");
		void SetSurfaceDetail(const V3d_TypeOfSurfaceDetail SurfaceDetail);
		%feature("autodoc", "1");
		void SetTextureEnv(const Handle_Graphic3d_TextureEnv &ATexture);
		%feature("autodoc", "1");
		void SetVisualization(const V3d_TypeOfVisualization Mode);
		%feature("autodoc", "1");
		void SetAntialiasingOn();
		%feature("autodoc", "1");
		void SetAntialiasingOff();
		%feature("autodoc", "1");
		void SetZClippingDepth(const Quantity_Length Depth);
		%feature("autodoc", "1");
		void SetZClippingWidth(const Quantity_Length Width);
		%feature("autodoc", "1");
		void SetZClippingType(const V3d_TypeOfZclipping Type);
		%feature("autodoc", "1");
		void SetZCueingDepth(const Quantity_Length Depth);
		%feature("autodoc", "1");
		void SetZCueingWidth(const Quantity_Length Width);
		%feature("autodoc", "1");
		void SetZCueingOn();
		%feature("autodoc", "1");
		void SetZCueingOff();
		%feature("autodoc", "1");
		void SetLightOn(const Handle_V3d_Light &MyLight);
		%feature("autodoc", "1");
		void SetLightOn();
		%feature("autodoc", "1");
		void SetLightOff(const Handle_V3d_Light &MyLight);
		%feature("autodoc", "1");
		void SetLightOff();
		%feature("autodoc", "1");
		Standard_Boolean IsActiveLight(const Handle_V3d_Light &aLight) const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Boolean AnActivity=0);
		%feature("autodoc", "1");
		void SetPlaneOn(const Handle_V3d_Plane &MyPlane);
		%feature("autodoc", "1");
		void SetPlaneOn();
		%feature("autodoc", "1");
		void SetPlaneOff(const Handle_V3d_Plane &MyPlane);
		%feature("autodoc", "1");
		void SetPlaneOff();
		%feature("autodoc", "1");
		Standard_Boolean IsActivePlane(const Handle_V3d_Plane &aPlane) const;
		%feature("autodoc", "1");
		void ZBufferTriedronSetup(const Quantity_NameOfColor XColor=Quantity_NOC_RED, const Quantity_NameOfColor YColor=Quantity_NOC_GREEN, const Quantity_NameOfColor ZColor=Quantity_NOC_BLUE1, const Standard_Real SizeRatio=8.00000000000000044408920985006261616945266723633e-1, const Standard_Real AxisDiametr=5.00000000000000027755575615628913510590791702271e-2, const Standard_Integer NbFacettes=12);
		%feature("autodoc", "1");
		void TriedronDisplay(const Aspect_TypeOfTriedronPosition APosition=Aspect_TOTP_CENTER, const Quantity_NameOfColor AColor=Quantity_NOC_WHITE, const Standard_Real AScale=2.00000000000000004163336342344337026588618755341e-2, const V3d_TypeOfVisualization AMode=V3d_WIREFRAME);
		%feature("autodoc", "1");
		void TriedronErase();
		%feature("autodoc", "1");
		void TriedronEcho(const Aspect_TypeOfTriedronEcho AType=Aspect_TOTE_NONE);
		%feature("autodoc", "1");
		void SetLayerMgr(const Handle_V3d_LayerMgr &aMgr);
		%feature("autodoc", "1");
		void ColorScaleDisplay();
		%feature("autodoc", "1");
		void ColorScaleErase();
		%feature("autodoc", "1");
		Standard_Boolean ColorScaleIsDisplayed() const;
		%feature("autodoc", "1");
		Handle_Aspect_ColorScale ColorScale() const;
		%feature("autodoc", "1");
		void SetFront();
		%feature("autodoc", "1");
		void Rotate(const Quantity_PlaneAngle Ax, const Quantity_PlaneAngle Ay, const Quantity_PlaneAngle Az, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Rotate(const Quantity_PlaneAngle Ax, const Quantity_PlaneAngle Ay, const Quantity_PlaneAngle Az, const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Rotate(const V3d_TypeOfAxe Axe, const Quantity_PlaneAngle Angle, const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Rotate(const V3d_TypeOfAxe Axe, const Quantity_PlaneAngle Angle, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Rotate(const Quantity_PlaneAngle Angle, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Move(const Quantity_Length Dx, const Quantity_Length Dy, const Quantity_Length Dz, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Move(const V3d_TypeOfAxe Axe, const Quantity_Length Length, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Move(const Quantity_Length Length, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Translate(const Quantity_Length Dx, const Quantity_Length Dy, const Quantity_Length Dz, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Translate(const V3d_TypeOfAxe Axe, const Quantity_Length Length, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Translate(const Quantity_Length Length, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		virtual		void Place(const Standard_Integer x, const Standard_Integer y, const Quantity_Factor aZoomFactor=1);
		%feature("autodoc", "1");
		void Turn(const Quantity_PlaneAngle Ax, const Quantity_PlaneAngle Ay, const Quantity_PlaneAngle Az, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Turn(const V3d_TypeOfAxe Axe, const Quantity_PlaneAngle Angle, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void Turn(const Quantity_PlaneAngle Angle, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void SetTwist(const Quantity_PlaneAngle Angle);
		%feature("autodoc", "1");
		void SetEye(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetDepth(const Quantity_Length Depth);
		%feature("autodoc", "1");
		void SetProj(const Quantity_Parameter Vx, const Quantity_Parameter Vy, const Quantity_Parameter Vz);
		%feature("autodoc", "1");
		void SetProj(const V3d_TypeOfOrientation Orientation);
		%feature("autodoc", "1");
		void SetAt(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetUp(const Quantity_Parameter Vx, const Quantity_Parameter Vy, const Quantity_Parameter Vz);
		%feature("autodoc", "1");
		void SetUp(const V3d_TypeOfOrientation Orientation);
		%feature("autodoc", "1");
		void SetViewOrientation(const Visual3d_ViewOrientation &VO);
		%feature("autodoc", "1");
		void SetViewOrientationDefault();
		%feature("autodoc", "1");
		void ResetViewOrientation();
		%feature("autodoc", "1");
		void Panning(const Quantity_Length Dx, const Quantity_Length Dy, const Quantity_Factor aZoomFactor=1, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void SetCenter(const V3d_Coordinate Xc, const V3d_Coordinate Yc);
		%feature("autodoc", "1");
		void SetCenter(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void SetSize(const Quantity_Length Size);
		%feature("autodoc", "1");
		void SetZSize(const Quantity_Length Size);
		%feature("autodoc", "1");
		void SetZoom(const Quantity_Factor Coef, const Standard_Boolean Start=1);
		%feature("autodoc", "1");
		void SetScale(const Quantity_Factor Coef);
		%feature("autodoc", "1");
		void SetAxialScale(const Standard_Real Sx, const Standard_Real Sy, const Standard_Real Sz);
		%feature("autodoc", "1");
		void FitAll(const Quantity_Coefficient Coef=1.0000000000000000208166817117216851329430937767e-2, const Standard_Boolean FitZ=0, const Standard_Boolean update=1);
		%feature("autodoc", "1");
		void ZFitAll(const Quantity_Coefficient Coef=1.0e+0);
		%feature("autodoc", "1");
		void DepthFitAll(const Quantity_Coefficient Aspect=1.0000000000000000208166817117216851329430937767e-2, const Quantity_Coefficient Margin=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		void FitAll(const V3d_Coordinate Umin, const V3d_Coordinate Vmin, const V3d_Coordinate Umax, const V3d_Coordinate Vmax);
		%feature("autodoc", "1");
		virtual		void WindowFit(const Standard_Integer Xmin, const Standard_Integer Ymin, const Standard_Integer Xmax, const Standard_Integer Ymax);
		%feature("autodoc", "1");
		void SetViewingVolume(const Standard_Real Left, const Standard_Real Right, const Standard_Real Bottom, const Standard_Real Top, const Standard_Real ZNear, const Standard_Real ZFar);
		%feature("autodoc", "1");
		void SetViewMapping(const Visual3d_ViewMapping &VM);
		%feature("autodoc", "1");
		void SetViewMappingDefault();
		%feature("autodoc", "1");
		void ResetViewMapping();
		%feature("autodoc", "1");
		void Reset(const Standard_Boolean update=1);
		%feature("autodoc", "1");
		Quantity_Length Convert(const Standard_Integer Vp) const;
		%feature("autodoc","Convert(Standard_Integer Xp, Standard_Integer Yp) -> [Standard_Real, Standard_Real]");

		void Convert(const Standard_Integer Xp, const Standard_Integer Yp, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer Convert(const Quantity_Length Vv) const;
		%feature("autodoc","Convert(V3d_Coordinate Xv, V3d_Coordinate Yv) -> [Standard_Integer, Standard_Integer]");

		void Convert(const V3d_Coordinate Xv, const V3d_Coordinate Yv, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","Convert(Standard_Integer Xp, Standard_Integer Yp) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Convert(const Standard_Integer Xp, const Standard_Integer Yp, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ConvertWithProj(Standard_Integer Xp, Standard_Integer Yp) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void ConvertWithProj(const Standard_Integer Xp, const Standard_Integer Yp, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ConvertToGrid(Standard_Integer Xp, Standard_Integer Yp) -> [Standard_Real, Standard_Real, Standard_Real]");

		void ConvertToGrid(const Standard_Integer Xp, const Standard_Integer Yp, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ConvertToGrid(V3d_Coordinate X, V3d_Coordinate Y, V3d_Coordinate Z) -> [Standard_Real, Standard_Real, Standard_Real]");

		void ConvertToGrid(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Convert(V3d_Coordinate X, V3d_Coordinate Y, V3d_Coordinate Z) -> [Standard_Integer, Standard_Integer]");

		void Convert(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","Project(V3d_Coordinate X, V3d_Coordinate Y, V3d_Coordinate Z) -> [Standard_Real, Standard_Real]");

		void Project(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","BackgroundColor(Quantity_TypeOfColor Type) -> [Standard_Real, Standard_Real, Standard_Real]");

		void BackgroundColor(const Quantity_TypeOfColor Type, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Color BackgroundColor() const;
		%feature("autodoc", "1");
		Quantity_Factor Scale() const;
		%feature("autodoc","AxialScale() -> [Standard_Real, Standard_Real, Standard_Real]");

		void AxialScale(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Center() -> [Standard_Real, Standard_Real]");

		void Center(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Size() -> [Standard_Real, Standard_Real]");

		void Size(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real ZSize() const;
		%feature("autodoc","Eye() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Eye(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","FocalReferencePoint() -> [Standard_Real, Standard_Real, Standard_Real]");

		void FocalReferencePoint(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ProjReferenceAxe(Standard_Integer Xpix, Standard_Integer Ypix) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void ProjReferenceAxe(const Standard_Integer Xpix, const Standard_Integer Ypix, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Length Depth() const;
		%feature("autodoc","Proj() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Proj(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","At() -> [Standard_Real, Standard_Real, Standard_Real]");

		void At(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Up() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Up(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle Twist() const;
		%feature("autodoc", "1");
		V3d_TypeOfShadingModel ShadingModel() const;
		%feature("autodoc", "1");
		V3d_TypeOfSurfaceDetail SurfaceDetail() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv TextureEnv() const;
		%feature("autodoc", "1");
		Standard_Boolean Transparency() const;
		%feature("autodoc", "1");
		V3d_TypeOfVisualization Visualization() const;
		%feature("autodoc", "1");
		Standard_Boolean Antialiasing() const;
		%feature("autodoc","ZCueing() -> [Standard_Real, Standard_Real]");

		Standard_Boolean ZCueing(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ZClipping() -> [Standard_Real, Standard_Real]");

		V3d_TypeOfZclipping ZClipping(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IfMoreLights() const;
		%feature("autodoc", "1");
		void InitActiveLights();
		%feature("autodoc", "1");
		Standard_Boolean MoreActiveLights() const;
		%feature("autodoc", "1");
		void NextActiveLights();
		%feature("autodoc", "1");
		Handle_V3d_Light ActiveLight() const;
		%feature("autodoc", "1");
		Standard_Boolean IfMorePlanes() const;
		%feature("autodoc", "1");
		void InitActivePlanes();
		%feature("autodoc", "1");
		Standard_Boolean MoreActivePlanes() const;
		%feature("autodoc", "1");
		void NextActivePlanes();
		%feature("autodoc", "1");
		Handle_V3d_Plane ActivePlane() const;
		%feature("autodoc", "1");
		Handle_V3d_Viewer Viewer() const;
		%feature("autodoc", "1");
		Standard_Boolean IfWindow() const;
		%feature("autodoc", "1");
		Handle_Aspect_Window Window() const;
		%feature("autodoc", "1");
		V3d_TypeOfView Type() const;
		%feature("autodoc", "1");
		void Pan(const Standard_Integer Dx, const Standard_Integer Dy, const Quantity_Factor aZoomFactor=1);
		%feature("autodoc", "1");
		void Zoom(const Standard_Integer X1, const Standard_Integer Y1, const Standard_Integer X2, const Standard_Integer Y2);
		%feature("autodoc", "1");
		void Zoom(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void AxialScale(const Standard_Integer Dx, const Standard_Integer Dy, const V3d_TypeOfAxe Axis);
		%feature("autodoc", "1");
		void StartRotation(const Standard_Integer X, const Standard_Integer Y, const Quantity_Ratio zRotationThreshold=0.0);
		%feature("autodoc", "1");
		void Rotation(const Standard_Integer X, const Standard_Integer Y);
		%feature("autodoc", "1");
		void SetFocale(const Quantity_Length Focale);
		%feature("autodoc", "1");
		Quantity_Length Focale() const;
		%feature("autodoc", "1");
		Handle_Visual3d_View View() const;
		%feature("autodoc", "1");
		Visual3d_ViewMapping ViewMapping() const;
		%feature("autodoc", "1");
		Visual3d_ViewOrientation ViewOrientation() const;
		%feature("autodoc", "1");
		Standard_Boolean TransientManagerBeginDraw(const Standard_Boolean DoubleBuffer=0, const Standard_Boolean RetainMode=0) const;
		%feature("autodoc", "1");
		void TransientManagerClearDraw() const;
		%feature("autodoc", "1");
		Standard_Boolean TransientManagerBeginAddDraw() const;
		%feature("autodoc", "1");
		void SetAnimationModeOn();
		%feature("autodoc", "1");
		void SetAnimationModeOff();
		%feature("autodoc", "1");
		Standard_Boolean AnimationModeIsOn() const;
		%feature("autodoc", "1");
		void SetAnimationMode(const Standard_Boolean anAnimationFlag=1, const Standard_Boolean aDegenerationFlag=0);
		%feature("autodoc", "1");
		Standard_Boolean AnimationMode(Standard_Boolean & isDegenerate) const;
		%feature("autodoc", "1");
		void SetDegenerateModeOn();
		%feature("autodoc", "1");
		void SetDegenerateModeOff();
		%feature("autodoc", "1");
		Standard_Boolean DegenerateModeIsOn() const;
		%feature("autodoc", "1");
		void SetComputedMode(const Standard_Boolean aMode);
		%feature("autodoc", "1");
		Standard_Boolean ComputedMode() const;
		%feature("autodoc", "1");
		void WindowFitAll(const Standard_Integer Xmin, const Standard_Integer Ymin, const Standard_Integer Xmax, const Standard_Integer Ymax);
		%feature("autodoc", "1");
		virtual		void SetPlotter(const Handle_Graphic3d_Plotter &aPlotter);
		%feature("autodoc", "1");
		void Plot();
		%feature("autodoc", "1");
		void SetGrid(const gp_Ax3 &aPlane, const Handle_Aspect_Grid &aGrid);
		%feature("autodoc", "1");
		void SetGridGraphicValues(const Handle_Aspect_Grid &aGrid);
		%feature("autodoc", "1");
		void SetGridActivity(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		Standard_Real Tumble(const Standard_Integer NbImages=314, const Standard_Boolean AnimationMode=0);
		%feature("autodoc", "1");
		void ScreenCopy(const Handle_PlotMgt_PlotterDriver &aPlotterDriver, const Standard_Boolean fWhiteBackground=1, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean Dump(const char * aFile);
		%feature("autodoc", "1");
		Standard_Boolean Dump(const char * aFile, const Aspect_FormatOfSheetPaper aFormat);
		%feature("autodoc", "1");
		void Print(const Aspect_Handle hPrnDC=0, const Standard_Boolean showDialog=1, const Standard_Boolean showBackground=1, const char * filename=0) const;
		%feature("autodoc", "1");
		Handle_Aspect_PixMap ToPixMap(const Standard_Integer aWidth, const Standard_Integer aHeight, const Standard_Integer aCDepth=24);
		%feature("autodoc", "1");
		void SetProjModel(const V3d_TypeOfProjectionModel amOdel=V3d_TPM_SCREEN);
		%feature("autodoc", "1");
		V3d_TypeOfProjectionModel ProjModel() const;
		%feature("autodoc", "1");
		void SetBackFacingModel(const V3d_TypeOfBackfacingModel aModel=V3d_TOBM_AUTOMATIC);
		%feature("autodoc", "1");
		V3d_TypeOfBackfacingModel BackFacingModel() const;
		%feature("autodoc", "1");
		void EnableDepthTest(const Standard_Boolean enable=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDepthTestEnabled() const;
		%feature("autodoc", "1");
		void EnableGLLight(const Standard_Boolean enable=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGLLightEnabled() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_View {
	Handle_V3d_View GetHandle() {
	return *(Handle_V3d_View*) &$self;
	}
};
%extend V3d_View {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_View::~V3d_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_View {
	void _kill_pointed() {
		delete $self;
	}
};
%extend V3d_View {
	V3d_View () {}
};


%nodefaultctor V3d_OrthographicView;
class V3d_OrthographicView : public V3d_View {
	public:
		%feature("autodoc", "1");
		V3d_OrthographicView(const Handle_V3d_Viewer &VM);
		%feature("autodoc", "1");
		V3d_OrthographicView(const Handle_V3d_Viewer &VM, const Handle_V3d_PerspectiveView &V);
		%feature("autodoc", "1");
		V3d_OrthographicView(const Handle_V3d_Viewer &VM, const Handle_V3d_OrthographicView &V);
		%feature("autodoc", "1");
		Handle_V3d_OrthographicView Copy() const;

};
%extend V3d_OrthographicView {
	Handle_V3d_OrthographicView GetHandle() {
	return *(Handle_V3d_OrthographicView*) &$self;
	}
};
%extend V3d_OrthographicView {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_OrthographicView::~V3d_OrthographicView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_OrthographicView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_UnMapped;
class V3d_UnMapped : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		V3d_UnMapped();
		%feature("autodoc", "1");
		V3d_UnMapped(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_V3d_UnMapped NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_UnMapped {
	Handle_V3d_UnMapped GetHandle() {
	return *(Handle_V3d_UnMapped*) &$self;
	}
};
%extend V3d_UnMapped {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_UnMapped::~V3d_UnMapped %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_UnMapped {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_Plane;
class V3d_Plane : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		V3d_Plane(const Handle_V3d_Viewer &VM, const Quantity_Parameter A=0.0, const Quantity_Parameter B=0.0, const Quantity_Parameter C=1.0e+0, const Quantity_Parameter D=0.0);
		%feature("autodoc", "1");
		void SetPlane(const Quantity_Parameter A, const Quantity_Parameter B, const Quantity_Parameter C, const Quantity_Parameter D);
		%feature("autodoc", "1");
		virtual		void Display(const Handle_V3d_View &aView, const Quantity_Color &aColor=Quantity_NOC_GRAY);
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc","Plane() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Plane(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_Plane {
	Handle_V3d_Plane GetHandle() {
	return *(Handle_V3d_Plane*) &$self;
	}
};
%extend V3d_Plane {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_Plane::~V3d_Plane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_Plane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_PositionalLight;
class V3d_PositionalLight : public V3d_PositionLight {
	public:
		%feature("autodoc", "1");
		V3d_PositionalLight(const Handle_V3d_Viewer &VM, const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z, const Quantity_NameOfColor Color=Quantity_NOC_WHITE, const Quantity_Coefficient Attenuation1=1.0e+0, const Quantity_Coefficient Attenuation2=0.0);
		%feature("autodoc", "1");
		V3d_PositionalLight(const Handle_V3d_Viewer &VM, const V3d_Coordinate Xt, const V3d_Coordinate Yt, const V3d_Coordinate Zt, const V3d_Coordinate Xp, const V3d_Coordinate Yp, const V3d_Coordinate Zp, const Quantity_NameOfColor Color=Quantity_NOC_WHITE, const Quantity_Coefficient Attenuation1=1.0e+0, const Quantity_Coefficient Attenuation2=0.0);
		%feature("autodoc", "1");
		virtual		void SetPosition(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		void SetAttenuation(const Quantity_Coefficient A1, const Quantity_Coefficient A2);
		%feature("autodoc", "1");
		virtual		void Display(const Handle_V3d_View &aView, const V3d_TypeOfRepresentation Representation);
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Position(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Attenuation(Quantity_Coefficient & A1, Quantity_Coefficient & A2) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_PositionalLight {
	Handle_V3d_PositionalLight GetHandle() {
	return *(Handle_V3d_PositionalLight*) &$self;
	}
};
%extend V3d_PositionalLight {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_PositionalLight::~V3d_PositionalLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_PositionalLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_ColorScale;
class V3d_ColorScale : public Aspect_ColorScale {
	public:
		%feature("autodoc", "1");
		V3d_ColorScale(const Handle_V3d_LayerMgr &aMgr);
		%feature("autodoc", "1");
		void Display();
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		virtual		void PaintRect(const Standard_Integer X, const Standard_Integer Y, const Standard_Integer W, const Standard_Integer H, const Quantity_Color &aColor, const Standard_Boolean aFilled=0);
		%feature("autodoc", "1");
		virtual		void PaintText(const TCollection_ExtendedString &aText, const Standard_Integer X, const Standard_Integer Y, const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		Standard_Integer TextWidth(const TCollection_ExtendedString &aText) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer TextHeight(const TCollection_ExtendedString &aText) const;
		%feature("autodoc","TextSize(const AText, Standard_Integer AHeight) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void TextSize(const TCollection_ExtendedString &AText, const Standard_Integer AHeight, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void DrawScale();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_ColorScale {
	Handle_V3d_ColorScale GetHandle() {
	return *(Handle_V3d_ColorScale*) &$self;
	}
};
%extend V3d_ColorScale {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_ColorScale::~V3d_ColorScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_ColorScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_PerspectiveView;
class V3d_PerspectiveView : public V3d_View {
	public:
		%feature("autodoc", "1");
		V3d_PerspectiveView(const Handle_V3d_Viewer &VM);
		%feature("autodoc", "1");
		V3d_PerspectiveView(const Handle_V3d_Viewer &VM, const Handle_V3d_OrthographicView &V);
		%feature("autodoc", "1");
		V3d_PerspectiveView(const Handle_V3d_Viewer &VM, const Handle_V3d_PerspectiveView &V);
		%feature("autodoc", "1");
		Handle_V3d_PerspectiveView Copy() const;
		%feature("autodoc", "1");
		void SetAngle(const Quantity_PlaneAngle Angle);
		%feature("autodoc", "1");
		Quantity_PlaneAngle Angle() const;
		%feature("autodoc", "1");
		void SetPerspective(const Quantity_PlaneAngle Angle, const Standard_Real UVRatio, const Standard_Real ZNear, const Standard_Real ZFar);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_PerspectiveView {
	Handle_V3d_PerspectiveView GetHandle() {
	return *(Handle_V3d_PerspectiveView*) &$self;
	}
};
%extend V3d_PerspectiveView {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_PerspectiveView::~V3d_PerspectiveView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_PerspectiveView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_LayerMgr;
class V3d_LayerMgr : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		V3d_LayerMgr(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		const Handle_Visual3d_Layer & Overlay() const;
		%feature("autodoc", "1");
		Handle_V3d_View View() const;
		%feature("autodoc", "1");
		void ColorScaleDisplay();
		%feature("autodoc", "1");
		void ColorScaleErase();
		%feature("autodoc", "1");
		Standard_Boolean ColorScaleIsDisplayed() const;
		%feature("autodoc", "1");
		Handle_Aspect_ColorScale ColorScale() const;
		%feature("autodoc", "1");
		void Compute();
		%feature("autodoc", "1");
		void Resized();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_LayerMgr {
	Handle_V3d_LayerMgr GetHandle() {
	return *(Handle_V3d_LayerMgr*) &$self;
	}
};
%extend V3d_LayerMgr {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_LayerMgr::~V3d_LayerMgr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_LayerMgr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor V3d_DirectionalLight;
class V3d_DirectionalLight : public V3d_PositionLight {
	public:
		%feature("autodoc", "1");
		V3d_DirectionalLight(const Handle_V3d_Viewer &VM, const V3d_TypeOfOrientation Direction=V3d_XposYposZpos, const Quantity_NameOfColor Color=Quantity_NOC_WHITE, const Standard_Boolean Headlight=0);
		%feature("autodoc", "1");
		V3d_DirectionalLight(const Handle_V3d_Viewer &VM, const V3d_Coordinate Xt, const V3d_Coordinate Yt, const V3d_Coordinate Zt, const V3d_Coordinate Xp, const V3d_Coordinate Yp, const V3d_Coordinate Zp, const Quantity_NameOfColor Color=Quantity_NOC_WHITE, const Standard_Boolean Headlight=0);
		%feature("autodoc", "1");
		void SetDirection(const V3d_TypeOfOrientation Direction);
		%feature("autodoc", "1");
		void SetDirection(const Quantity_Parameter Xm, const Quantity_Parameter Ym, const Quantity_Parameter Zm);
		%feature("autodoc", "1");
		void SetDisplayPosition(const V3d_Coordinate X, const V3d_Coordinate Y, const V3d_Coordinate Z);
		%feature("autodoc", "1");
		virtual		void SetPosition(const V3d_Coordinate Xp, const V3d_Coordinate Yp, const V3d_Coordinate Zp);
		%feature("autodoc", "1");
		virtual		void Display(const Handle_V3d_View &aView, const V3d_TypeOfRepresentation Representation);
		%feature("autodoc","Position() -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		void Position(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","DisplayPosition() -> [Standard_Real, Standard_Real, Standard_Real]");

		void DisplayPosition(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Direction() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Direction(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend V3d_DirectionalLight {
	Handle_V3d_DirectionalLight GetHandle() {
	return *(Handle_V3d_DirectionalLight*) &$self;
	}
};
%extend V3d_DirectionalLight {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") V3d_DirectionalLight::~V3d_DirectionalLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend V3d_DirectionalLight {
	void _kill_pointed() {
		delete $self;
	}
};
