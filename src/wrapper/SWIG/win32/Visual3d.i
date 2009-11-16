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
%module Visual3d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Visual3d_dependencies.i


%include Visual3d_headers.i

typedef Visual3d_ViewManager * Visual3d_ViewManagerPtr;
typedef Visual3d_View * Visual3d_ViewPtr;

enum Visual3d_TypeOfSurfaceDetail {
	Visual3d_TOD_NONE,
	Visual3d_TOD_ENVIRONMENT,
	Visual3d_TOD_ALL,
	};

enum Visual3d_TypeOfModel {
	Visual3d_TOM_NONE,
	Visual3d_TOM_INTERP_COLOR,
	Visual3d_TOM_FACET,
	Visual3d_TOM_VERTEX,
	};

enum Visual3d_TypeOfOrder {
	Visual3d_TOO_TOPFIRST,
	Visual3d_TOO_BOTTOMFIRST,
	};

enum Visual3d_TypeOfBackfacingModel {
	Visual3d_TOBM_AUTOMATIC,
	Visual3d_TOBM_FORCE,
	Visual3d_TOBM_DISABLE,
	};

enum Visual3d_TypeOfProjection {
	Visual3d_TOP_PERSPECTIVE,
	Visual3d_TOP_PARALLEL,
	};

enum Visual3d_TypeOfAnswer {
	Visual3d_TOA_YES,
	Visual3d_TOA_NO,
	Visual3d_TOA_COMPUTE,
	};

enum Visual3d_TypeOfLightSource {
	Visual3d_TOLS_AMBIENT,
	Visual3d_TOLS_DIRECTIONAL,
	Visual3d_TOLS_POSITIONAL,
	Visual3d_TOLS_SPOT,
	};

enum Visual3d_TypeOfVisualization {
	Visual3d_TOV_WIREFRAME,
	Visual3d_TOV_SHADING,
	};



%nodefaultctor Handle_Visual3d_SequenceNodeOfSequenceOfPickPath;
class Handle_Visual3d_SequenceNodeOfSequenceOfPickPath : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_SequenceNodeOfSequenceOfPickPath();
		%feature("autodoc", "1");
		Handle_Visual3d_SequenceNodeOfSequenceOfPickPath(const Handle_Visual3d_SequenceNodeOfSequenceOfPickPath &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_SequenceNodeOfSequenceOfPickPath(const Visual3d_SequenceNodeOfSequenceOfPickPath *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_SequenceNodeOfSequenceOfPickPath & operator=(const Handle_Visual3d_SequenceNodeOfSequenceOfPickPath &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_SequenceNodeOfSequenceOfPickPath & operator=(const Visual3d_SequenceNodeOfSequenceOfPickPath *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_SequenceNodeOfSequenceOfPickPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_SequenceNodeOfSequenceOfPickPath {
	Visual3d_SequenceNodeOfSequenceOfPickPath* GetObject() {
	return (Visual3d_SequenceNodeOfSequenceOfPickPath*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_SequenceNodeOfSequenceOfPickPath::~Handle_Visual3d_SequenceNodeOfSequenceOfPickPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_SequenceNodeOfSequenceOfPickPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_PickError;
class Handle_Visual3d_PickError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_PickError();
		%feature("autodoc", "1");
		Handle_Visual3d_PickError(const Handle_Visual3d_PickError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_PickError(const Visual3d_PickError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_PickError & operator=(const Handle_Visual3d_PickError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_PickError & operator=(const Visual3d_PickError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_PickError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_PickError {
	Visual3d_PickError* GetObject() {
	return (Visual3d_PickError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_PickError::~Handle_Visual3d_PickError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_PickError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane;
class Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane();
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane(const Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane(const Visual3d_ListNodeOfSetListOfSetOfClipPlane *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane & operator=(const Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane & operator=(const Visual3d_ListNodeOfSetListOfSetOfClipPlane *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane {
	Visual3d_ListNodeOfSetListOfSetOfClipPlane* GetObject() {
	return (Visual3d_ListNodeOfSetListOfSetOfClipPlane*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane::~Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ZClippingDefinitionError;
class Handle_Visual3d_ZClippingDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ZClippingDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_ZClippingDefinitionError(const Handle_Visual3d_ZClippingDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ZClippingDefinitionError(const Visual3d_ZClippingDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ZClippingDefinitionError & operator=(const Handle_Visual3d_ZClippingDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ZClippingDefinitionError & operator=(const Visual3d_ZClippingDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ZClippingDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ZClippingDefinitionError {
	Visual3d_ZClippingDefinitionError* GetObject() {
	return (Visual3d_ZClippingDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ZClippingDefinitionError::~Handle_Visual3d_ZClippingDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ZClippingDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_TransformError;
class Handle_Visual3d_TransformError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_TransformError();
		%feature("autodoc", "1");
		Handle_Visual3d_TransformError(const Handle_Visual3d_TransformError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_TransformError(const Visual3d_TransformError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_TransformError & operator=(const Handle_Visual3d_TransformError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_TransformError & operator=(const Visual3d_TransformError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_TransformError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_TransformError {
	Visual3d_TransformError* GetObject() {
	return (Visual3d_TransformError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_TransformError::~Handle_Visual3d_TransformError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_TransformError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_LightDefinitionError;
class Handle_Visual3d_LightDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_LightDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_LightDefinitionError(const Handle_Visual3d_LightDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_LightDefinitionError(const Visual3d_LightDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_LightDefinitionError & operator=(const Handle_Visual3d_LightDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_LightDefinitionError & operator=(const Visual3d_LightDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_LightDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_LightDefinitionError {
	Visual3d_LightDefinitionError* GetObject() {
	return (Visual3d_LightDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_LightDefinitionError::~Handle_Visual3d_LightDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_LightDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_TransientManager;
class Handle_Visual3d_TransientManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_TransientManager();
		%feature("autodoc", "1");
		Handle_Visual3d_TransientManager(const Handle_Visual3d_TransientManager &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientManager(const Visual3d_TransientManager *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientManager & operator=(const Handle_Visual3d_TransientManager &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientManager & operator=(const Visual3d_TransientManager *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_TransientManager {
	Visual3d_TransientManager* GetObject() {
	return (Visual3d_TransientManager*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_TransientManager::~Handle_Visual3d_TransientManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_TransientManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_View;
class Handle_Visual3d_View : public Handle_Graphic3d_DataStructureManager {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_View();
		%feature("autodoc", "1");
		Handle_Visual3d_View(const Handle_Visual3d_View &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_View(const Visual3d_View *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_View & operator=(const Handle_Visual3d_View &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_View & operator=(const Visual3d_View *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_View const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_View {
	Visual3d_View* GetObject() {
	return (Visual3d_View*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_View::~Handle_Visual3d_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ViewManager;
class Handle_Visual3d_ViewManager : public Handle_Graphic3d_StructureManager {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager();
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager(const Handle_Visual3d_ViewManager &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager(const Visual3d_ViewManager *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager & operator=(const Handle_Visual3d_ViewManager &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager & operator=(const Visual3d_ViewManager *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ViewManager {
	Visual3d_ViewManager* GetObject() {
	return (Visual3d_ViewManager*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ViewManager::~Handle_Visual3d_ViewManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ViewManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_LayerDefinitionError;
class Handle_Visual3d_LayerDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_LayerDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_LayerDefinitionError(const Handle_Visual3d_LayerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_LayerDefinitionError(const Visual3d_LayerDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_LayerDefinitionError & operator=(const Handle_Visual3d_LayerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_LayerDefinitionError & operator=(const Visual3d_LayerDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_LayerDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_LayerDefinitionError {
	Visual3d_LayerDefinitionError* GetObject() {
	return (Visual3d_LayerDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_LayerDefinitionError::~Handle_Visual3d_LayerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_LayerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_HSetOfClipPlane;
class Handle_Visual3d_HSetOfClipPlane : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane();
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane(const Handle_Visual3d_HSetOfClipPlane &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane(const Visual3d_HSetOfClipPlane *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane & operator=(const Handle_Visual3d_HSetOfClipPlane &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane & operator=(const Visual3d_HSetOfClipPlane *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_HSetOfClipPlane {
	Visual3d_HSetOfClipPlane* GetObject() {
	return (Visual3d_HSetOfClipPlane*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_HSetOfClipPlane::~Handle_Visual3d_HSetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_HSetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ListNodeOfSetListOfSetOfLight;
class Handle_Visual3d_ListNodeOfSetListOfSetOfLight : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfLight();
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfLight(const Handle_Visual3d_ListNodeOfSetListOfSetOfLight &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfLight(const Visual3d_ListNodeOfSetListOfSetOfLight *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfLight & operator=(const Handle_Visual3d_ListNodeOfSetListOfSetOfLight &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfLight & operator=(const Visual3d_ListNodeOfSetListOfSetOfLight *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ListNodeOfSetListOfSetOfLight {
	Visual3d_ListNodeOfSetListOfSetOfLight* GetObject() {
	return (Visual3d_ListNodeOfSetListOfSetOfLight*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ListNodeOfSetListOfSetOfLight::~Handle_Visual3d_ListNodeOfSetListOfSetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ListNodeOfSetListOfSetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_Light;
class Handle_Visual3d_Light : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_Light();
		%feature("autodoc", "1");
		Handle_Visual3d_Light(const Handle_Visual3d_Light &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_Light(const Visual3d_Light *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_Light & operator=(const Handle_Visual3d_Light &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_Light & operator=(const Visual3d_Light *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_Light const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_Light {
	Visual3d_Light* GetObject() {
	return (Visual3d_Light*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_Light::~Handle_Visual3d_Light %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_Light {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_Layer;
class Handle_Visual3d_Layer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_Layer();
		%feature("autodoc", "1");
		Handle_Visual3d_Layer(const Handle_Visual3d_Layer &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_Layer(const Visual3d_Layer *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_Layer & operator=(const Handle_Visual3d_Layer &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_Layer & operator=(const Visual3d_Layer *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_Layer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_Layer {
	Visual3d_Layer* GetObject() {
	return (Visual3d_Layer*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_Layer::~Handle_Visual3d_Layer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_Layer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ClipDefinitionError;
class Handle_Visual3d_ClipDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ClipDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_ClipDefinitionError(const Handle_Visual3d_ClipDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipDefinitionError(const Visual3d_ClipDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipDefinitionError & operator=(const Handle_Visual3d_ClipDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipDefinitionError & operator=(const Visual3d_ClipDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ClipDefinitionError {
	Visual3d_ClipDefinitionError* GetObject() {
	return (Visual3d_ClipDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ClipDefinitionError::~Handle_Visual3d_ClipDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ClipDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_HSetOfLight;
class Handle_Visual3d_HSetOfLight : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight();
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight(const Handle_Visual3d_HSetOfLight &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight(const Visual3d_HSetOfLight *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight & operator=(const Handle_Visual3d_HSetOfLight &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight & operator=(const Visual3d_HSetOfLight *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_HSetOfLight {
	Visual3d_HSetOfLight* GetObject() {
	return (Visual3d_HSetOfLight*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_HSetOfLight::~Handle_Visual3d_HSetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_HSetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_DepthCueingDefinitionError;
class Handle_Visual3d_DepthCueingDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_DepthCueingDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_DepthCueingDefinitionError(const Handle_Visual3d_DepthCueingDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_DepthCueingDefinitionError(const Visual3d_DepthCueingDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_DepthCueingDefinitionError & operator=(const Handle_Visual3d_DepthCueingDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_DepthCueingDefinitionError & operator=(const Visual3d_DepthCueingDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_DepthCueingDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_DepthCueingDefinitionError {
	Visual3d_DepthCueingDefinitionError* GetObject() {
	return (Visual3d_DepthCueingDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_DepthCueingDefinitionError::~Handle_Visual3d_DepthCueingDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_DepthCueingDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ClipPlane;
class Handle_Visual3d_ClipPlane : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane();
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane(const Handle_Visual3d_ClipPlane &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane(const Visual3d_ClipPlane *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane & operator=(const Handle_Visual3d_ClipPlane &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane & operator=(const Visual3d_ClipPlane *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ClipPlane {
	Visual3d_ClipPlane* GetObject() {
	return (Visual3d_ClipPlane*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ClipPlane::~Handle_Visual3d_ClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ListNodeOfSetListOfSetOfView;
class Handle_Visual3d_ListNodeOfSetListOfSetOfView : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfView();
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfView(const Handle_Visual3d_ListNodeOfSetListOfSetOfView &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfView(const Visual3d_ListNodeOfSetListOfSetOfView *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfView & operator=(const Handle_Visual3d_ListNodeOfSetListOfSetOfView &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfView & operator=(const Visual3d_ListNodeOfSetListOfSetOfView *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ListNodeOfSetListOfSetOfView const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ListNodeOfSetListOfSetOfView {
	Visual3d_ListNodeOfSetListOfSetOfView* GetObject() {
	return (Visual3d_ListNodeOfSetListOfSetOfView*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ListNodeOfSetListOfSetOfView::~Handle_Visual3d_ListNodeOfSetListOfSetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ListNodeOfSetListOfSetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ViewManagerDefinitionError;
class Handle_Visual3d_ViewManagerDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManagerDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManagerDefinitionError(const Handle_Visual3d_ViewManagerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManagerDefinitionError(const Visual3d_ViewManagerDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManagerDefinitionError & operator=(const Handle_Visual3d_ViewManagerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManagerDefinitionError & operator=(const Visual3d_ViewManagerDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManagerDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ViewManagerDefinitionError {
	Visual3d_ViewManagerDefinitionError* GetObject() {
	return (Visual3d_ViewManagerDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ViewManagerDefinitionError::~Handle_Visual3d_ViewManagerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ViewManagerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_HSetOfView;
class Handle_Visual3d_HSetOfView : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView();
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView(const Handle_Visual3d_HSetOfView &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView(const Visual3d_HSetOfView *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView & operator=(const Handle_Visual3d_HSetOfView &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView & operator=(const Visual3d_HSetOfView *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_HSetOfView {
	Visual3d_HSetOfView* GetObject() {
	return (Visual3d_HSetOfView*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_HSetOfView::~Handle_Visual3d_HSetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_HSetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ViewMappingDefinitionError;
class Handle_Visual3d_ViewMappingDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ViewMappingDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_ViewMappingDefinitionError(const Handle_Visual3d_ViewMappingDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewMappingDefinitionError(const Visual3d_ViewMappingDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewMappingDefinitionError & operator=(const Handle_Visual3d_ViewMappingDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewMappingDefinitionError & operator=(const Visual3d_ViewMappingDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewMappingDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ViewMappingDefinitionError {
	Visual3d_ViewMappingDefinitionError* GetObject() {
	return (Visual3d_ViewMappingDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ViewMappingDefinitionError::~Handle_Visual3d_ViewMappingDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ViewMappingDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_TransientDefinitionError;
class Handle_Visual3d_TransientDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_TransientDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_TransientDefinitionError(const Handle_Visual3d_TransientDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientDefinitionError(const Visual3d_TransientDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientDefinitionError & operator=(const Handle_Visual3d_TransientDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientDefinitionError & operator=(const Visual3d_TransientDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_TransientDefinitionError {
	Visual3d_TransientDefinitionError* GetObject() {
	return (Visual3d_TransientDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_TransientDefinitionError::~Handle_Visual3d_TransientDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_TransientDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_HSequenceOfPickPath;
class Handle_Visual3d_HSequenceOfPickPath : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath();
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath(const Handle_Visual3d_HSequenceOfPickPath &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath(const Visual3d_HSequenceOfPickPath *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath & operator=(const Handle_Visual3d_HSequenceOfPickPath &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath & operator=(const Visual3d_HSequenceOfPickPath *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_HSequenceOfPickPath {
	Visual3d_HSequenceOfPickPath* GetObject() {
	return (Visual3d_HSequenceOfPickPath*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_HSequenceOfPickPath::~Handle_Visual3d_HSequenceOfPickPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_HSequenceOfPickPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ViewOrientationDefinitionError;
class Handle_Visual3d_ViewOrientationDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ViewOrientationDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_ViewOrientationDefinitionError(const Handle_Visual3d_ViewOrientationDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewOrientationDefinitionError(const Visual3d_ViewOrientationDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewOrientationDefinitionError & operator=(const Handle_Visual3d_ViewOrientationDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewOrientationDefinitionError & operator=(const Visual3d_ViewOrientationDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewOrientationDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ViewOrientationDefinitionError {
	Visual3d_ViewOrientationDefinitionError* GetObject() {
	return (Visual3d_ViewOrientationDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ViewOrientationDefinitionError::~Handle_Visual3d_ViewOrientationDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ViewOrientationDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ViewDefinitionError;
class Handle_Visual3d_ViewDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ViewDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_ViewDefinitionError(const Handle_Visual3d_ViewDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewDefinitionError(const Visual3d_ViewDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewDefinitionError & operator=(const Handle_Visual3d_ViewDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewDefinitionError & operator=(const Visual3d_ViewDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ViewDefinitionError {
	Visual3d_ViewDefinitionError* GetObject() {
	return (Visual3d_ViewDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ViewDefinitionError::~Handle_Visual3d_ViewDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ViewDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Visual3d_ContextPickDefinitionError;
class Handle_Visual3d_ContextPickDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Visual3d_ContextPickDefinitionError();
		%feature("autodoc", "1");
		Handle_Visual3d_ContextPickDefinitionError(const Handle_Visual3d_ContextPickDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ContextPickDefinitionError(const Visual3d_ContextPickDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ContextPickDefinitionError & operator=(const Handle_Visual3d_ContextPickDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Visual3d_ContextPickDefinitionError & operator=(const Visual3d_ContextPickDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Visual3d_ContextPickDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Visual3d_ContextPickDefinitionError {
	Visual3d_ContextPickDefinitionError* GetObject() {
	return (Visual3d_ContextPickDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Visual3d_ContextPickDefinitionError::~Handle_Visual3d_ContextPickDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Visual3d_ContextPickDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetIteratorOfSetOfLight;
class Visual3d_SetIteratorOfSetOfLight {
	public:
		%feature("autodoc", "1");
		Visual3d_SetIteratorOfSetOfLight();
		%feature("autodoc", "1");
		Visual3d_SetIteratorOfSetOfLight(const Visual3d_SetOfLight &S);
		%feature("autodoc", "1");
		void Initialize(const Visual3d_SetOfLight &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Visual3d_Light & Value() const;

};
%feature("shadow") Visual3d_SetIteratorOfSetOfLight::~Visual3d_SetIteratorOfSetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetIteratorOfSetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ContextPick;
class Visual3d_ContextPick {
	public:
		%feature("autodoc", "1");
		Visual3d_ContextPick();
		%feature("autodoc", "1");
		Visual3d_ContextPick(const Standard_Real Aperture, const Standard_Integer Depth, const Visual3d_TypeOfOrder Order);
		%feature("autodoc", "1");
		void SetAperture(const Standard_Real Aperture);
		%feature("autodoc", "1");
		void SetDepth(const Standard_Integer Depth);
		%feature("autodoc", "1");
		void SetOrder(const Visual3d_TypeOfOrder Order);
		%feature("autodoc", "1");
		Standard_Real Aperture() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		Visual3d_TypeOfOrder Order() const;

};
%feature("shadow") Visual3d_ContextPick::~Visual3d_ContextPick %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ContextPick {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetListOfSetOfView;
class Visual3d_SetListOfSetOfView {
	public:
		%feature("autodoc", "1");
		Visual3d_SetListOfSetOfView();
		%feature("autodoc", "1");
		void Assign(const Visual3d_SetListOfSetOfView &Other);
		%feature("autodoc", "1");
		void operator=(const Visual3d_SetListOfSetOfView &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Visual3d_View &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Visual3d_View &I, Visual3d_ListIteratorOfSetListOfSetOfView & theIt);
		%feature("autodoc", "1");
		void Prepend(Visual3d_SetListOfSetOfView & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Visual3d_View &I);
		%feature("autodoc", "1");
		void Append(const Handle_Visual3d_View &I, Visual3d_ListIteratorOfSetListOfSetOfView & theIt);
		%feature("autodoc", "1");
		void Append(Visual3d_SetListOfSetOfView & Other);
		%feature("autodoc", "1");
		Handle_Visual3d_View & First() const;
		%feature("autodoc", "1");
		Handle_Visual3d_View & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Visual3d_ListIteratorOfSetListOfSetOfView & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Visual3d_View &I, Visual3d_ListIteratorOfSetListOfSetOfView & It);
		%feature("autodoc", "1");
		void InsertBefore(Visual3d_SetListOfSetOfView & Other, Visual3d_ListIteratorOfSetListOfSetOfView & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Visual3d_View &I, Visual3d_ListIteratorOfSetListOfSetOfView & It);
		%feature("autodoc", "1");
		void InsertAfter(Visual3d_SetListOfSetOfView & Other, Visual3d_ListIteratorOfSetListOfSetOfView & It);

};
%feature("shadow") Visual3d_SetListOfSetOfView::~Visual3d_SetListOfSetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetListOfSetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_TransformError;
class Visual3d_TransformError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_TransformError();
		%feature("autodoc", "1");
		Visual3d_TransformError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_TransformError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_TransformError {
	Handle_Visual3d_TransformError GetHandle() {
	return *(Handle_Visual3d_TransformError*) &$self;
	}
};
%extend Visual3d_TransformError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_TransformError::~Visual3d_TransformError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_TransformError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_PickPath;
class Visual3d_PickPath {
	public:
		%feature("autodoc", "1");
		Visual3d_PickPath();
		%feature("autodoc", "1");
		Visual3d_PickPath(const Standard_Integer AElemNumber, const Standard_Integer APickId, const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		void SetElementNumber(const Standard_Integer AElemNumber);
		%feature("autodoc", "1");
		void SetPickIdentifier(const Standard_Integer APickId);
		%feature("autodoc", "1");
		void SetStructIdentifier(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		Standard_Integer ElementNumber() const;
		%feature("autodoc", "1");
		Standard_Integer PickIdentifier() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure StructIdentifier() const;

};
%feature("shadow") Visual3d_PickPath::~Visual3d_PickPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_PickPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_LayerDefinitionError;
class Visual3d_LayerDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_LayerDefinitionError();
		%feature("autodoc", "1");
		Visual3d_LayerDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_LayerDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_LayerDefinitionError {
	Handle_Visual3d_LayerDefinitionError GetHandle() {
	return *(Handle_Visual3d_LayerDefinitionError*) &$self;
	}
};
%extend Visual3d_LayerDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_LayerDefinitionError::~Visual3d_LayerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_LayerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_DepthCueingDefinitionError;
class Visual3d_DepthCueingDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_DepthCueingDefinitionError();
		%feature("autodoc", "1");
		Visual3d_DepthCueingDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_DepthCueingDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_DepthCueingDefinitionError {
	Handle_Visual3d_DepthCueingDefinitionError GetHandle() {
	return *(Handle_Visual3d_DepthCueingDefinitionError*) &$self;
	}
};
%extend Visual3d_DepthCueingDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_DepthCueingDefinitionError::~Visual3d_DepthCueingDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_DepthCueingDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ViewMapping;
class Visual3d_ViewMapping {
	public:
		%feature("autodoc", "1");
		Visual3d_ViewMapping();
		%feature("autodoc", "1");
		Visual3d_ViewMapping(const Visual3d_TypeOfProjection AType, const Graphic3d_Vertex &PRP, const Standard_Real BPD, const Standard_Real FPD, const Standard_Real VPD, const Standard_Real WUmin, const Standard_Real WVmin, const Standard_Real WUmax, const Standard_Real WVmax);
		%feature("autodoc", "1");
		void SetBackPlaneDistance(const Standard_Real BPD);
		%feature("autodoc", "1");
		void SetFrontPlaneDistance(const Standard_Real FPD);
		%feature("autodoc", "1");
		void SetProjection(const Visual3d_TypeOfProjection AType);
		%feature("autodoc", "1");
		void SetProjectionReferencePoint(const Graphic3d_Vertex &PRP);
		%feature("autodoc", "1");
		void SetViewPlaneDistance(const Standard_Real VPD);
		%feature("autodoc", "1");
		void SetWindowLimit(const Standard_Real Umin, const Standard_Real Vmin, const Standard_Real Umax, const Standard_Real Vmax);
		%feature("autodoc", "1");
		void SetCustomProjectionMatrix(const Handle_TColStd_HArray2OfReal &Mat);
		%feature("autodoc", "1");
		Standard_Real BackPlaneDistance() const;
		%feature("autodoc", "1");
		Standard_Real FrontPlaneDistance() const;
		%feature("autodoc", "1");
		Visual3d_TypeOfProjection Projection() const;
		%feature("autodoc", "1");
		Graphic3d_Vertex ProjectionReferencePoint() const;
		%feature("autodoc", "1");
		Standard_Real ViewPlaneDistance() const;
		%feature("autodoc","WindowLimit() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void WindowLimit(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCustomMatrix() const;

};
%feature("shadow") Visual3d_ViewMapping::~Visual3d_ViewMapping %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ViewMapping {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_TransientDefinitionError;
class Visual3d_TransientDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_TransientDefinitionError();
		%feature("autodoc", "1");
		Visual3d_TransientDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_TransientDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_TransientDefinitionError {
	Handle_Visual3d_TransientDefinitionError GetHandle() {
	return *(Handle_Visual3d_TransientDefinitionError*) &$self;
	}
};
%extend Visual3d_TransientDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_TransientDefinitionError::~Visual3d_TransientDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_TransientDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ContextView;
class Visual3d_ContextView {
	public:
		%feature("autodoc", "1");
		Visual3d_ContextView();
		%feature("autodoc", "1");
		void SetSurfaceDetail(const Visual3d_TypeOfSurfaceDetail TOSD);
		%feature("autodoc", "1");
		void SetTextureEnv(const Handle_Graphic3d_TextureEnv &ATexture);
		%feature("autodoc", "1");
		void SetAliasingOn();
		%feature("autodoc", "1");
		void SetAliasingOff();
		%feature("autodoc", "1");
		void SetDepthCueingBackPlane(const Standard_Real ABack);
		%feature("autodoc", "1");
		void SetDepthCueingFrontPlane(const Standard_Real ABack);
		%feature("autodoc", "1");
		void SetDepthCueingOn();
		%feature("autodoc", "1");
		void SetDepthCueingOff();
		%feature("autodoc", "1");
		void SetClipPlaneOn(const Handle_Visual3d_ClipPlane &AClipPlane);
		%feature("autodoc", "1");
		void SetClipPlaneOff(const Handle_Visual3d_ClipPlane &AClipPlane);
		%feature("autodoc", "1");
		void SetLightOn(const Handle_Visual3d_Light &ALight);
		%feature("autodoc", "1");
		void SetLightOff(const Handle_Visual3d_Light &ALight);
		%feature("autodoc", "1");
		void SetModel(const Visual3d_TypeOfModel AModel);
		%feature("autodoc", "1");
		void SetVisualization(const Visual3d_TypeOfVisualization AVisual);
		%feature("autodoc", "1");
		void SetZClippingBackPlane(const Standard_Real ABack);
		%feature("autodoc", "1");
		void SetZClippingFrontPlane(const Standard_Real AFront);
		%feature("autodoc", "1");
		void SetZClippingOn();
		%feature("autodoc", "1");
		void SetZClippingOff();
		%feature("autodoc", "1");
		void SetFrontZClippingOn();
		%feature("autodoc", "1");
		void SetFrontZClippingOff();
		%feature("autodoc", "1");
		void SetBackZClippingOn();
		%feature("autodoc", "1");
		void SetBackZClippingOff();
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane ActivatedClipPlanes() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfActivatedClipPlanes() const;
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane ActivatedClipPlane(const Standard_Integer AnIndex) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight ActivatedLights() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfActivatedLights() const;
		%feature("autodoc", "1");
		Handle_Visual3d_Light ActivatedLight(const Standard_Integer AnIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean AliasingIsOn() const;
		%feature("autodoc", "1");
		Standard_Boolean BackZClippingIsOn() const;
		%feature("autodoc", "1");
		Standard_Real DepthCueingBackPlane() const;
		%feature("autodoc", "1");
		Standard_Real DepthCueingFrontPlane() const;
		%feature("autodoc", "1");
		Standard_Boolean DepthCueingIsOn() const;
		%feature("autodoc", "1");
		Standard_Boolean FrontZClippingIsOn() const;
		%feature("autodoc", "1");
		Visual3d_TypeOfModel Model() const;
		%feature("autodoc", "1");
		Visual3d_TypeOfVisualization Visualization() const;
		%feature("autodoc", "1");
		Standard_Real ZClippingBackPlane() const;
		%feature("autodoc", "1");
		Standard_Real ZClippingFrontPlane() const;
		%feature("autodoc", "1");
		Visual3d_TypeOfSurfaceDetail SurfaceDetail() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv TextureEnv() const;

};
%feature("shadow") Visual3d_ContextView::~Visual3d_ContextView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ContextView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ListNodeOfSetListOfSetOfClipPlane;
class Visual3d_ListNodeOfSetListOfSetOfClipPlane : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Visual3d_ListNodeOfSetListOfSetOfClipPlane(const Handle_Visual3d_ClipPlane &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ListNodeOfSetListOfSetOfClipPlane {
	Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane GetHandle() {
	return *(Handle_Visual3d_ListNodeOfSetListOfSetOfClipPlane*) &$self;
	}
};
%extend Visual3d_ListNodeOfSetListOfSetOfClipPlane {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ListNodeOfSetListOfSetOfClipPlane::~Visual3d_ListNodeOfSetListOfSetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ListNodeOfSetListOfSetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ListIteratorOfSetListOfSetOfLight;
class Visual3d_ListIteratorOfSetListOfSetOfLight {
	public:
		%feature("autodoc", "1");
		Visual3d_ListIteratorOfSetListOfSetOfLight();
		%feature("autodoc", "1");
		Visual3d_ListIteratorOfSetListOfSetOfLight(const Visual3d_SetListOfSetOfLight &L);
		%feature("autodoc", "1");
		void Initialize(const Visual3d_SetListOfSetOfLight &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Visual3d_Light & Value() const;

};
%feature("shadow") Visual3d_ListIteratorOfSetListOfSetOfLight::~Visual3d_ListIteratorOfSetListOfSetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ListIteratorOfSetListOfSetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ListNodeOfSetListOfSetOfLight;
class Visual3d_ListNodeOfSetListOfSetOfLight : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Visual3d_ListNodeOfSetListOfSetOfLight(const Handle_Visual3d_Light &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Visual3d_Light & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ListNodeOfSetListOfSetOfLight {
	Handle_Visual3d_ListNodeOfSetListOfSetOfLight GetHandle() {
	return *(Handle_Visual3d_ListNodeOfSetListOfSetOfLight*) &$self;
	}
};
%extend Visual3d_ListNodeOfSetListOfSetOfLight {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ListNodeOfSetListOfSetOfLight::~Visual3d_ListNodeOfSetListOfSetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ListNodeOfSetListOfSetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ViewOrientationDefinitionError;
class Visual3d_ViewOrientationDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_ViewOrientationDefinitionError();
		%feature("autodoc", "1");
		Visual3d_ViewOrientationDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewOrientationDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ViewOrientationDefinitionError {
	Handle_Visual3d_ViewOrientationDefinitionError GetHandle() {
	return *(Handle_Visual3d_ViewOrientationDefinitionError*) &$self;
	}
};
%extend Visual3d_ViewOrientationDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ViewOrientationDefinitionError::~Visual3d_ViewOrientationDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ViewOrientationDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ViewManagerDefinitionError;
class Visual3d_ViewManagerDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_ViewManagerDefinitionError();
		%feature("autodoc", "1");
		Visual3d_ViewManagerDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManagerDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ViewManagerDefinitionError {
	Handle_Visual3d_ViewManagerDefinitionError GetHandle() {
	return *(Handle_Visual3d_ViewManagerDefinitionError*) &$self;
	}
};
%extend Visual3d_ViewManagerDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ViewManagerDefinitionError::~Visual3d_ViewManagerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ViewManagerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetListOfSetOfLight;
class Visual3d_SetListOfSetOfLight {
	public:
		%feature("autodoc", "1");
		Visual3d_SetListOfSetOfLight();
		%feature("autodoc", "1");
		void Assign(const Visual3d_SetListOfSetOfLight &Other);
		%feature("autodoc", "1");
		void operator=(const Visual3d_SetListOfSetOfLight &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Visual3d_Light &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Visual3d_Light &I, Visual3d_ListIteratorOfSetListOfSetOfLight & theIt);
		%feature("autodoc", "1");
		void Prepend(Visual3d_SetListOfSetOfLight & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Visual3d_Light &I);
		%feature("autodoc", "1");
		void Append(const Handle_Visual3d_Light &I, Visual3d_ListIteratorOfSetListOfSetOfLight & theIt);
		%feature("autodoc", "1");
		void Append(Visual3d_SetListOfSetOfLight & Other);
		%feature("autodoc", "1");
		Handle_Visual3d_Light & First() const;
		%feature("autodoc", "1");
		Handle_Visual3d_Light & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Visual3d_ListIteratorOfSetListOfSetOfLight & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Visual3d_Light &I, Visual3d_ListIteratorOfSetListOfSetOfLight & It);
		%feature("autodoc", "1");
		void InsertBefore(Visual3d_SetListOfSetOfLight & Other, Visual3d_ListIteratorOfSetListOfSetOfLight & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Visual3d_Light &I, Visual3d_ListIteratorOfSetListOfSetOfLight & It);
		%feature("autodoc", "1");
		void InsertAfter(Visual3d_SetListOfSetOfLight & Other, Visual3d_ListIteratorOfSetListOfSetOfLight & It);

};
%feature("shadow") Visual3d_SetListOfSetOfLight::~Visual3d_SetListOfSetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetListOfSetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ListNodeOfSetListOfSetOfView;
class Visual3d_ListNodeOfSetListOfSetOfView : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Visual3d_ListNodeOfSetListOfSetOfView(const Handle_Visual3d_View &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Visual3d_View & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ListNodeOfSetListOfSetOfView {
	Handle_Visual3d_ListNodeOfSetListOfSetOfView GetHandle() {
	return *(Handle_Visual3d_ListNodeOfSetListOfSetOfView*) &$self;
	}
};
%extend Visual3d_ListNodeOfSetListOfSetOfView {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ListNodeOfSetListOfSetOfView::~Visual3d_ListNodeOfSetListOfSetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ListNodeOfSetListOfSetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetListOfSetOfClipPlane;
class Visual3d_SetListOfSetOfClipPlane {
	public:
		%feature("autodoc", "1");
		Visual3d_SetListOfSetOfClipPlane();
		%feature("autodoc", "1");
		void Assign(const Visual3d_SetListOfSetOfClipPlane &Other);
		%feature("autodoc", "1");
		void operator=(const Visual3d_SetListOfSetOfClipPlane &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Visual3d_ClipPlane &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Visual3d_ClipPlane &I, Visual3d_ListIteratorOfSetListOfSetOfClipPlane & theIt);
		%feature("autodoc", "1");
		void Prepend(Visual3d_SetListOfSetOfClipPlane & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Visual3d_ClipPlane &I);
		%feature("autodoc", "1");
		void Append(const Handle_Visual3d_ClipPlane &I, Visual3d_ListIteratorOfSetListOfSetOfClipPlane & theIt);
		%feature("autodoc", "1");
		void Append(Visual3d_SetListOfSetOfClipPlane & Other);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane & First() const;
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Visual3d_ListIteratorOfSetListOfSetOfClipPlane & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Visual3d_ClipPlane &I, Visual3d_ListIteratorOfSetListOfSetOfClipPlane & It);
		%feature("autodoc", "1");
		void InsertBefore(Visual3d_SetListOfSetOfClipPlane & Other, Visual3d_ListIteratorOfSetListOfSetOfClipPlane & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Visual3d_ClipPlane &I, Visual3d_ListIteratorOfSetListOfSetOfClipPlane & It);
		%feature("autodoc", "1");
		void InsertAfter(Visual3d_SetListOfSetOfClipPlane & Other, Visual3d_ListIteratorOfSetListOfSetOfClipPlane & It);

};
%feature("shadow") Visual3d_SetListOfSetOfClipPlane::~Visual3d_SetListOfSetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetListOfSetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_HSetOfView;
class Visual3d_HSetOfView : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_HSetOfView();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Visual3d_View &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Visual3d_View &T);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView Union(const Handle_Visual3d_HSetOfView &B) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView Intersection(const Handle_Visual3d_HSetOfView &B) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView Difference(const Handle_Visual3d_HSetOfView &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Visual3d_View &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_Visual3d_HSetOfView &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_Visual3d_HSetOfView &S) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView ShallowCopy() const;
		%feature("autodoc", "1");
		const Visual3d_SetOfView & Set() const;
		%feature("autodoc", "1");
		Visual3d_SetOfView & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_HSetOfView {
	Handle_Visual3d_HSetOfView GetHandle() {
	return *(Handle_Visual3d_HSetOfView*) &$self;
	}
};
%extend Visual3d_HSetOfView {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_HSetOfView::~Visual3d_HSetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_HSetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetIteratorOfSetOfClipPlane;
class Visual3d_SetIteratorOfSetOfClipPlane {
	public:
		%feature("autodoc", "1");
		Visual3d_SetIteratorOfSetOfClipPlane();
		%feature("autodoc", "1");
		Visual3d_SetIteratorOfSetOfClipPlane(const Visual3d_SetOfClipPlane &S);
		%feature("autodoc", "1");
		void Initialize(const Visual3d_SetOfClipPlane &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Visual3d_ClipPlane & Value() const;

};
%feature("shadow") Visual3d_SetIteratorOfSetOfClipPlane::~Visual3d_SetIteratorOfSetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetIteratorOfSetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ViewManager;
class Visual3d_ViewManager : public Graphic3d_StructureManager {
	public:
		%feature("autodoc", "1");
		Visual3d_ViewManager(const Handle_Aspect_GraphicDevice &aDevice);
		%feature("autodoc", "1");
		void Activate();
		%feature("autodoc", "1");
		void Deactivate();
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		void Erase();
		%feature("autodoc", "1");
		void Redraw() const;
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		virtual		void Update() const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView ActivatedView() const;
		%feature("autodoc","ConvertCoord(const AWindow, const AVertex) -> [Standard_IntegerStandard_Integer]");
		void ConvertCoord(const Handle_Aspect_Window &AWindow, const Graphic3d_Vertex &AVertex, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Graphic3d_Vertex ConvertCoord(const Handle_Aspect_Window &AWindow, const Standard_Integer AU, const Standard_Integer AV) const;
		%feature("autodoc", "1");
		void ConvertCoordWithProj(const Handle_Aspect_Window &AWindow, const Standard_Integer AU, const Standard_Integer AV, Graphic3d_Vertex & Point, Graphic3d_Vector & Proj) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfView DefinedView() const;
		%feature("autodoc", "1");
		Standard_Integer MaxNumOfViews() const;
		%feature("autodoc", "1");
		Standard_Integer Identification(const Handle_Visual3d_View &AView);
		%feature("autodoc", "1");
		Visual3d_PickDescriptor Pick(const Visual3d_ContextPick &CTX, const Handle_Aspect_Window &AWindow, const Standard_Integer AX, const Standard_Integer AY);
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Identification(const Standard_Integer AId) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Identification() const;
		%feature("autodoc", "1");
		virtual		void ChangeDisplayPriority(const Handle_Graphic3d_Structure &AStructure, const Standard_Integer OldPriority, const Standard_Integer NewPriority);
		%feature("autodoc", "1");
		virtual		void Clear(const Handle_Graphic3d_Structure &AStructure, const Standard_Boolean WithDestruction);
		%feature("autodoc", "1");
		virtual		void Connect(const Handle_Graphic3d_Structure &AMother, const Handle_Graphic3d_Structure &ADaughter);
		%feature("autodoc", "1");
		virtual		void Disconnect(const Handle_Graphic3d_Structure &AMother, const Handle_Graphic3d_Structure &ADaughter);
		%feature("autodoc", "1");
		virtual		void Display(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		virtual		void Erase(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		virtual		void Highlight(const Handle_Graphic3d_Structure &AStructure, const Aspect_TypeOfHighlightMethod AMethod);
		%feature("autodoc", "1");
		virtual		void SetTransform(const Handle_Graphic3d_Structure &AStructure, const TColStd_Array2OfReal &ATrsf);
		%feature("autodoc", "1");
		virtual		void UnHighlight();
		%feature("autodoc", "1");
		virtual		void UnHighlight(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		Standard_Boolean ViewExists(const Handle_Aspect_Window &AWindow, Graphic3d_CView & TheCView) const;
		%feature("autodoc", "1");
		const Handle_Visual3d_Layer & UnderLayer() const;
		%feature("autodoc", "1");
		const Handle_Visual3d_Layer & OverLayer() const;
		%feature("autodoc", "1");
		virtual		void ReCompute(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		virtual		void ReCompute(const Handle_Graphic3d_Structure &AStructure, const Handle_Graphic3d_DataStructureManager &AProjector);
		%feature("autodoc", "1");
		Standard_Boolean Transparency() const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Boolean AFlag);
		%feature("autodoc", "1");
		Standard_Boolean ZBufferAuto() const;
		%feature("autodoc", "1");
		void SetZBufferAuto(const Standard_Boolean AFlag);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ViewManager {
	Handle_Visual3d_ViewManager GetHandle() {
	return *(Handle_Visual3d_ViewManager*) &$self;
	}
};
%extend Visual3d_ViewManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ViewManager::~Visual3d_ViewManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ViewManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SequenceNodeOfSequenceOfPickPath;
class Visual3d_SequenceNodeOfSequenceOfPickPath : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Visual3d_SequenceNodeOfSequenceOfPickPath(const Visual3d_PickPath &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Visual3d_PickPath & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_SequenceNodeOfSequenceOfPickPath {
	Handle_Visual3d_SequenceNodeOfSequenceOfPickPath GetHandle() {
	return *(Handle_Visual3d_SequenceNodeOfSequenceOfPickPath*) &$self;
	}
};
%extend Visual3d_SequenceNodeOfSequenceOfPickPath {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_SequenceNodeOfSequenceOfPickPath::~Visual3d_SequenceNodeOfSequenceOfPickPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SequenceNodeOfSequenceOfPickPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ClipPlane;
class Visual3d_ClipPlane : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_ClipPlane(const Standard_Real ACoefA, const Standard_Real ACoefB, const Standard_Real ACoefC, const Standard_Real ACoefD);
		%feature("autodoc", "1");
		void SetPlane(const Standard_Real ACoefA, const Standard_Real ACoefB, const Standard_Real ACoefC, const Standard_Real ACoefD);
		%feature("autodoc", "1");
		Standard_Integer Limit();
		%feature("autodoc","Plane() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void Plane(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ClipPlane {
	Handle_Visual3d_ClipPlane GetHandle() {
	return *(Handle_Visual3d_ClipPlane*) &$self;
	}
};
%extend Visual3d_ClipPlane {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ClipPlane::~Visual3d_ClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_PickDescriptor;
class Visual3d_PickDescriptor {
	public:
		%feature("autodoc", "1");
		Visual3d_PickDescriptor(const Visual3d_ContextPick &CTX);
		%feature("autodoc", "1");
		void AddPickPath(const Visual3d_PickPath &APickPath);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath PickPath() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure TopStructure() const;
		%feature("autodoc", "1");
		Standard_Integer TopPickId() const;
		%feature("autodoc", "1");
		Standard_Integer TopElementNumber() const;

};
%feature("shadow") Visual3d_PickDescriptor::~Visual3d_PickDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_PickDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ClipDefinitionError;
class Visual3d_ClipDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_ClipDefinitionError();
		%feature("autodoc", "1");
		Visual3d_ClipDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_ClipDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ClipDefinitionError {
	Handle_Visual3d_ClipDefinitionError GetHandle() {
	return *(Handle_Visual3d_ClipDefinitionError*) &$self;
	}
};
%extend Visual3d_ClipDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ClipDefinitionError::~Visual3d_ClipDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ClipDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_LightDefinitionError;
class Visual3d_LightDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_LightDefinitionError();
		%feature("autodoc", "1");
		Visual3d_LightDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_LightDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_LightDefinitionError {
	Handle_Visual3d_LightDefinitionError GetHandle() {
	return *(Handle_Visual3d_LightDefinitionError*) &$self;
	}
};
%extend Visual3d_LightDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_LightDefinitionError::~Visual3d_LightDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_LightDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetOfView;
class Visual3d_SetOfView {
	public:
		%feature("autodoc", "1");
		Visual3d_SetOfView();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Visual3d_View &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Visual3d_View &T);
		%feature("autodoc", "1");
		void Union(const Visual3d_SetOfView &B);
		%feature("autodoc", "1");
		void Intersection(const Visual3d_SetOfView &B);
		%feature("autodoc", "1");
		void Difference(const Visual3d_SetOfView &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Visual3d_View &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Visual3d_SetOfView &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Visual3d_SetOfView &S) const;

};
%feature("shadow") Visual3d_SetOfView::~Visual3d_SetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_Layer;
class Visual3d_Layer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_Layer(const Handle_Visual3d_ViewManager &AViewer, const Aspect_TypeOfLayer AType=Aspect_TOL_OVERLAY, const Standard_Boolean AFlag=0);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Begin();
		%feature("autodoc", "1");
		void End();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void BeginPolyline();
		%feature("autodoc", "1");
		void BeginPolygon();
		%feature("autodoc", "1");
		void AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Boolean AFlag=1);
		%feature("autodoc", "1");
		void ClosePrimitive();
		%feature("autodoc", "1");
		void DrawRectangle(const Standard_Real X, const Standard_Real Y, const Standard_Real Width, const Standard_Real Height);
		%feature("autodoc", "1");
		void DrawText(const char * AText, const Standard_Real X, const Standard_Real Y, const Standard_Real AHeight);
		%feature("autodoc","TextSize(Standard_CString AText, Standard_Real AHeight) -> [Standard_RealStandard_RealStandard_Real]");
		void TextSize(const char * AText, const Standard_Real AHeight, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetTransparency(const Standard_ShortReal ATransparency);
		%feature("autodoc", "1");
		void UnsetTransparency();
		%feature("autodoc", "1");
		void SetLineAttributes(const Aspect_TypeOfLine AType, const Standard_Real AWidth);
		%feature("autodoc", "1");
		void SetTextAttributes(const Graphic3d_NameOfFont AFont, const Aspect_TypeOfDisplayText AType, const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetOrtho(const Standard_Real Left, const Standard_Real Right, const Standard_Real Bottom, const Standard_Real Top, const Aspect_TypeOfConstraint Attach=Aspect_TOC_BOTTOM_LEFT);
		%feature("autodoc", "1");
		void SetViewport(const Standard_Integer Width, const Standard_Integer Height);
		%feature("autodoc", "1");
		Aspect_CLayer2d CLayer() const;
		%feature("autodoc", "1");
		Aspect_TypeOfLayer Type() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_Layer {
	Handle_Visual3d_Layer GetHandle() {
	return *(Handle_Visual3d_Layer*) &$self;
	}
};
%extend Visual3d_Layer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_Layer::~Visual3d_Layer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_Layer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ZClippingDefinitionError;
class Visual3d_ZClippingDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_ZClippingDefinitionError();
		%feature("autodoc", "1");
		Visual3d_ZClippingDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_ZClippingDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ZClippingDefinitionError {
	Handle_Visual3d_ZClippingDefinitionError GetHandle() {
	return *(Handle_Visual3d_ZClippingDefinitionError*) &$self;
	}
};
%extend Visual3d_ZClippingDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ZClippingDefinitionError::~Visual3d_ZClippingDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ZClippingDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_Light;
class Visual3d_Light : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_Light();
		%feature("autodoc", "1");
		Visual3d_Light(const Quantity_Color &Color);
		%feature("autodoc", "1");
		Visual3d_Light(const Quantity_Color &Color, const Graphic3d_Vector &Direction, const Standard_Boolean Headlight=0);
		%feature("autodoc", "1");
		Visual3d_Light(const Quantity_Color &Color, const Graphic3d_Vertex &Position, const Standard_Real Fact1, const Standard_Real Fact2);
		%feature("autodoc", "1");
		Visual3d_Light(const Quantity_Color &Color, const Graphic3d_Vertex &Position, const Graphic3d_Vector &Direction, const Standard_Real Concentration, const Standard_Real Fact1, const Standard_Real Fact2, const Standard_Real AngleCone);
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real AngleCone);
		%feature("autodoc", "1");
		void SetAttenuation1(const Standard_Real Fact1);
		%feature("autodoc", "1");
		void SetAttenuation2(const Standard_Real Fact2);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &Color);
		%feature("autodoc", "1");
		void SetConcentration(const Standard_Real Concentration);
		%feature("autodoc", "1");
		void SetDirection(const Graphic3d_Vector &Direction);
		%feature("autodoc", "1");
		void SetPosition(const Graphic3d_Vertex &Position);
		%feature("autodoc", "1");
		Standard_Boolean Headlight() const;
		%feature("autodoc", "1");
		Quantity_Color Color() const;
		%feature("autodoc", "1");
		Visual3d_TypeOfLightSource LightType() const;
		%feature("autodoc", "1");
		void Values(Quantity_Color & Color) const;
		%feature("autodoc", "1");
		void Values(Quantity_Color & Color, Graphic3d_Vector & Direction) const;
		%feature("autodoc","Values() -> [Standard_Real, Standard_Real]");
		void Values(Quantity_Color & Color, Graphic3d_Vertex & Position, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Values() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void Values(Quantity_Color & Color, Graphic3d_Vertex & Position, Graphic3d_Vector & Direction, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer Limit();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_Light {
	Handle_Visual3d_Light GetHandle() {
	return *(Handle_Visual3d_Light*) &$self;
	}
};
%extend Visual3d_Light {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_Light::~Visual3d_Light %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_Light {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ListIteratorOfSetListOfSetOfView;
class Visual3d_ListIteratorOfSetListOfSetOfView {
	public:
		%feature("autodoc", "1");
		Visual3d_ListIteratorOfSetListOfSetOfView();
		%feature("autodoc", "1");
		Visual3d_ListIteratorOfSetListOfSetOfView(const Visual3d_SetListOfSetOfView &L);
		%feature("autodoc", "1");
		void Initialize(const Visual3d_SetListOfSetOfView &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Visual3d_View & Value() const;

};
%feature("shadow") Visual3d_ListIteratorOfSetListOfSetOfView::~Visual3d_ListIteratorOfSetListOfSetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ListIteratorOfSetListOfSetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ListIteratorOfSetListOfSetOfClipPlane;
class Visual3d_ListIteratorOfSetListOfSetOfClipPlane {
	public:
		%feature("autodoc", "1");
		Visual3d_ListIteratorOfSetListOfSetOfClipPlane();
		%feature("autodoc", "1");
		Visual3d_ListIteratorOfSetListOfSetOfClipPlane(const Visual3d_SetListOfSetOfClipPlane &L);
		%feature("autodoc", "1");
		void Initialize(const Visual3d_SetListOfSetOfClipPlane &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Visual3d_ClipPlane & Value() const;

};
%feature("shadow") Visual3d_ListIteratorOfSetListOfSetOfClipPlane::~Visual3d_ListIteratorOfSetListOfSetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ListIteratorOfSetListOfSetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_HSetOfLight;
class Visual3d_HSetOfLight : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_HSetOfLight();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Visual3d_Light &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Visual3d_Light &T);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight Union(const Handle_Visual3d_HSetOfLight &B) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight Intersection(const Handle_Visual3d_HSetOfLight &B) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight Difference(const Handle_Visual3d_HSetOfLight &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Visual3d_Light &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_Visual3d_HSetOfLight &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_Visual3d_HSetOfLight &S) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfLight ShallowCopy() const;
		%feature("autodoc", "1");
		const Visual3d_SetOfLight & Set() const;
		%feature("autodoc", "1");
		Visual3d_SetOfLight & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_HSetOfLight {
	Handle_Visual3d_HSetOfLight GetHandle() {
	return *(Handle_Visual3d_HSetOfLight*) &$self;
	}
};
%extend Visual3d_HSetOfLight {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_HSetOfLight::~Visual3d_HSetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_HSetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_HSetOfClipPlane;
class Visual3d_HSetOfClipPlane : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_HSetOfClipPlane();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Visual3d_ClipPlane &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Visual3d_ClipPlane &T);
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane Union(const Handle_Visual3d_HSetOfClipPlane &B) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane Intersection(const Handle_Visual3d_HSetOfClipPlane &B) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane Difference(const Handle_Visual3d_HSetOfClipPlane &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Visual3d_ClipPlane &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_Visual3d_HSetOfClipPlane &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_Visual3d_HSetOfClipPlane &S) const;
		%feature("autodoc", "1");
		Handle_Visual3d_HSetOfClipPlane ShallowCopy() const;
		%feature("autodoc", "1");
		const Visual3d_SetOfClipPlane & Set() const;
		%feature("autodoc", "1");
		Visual3d_SetOfClipPlane & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_HSetOfClipPlane {
	Handle_Visual3d_HSetOfClipPlane GetHandle() {
	return *(Handle_Visual3d_HSetOfClipPlane*) &$self;
	}
};
%extend Visual3d_HSetOfClipPlane {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_HSetOfClipPlane::~Visual3d_HSetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_HSetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetOfLight;
class Visual3d_SetOfLight {
	public:
		%feature("autodoc", "1");
		Visual3d_SetOfLight();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Visual3d_Light &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Visual3d_Light &T);
		%feature("autodoc", "1");
		void Union(const Visual3d_SetOfLight &B);
		%feature("autodoc", "1");
		void Intersection(const Visual3d_SetOfLight &B);
		%feature("autodoc", "1");
		void Difference(const Visual3d_SetOfLight &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Visual3d_Light &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Visual3d_SetOfLight &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Visual3d_SetOfLight &S) const;

};
%feature("shadow") Visual3d_SetOfLight::~Visual3d_SetOfLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetOfLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetIteratorOfSetOfView;
class Visual3d_SetIteratorOfSetOfView {
	public:
		%feature("autodoc", "1");
		Visual3d_SetIteratorOfSetOfView();
		%feature("autodoc", "1");
		Visual3d_SetIteratorOfSetOfView(const Visual3d_SetOfView &S);
		%feature("autodoc", "1");
		void Initialize(const Visual3d_SetOfView &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Visual3d_View & Value() const;

};
%feature("shadow") Visual3d_SetIteratorOfSetOfView::~Visual3d_SetIteratorOfSetOfView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetIteratorOfSetOfView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_View;
class Visual3d_View : public Graphic3d_DataStructureManager {
	public:
		%feature("autodoc", "1");
		Visual3d_View(const Handle_Visual3d_ViewManager &AManager);
		%feature("autodoc", "1");
		Visual3d_View(const Handle_Visual3d_ViewManager &AManager, const Visual3d_ViewOrientation &VO, const Visual3d_ViewMapping &VM, const Visual3d_ContextView &CTX);
		%feature("autodoc", "1");
		void Activate();
		%feature("autodoc", "1");
		void Deactivate();
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		void Redraw();
		%feature("autodoc", "1");
		void Redraw(const Standard_Integer x, const Standard_Integer y, const Standard_Integer width, const Standard_Integer height);
		%feature("autodoc", "1");
		void Redraw(const Handle_Visual3d_Layer &AnUnderLayer, const Handle_Visual3d_Layer &AnOverLayer);
		%feature("autodoc", "1");
		void Redraw(const Handle_Visual3d_Layer &AnUnderLayer, const Handle_Visual3d_Layer &AnOverLayer, const Standard_Integer x, const Standard_Integer y, const Standard_Integer width, const Standard_Integer height);
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void Resized();
		%feature("autodoc", "1");
		void SetBackground(const Aspect_Background &ABack);
		%feature("autodoc", "1");
		void SetBackgroundImage(const char * FileName, const Aspect_FillMethod FillStyle, const Standard_Boolean update);
		%feature("autodoc", "1");
		void SetBgImageStyle(const Aspect_FillMethod FillStyle, const Standard_Boolean update);
		%feature("autodoc", "1");
		void SetBackFacingModel(const Visual3d_TypeOfBackfacingModel aModel);
		%feature("autodoc", "1");
		Visual3d_TypeOfBackfacingModel BackFacingModel() const;
		%feature("autodoc", "1");
		void SetContext(const Visual3d_ContextView &CTX);
		%feature("autodoc", "1");
		void SetTransform(const TColStd_Array2OfReal &AMatrix);
		%feature("autodoc", "1");
		void SetViewMapping(const Visual3d_ViewMapping &VM);
		%feature("autodoc", "1");
		void SetViewMappingDefault();
		%feature("autodoc", "1");
		void SetViewOrientation(const Visual3d_ViewOrientation &VO);
		%feature("autodoc", "1");
		void SetViewOrientationDefault();
		%feature("autodoc", "1");
		void SetWindow(const Handle_Aspect_Window &AWindow);
		%feature("autodoc", "1");
		void Update();
		%feature("autodoc", "1");
		void Update(const Handle_Visual3d_Layer &AnUnderLayer, const Handle_Visual3d_Layer &AnOverLayer);
		%feature("autodoc", "1");
		void ViewMappingReset();
		%feature("autodoc", "1");
		void ViewOrientationReset();
		%feature("autodoc", "1");
		void SetAnimationModeOn(const Standard_Boolean degenerate=0);
		%feature("autodoc", "1");
		void SetAnimationModeOff();
		%feature("autodoc", "1");
		Standard_Boolean AnimationModeIsOn() const;
		%feature("autodoc", "1");
		Standard_Boolean DegenerateModeIsOn() const;
		%feature("autodoc", "1");
		void SetComputedMode(const Standard_Boolean aMode);
		%feature("autodoc", "1");
		Standard_Boolean ComputedMode() const;
		%feature("autodoc", "1");
		void ZBufferTriedronSetup(const Quantity_NameOfColor XColor=Quantity_NOC_RED, const Quantity_NameOfColor YColor=Quantity_NOC_GREEN, const Quantity_NameOfColor ZColor=Quantity_NOC_BLUE1, const Standard_Real SizeRatio=8.00000000000000044408920985006261616945266723633e-1, const Standard_Real AxisDiametr=5.00000000000000027755575615628913510590791702271e-2, const Standard_Integer NbFacettes=12);
		%feature("autodoc", "1");
		void TriedronDisplay(const Aspect_TypeOfTriedronPosition APosition=Aspect_TOTP_CENTER, const Quantity_NameOfColor AColor=Quantity_NOC_WHITE, const Standard_Real AScale=2.00000000000000004163336342344337026588618755341e-2, const Standard_Boolean AsWireframe=1);
		%feature("autodoc", "1");
		void TriedronErase();
		%feature("autodoc", "1");
		void TriedronEcho(const Aspect_TypeOfTriedronEcho AType=Aspect_TOTE_NONE);
		%feature("autodoc", "1");
		Aspect_Background Background() const;
		%feature("autodoc", "1");
		Standard_Boolean ContainsFacet() const;
		%feature("autodoc", "1");
		Standard_Boolean ContainsFacet(const Graphic3d_MapOfStructure &ASet) const;
		%feature("autodoc", "1");
		const Visual3d_ContextView & Context() const;
		%feature("autodoc", "1");
		void DisplayedStructures(Graphic3d_MapOfStructure & SG) const;
		%feature("autodoc", "1");
		Standard_Boolean IsActive() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDefined() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted() const;
		%feature("autodoc","MinMaxValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void MinMaxValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","MinMaxValues(const ASet) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_RealStandard_Real]");
		void MinMaxValues(const Graphic3d_MapOfStructure &ASet, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","MinMaxValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void MinMaxValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","MinMaxValues(const ASet) -> [Standard_Real, Standard_Real, Standard_RealStandard_Real]");
		void MinMaxValues(const Graphic3d_MapOfStructure &ASet, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer NumberOfDisplayedStructures() const;
		%feature("autodoc","Projects(Standard_Real AX, Standard_Real AY, Standard_Real AZ) -> [Standard_RealStandard_RealStandard_Real]");
		void Projects(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & Transform() const;
		%feature("autodoc", "1");
		Visual3d_ViewMapping ViewMapping() const;
		%feature("autodoc", "1");
		Visual3d_ViewMapping ViewMappingDefault() const;
		%feature("autodoc", "1");
		Visual3d_ViewOrientation ViewOrientation() const;
		%feature("autodoc", "1");
		Visual3d_ViewOrientation ViewOrientationDefault() const;
		%feature("autodoc", "1");
		Handle_Aspect_Window Window() const;
		%feature("autodoc", "1");
		Standard_Integer LightLimit() const;
		%feature("autodoc", "1");
		Standard_Integer PlaneLimit() const;
		%feature("autodoc", "1");
		Handle_Visual3d_ViewManager ViewManager() const;
		%feature("autodoc", "1");
		void ReCompute(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		void Exploration() const;
		%feature("autodoc", "1");
		Standard_Integer Identification() const;
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & MatrixOfMapping();
		%feature("autodoc", "1");
		const TColStd_Array2OfReal & MatrixOfOrientation();
		%feature("autodoc", "1");
		Standard_Address CView() const;
		%feature("autodoc", "1");
		Handle_Aspect_GraphicDriver GraphicDriver() const;
		%feature("autodoc", "1");
		void Plot(const Handle_Graphic3d_Plotter &APlotter) const;
		%feature("autodoc", "1");
		void Print(const Handle_Visual3d_Layer &AnUnderLayer, const Handle_Visual3d_Layer &AnOverLayer, const Aspect_Handle hPrnDC, const Standard_Boolean showBackground, const char * filename) const;
		%feature("autodoc", "1");
		void Print(const Aspect_Handle hPrnDC, const Standard_Boolean showBackground, const char * filename) const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Boolean AFlag);
		%feature("autodoc", "1");
		Standard_Boolean ZBufferIsActivated() const;
		%feature("autodoc", "1");
		void SetZBufferActivity(const Standard_Integer AnActivity);
		%feature("autodoc", "1");
		const Handle_Visual3d_Layer & UnderLayer() const;
		%feature("autodoc", "1");
		const Handle_Visual3d_Layer & OverLayer() const;
		%feature("autodoc", "1");
		void EnableDepthTest(const Standard_Boolean enable) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDepthTestEnabled() const;
		%feature("autodoc", "1");
		void ReadDepths(const Standard_Integer x, const Standard_Integer y, const Standard_Integer width, const Standard_Integer height, const Standard_Address buffer) const;
		%feature("autodoc", "1");
		void EnableGLLight(const Standard_Boolean enable) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGLLightEnabled() const;
		%feature("autodoc", "1");
		void Export(const char * FileName, const Graphic3d_ExportFormat Format, const Graphic3d_SortType SortType=Graphic3d_ST_BSP_Tree, const Standard_Real Precision=5.00000000000000010408340855860842566471546888351e-3, const Standard_Address ProgressBarFunc=0, const Standard_Address ProgressObject=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_View {
	Handle_Visual3d_View GetHandle() {
	return *(Handle_Visual3d_View*) &$self;
	}
};
%extend Visual3d_View {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_View::~Visual3d_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ViewDefinitionError;
class Visual3d_ViewDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_ViewDefinitionError();
		%feature("autodoc", "1");
		Visual3d_ViewDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ViewDefinitionError {
	Handle_Visual3d_ViewDefinitionError GetHandle() {
	return *(Handle_Visual3d_ViewDefinitionError*) &$self;
	}
};
%extend Visual3d_ViewDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ViewDefinitionError::~Visual3d_ViewDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ViewDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_TransientManager;
class Visual3d_TransientManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_TransientManager();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean BeginDraw(const Handle_Visual3d_View &aView, const Standard_Boolean DoubleBuffer=0, const Standard_Boolean RetainMode=0);
		%feature("autodoc", "1");
		void EndDraw(const Standard_Boolean Synchronize=0);
		%feature("autodoc", "1");
		void ClearDraw(const Handle_Visual3d_View &aView, const Standard_Boolean aFlush=1);
		%feature("autodoc", "1");
		Standard_Boolean BeginAddDraw(const Handle_Visual3d_View &aView);
		%feature("autodoc", "1");
		void EndAddDraw();
		%feature("autodoc", "1");
		void BeginPolyline();
		%feature("autodoc", "1");
		void BeginPolygon();
		%feature("autodoc", "1");
		void BeginTriangleMesh();
		%feature("autodoc", "1");
		void BeginMarker();
		%feature("autodoc", "1");
		void BeginBezier();
		%feature("autodoc", "1");
		void AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z, const Standard_Boolean AFlag=1);
		%feature("autodoc", "1");
		void AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z, const Standard_Real W, const Standard_Boolean AFlag=1);
		%feature("autodoc", "1");
		void AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z, const Standard_Real NX, const Standard_Real NY, const Standard_Real NZ, const Standard_Boolean AFlag=1);
		%feature("autodoc", "1");
		void ClosePrimitive();
		%feature("autodoc", "1");
		void DrawText(const TCollection_ExtendedString &AText, const Standard_Real X, const Standard_Real Y, const Standard_Real Z, const Standard_Real AHeight, const Quantity_PlaneAngle AAngle=0.0, const Graphic3d_TextPath ATp=Graphic3d_TP_RIGHT, const Graphic3d_HorizontalTextAlignment AHta=Graphic3d_HTA_NORMAL, const Graphic3d_VerticalTextAlignment AVta=Graphic3d_VTA_NORMAL);
		%feature("autodoc", "1");
		void DrawStructure(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectLine3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectFillArea3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectText3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectMarker3d &CTX);
		%feature("autodoc","MinMaxValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void MinMaxValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","MinMaxValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void MinMaxValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void SetTransform(const TColStd_Array2OfReal &AMatrix, const Graphic3d_TypeOfComposition AType=Graphic3d_TOC_REPLACE);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_TransientManager {
	Handle_Visual3d_TransientManager GetHandle() {
	return *(Handle_Visual3d_TransientManager*) &$self;
	}
};
%extend Visual3d_TransientManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_TransientManager::~Visual3d_TransientManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_TransientManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_PickError;
class Visual3d_PickError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_PickError();
		%feature("autodoc", "1");
		Visual3d_PickError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_PickError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_PickError {
	Handle_Visual3d_PickError GetHandle() {
	return *(Handle_Visual3d_PickError*) &$self;
	}
};
%extend Visual3d_PickError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_PickError::~Visual3d_PickError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_PickError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SequenceOfPickPath;
class Visual3d_SequenceOfPickPath : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Visual3d_SequenceOfPickPath();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Visual3d_SequenceOfPickPath & Assign(const Visual3d_SequenceOfPickPath &Other);
		%feature("autodoc", "1");
		const Visual3d_SequenceOfPickPath & operator=(const Visual3d_SequenceOfPickPath &Other);
		%feature("autodoc", "1");
		void Append(const Visual3d_PickPath &T);
		%feature("autodoc", "1");
		void Append(Visual3d_SequenceOfPickPath & S);
		%feature("autodoc", "1");
		void Prepend(const Visual3d_PickPath &T);
		%feature("autodoc", "1");
		void Prepend(Visual3d_SequenceOfPickPath & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Visual3d_PickPath &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Visual3d_SequenceOfPickPath & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Visual3d_PickPath &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Visual3d_SequenceOfPickPath & S);
		%feature("autodoc", "1");
		const Visual3d_PickPath & First() const;
		%feature("autodoc", "1");
		const Visual3d_PickPath & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Visual3d_SequenceOfPickPath & S);
		%feature("autodoc", "1");
		const Visual3d_PickPath & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Visual3d_PickPath & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Visual3d_PickPath &I);
		%feature("autodoc", "1");
		Visual3d_PickPath & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Visual3d_PickPath & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Visual3d_SequenceOfPickPath::~Visual3d_SequenceOfPickPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SequenceOfPickPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ViewMappingDefinitionError;
class Visual3d_ViewMappingDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_ViewMappingDefinitionError();
		%feature("autodoc", "1");
		Visual3d_ViewMappingDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_ViewMappingDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ViewMappingDefinitionError {
	Handle_Visual3d_ViewMappingDefinitionError GetHandle() {
	return *(Handle_Visual3d_ViewMappingDefinitionError*) &$self;
	}
};
%extend Visual3d_ViewMappingDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ViewMappingDefinitionError::~Visual3d_ViewMappingDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ViewMappingDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_SetOfClipPlane;
class Visual3d_SetOfClipPlane {
	public:
		%feature("autodoc", "1");
		Visual3d_SetOfClipPlane();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Visual3d_ClipPlane &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Visual3d_ClipPlane &T);
		%feature("autodoc", "1");
		void Union(const Visual3d_SetOfClipPlane &B);
		%feature("autodoc", "1");
		void Intersection(const Visual3d_SetOfClipPlane &B);
		%feature("autodoc", "1");
		void Difference(const Visual3d_SetOfClipPlane &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Visual3d_ClipPlane &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Visual3d_SetOfClipPlane &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Visual3d_SetOfClipPlane &S) const;

};
%feature("shadow") Visual3d_SetOfClipPlane::~Visual3d_SetOfClipPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_SetOfClipPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ContextPickDefinitionError;
class Visual3d_ContextPickDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Visual3d_ContextPickDefinitionError();
		%feature("autodoc", "1");
		Visual3d_ContextPickDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Visual3d_ContextPickDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_ContextPickDefinitionError {
	Handle_Visual3d_ContextPickDefinitionError GetHandle() {
	return *(Handle_Visual3d_ContextPickDefinitionError*) &$self;
	}
};
%extend Visual3d_ContextPickDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_ContextPickDefinitionError::~Visual3d_ContextPickDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ContextPickDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_HSequenceOfPickPath;
class Visual3d_HSequenceOfPickPath : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Visual3d_HSequenceOfPickPath();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Visual3d_PickPath &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Visual3d_HSequenceOfPickPath &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Visual3d_PickPath &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Visual3d_HSequenceOfPickPath &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Visual3d_PickPath &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Visual3d_HSequenceOfPickPath &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Visual3d_PickPath &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Visual3d_HSequenceOfPickPath &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Visual3d_PickPath &anItem);
		%feature("autodoc", "1");
		const Visual3d_PickPath & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Visual3d_PickPath & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Visual3d_SequenceOfPickPath & Sequence() const;
		%feature("autodoc", "1");
		Visual3d_SequenceOfPickPath & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Visual3d_HSequenceOfPickPath ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Visual3d_HSequenceOfPickPath {
	Handle_Visual3d_HSequenceOfPickPath GetHandle() {
	return *(Handle_Visual3d_HSequenceOfPickPath*) &$self;
	}
};
%extend Visual3d_HSequenceOfPickPath {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Visual3d_HSequenceOfPickPath::~Visual3d_HSequenceOfPickPath %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_HSequenceOfPickPath {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Visual3d_ViewOrientation;
class Visual3d_ViewOrientation {
	public:
		%feature("autodoc", "1");
		Visual3d_ViewOrientation();
		%feature("autodoc", "1");
		Visual3d_ViewOrientation(const Graphic3d_Vertex &VRP, const Graphic3d_Vector &VPN, const Graphic3d_Vector &VUP);
		%feature("autodoc", "1");
		Visual3d_ViewOrientation(const Graphic3d_Vertex &VRP, const Graphic3d_Vector &VPN, const Standard_Real Twist);
		%feature("autodoc", "1");
		Visual3d_ViewOrientation(const Graphic3d_Vertex &VRP, const Standard_Real Azim, const Standard_Real Inc, const Standard_Real Twist);
		%feature("autodoc", "1");
		void SetViewReferencePlane(const Graphic3d_Vector &VPN);
		%feature("autodoc", "1");
		void SetViewReferencePoint(const Graphic3d_Vertex &VRP);
		%feature("autodoc", "1");
		void SetViewReferenceUp(const Graphic3d_Vector &VUP);
		%feature("autodoc", "1");
		void SetAxialScale(const Standard_Real Sx, const Standard_Real Sy, const Standard_Real Sz);
		%feature("autodoc", "1");
		void SetCustomModelViewMatrix(const Handle_TColStd_HArray2OfReal &Mat);
		%feature("autodoc", "1");
		Standard_Real Twist() const;
		%feature("autodoc", "1");
		Graphic3d_Vector ViewReferencePlane() const;
		%feature("autodoc", "1");
		Graphic3d_Vertex ViewReferencePoint() const;
		%feature("autodoc", "1");
		Graphic3d_Vector ViewReferenceUp() const;
		%feature("autodoc","AxialScale() -> [Standard_Real, Standard_Real, Standard_Real]");
		void AxialScale(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsCustomMatrix() const;

};
%feature("shadow") Visual3d_ViewOrientation::~Visual3d_ViewOrientation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Visual3d_ViewOrientation {
	void _kill_pointed() {
		delete $self;
	}
};
