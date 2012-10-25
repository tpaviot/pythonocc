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

%module GEOMImpl
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GEOMImpl_renames.i


%include GEOMImpl_required_python_modules.i


%include GEOMImpl_dependencies.i


%include GEOMImpl_headers.i




%nodefaultctor Handle_GEOMImpl_Fillet2dDriver;
class Handle_GEOMImpl_Fillet2dDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet2dDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet2dDriver(const Handle_GEOMImpl_Fillet2dDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet2dDriver(const GEOMImpl_Fillet2dDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet2dDriver & operator=(const Handle_GEOMImpl_Fillet2dDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet2dDriver & operator=(const GEOMImpl_Fillet2dDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_Fillet2dDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_Fillet2dDriver {
	GEOMImpl_Fillet2dDriver* GetObject() {
	return (GEOMImpl_Fillet2dDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_Fillet2dDriver::~Handle_GEOMImpl_Fillet2dDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_Fillet2dDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_CircleDriver;
class Handle_GEOMImpl_CircleDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver(const Handle_GEOMImpl_CircleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver(const GEOMImpl_CircleDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver & operator=(const Handle_GEOMImpl_CircleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver & operator=(const GEOMImpl_CircleDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_CircleDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_CircleDriver {
	GEOMImpl_CircleDriver* GetObject() {
	return (GEOMImpl_CircleDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_CircleDriver::~Handle_GEOMImpl_CircleDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_CircleDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_MeasureDriver;
class Handle_GEOMImpl_MeasureDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver(const Handle_GEOMImpl_MeasureDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver(const GEOMImpl_MeasureDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver & operator=(const Handle_GEOMImpl_MeasureDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver & operator=(const GEOMImpl_MeasureDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_MeasureDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_MeasureDriver {
	GEOMImpl_MeasureDriver* GetObject() {
	return (GEOMImpl_MeasureDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_MeasureDriver::~Handle_GEOMImpl_MeasureDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_MeasureDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_MarkerDriver;
class Handle_GEOMImpl_MarkerDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver(const Handle_GEOMImpl_MarkerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver(const GEOMImpl_MarkerDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver & operator=(const Handle_GEOMImpl_MarkerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver & operator=(const GEOMImpl_MarkerDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_MarkerDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_MarkerDriver {
	GEOMImpl_MarkerDriver* GetObject() {
	return (GEOMImpl_MarkerDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_MarkerDriver::~Handle_GEOMImpl_MarkerDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_MarkerDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_FillingDriver;
class Handle_GEOMImpl_FillingDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver(const Handle_GEOMImpl_FillingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver(const GEOMImpl_FillingDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver & operator=(const Handle_GEOMImpl_FillingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver & operator=(const GEOMImpl_FillingDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_FillingDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_FillingDriver {
	GEOMImpl_FillingDriver* GetObject() {
	return (GEOMImpl_FillingDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_FillingDriver::~Handle_GEOMImpl_FillingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_FillingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ScaleDriver;
class Handle_GEOMImpl_ScaleDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver(const Handle_GEOMImpl_ScaleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver(const GEOMImpl_ScaleDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver & operator=(const Handle_GEOMImpl_ScaleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver & operator=(const GEOMImpl_ScaleDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ScaleDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ScaleDriver {
	GEOMImpl_ScaleDriver* GetObject() {
	return (GEOMImpl_ScaleDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ScaleDriver::~Handle_GEOMImpl_ScaleDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ScaleDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_FaceDriver;
class Handle_GEOMImpl_FaceDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver(const Handle_GEOMImpl_FaceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver(const GEOMImpl_FaceDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver & operator=(const Handle_GEOMImpl_FaceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver & operator=(const GEOMImpl_FaceDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_FaceDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_FaceDriver {
	GEOMImpl_FaceDriver* GetObject() {
	return (GEOMImpl_FaceDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_FaceDriver::~Handle_GEOMImpl_FaceDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_FaceDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_SplineDriver;
class Handle_GEOMImpl_SplineDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver(const Handle_GEOMImpl_SplineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver(const GEOMImpl_SplineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver & operator=(const Handle_GEOMImpl_SplineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver & operator=(const GEOMImpl_SplineDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_SplineDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_SplineDriver {
	GEOMImpl_SplineDriver* GetObject() {
	return (GEOMImpl_SplineDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_SplineDriver::~Handle_GEOMImpl_SplineDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_SplineDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_MirrorDriver;
class Handle_GEOMImpl_MirrorDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver(const Handle_GEOMImpl_MirrorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver(const GEOMImpl_MirrorDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver & operator=(const Handle_GEOMImpl_MirrorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver & operator=(const GEOMImpl_MirrorDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_MirrorDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_MirrorDriver {
	GEOMImpl_MirrorDriver* GetObject() {
	return (GEOMImpl_MirrorDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_MirrorDriver::~Handle_GEOMImpl_MirrorDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_MirrorDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_BooleanDriver;
class Handle_GEOMImpl_BooleanDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver(const Handle_GEOMImpl_BooleanDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver(const GEOMImpl_BooleanDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver & operator=(const Handle_GEOMImpl_BooleanDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver & operator=(const GEOMImpl_BooleanDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_BooleanDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_BooleanDriver {
	GEOMImpl_BooleanDriver* GetObject() {
	return (GEOMImpl_BooleanDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_BooleanDriver::~Handle_GEOMImpl_BooleanDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_BooleanDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ConeDriver;
class Handle_GEOMImpl_ConeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver(const Handle_GEOMImpl_ConeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver(const GEOMImpl_ConeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver & operator=(const Handle_GEOMImpl_ConeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver & operator=(const GEOMImpl_ConeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ConeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ConeDriver {
	GEOMImpl_ConeDriver* GetObject() {
	return (GEOMImpl_ConeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ConeDriver::~Handle_GEOMImpl_ConeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ConeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PositionDriver;
class Handle_GEOMImpl_PositionDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver(const Handle_GEOMImpl_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver(const GEOMImpl_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver & operator=(const Handle_GEOMImpl_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver & operator=(const GEOMImpl_PositionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PositionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PositionDriver {
	GEOMImpl_PositionDriver* GetObject() {
	return (GEOMImpl_PositionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PositionDriver::~Handle_GEOMImpl_PositionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PositionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_CylinderDriver;
class Handle_GEOMImpl_CylinderDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver(const Handle_GEOMImpl_CylinderDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver(const GEOMImpl_CylinderDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver & operator=(const Handle_GEOMImpl_CylinderDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver & operator=(const GEOMImpl_CylinderDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_CylinderDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_CylinderDriver {
	GEOMImpl_CylinderDriver* GetObject() {
	return (GEOMImpl_CylinderDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_CylinderDriver::~Handle_GEOMImpl_CylinderDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_CylinderDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PipeDriver;
class Handle_GEOMImpl_PipeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver(const Handle_GEOMImpl_PipeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver(const GEOMImpl_PipeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver & operator=(const Handle_GEOMImpl_PipeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver & operator=(const GEOMImpl_PipeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PipeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PipeDriver {
	GEOMImpl_PipeDriver* GetObject() {
	return (GEOMImpl_PipeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PipeDriver::~Handle_GEOMImpl_PipeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PipeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ArchimedeDriver;
class Handle_GEOMImpl_ArchimedeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver(const Handle_GEOMImpl_ArchimedeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver(const GEOMImpl_ArchimedeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver & operator=(const Handle_GEOMImpl_ArchimedeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver & operator=(const GEOMImpl_ArchimedeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ArchimedeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ArchimedeDriver {
	GEOMImpl_ArchimedeDriver* GetObject() {
	return (GEOMImpl_ArchimedeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ArchimedeDriver::~Handle_GEOMImpl_ArchimedeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ArchimedeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_DiskDriver;
class Handle_GEOMImpl_DiskDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver(const Handle_GEOMImpl_DiskDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver(const GEOMImpl_DiskDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver & operator=(const Handle_GEOMImpl_DiskDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver & operator=(const GEOMImpl_DiskDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_DiskDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_DiskDriver {
	GEOMImpl_DiskDriver* GetObject() {
	return (GEOMImpl_DiskDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_DiskDriver::~Handle_GEOMImpl_DiskDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_DiskDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PolylineDriver;
class Handle_GEOMImpl_PolylineDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver(const Handle_GEOMImpl_PolylineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver(const GEOMImpl_PolylineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver & operator=(const Handle_GEOMImpl_PolylineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver & operator=(const GEOMImpl_PolylineDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PolylineDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PolylineDriver {
	GEOMImpl_PolylineDriver* GetObject() {
	return (GEOMImpl_PolylineDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PolylineDriver::~Handle_GEOMImpl_PolylineDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PolylineDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PointDriver;
class Handle_GEOMImpl_PointDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver(const Handle_GEOMImpl_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver(const GEOMImpl_PointDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver & operator=(const Handle_GEOMImpl_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver & operator=(const GEOMImpl_PointDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PointDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PointDriver {
	GEOMImpl_PointDriver* GetObject() {
	return (GEOMImpl_PointDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PointDriver::~Handle_GEOMImpl_PointDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PointDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PrismDriver;
class Handle_GEOMImpl_PrismDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver(const Handle_GEOMImpl_PrismDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver(const GEOMImpl_PrismDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver & operator=(const Handle_GEOMImpl_PrismDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver & operator=(const GEOMImpl_PrismDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PrismDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PrismDriver {
	GEOMImpl_PrismDriver* GetObject() {
	return (GEOMImpl_PrismDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PrismDriver::~Handle_GEOMImpl_PrismDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PrismDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PlaneDriver;
class Handle_GEOMImpl_PlaneDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver(const Handle_GEOMImpl_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver(const GEOMImpl_PlaneDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver & operator=(const Handle_GEOMImpl_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver & operator=(const GEOMImpl_PlaneDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PlaneDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PlaneDriver {
	GEOMImpl_PlaneDriver* GetObject() {
	return (GEOMImpl_PlaneDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PlaneDriver::~Handle_GEOMImpl_PlaneDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PlaneDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ThruSectionsDriver;
class Handle_GEOMImpl_ThruSectionsDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver(const Handle_GEOMImpl_ThruSectionsDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver(const GEOMImpl_ThruSectionsDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver & operator=(const Handle_GEOMImpl_ThruSectionsDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver & operator=(const GEOMImpl_ThruSectionsDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ThruSectionsDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ThruSectionsDriver {
	GEOMImpl_ThruSectionsDriver* GetObject() {
	return (GEOMImpl_ThruSectionsDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ThruSectionsDriver::~Handle_GEOMImpl_ThruSectionsDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ThruSectionsDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PartitionDriver;
class Handle_GEOMImpl_PartitionDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver(const Handle_GEOMImpl_PartitionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver(const GEOMImpl_PartitionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver & operator=(const Handle_GEOMImpl_PartitionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver & operator=(const GEOMImpl_PartitionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PartitionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PartitionDriver {
	GEOMImpl_PartitionDriver* GetObject() {
	return (GEOMImpl_PartitionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PartitionDriver::~Handle_GEOMImpl_PartitionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PartitionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ShapeDriver;
class Handle_GEOMImpl_ShapeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver(const Handle_GEOMImpl_ShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver(const GEOMImpl_ShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver & operator=(const Handle_GEOMImpl_ShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver & operator=(const GEOMImpl_ShapeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ShapeDriver {
	GEOMImpl_ShapeDriver* GetObject() {
	return (GEOMImpl_ShapeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ShapeDriver::~Handle_GEOMImpl_ShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_GlueDriver;
class Handle_GEOMImpl_GlueDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver(const Handle_GEOMImpl_GlueDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver(const GEOMImpl_GlueDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver & operator=(const Handle_GEOMImpl_GlueDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver & operator=(const GEOMImpl_GlueDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_GlueDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_GlueDriver {
	GEOMImpl_GlueDriver* GetObject() {
	return (GEOMImpl_GlueDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_GlueDriver::~Handle_GEOMImpl_GlueDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_GlueDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ExportDriver;
class Handle_GEOMImpl_ExportDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver(const Handle_GEOMImpl_ExportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver(const GEOMImpl_ExportDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver & operator=(const Handle_GEOMImpl_ExportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver & operator=(const GEOMImpl_ExportDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ExportDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ExportDriver {
	GEOMImpl_ExportDriver* GetObject() {
	return (GEOMImpl_ExportDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ExportDriver::~Handle_GEOMImpl_ExportDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ExportDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_RotateDriver;
class Handle_GEOMImpl_RotateDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver(const Handle_GEOMImpl_RotateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver(const GEOMImpl_RotateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver & operator=(const Handle_GEOMImpl_RotateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver & operator=(const GEOMImpl_RotateDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_RotateDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_RotateDriver {
	GEOMImpl_RotateDriver* GetObject() {
	return (GEOMImpl_RotateDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_RotateDriver::~Handle_GEOMImpl_RotateDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_RotateDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_SphereDriver;
class Handle_GEOMImpl_SphereDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver(const Handle_GEOMImpl_SphereDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver(const GEOMImpl_SphereDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver & operator=(const Handle_GEOMImpl_SphereDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver & operator=(const GEOMImpl_SphereDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_SphereDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_SphereDriver {
	GEOMImpl_SphereDriver* GetObject() {
	return (GEOMImpl_SphereDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_SphereDriver::~Handle_GEOMImpl_SphereDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_SphereDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_RevolutionDriver;
class Handle_GEOMImpl_RevolutionDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver(const Handle_GEOMImpl_RevolutionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver(const GEOMImpl_RevolutionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver & operator=(const Handle_GEOMImpl_RevolutionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver & operator=(const GEOMImpl_RevolutionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_RevolutionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_RevolutionDriver {
	GEOMImpl_RevolutionDriver* GetObject() {
	return (GEOMImpl_RevolutionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_RevolutionDriver::~Handle_GEOMImpl_RevolutionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_RevolutionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_EllipseDriver;
class Handle_GEOMImpl_EllipseDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver(const Handle_GEOMImpl_EllipseDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver(const GEOMImpl_EllipseDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver & operator=(const Handle_GEOMImpl_EllipseDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver & operator=(const GEOMImpl_EllipseDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_EllipseDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_EllipseDriver {
	GEOMImpl_EllipseDriver* GetObject() {
	return (GEOMImpl_EllipseDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_EllipseDriver::~Handle_GEOMImpl_EllipseDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_EllipseDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_TorusDriver;
class Handle_GEOMImpl_TorusDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver(const Handle_GEOMImpl_TorusDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver(const GEOMImpl_TorusDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver & operator=(const Handle_GEOMImpl_TorusDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver & operator=(const GEOMImpl_TorusDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_TorusDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_TorusDriver {
	GEOMImpl_TorusDriver* GetObject() {
	return (GEOMImpl_TorusDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_TorusDriver::~Handle_GEOMImpl_TorusDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_TorusDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_LineDriver;
class Handle_GEOMImpl_LineDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver(const Handle_GEOMImpl_LineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver(const GEOMImpl_LineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver & operator=(const Handle_GEOMImpl_LineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver & operator=(const GEOMImpl_LineDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_LineDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_LineDriver {
	GEOMImpl_LineDriver* GetObject() {
	return (GEOMImpl_LineDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_LineDriver::~Handle_GEOMImpl_LineDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_LineDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_HealingDriver;
class Handle_GEOMImpl_HealingDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver(const Handle_GEOMImpl_HealingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver(const GEOMImpl_HealingDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver & operator=(const Handle_GEOMImpl_HealingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver & operator=(const GEOMImpl_HealingDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_HealingDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_HealingDriver {
	GEOMImpl_HealingDriver* GetObject() {
	return (GEOMImpl_HealingDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_HealingDriver::~Handle_GEOMImpl_HealingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_HealingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ImportDriver;
class Handle_GEOMImpl_ImportDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver(const Handle_GEOMImpl_ImportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver(const GEOMImpl_ImportDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver & operator=(const Handle_GEOMImpl_ImportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver & operator=(const GEOMImpl_ImportDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ImportDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ImportDriver {
	GEOMImpl_ImportDriver* GetObject() {
	return (GEOMImpl_ImportDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ImportDriver::~Handle_GEOMImpl_ImportDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ImportDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_3DSketcherDriver;
class Handle_GEOMImpl_3DSketcherDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver(const Handle_GEOMImpl_3DSketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver(const GEOMImpl_3DSketcherDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver & operator=(const Handle_GEOMImpl_3DSketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver & operator=(const GEOMImpl_3DSketcherDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_3DSketcherDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_3DSketcherDriver {
	GEOMImpl_3DSketcherDriver* GetObject() {
	return (GEOMImpl_3DSketcherDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_3DSketcherDriver::~Handle_GEOMImpl_3DSketcherDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_3DSketcherDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_BoxDriver;
class Handle_GEOMImpl_BoxDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver(const Handle_GEOMImpl_BoxDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver(const GEOMImpl_BoxDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver & operator=(const Handle_GEOMImpl_BoxDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver & operator=(const GEOMImpl_BoxDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_BoxDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_BoxDriver {
	GEOMImpl_BoxDriver* GetObject() {
	return (GEOMImpl_BoxDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_BoxDriver::~Handle_GEOMImpl_BoxDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_BoxDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_CopyDriver;
class Handle_GEOMImpl_CopyDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver(const Handle_GEOMImpl_CopyDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver(const GEOMImpl_CopyDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver & operator=(const Handle_GEOMImpl_CopyDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver & operator=(const GEOMImpl_CopyDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_CopyDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_CopyDriver {
	GEOMImpl_CopyDriver* GetObject() {
	return (GEOMImpl_CopyDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_CopyDriver::~Handle_GEOMImpl_CopyDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_CopyDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_PipeTShapeDriver;
class Handle_GEOMImpl_PipeTShapeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeTShapeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeTShapeDriver(const Handle_GEOMImpl_PipeTShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeTShapeDriver(const GEOMImpl_PipeTShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeTShapeDriver & operator=(const Handle_GEOMImpl_PipeTShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeTShapeDriver & operator=(const GEOMImpl_PipeTShapeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_PipeTShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PipeTShapeDriver {
	GEOMImpl_PipeTShapeDriver* GetObject() {
	return (GEOMImpl_PipeTShapeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_PipeTShapeDriver::~Handle_GEOMImpl_PipeTShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_PipeTShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_TranslateDriver;
class Handle_GEOMImpl_TranslateDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver(const Handle_GEOMImpl_TranslateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver(const GEOMImpl_TranslateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver & operator=(const Handle_GEOMImpl_TranslateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver & operator=(const GEOMImpl_TranslateDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_TranslateDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_TranslateDriver {
	GEOMImpl_TranslateDriver* GetObject() {
	return (GEOMImpl_TranslateDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_TranslateDriver::~Handle_GEOMImpl_TranslateDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_TranslateDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ProjectionDriver;
class Handle_GEOMImpl_ProjectionDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ProjectionDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ProjectionDriver(const Handle_GEOMImpl_ProjectionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ProjectionDriver(const GEOMImpl_ProjectionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ProjectionDriver & operator=(const Handle_GEOMImpl_ProjectionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ProjectionDriver & operator=(const GEOMImpl_ProjectionDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ProjectionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ProjectionDriver {
	GEOMImpl_ProjectionDriver* GetObject() {
	return (GEOMImpl_ProjectionDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ProjectionDriver::~Handle_GEOMImpl_ProjectionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ProjectionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_BlockDriver;
class Handle_GEOMImpl_BlockDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver(const Handle_GEOMImpl_BlockDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver(const GEOMImpl_BlockDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver & operator=(const Handle_GEOMImpl_BlockDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver & operator=(const GEOMImpl_BlockDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_BlockDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_BlockDriver {
	GEOMImpl_BlockDriver* GetObject() {
	return (GEOMImpl_BlockDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_BlockDriver::~Handle_GEOMImpl_BlockDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_BlockDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ChamferDriver;
class Handle_GEOMImpl_ChamferDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver(const Handle_GEOMImpl_ChamferDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver(const GEOMImpl_ChamferDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver & operator=(const Handle_GEOMImpl_ChamferDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver & operator=(const GEOMImpl_ChamferDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ChamferDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ChamferDriver {
	GEOMImpl_ChamferDriver* GetObject() {
	return (GEOMImpl_ChamferDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ChamferDriver::~Handle_GEOMImpl_ChamferDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ChamferDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_ArcDriver;
class Handle_GEOMImpl_ArcDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver(const Handle_GEOMImpl_ArcDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver(const GEOMImpl_ArcDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver & operator=(const Handle_GEOMImpl_ArcDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver & operator=(const GEOMImpl_ArcDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_ArcDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ArcDriver {
	GEOMImpl_ArcDriver* GetObject() {
	return (GEOMImpl_ArcDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_ArcDriver::~Handle_GEOMImpl_ArcDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_ArcDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_Fillet1dDriver;
class Handle_GEOMImpl_Fillet1dDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet1dDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet1dDriver(const Handle_GEOMImpl_Fillet1dDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet1dDriver(const GEOMImpl_Fillet1dDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet1dDriver & operator=(const Handle_GEOMImpl_Fillet1dDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_Fillet1dDriver & operator=(const GEOMImpl_Fillet1dDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_Fillet1dDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_Fillet1dDriver {
	GEOMImpl_Fillet1dDriver* GetObject() {
	return (GEOMImpl_Fillet1dDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_Fillet1dDriver::~Handle_GEOMImpl_Fillet1dDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_Fillet1dDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_FilletDriver;
class Handle_GEOMImpl_FilletDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver(const Handle_GEOMImpl_FilletDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver(const GEOMImpl_FilletDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver & operator=(const Handle_GEOMImpl_FilletDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver & operator=(const GEOMImpl_FilletDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_FilletDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_FilletDriver {
	GEOMImpl_FilletDriver* GetObject() {
	return (GEOMImpl_FilletDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_FilletDriver::~Handle_GEOMImpl_FilletDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_FilletDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_SketcherDriver;
class Handle_GEOMImpl_SketcherDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver(const Handle_GEOMImpl_SketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver(const GEOMImpl_SketcherDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver & operator=(const Handle_GEOMImpl_SketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver & operator=(const GEOMImpl_SketcherDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_SketcherDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_SketcherDriver {
	GEOMImpl_SketcherDriver* GetObject() {
	return (GEOMImpl_SketcherDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_SketcherDriver::~Handle_GEOMImpl_SketcherDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_SketcherDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_VectorDriver;
class Handle_GEOMImpl_VectorDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver(const Handle_GEOMImpl_VectorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver(const GEOMImpl_VectorDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver & operator=(const Handle_GEOMImpl_VectorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver & operator=(const GEOMImpl_VectorDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_VectorDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_VectorDriver {
	GEOMImpl_VectorDriver* GetObject() {
	return (GEOMImpl_VectorDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_VectorDriver::~Handle_GEOMImpl_VectorDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_VectorDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOMImpl_OffsetDriver;
class Handle_GEOMImpl_OffsetDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver(const Handle_GEOMImpl_OffsetDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver(const GEOMImpl_OffsetDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver & operator=(const Handle_GEOMImpl_OffsetDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver & operator=(const GEOMImpl_OffsetDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_GEOMImpl_OffsetDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_OffsetDriver {
	GEOMImpl_OffsetDriver* GetObject() {
	return (GEOMImpl_OffsetDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOMImpl_OffsetDriver::~Handle_GEOMImpl_OffsetDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOMImpl_OffsetDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPartition;
class GEOMImpl_IPartition {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPartition(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLimit(int );
		%feature("autodoc", "1");
		void SetKeepNonlimitShapes(int );
		%feature("autodoc", "1");
		void SetShapes(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetTools(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetKeepIns(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetRemoveIns(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetMaterials(const Handle_TColStd_HArray1OfInteger &theMaterials);
		%feature("autodoc", "1");
		int GetLimit();
		%feature("autodoc", "1");
		int GetKeepNonlimitShapes();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapes();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetTools();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetKeepIns();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetRemoveIns();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetMaterials();
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPlane();

};
%feature("shadow") GEOMImpl_IPartition::~GEOMImpl_IPartition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPartition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ICircle;
class GEOMImpl_ICircle {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICircle(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRadius(double );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRadius();

};
%feature("shadow") GEOMImpl_ICircle::~GEOMImpl_ICircle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ICircle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PartitionDriver;
class GEOMImpl_PartitionDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PartitionDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PartitionDriver {
	Handle_GEOMImpl_PartitionDriver GetHandle() {
	return *(Handle_GEOMImpl_PartitionDriver*) &$self;
	}
};
%extend GEOMImpl_PartitionDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PartitionDriver::~GEOMImpl_PartitionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PartitionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_MarkerDriver;
class GEOMImpl_MarkerDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_MarkerDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_MarkerDriver {
	Handle_GEOMImpl_MarkerDriver GetHandle() {
	return *(Handle_GEOMImpl_MarkerDriver*) &$self;
	}
};
%extend GEOMImpl_MarkerDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_MarkerDriver::~GEOMImpl_MarkerDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_MarkerDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_FilletDriver;
class GEOMImpl_FilletDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_FilletDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_FilletDriver {
	Handle_GEOMImpl_FilletDriver GetHandle() {
	return *(Handle_GEOMImpl_FilletDriver*) &$self;
	}
};
%extend GEOMImpl_FilletDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_FilletDriver::~GEOMImpl_FilletDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_FilletDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_SplineDriver;
class GEOMImpl_SplineDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_SplineDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_SplineDriver {
	Handle_GEOMImpl_SplineDriver GetHandle() {
	return *(Handle_GEOMImpl_SplineDriver*) &$self;
	}
};
%extend GEOMImpl_SplineDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_SplineDriver::~GEOMImpl_SplineDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_SplineDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_TorusDriver;
class GEOMImpl_TorusDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_TorusDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_TorusDriver {
	Handle_GEOMImpl_TorusDriver GetHandle() {
	return *(Handle_GEOMImpl_TorusDriver*) &$self;
	}
};
%extend GEOMImpl_TorusDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_TorusDriver::~GEOMImpl_TorusDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_TorusDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ScaleDriver;
class GEOMImpl_ScaleDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ScaleDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ScaleDriver {
	Handle_GEOMImpl_ScaleDriver GetHandle() {
	return *(Handle_GEOMImpl_ScaleDriver*) &$self;
	}
};
%extend GEOMImpl_ScaleDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ScaleDriver::~GEOMImpl_ScaleDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ScaleDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ITranslate;
class GEOMImpl_ITranslate {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ITranslate(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetStep1(double );
		%feature("autodoc", "1");
		double GetStep1();
		%feature("autodoc", "1");
		void SetNbIter1(int );
		%feature("autodoc", "1");
		int GetNbIter1();
		%feature("autodoc", "1");
		void SetStep2(double );
		%feature("autodoc", "1");
		double GetStep2();
		%feature("autodoc", "1");
		void SetNbIter2(int );
		%feature("autodoc", "1");
		int GetNbIter2();
		%feature("autodoc", "1");
		void SetVector2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector2();
		%feature("autodoc", "1");
		void SetDX(double );
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		void SetDistance(double );
		%feature("autodoc", "1");
		double GetDistance();
		%feature("autodoc", "1");
		void SetDY(double );
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		void SetDZ(double );
		%feature("autodoc", "1");
		double GetDZ();

};
%feature("shadow") GEOMImpl_ITranslate::~GEOMImpl_ITranslate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ITranslate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_MirrorDriver;
class GEOMImpl_MirrorDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_MirrorDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_MirrorDriver {
	Handle_GEOMImpl_MirrorDriver GetHandle() {
	return *(Handle_GEOMImpl_MirrorDriver*) &$self;
	}
};
%extend GEOMImpl_MirrorDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_MirrorDriver::~GEOMImpl_MirrorDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_MirrorDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IShapesOperations;
class GEOMImpl_IShapesOperations : public GEOM_IOperations {
	public:
		enum ExplodeType {
			EXPLODE_OLD_INCLUDE_MAIN,
			EXPLODE_NEW_INCLUDE_MAIN,
			EXPLODE_NEW_EXCLUDE_MAIN,
		};
		%feature("autodoc", "1");
		GEOMImpl_IShapesOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeEdge(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeEdgeOnCurveByLength(Handle_GEOM_Object , const Standard_Real theLength, Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeEdgeWire(Handle_GEOM_Object , const Standard_Real theLinearTolerance, const Standard_Real theAngularTolerance);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeWire(std::list<Handle_GEOM_Object>, const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFace(Handle_GEOM_Object , const bool isPlanarWanted);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceWires(std::list<Handle_GEOM_Object>, const bool isPlanarWanted);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeShell(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSolidShells(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCompound(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeGlueFaces(Handle_GEOM_Object , const Standard_Real theTolerance, const Standard_Boolean doKeepNonSolids);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeGlueFacesByList(Handle_GEOM_Object , const Standard_Real theTolerance, std::list<Handle_GEOM_Object>, const Standard_Boolean doKeepNonSolids, const Standard_Boolean doGlueAllEdges);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeGlueEdges(Handle_GEOM_Object , const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetGlueShapes(Handle_GEOM_Object , const Standard_Real theTolerance, const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeGlueEdgesByList(Handle_GEOM_Object , const Standard_Real theTolerance, std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetExistingSubObjects(Handle_GEOM_Object , const Standard_Boolean theGroupsOnly);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakeExplode(Handle_GEOM_Object , const Standard_Integer theShapeType, const Standard_Boolean isSorted, const GEOMImpl_IShapesOperations::ExplodeType theExplodeType=GEOMImpl_IShapesOperations::EXPLODE_NEW_INCLUDE_MAIN);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger SubShapeAllIDs(Handle_GEOM_Object , const Standard_Integer theShapeType, const Standard_Boolean isSorted, const GEOMImpl_IShapesOperations::ExplodeType theExplodeType=GEOMImpl_IShapesOperations::EXPLODE_NEW_INCLUDE_MAIN);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetSubShape(Handle_GEOM_Object , const Standard_Integer theID);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakeSubShapes(Handle_GEOM_Object , Handle_TColStd_HArray1OfInteger );
		%feature("autodoc", "1");
		Standard_Integer GetSubShapeIndex(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Standard_Integer GetTopologyIndex(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		TCollection_AsciiString GetShapeTypeString(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Standard_Integer NumberOfSubShapes(Handle_GEOM_Object , const Standard_Integer theShapeType);
		%feature("autodoc", "1");
		Handle_GEOM_Object ReverseShape(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetFreeFacesIDs(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetSharedShapes(Handle_GEOM_Object , Handle_GEOM_Object , const Standard_Integer theShapeType);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetSharedShapes(std::list<Handle_GEOM_Object>, const Standard_Integer theShapeType);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnPlane(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnPlaneWithLocation(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const Handle_GEOM_Object &thePnt, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnCylinder(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAxis, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnCylinderWithLocation(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAxis, const Handle_GEOM_Object &thePnt, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnSphere(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theCenter, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnPlaneIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnPlaneWithLocationIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const Handle_GEOM_Object &thePnt, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnCylinderIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAxis, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnCylinderWithLocationIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAxis, const Handle_GEOM_Object &thePnt, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnSphereIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theCenter, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnQuadrangle(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theTopLeftPoint, const Handle_GEOM_Object &theTopRigthPoint, const Handle_GEOM_Object &theBottomLeftPoint, const Handle_GEOM_Object &theBottomRigthPoint, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnQuadrangleIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theTopLeftPoint, const Handle_GEOM_Object &theTopRigthPoint, const Handle_GEOM_Object &theBottomLeftPoint, const Handle_GEOM_Object &theBottomRigthPoint, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetInPlace(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetInPlaceOld(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetInPlaceByHistory(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetSame(const Handle_GEOM_Object &theShapeWhere, const Handle_GEOM_Object &theShapeWhat);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetSameIDs(const Handle_GEOM_Object &theShapeWhere, const Handle_GEOM_Object &theShapeWhat);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnBoxIDs(const Handle_GEOM_Object &theBox, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnBox(const Handle_GEOM_Object &theBox, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnShapeIDs(const Handle_GEOM_Object &theCheckShape, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnShape(const Handle_GEOM_Object &theCheckShape, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetShapesOnShapeAsCompound(const Handle_GEOM_Object &theCheckShape, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		static		void SortShapes(TopTools_ListOfShape & SL, const Standard_Boolean isOldSorting=1);
		%feature("autodoc", "1");
		static		TopoDS_Shape CompsolidToCompound(const TopoDS_Shape theCompsolid);
		%feature("autodoc", "1");
		static		bool CheckTriangulation(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		static		TopAbs_ShapeEnum GetTypeOfSimplePart(const TopoDS_Shape theShape);

};
%feature("shadow") GEOMImpl_IShapesOperations::~GEOMImpl_IShapesOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IShapesOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IGlue;
class GEOMImpl_IGlue {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IGlue(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Standard_Real GetTolerance();
		%feature("autodoc", "1");
		void SetFaces(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetFaces();
		%feature("autodoc", "1");
		void SetKeepNonSolids(Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean GetKeepNonSolids();
		%feature("autodoc", "1");
		void SetGlueAllEdges(Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean GetGlueAllEdges();

};
%feature("shadow") GEOMImpl_IGlue::~GEOMImpl_IGlue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IGlue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IRotate;
class GEOMImpl_IRotate {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IRotate(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCentPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCentPoint();
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		void SetAngle(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetAngle();
		%feature("autodoc", "1");
		void SetAxis(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetAxis();
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetStep(double );
		%feature("autodoc", "1");
		double GetStep();
		%feature("autodoc", "1");
		void SetNbIter1(int );
		%feature("autodoc", "1");
		int GetNbIter1();
		%feature("autodoc", "1");
		void SetNbIter2(int );
		%feature("autodoc", "1");
		int GetNbIter2();
		%feature("autodoc", "1");
		void SetDir2(gp_XYZ );
		%feature("autodoc", "1");
		gp_XYZ GetDir2();

};
%feature("shadow") GEOMImpl_IRotate::~GEOMImpl_IRotate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IRotate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IThruSections;
class GEOMImpl_IThruSections {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IThruSections(const Handle_GEOM_Function &theFunction);
		%feature("autodoc", "1");
		void SetSections(const Handle_TColStd_HSequenceOfTransient &theSections);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetSections();
		%feature("autodoc", "1");
		void SetSolidMode(int );
		%feature("autodoc", "1");
		int GetSolidMode();
		%feature("autodoc", "1");
		void SetPrecision(double );
		%feature("autodoc", "1");
		double GetPrecision();

};
%feature("shadow") GEOMImpl_IThruSections::~GEOMImpl_IThruSections %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IThruSections {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPosition;
class GEOMImpl_IPosition {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPosition(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetStartLCS(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetStartLCS();
		%feature("autodoc", "1");
		void SetEndLCS(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetEndLCS();
		%feature("autodoc", "1");
		void SetPath(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPath();
		%feature("autodoc", "1");
		void SetDistance(double );
		%feature("autodoc", "1");
		double GetDistance();
		%feature("autodoc", "1");
		void SetReverse(bool );
		%feature("autodoc", "1");
		bool GetReverse();

};
%feature("shadow") GEOMImpl_IPosition::~GEOMImpl_IPosition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPosition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPipe;
class GEOMImpl_IPipe {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipe(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPath(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPath();

};
%feature("shadow") GEOMImpl_IPipe::~GEOMImpl_IPipe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPipe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPipeBiNormal;
class GEOMImpl_IPipeBiNormal : public GEOMImpl_IPipe {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipeBiNormal(Handle_GEOM_Function & theFunction);
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();

};
%feature("shadow") GEOMImpl_IPipeBiNormal::~GEOMImpl_IPipeBiNormal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPipeBiNormal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ICylinder;
class GEOMImpl_ICylinder {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICylinder(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetR(double );
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		void SetH(double );
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();

};
%feature("shadow") GEOMImpl_ICylinder::~GEOMImpl_ICylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ICylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IDisk;
class GEOMImpl_IDisk {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IDisk(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRadius(double );
		%feature("autodoc", "1");
		void SetOrientation(double );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRadius();
		%feature("autodoc", "1");
		double GetOrientation();

};
%feature("shadow") GEOMImpl_IDisk::~GEOMImpl_IDisk %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IDisk {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_GlueDriver;
class GEOMImpl_GlueDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_GlueDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		TopoDS_Shape GlueFaces(const TopoDS_Shape theShape, const Standard_Real theTolerance, const Standard_Boolean doKeepNonSolids=1);
		%feature("autodoc", "1");
		TopoDS_Shape GlueWithWarnings(const TopoDS_Shape theShape, const Standard_Real theTolerance, const TopAbs_ShapeEnum theShapeType, const Standard_Boolean doKeepNonSolids, TCollection_AsciiString & theWarning) const;
		%feature("autodoc", "1");
		static		TopoDS_Shape GlueByList(const TopoDS_Shape theShape, const Standard_Real theTolerance, const Standard_Boolean doKeepNonSolids, const TopTools_MapOfShape &theShapesList, const Standard_Boolean doGlueAllEdges);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_GlueDriver {
	Handle_GEOMImpl_GlueDriver GetHandle() {
	return *(Handle_GEOMImpl_GlueDriver*) &$self;
	}
};
%extend GEOMImpl_GlueDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_GlueDriver::~GEOMImpl_GlueDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_GlueDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PlaneDriver;
class GEOMImpl_PlaneDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PlaneDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PlaneDriver {
	Handle_GEOMImpl_PlaneDriver GetHandle() {
	return *(Handle_GEOMImpl_PlaneDriver*) &$self;
	}
};
%extend GEOMImpl_PlaneDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PlaneDriver::~GEOMImpl_PlaneDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PlaneDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IRevolution;
class GEOMImpl_IRevolution {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IRevolution(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetAngle(double );
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetAxis(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetAxis();
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();

};
%feature("shadow") GEOMImpl_IRevolution::~GEOMImpl_IRevolution %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IRevolution {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_Fillet1dPoint;
class GEOMImpl_Fillet1dPoint {
	public:
		%feature("autodoc", "1");
		GEOMImpl_Fillet1dPoint(Standard_Real );
		%feature("autodoc", "1");
		GEOMImpl_Fillet1dPoint * Copy();
		%feature("autodoc", "1");
		void SetParam(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetParam() const;
		%feature("autodoc", "1");
		void SetParam2(const Standard_Real theParam2);
		%feature("autodoc", "1");
		Standard_Real GetParam2();
		%feature("autodoc", "1");
		Standard_Boolean IsValid(int );
		%feature("autodoc", "1");
		Standard_Integer GetNBValues();
		%feature("autodoc", "1");
		Standard_Real GetValue(Standard_Integer );
		%feature("autodoc", "1");
		Standard_Real GetDiff(Standard_Integer );
		%feature("autodoc", "1");
		Standard_Integer GetNear(Standard_Integer );
		%feature("autodoc", "1");
		void SetCenter(const gp_Pnt2d thePoint);
		%feature("autodoc", "1");
		gp_Pnt2d const GetCenter();
		%feature("autodoc", "1");
		void AddValue(Standard_Real , Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean ComputeDifference(GEOMImpl_Fillet1dPoint* arg0);
		%feature("autodoc", "1");
		void FilterPoints(GEOMImpl_Fillet1dPoint* arg0);
		%feature("autodoc", "1");
		Standard_Integer HasSolution(Standard_Real );

};
%feature("shadow") GEOMImpl_Fillet1dPoint::~GEOMImpl_Fillet1dPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_Fillet1dPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IVector;
class GEOMImpl_IVector {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetDX(double );
		%feature("autodoc", "1");
		void SetDY(double );
		%feature("autodoc", "1");
		void SetDZ(double );
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		double GetDZ();
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		void SetCurve(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCurve();
		%feature("autodoc", "1");
		void SetParameter(double );
		%feature("autodoc", "1");
		double GetParameter();

};
%feature("shadow") GEOMImpl_IVector::~GEOMImpl_IVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IVector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPolyline;
class GEOMImpl_IPolyline {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPolyline(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetPoint(int , Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetIsClosed(bool );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint(int );
		%feature("autodoc", "1");
		bool GetIsClosed();
		%feature("autodoc", "1");
		void SetConstructorType(int );
		%feature("autodoc", "1");
		int GetConstructorType();
		%feature("autodoc", "1");
		void SetCoordinates(const Handle_TColStd_HArray1OfReal &theValue);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetCoordinates();

};
%feature("shadow") GEOMImpl_IPolyline::~GEOMImpl_IPolyline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPolyline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IBasicOperations;
class GEOMImpl_IBasicOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBasicOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointXYZ(double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointWithReference(Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnCurve(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnCurveByLength(Handle_GEOM_Object , double , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnCurveByCoord(Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnLinesIntersection(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnSurface(Handle_GEOM_Object , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnSurfaceByCoord(Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeVectorDXDYDZ(double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeVectorTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTangentOnCurve(const Handle_GEOM_Object &theCurve, double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeLineTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeLineTwoFaces(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeLine(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlaneThreePnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlanePntVec(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlaneFace(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlane2Vec(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlaneLCS(Handle_GEOM_Object , double , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMarker(double , double , double , double , double , double , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMarkerFromShape(const Handle_GEOM_Object &theShape);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMarkerPntTwoVec(const Handle_GEOM_Object &theOrigin, const Handle_GEOM_Object &theXVec, const Handle_GEOM_Object &theYVec);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTangentPlaneOnFace(const Handle_GEOM_Object &theFace, double , double , double );

};
%feature("shadow") GEOMImpl_IBasicOperations::~GEOMImpl_IBasicOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IBasicOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IMeasureOperations;
class GEOMImpl_IMeasureOperations : public GEOM_IOperations {
	public:
		enum ShapeKind {
			SK_NO_SHAPE,
			SK_COMPOUND,
			SK_COMPSOLID,
			SK_SHELL,
			SK_WIRE,
			SK_SPHERE,
			SK_CYLINDER,
			SK_BOX,
			SK_ROTATED_BOX,
			SK_TORUS,
			SK_CONE,
			SK_POLYHEDRON,
			SK_SOLID,
			SK_SPHERE2D,
			SK_CYLINDER2D,
			SK_TORUS2D,
			SK_CONE2D,
			SK_DISK_CIRCLE,
			SK_DISK_ELLIPSE,
			SK_POLYGON,
			SK_PLANE,
			SK_PLANAR,
			SK_FACE,
			SK_CIRCLE,
			SK_ARC_CIRCLE,
			SK_ELLIPSE,
			SK_ARC_ELLIPSE,
			SK_LINE,
			SK_SEGMENT,
			SK_EDGE,
			SK_VERTEX,
			SK_ADVANCED,
		};
		%feature("autodoc", "1");
		GEOMImpl_IMeasureOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		GEOMImpl_IMeasureOperations::ShapeKind KindOfShape(Handle_GEOM_Object , Handle_TColStd_HSequenceOfInteger & theIntegers, Handle_TColStd_HSequenceOfReal & theDoubles);
		%feature("autodoc","GetPosition() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void GetPosition(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetCentreOfMass(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetVertexByIndex(Handle_GEOM_Object , Standard_Integer );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetNormal(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","GetBasicProperties() -> [Standard_Real, Standard_Real, Standard_Real]");

		void GetBasicProperties(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetInertia() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void GetInertia(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetBoundingBox() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void GetBoundingBox(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetTolerance() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void GetTolerance(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		bool CheckShape(Handle_GEOM_Object , const Standard_Boolean theIsCheckGeom, TCollection_AsciiString & theDump);
		%feature("autodoc", "1");
		bool CheckSelfIntersections(Handle_GEOM_Object , Handle_TColStd_HSequenceOfInteger & theIntersections);
		%feature("autodoc", "1");
		TCollection_AsciiString IsGoodForSolid(Handle_GEOM_Object );
		%feature("autodoc", "1");
		TCollection_AsciiString WhatIs(Handle_GEOM_Object );
		%feature("autodoc", "1");
		std::vector<bool,std::allocator<bool> > AreCoordsInside(Handle_GEOM_Object , std::vector<double> coords, double =Precision::Confusion());
		%feature("autodoc","GetMinDistance() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		Standard_Real GetMinDistance(Handle_GEOM_Object , Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","PointCoordinates() -> [Standard_Real, Standard_Real, Standard_Real]");

		void PointCoordinates(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real GetAngle(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Standard_Real GetAngleBtwVectors(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","CurveCurvatureByParam() -> Standard_Real");

		Standard_Real CurveCurvatureByParam(Handle_GEOM_Object , Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real CurveCurvatureByPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","MaxSurfaceCurvatureByParam() -> [Standard_Real, Standard_Real]");

		Standard_Real MaxSurfaceCurvatureByParam(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real MaxSurfaceCurvatureByPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","MinSurfaceCurvatureByParam() -> [Standard_Real, Standard_Real]");

		Standard_Real MinSurfaceCurvatureByParam(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real MinSurfaceCurvatureByPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		static		gp_Ax3 GetPosition(const TopoDS_Shape theShape);

};
%feature("shadow") GEOMImpl_IMeasureOperations::~GEOMImpl_IMeasureOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IMeasureOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ISpline;
class GEOMImpl_ISpline {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ISpline(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetIsClosed(bool );
		%feature("autodoc", "1");
		void SetDoReordering(bool );
		%feature("autodoc", "1");
		void SetPoint(int , Handle_GEOM_Function );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		bool GetIsClosed();
		%feature("autodoc", "1");
		bool GetDoReordering();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint(int );
		%feature("autodoc", "1");
		void SetConstructorType(int );
		%feature("autodoc", "1");
		int GetConstructorType();
		%feature("autodoc", "1");
		void SetCoordinates(const Handle_TColStd_HArray1OfReal &theValue);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetCoordinates();

};
%feature("shadow") GEOMImpl_ISpline::~GEOMImpl_ISpline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ISpline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IArc;
class GEOMImpl_IArc {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IArc(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetSense(bool );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		bool GetSense();

};
%feature("shadow") GEOMImpl_IArc::~GEOMImpl_IArc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IArc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPipeTShape;
class GEOMImpl_IPipeTShape {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipeTShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetR1(double );
		%feature("autodoc", "1");
		double GetR1();
		%feature("autodoc", "1");
		void SetW1(double );
		%feature("autodoc", "1");
		double GetW1();
		%feature("autodoc", "1");
		void SetL1(double );
		%feature("autodoc", "1");
		double GetL1();
		%feature("autodoc", "1");
		void SetR2(double );
		%feature("autodoc", "1");
		double GetR2();
		%feature("autodoc", "1");
		void SetW2(double );
		%feature("autodoc", "1");
		double GetW2();
		%feature("autodoc", "1");
		void SetL2(double );
		%feature("autodoc", "1");
		double GetL2();
		%feature("autodoc", "1");
		void SetH(double );
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		void SetW(double );
		%feature("autodoc", "1");
		double GetW();
		%feature("autodoc", "1");
		void SetRF(double );
		%feature("autodoc", "1");
		double GetRF();
		%feature("autodoc", "1");
		void SetHexMesh(int );
		%feature("autodoc", "1");
		int GetHexMesh();
		%feature("autodoc", "1");
		void SetP1(const Handle_GEOM_Function &theP1);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetP1();
		%feature("autodoc", "1");
		void SetP2(const Handle_GEOM_Function &theP2);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetP2();
		%feature("autodoc", "1");
		void SetP3(const Handle_GEOM_Function &theP3);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetP3();

};
%feature("shadow") GEOMImpl_IPipeTShape::~GEOMImpl_IPipeTShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPipeTShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IBlockTrsf;
class GEOMImpl_IBlockTrsf {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBlockTrsf(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetFace1U(int );
		%feature("autodoc", "1");
		void SetFace2U(int );
		%feature("autodoc", "1");
		void SetFace1V(int );
		%feature("autodoc", "1");
		void SetFace2V(int );
		%feature("autodoc", "1");
		void SetNbIterU(int );
		%feature("autodoc", "1");
		void SetNbIterV(int );
		%feature("autodoc", "1");
		void SetOptimumNbFaces(int );
		%feature("autodoc", "1");
		int GetFace1U();
		%feature("autodoc", "1");
		int GetFace2U();
		%feature("autodoc", "1");
		int GetFace1V();
		%feature("autodoc", "1");
		int GetFace2V();
		%feature("autodoc", "1");
		int GetNbIterU();
		%feature("autodoc", "1");
		int GetNbIterV();
		%feature("autodoc", "1");
		int GetOptimumNbFaces();

};
%feature("shadow") GEOMImpl_IBlockTrsf::~GEOMImpl_IBlockTrsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IBlockTrsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_I3DSketcher;
class GEOMImpl_I3DSketcher {
	public:
		%feature("autodoc", "1");
		GEOMImpl_I3DSketcher(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCoordinates(const Handle_TColStd_HArray1OfReal &theValue);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetCoordinates();

};
%feature("shadow") GEOMImpl_I3DSketcher::~GEOMImpl_I3DSketcher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_I3DSketcher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IFillet1d;
class GEOMImpl_IFillet1d {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFillet1d(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetR(double );
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetVertex(int , int );
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		int GetVertex(int );

};
%feature("shadow") GEOMImpl_IFillet1d::~GEOMImpl_IFillet1d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IFillet1d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IFillet2d;
class GEOMImpl_IFillet2d {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFillet2d(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetR(double );
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetVertex(int , int );
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		int GetVertex(int );

};
%feature("shadow") GEOMImpl_IFillet2d::~GEOMImpl_IFillet2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IFillet2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IHealingOperations;
class GEOMImpl_IHealingOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IHealingOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object ShapeProcess(Handle_GEOM_Object , const Handle_TColStd_HArray1OfExtendedString &theOperations, const Handle_TColStd_HArray1OfExtendedString &theParams, const Handle_TColStd_HArray1OfExtendedString &theValues);
		%feature("autodoc", "1");
		void GetShapeProcessParameters(std::list<std::string>, std::list<std::string>, std::list<std::string>);
		%feature("autodoc", "1");
		bool GetOperatorParameters(const std::string theOperation, std::list<std::string>, std::list<std::string>);
		%feature("autodoc", "1");
		static		bool GetParameters(const std::string theOperation, std::list<std::string>);
		%feature("autodoc", "1");
		Handle_GEOM_Object SuppressFaces(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theFaces);
		%feature("autodoc", "1");
		Handle_GEOM_Object CloseContour(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theWires, bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object RemoveIntWires(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theWires);
		%feature("autodoc", "1");
		Handle_GEOM_Object FillHoles(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theWires);
		%feature("autodoc", "1");
		Handle_GEOM_Object Sew(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object DivideEdge(Handle_GEOM_Object , int , double , bool );
		%feature("autodoc", "1");
		bool GetFreeBoundary(Handle_GEOM_Object , Handle_TColStd_HSequenceOfTransient & theOutClosedWires, Handle_TColStd_HSequenceOfTransient & theOutOpenWires);
		%feature("autodoc", "1");
		Handle_GEOM_Object ChangeOrientation(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object ChangeOrientationCopy(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object LimitTolerance(Handle_GEOM_Object , double );

};
%feature("shadow") GEOMImpl_IHealingOperations::~GEOMImpl_IHealingOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IHealingOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PipeDriver;
class GEOMImpl_PipeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PipeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		TopoDS_Shape CreatePipeWithDifferentSections(const TopoDS_Wire theWirePath, const Handle_TopTools_HSequenceOfShape theBases, const Handle_TopTools_HSequenceOfShape theLocs, const Standard_Boolean theWithContact, const Standard_Boolean theWithCorrect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PipeDriver {
	Handle_GEOMImpl_PipeDriver GetHandle() {
	return *(Handle_GEOMImpl_PipeDriver*) &$self;
	}
};
%extend GEOMImpl_PipeDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PipeDriver::~GEOMImpl_PipeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PipeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_Gen;
class GEOMImpl_Gen : public GEOM_Engine {
	public:
		%feature("autodoc", "1");
		GEOMImpl_Gen();
		%feature("autodoc", "1");
		GEOMImpl_IBasicOperations * GetIBasicOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_ITransformOperations * GetITransformOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_I3DPrimOperations * GetI3DPrimOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IShapesOperations * GetIShapesOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IBlocksOperations * GetIBlocksOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IMeasureOperations * GetIMeasureOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IBooleanOperations * GetIBooleanOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_ICurvesOperations * GetICurvesOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_ILocalOperations * GetILocalOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IInsertOperations * GetIInsertOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IHealingOperations * GetIHealingOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IGroupOperations * GetIGroupOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IAdvancedOperations * GetIAdvancedOperations(int );

};
%feature("shadow") GEOMImpl_Gen::~GEOMImpl_Gen %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_Gen {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_LineDriver;
class GEOMImpl_LineDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_LineDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_LineDriver {
	Handle_GEOMImpl_LineDriver GetHandle() {
	return *(Handle_GEOMImpl_LineDriver*) &$self;
	}
};
%extend GEOMImpl_LineDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_LineDriver::~GEOMImpl_LineDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_LineDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_MeasureDriver;
class GEOMImpl_MeasureDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_MeasureDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_MeasureDriver {
	Handle_GEOMImpl_MeasureDriver GetHandle() {
	return *(Handle_GEOMImpl_MeasureDriver*) &$self;
	}
};
%extend GEOMImpl_MeasureDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_MeasureDriver::~GEOMImpl_MeasureDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_MeasureDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPlane;
class GEOMImpl_IPlane {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetSize(double );
		%feature("autodoc", "1");
		double GetSize();
		%feature("autodoc", "1");
		void SetOrientation(double );
		%feature("autodoc", "1");
		double GetOrientation();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFace(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLCS(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFace();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLCS();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		void SetParameterU(double );
		%feature("autodoc", "1");
		double GetParameterU();
		%feature("autodoc", "1");
		void SetParameterV(double );
		%feature("autodoc", "1");
		double GetParameterV();

};
%feature("shadow") GEOMImpl_IPlane::~GEOMImpl_IPlane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPlane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IFace;
class GEOMImpl_IFace {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFace(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRef1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef1();
		%feature("autodoc", "1");
		void SetOrientation(int );
		%feature("autodoc", "1");
		int GetOrientation();
		%feature("autodoc", "1");
		void SetH(double );
		%feature("autodoc", "1");
		void SetW(double );
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		double GetW();

};
%feature("shadow") GEOMImpl_IFace::~GEOMImpl_IFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_FillingDriver;
class GEOMImpl_FillingDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_FillingDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_FillingDriver {
	Handle_GEOMImpl_FillingDriver GetHandle() {
	return *(Handle_GEOMImpl_FillingDriver*) &$self;
	}
};
%extend GEOMImpl_FillingDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_FillingDriver::~GEOMImpl_FillingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_FillingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IScale;
class GEOMImpl_IScale {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IScale(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetFactor(double );
		%feature("autodoc", "1");
		double GetFactor();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		void SetFactorX(double );
		%feature("autodoc", "1");
		void SetFactorY(double );
		%feature("autodoc", "1");
		void SetFactorZ(double );
		%feature("autodoc", "1");
		double GetFactorX();
		%feature("autodoc", "1");
		double GetFactorY();
		%feature("autodoc", "1");
		double GetFactorZ();

};
%feature("shadow") GEOMImpl_IScale::~GEOMImpl_IScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PipeTShapeDriver;
class GEOMImpl_PipeTShapeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PipeTShapeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PipeTShapeDriver {
	Handle_GEOMImpl_PipeTShapeDriver GetHandle() {
	return *(Handle_GEOMImpl_PipeTShapeDriver*) &$self;
	}
};
%extend GEOMImpl_PipeTShapeDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PipeTShapeDriver::~GEOMImpl_PipeTShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PipeTShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_I3DPrimOperations;
class GEOMImpl_I3DPrimOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_I3DPrimOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBoxDXDYDZ(double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBoxTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceHW(double , double , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceObjHW(Handle_GEOM_Object , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDiskThreePnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDiskPntVecR(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDiskR(double , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCylinderRH(double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCylinderPntVecRH(Handle_GEOM_Object , Handle_GEOM_Object , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeConeR1R2H(double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeConePntVecR1R2H(Handle_GEOM_Object , Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSphereR(double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSpherePntR(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTorusRR(double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTorusPntVecRR(Handle_GEOM_Object , Handle_GEOM_Object , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismVecH(Handle_GEOM_Object , Handle_GEOM_Object , double , double =-1.0e+0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismVecH2Ways(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , double =-1.0e+0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismTwoPnt2Ways(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismDXDYDZ(Handle_GEOM_Object , double , double , double , double =-1.0e+0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismDXDYDZ2Ways(Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDraftPrism(Handle_GEOM_Object , Handle_GEOM_Object , double , double , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipe(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeRevolutionAxisAngle(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeRevolutionAxisAngle2Ways(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilling(Handle_GEOM_Object , int , int , double , double , int , int , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeThruSections(const Handle_TColStd_HSequenceOfTransient &theSeqSections, bool , double , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeWithDifferentSections(const Handle_TColStd_HSequenceOfTransient &theBases, const Handle_TColStd_HSequenceOfTransient &theLocations, const Handle_GEOM_Object &thePath, bool , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeWithShellSections(const Handle_TColStd_HSequenceOfTransient &theBases, const Handle_TColStd_HSequenceOfTransient &theSubBases, const Handle_TColStd_HSequenceOfTransient &theLocations, const Handle_GEOM_Object &thePath, bool , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeShellsWithoutPath(const Handle_TColStd_HSequenceOfTransient &theBases, const Handle_TColStd_HSequenceOfTransient &theLocations);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeBiNormalAlongVector(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );

};
%feature("shadow") GEOMImpl_I3DPrimOperations::~GEOMImpl_I3DPrimOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_I3DPrimOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_TranslateDriver;
class GEOMImpl_TranslateDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_TranslateDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_TranslateDriver {
	Handle_GEOMImpl_TranslateDriver GetHandle() {
	return *(Handle_GEOMImpl_TranslateDriver*) &$self;
	}
};
%extend GEOMImpl_TranslateDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_TranslateDriver::~GEOMImpl_TranslateDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_TranslateDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IBox;
class GEOMImpl_IBox {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBox(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetDX(double );
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		void SetDY(double );
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		void SetDZ(double );
		%feature("autodoc", "1");
		double GetDZ();
		%feature("autodoc", "1");
		void SetRef1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef1();
		%feature("autodoc", "1");
		void SetRef2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef2();

};
%feature("shadow") GEOMImpl_IBox::~GEOMImpl_IBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPoint;
class GEOMImpl_IPoint {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetX(double );
		%feature("autodoc", "1");
		void SetY(double );
		%feature("autodoc", "1");
		void SetZ(double );
		%feature("autodoc", "1");
		double GetX();
		%feature("autodoc", "1");
		double GetY();
		%feature("autodoc", "1");
		double GetZ();
		%feature("autodoc", "1");
		void SetRef(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef();
		%feature("autodoc", "1");
		void SetCurve(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetSurface(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLine1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLine2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCurve();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetSurface();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLine1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLine2();
		%feature("autodoc", "1");
		void SetParameter(double );
		%feature("autodoc", "1");
		void SetParameter2(double );
		%feature("autodoc", "1");
		void SetLength(double );
		%feature("autodoc", "1");
		double GetParameter();
		%feature("autodoc", "1");
		double GetParameter2();
		%feature("autodoc", "1");
		double GetLength();

};
%feature("shadow") GEOMImpl_IPoint::~GEOMImpl_IPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ExportDriver;
class GEOMImpl_ExportDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ExportDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ExportDriver {
	Handle_GEOMImpl_ExportDriver GetHandle() {
	return *(Handle_GEOMImpl_ExportDriver*) &$self;
	}
};
%extend GEOMImpl_ExportDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ExportDriver::~GEOMImpl_ExportDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ExportDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ITransformOperations;
class GEOMImpl_ITransformOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ITransformOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateTwoPoints(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateTwoPointsCopy(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateDXDYDZ(Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateDXDYDZCopy(Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateVector(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateVectorCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateVectorDistance(Handle_GEOM_Object , Handle_GEOM_Object , double , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object Translate1D(Handle_GEOM_Object , Handle_GEOM_Object , double , Standard_Integer );
		%feature("autodoc", "1");
		Handle_GEOM_Object Translate2D(Handle_GEOM_Object , Handle_GEOM_Object , double , Standard_Integer , Handle_GEOM_Object , double , Standard_Integer );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPlane(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPlaneCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorAxis(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorAxisCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPointCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object OffsetShape(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object OffsetShapeCopy(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object ProjectShapeCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object ScaleShape(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object ScaleShapeCopy(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object PositionShape(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object PositionShapeCopy(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object PositionAlongPath(Handle_GEOM_Object , Handle_GEOM_Object , double , bool , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object Rotate(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object RotateCopy(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object Rotate1D(Handle_GEOM_Object , Handle_GEOM_Object , Standard_Integer );
		%feature("autodoc", "1");
		Handle_GEOM_Object Rotate2D(Handle_GEOM_Object , Handle_GEOM_Object , double , Standard_Integer , double , Standard_Integer );
		%feature("autodoc", "1");
		Handle_GEOM_Object RotateThreePoints(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object RotateThreePointsCopy(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TransformLikeOtherCopy(Handle_GEOM_Object , Handle_GEOM_Object );

};
%feature("shadow") GEOMImpl_ITransformOperations::~GEOMImpl_ITransformOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ITransformOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_BooleanDriver;
class GEOMImpl_BooleanDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_BooleanDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_BooleanDriver {
	Handle_GEOMImpl_BooleanDriver GetHandle() {
	return *(Handle_GEOMImpl_BooleanDriver*) &$self;
	}
};
%extend GEOMImpl_BooleanDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_BooleanDriver::~GEOMImpl_BooleanDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_BooleanDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_RotateDriver;
class GEOMImpl_RotateDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_RotateDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_RotateDriver {
	Handle_GEOMImpl_RotateDriver GetHandle() {
	return *(Handle_GEOMImpl_RotateDriver*) &$self;
	}
};
%extend GEOMImpl_RotateDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_RotateDriver::~GEOMImpl_RotateDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_RotateDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_3DSketcherDriver;
class GEOMImpl_3DSketcherDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_3DSketcherDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_3DSketcherDriver {
	Handle_GEOMImpl_3DSketcherDriver GetHandle() {
	return *(Handle_GEOMImpl_3DSketcherDriver*) &$self;
	}
};
%extend GEOMImpl_3DSketcherDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_3DSketcherDriver::~GEOMImpl_3DSketcherDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_3DSketcherDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_SphereDriver;
class GEOMImpl_SphereDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_SphereDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_SphereDriver {
	Handle_GEOMImpl_SphereDriver GetHandle() {
	return *(Handle_GEOMImpl_SphereDriver*) &$self;
	}
};
%extend GEOMImpl_SphereDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_SphereDriver::~GEOMImpl_SphereDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_SphereDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_Fillet2dDriver;
class GEOMImpl_Fillet2dDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_Fillet2dDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_Fillet2dDriver {
	Handle_GEOMImpl_Fillet2dDriver GetHandle() {
	return *(Handle_GEOMImpl_Fillet2dDriver*) &$self;
	}
};
%extend GEOMImpl_Fillet2dDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_Fillet2dDriver::~GEOMImpl_Fillet2dDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_Fillet2dDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ICurvesOperations;
class GEOMImpl_ICurvesOperations : public GEOM_IOperations {
	public:
		enum CurveType {
			Polyline,
			Bezier,
			Interpolation,
		};
		%feature("autodoc", "1");
		GEOMImpl_ICurvesOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCircleThreePnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCircleCenter2Pnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCirclePntVecR(Handle_GEOM_Object , Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeEllipse(Handle_GEOM_Object , Handle_GEOM_Object , double , double , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArc(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArcCenter(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArcOfEllipse(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePolyline(std::list<Handle_GEOM_Object>, bool =false);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSplineBezier(std::list<Handle_GEOM_Object>, bool =false);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSplineInterpolation(std::list<Handle_GEOM_Object>, bool =false, bool =false);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSketcher(const char *theCommand, std::list<double>);
		%feature("autodoc", "1");
		Handle_GEOM_Object Make3DSketcher(std::list<double>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSketcherOnPlane(const char *theCommand, Handle_GEOM_Object );

};
%feature("shadow") GEOMImpl_ICurvesOperations::~GEOMImpl_ICurvesOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ICurvesOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ILine;
class GEOMImpl_ILine {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ILine(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFace1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFace2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFace1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFace2();

};
%feature("shadow") GEOMImpl_ILine::~GEOMImpl_ILine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ILine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ITorus;
class GEOMImpl_ITorus {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ITorus(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRMajor(double );
		%feature("autodoc", "1");
		void SetRMinor(double );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRMajor();
		%feature("autodoc", "1");
		double GetRMinor();

};
%feature("shadow") GEOMImpl_ITorus::~GEOMImpl_ITorus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ITorus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IShapes;
class GEOMImpl_IShapes {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IShapes(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShapes(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapes();
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		void SetIsPlanar(const Standard_Boolean isPlanarWanted);
		%feature("autodoc", "1");
		Standard_Boolean GetIsPlanar();
		%feature("autodoc", "1");
		void SetSubShapeType(const Standard_Integer theType);
		%feature("autodoc", "1");
		Standard_Integer GetSubShapeType();
		%feature("autodoc", "1");
		void SetIndices(const Handle_TColStd_HArray1OfInteger &theIndices);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetIndices();
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theValue);
		%feature("autodoc", "1");
		Standard_Real GetTolerance();
		%feature("autodoc", "1");
		void SetAngularTolerance(const Standard_Real theValue);
		%feature("autodoc", "1");
		Standard_Real GetAngularTolerance();

};
%feature("shadow") GEOMImpl_IShapes::~GEOMImpl_IShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IMirror;
class GEOMImpl_IMirror {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IMirror(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetAxis(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPlane();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetAxis();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();

};
%feature("shadow") GEOMImpl_IMirror::~GEOMImpl_IMirror %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IMirror {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IFilling;
class GEOMImpl_IFilling {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFilling(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetTol2D(double );
		%feature("autodoc", "1");
		void SetTol3D(double );
		%feature("autodoc", "1");
		double GetTol2D();
		%feature("autodoc", "1");
		double GetTol3D();
		%feature("autodoc", "1");
		void SetMinDeg(int );
		%feature("autodoc", "1");
		void SetMaxDeg(int );
		%feature("autodoc", "1");
		int GetMinDeg();
		%feature("autodoc", "1");
		int GetMaxDeg();
		%feature("autodoc", "1");
		void SetNbIter(int );
		%feature("autodoc", "1");
		int GetNbIter();
		%feature("autodoc", "1");
		void SetApprox(bool );
		%feature("autodoc", "1");
		bool GetApprox();
		%feature("autodoc", "1");
		void SetMethod(int );
		%feature("autodoc", "1");
		int GetMethod();
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();

};
%feature("shadow") GEOMImpl_IFilling::~GEOMImpl_IFilling %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IFilling {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ProjectionDriver;
class GEOMImpl_ProjectionDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ProjectionDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ProjectionDriver {
	Handle_GEOMImpl_ProjectionDriver GetHandle() {
	return *(Handle_GEOMImpl_ProjectionDriver*) &$self;
	}
};
%extend GEOMImpl_ProjectionDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ProjectionDriver::~GEOMImpl_ProjectionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ProjectionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_BoxDriver;
class GEOMImpl_BoxDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_BoxDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_BoxDriver {
	Handle_GEOMImpl_BoxDriver GetHandle() {
	return *(Handle_GEOMImpl_BoxDriver*) &$self;
	}
};
%extend GEOMImpl_BoxDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_BoxDriver::~GEOMImpl_BoxDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_BoxDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ISphere;
class GEOMImpl_ISphere {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ISphere(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetR(double );
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();

};
%feature("shadow") GEOMImpl_ISphere::~GEOMImpl_ISphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ISphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ISketcher;
class GEOMImpl_ISketcher {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ISketcher(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCommand(const TCollection_AsciiString &theCommand);
		%feature("autodoc", "1");
		TCollection_AsciiString GetCommand();
		%feature("autodoc", "1");
		void SetWorkingPlane(int , double );
		%feature("autodoc", "1");
		double GetWorkingPlane(int );
		%feature("autodoc", "1");
		void SetWorkingPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetWorkingPlane();

};
%feature("shadow") GEOMImpl_ISketcher::~GEOMImpl_ISketcher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ISketcher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ImportDriver;
class GEOMImpl_ImportDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ImportDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ImportDriver {
	Handle_GEOMImpl_ImportDriver GetHandle() {
	return *(Handle_GEOMImpl_ImportDriver*) &$self;
	}
};
%extend GEOMImpl_ImportDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ImportDriver::~GEOMImpl_ImportDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ImportDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IAdvancedOperations;
class GEOMImpl_IAdvancedOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IAdvancedOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakePipeTShape(double , double , double , double , double , double , bool =true);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakePipeTShapeWithPosition(double , double , double , double , double , double , bool =true, Handle_GEOM_Object =0, Handle_GEOM_Object =0, Handle_GEOM_Object =0);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakePipeTShapeChamfer(double , double , double , double , double , double , double , double , bool =true);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakePipeTShapeChamferWithPosition(double , double , double , double , double , double , double , double , bool =true, Handle_GEOM_Object =0, Handle_GEOM_Object =0, Handle_GEOM_Object =0);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakePipeTShapeFillet(double , double , double , double , double , double , double , bool =true);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakePipeTShapeFilletWithPosition(double , double , double , double , double , double , double , bool =true, Handle_GEOM_Object =0, Handle_GEOM_Object =0, Handle_GEOM_Object =0);

};
%feature("shadow") GEOMImpl_IAdvancedOperations::~GEOMImpl_IAdvancedOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IAdvancedOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PositionDriver;
class GEOMImpl_PositionDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PositionDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PositionDriver {
	Handle_GEOMImpl_PositionDriver GetHandle() {
	return *(Handle_GEOMImpl_PositionDriver*) &$self;
	}
};
%extend GEOMImpl_PositionDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PositionDriver::~GEOMImpl_PositionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PositionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_CylinderDriver;
class GEOMImpl_CylinderDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_CylinderDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_CylinderDriver {
	Handle_GEOMImpl_CylinderDriver GetHandle() {
	return *(Handle_GEOMImpl_CylinderDriver*) &$self;
	}
};
%extend GEOMImpl_CylinderDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_CylinderDriver::~GEOMImpl_CylinderDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_CylinderDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IInsertOperations;
class GEOMImpl_IInsertOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IInsertOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCopy(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object Import(const TCollection_AsciiString &theFileName, const TCollection_AsciiString &theFormatType);
		%feature("autodoc", "1");
		void Export(const Handle_GEOM_Object theOriginal, const TCollection_AsciiString &theFileName, const TCollection_AsciiString &theFormatType);
		%feature("autodoc", "1");
		Standard_Boolean ImportTranslators(Handle_TColStd_HSequenceOfAsciiString & theFormats, Handle_TColStd_HSequenceOfAsciiString & thePatterns);
		%feature("autodoc", "1");
		Standard_Boolean ExportTranslators(Handle_TColStd_HSequenceOfAsciiString & theFormats, Handle_TColStd_HSequenceOfAsciiString & thePatterns);
		%feature("autodoc", "1");
		Standard_Boolean IsSupported(const Standard_Boolean isImport, const TCollection_AsciiString &theFormat, Handle_TCollection_HAsciiString & theLibName);
		%feature("autodoc", "1");
		int LoadTexture(const TCollection_AsciiString &theTextureFile);
		%feature("autodoc", "1");
		int AddTexture(int , int , const Handle_TColStd_HArray1OfByte &theTexture);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfByte GetTexture(int , Standard_Integer &OutValue, Standard_Integer &OutValue);

};
%feature("shadow") GEOMImpl_IInsertOperations::~GEOMImpl_IInsertOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IInsertOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPipeDiffSect;
class GEOMImpl_IPipeDiffSect : public GEOMImpl_IPipe {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipeDiffSect(const Handle_GEOM_Function &theFunction);
		%feature("autodoc", "1");
		void SetBases(const Handle_TColStd_HSequenceOfTransient &theBases);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetBases();
		%feature("autodoc", "1");
		void SetLocations(const Handle_TColStd_HSequenceOfTransient &theLocations);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetLocations();
		%feature("autodoc", "1");
		void SetWithContactMode(int );
		%feature("autodoc", "1");
		int GetWithContactMode();
		%feature("autodoc", "1");
		void SetWithCorrectionMode(int );
		%feature("autodoc", "1");
		int GetWithCorrectionMode();

};
%feature("shadow") GEOMImpl_IPipeDiffSect::~GEOMImpl_IPipeDiffSect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPipeDiffSect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPipeShellSect;
class GEOMImpl_IPipeShellSect : public GEOMImpl_IPipeDiffSect {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipeShellSect(const Handle_GEOM_Function &theFunction);
		%feature("autodoc", "1");
		void SetSubBases(const Handle_TColStd_HSequenceOfTransient &theSubBases);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetSubBases();

};
%feature("shadow") GEOMImpl_IPipeShellSect::~GEOMImpl_IPipeShellSect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPipeShellSect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_Fillet1d;
class GEOMImpl_Fillet1d {
	public:
		%feature("autodoc", "1");
		GEOMImpl_Fillet1d(const TopoDS_Edge theEdge1, const TopoDS_Edge theEdge2, const gp_Pln thePlane);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const Standard_Real theRadius);
		%feature("autodoc", "1");
		TopoDS_Edge Result(const gp_Pnt thePoint, TopoDS_Edge & theEdge1, TopoDS_Edge & theEdge2);

};
%feature("shadow") GEOMImpl_Fillet1d::~GEOMImpl_Fillet1d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_Fillet1d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_SketcherDriver;
class GEOMImpl_SketcherDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_SketcherDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_SketcherDriver {
	Handle_GEOMImpl_SketcherDriver GetHandle() {
	return *(Handle_GEOMImpl_SketcherDriver*) &$self;
	}
};
%extend GEOMImpl_SketcherDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_SketcherDriver::~GEOMImpl_SketcherDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_SketcherDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PolylineDriver;
class GEOMImpl_PolylineDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PolylineDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PolylineDriver {
	Handle_GEOMImpl_PolylineDriver GetHandle() {
	return *(Handle_GEOMImpl_PolylineDriver*) &$self;
	}
};
%extend GEOMImpl_PolylineDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PolylineDriver::~GEOMImpl_PolylineDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PolylineDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ConeDriver;
class GEOMImpl_ConeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ConeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ConeDriver {
	Handle_GEOMImpl_ConeDriver GetHandle() {
	return *(Handle_GEOMImpl_ConeDriver*) &$self;
	}
};
%extend GEOMImpl_ConeDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ConeDriver::~GEOMImpl_ConeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ConeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IOffset;
class GEOMImpl_IOffset {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IOffset(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetValue(double );
		%feature("autodoc", "1");
		double GetValue();

};
%feature("shadow") GEOMImpl_IOffset::~GEOMImpl_IOffset %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IOffset {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IGroupOperations;
class GEOMImpl_IGroupOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IGroupOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object CreateGroup(Handle_GEOM_Object , TopAbs_ShapeEnum );
		%feature("autodoc", "1");
		void AddObject(Handle_GEOM_Object , int );
		%feature("autodoc", "1");
		void RemoveObject(Handle_GEOM_Object , int );
		%feature("autodoc", "1");
		void UnionList(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theSubShapes);
		%feature("autodoc", "1");
		void DifferenceList(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theSubShapes);
		%feature("autodoc", "1");
		void UnionIDs(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfInteger &theSubShapes);
		%feature("autodoc", "1");
		void DifferenceIDs(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfInteger &theSubShapes);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetType(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetMainShape(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetObjects(Handle_GEOM_Object );

};
%feature("shadow") GEOMImpl_IGroupOperations::~GEOMImpl_IGroupOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IGroupOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_RevolutionDriver;
class GEOMImpl_RevolutionDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_RevolutionDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_RevolutionDriver {
	Handle_GEOMImpl_RevolutionDriver GetHandle() {
	return *(Handle_GEOMImpl_RevolutionDriver*) &$self;
	}
};
%extend GEOMImpl_RevolutionDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_RevolutionDriver::~GEOMImpl_RevolutionDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_RevolutionDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IArchimede;
class GEOMImpl_IArchimede {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IArchimede(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetWeight(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetWeight();
		%feature("autodoc", "1");
		void SetDensity(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetDensity();
		%feature("autodoc", "1");
		void SetDeflection(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetDeflection();
		%feature("autodoc", "1");
		void SetBasicShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBasicShape();

};
%feature("shadow") GEOMImpl_IArchimede::~GEOMImpl_IArchimede %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IArchimede {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ArcDriver;
class GEOMImpl_ArcDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ArcDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ArcDriver {
	Handle_GEOMImpl_ArcDriver GetHandle() {
	return *(Handle_GEOMImpl_ArcDriver*) &$self;
	}
};
%extend GEOMImpl_ArcDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ArcDriver::~GEOMImpl_ArcDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ArcDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ICone;
class GEOMImpl_ICone {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICone(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetR1(double );
		%feature("autodoc", "1");
		double GetR1();
		%feature("autodoc", "1");
		void SetR2(double );
		%feature("autodoc", "1");
		double GetR2();
		%feature("autodoc", "1");
		void SetH(double );
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();

};
%feature("shadow") GEOMImpl_ICone::~GEOMImpl_ICone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ICone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ICopy;
class GEOMImpl_ICopy {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICopy(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();

};
%feature("shadow") GEOMImpl_ICopy::~GEOMImpl_ICopy %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ICopy {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IFillet;
class GEOMImpl_IFillet {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFillet(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetR(double );
		%feature("autodoc", "1");
		void SetR1(double );
		%feature("autodoc", "1");
		void SetR2(double );
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		double GetR1();
		%feature("autodoc", "1");
		double GetR2();
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		void SetEdge(int , int );
		%feature("autodoc", "1");
		void SetFace(int , int );
		%feature("autodoc", "1");
		int GetEdge(int );
		%feature("autodoc", "1");
		int GetFace(int );

};
%feature("shadow") GEOMImpl_IFillet::~GEOMImpl_IFillet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IFillet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_FaceDriver;
class GEOMImpl_FaceDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_FaceDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_FaceDriver {
	Handle_GEOMImpl_FaceDriver GetHandle() {
	return *(Handle_GEOMImpl_FaceDriver*) &$self;
	}
};
%extend GEOMImpl_FaceDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_FaceDriver::~GEOMImpl_FaceDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_FaceDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IBlocks;
class GEOMImpl_IBlocks {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBlocks(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShapes(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapes();

};
%feature("shadow") GEOMImpl_IBlocks::~GEOMImpl_IBlocks %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IBlocks {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ILocalOperations;
class GEOMImpl_ILocalOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ILocalOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletAll(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletEdges(Handle_GEOM_Object , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletEdgesR1R2(Handle_GEOM_Object , double , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletFaces(Handle_GEOM_Object , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletFacesR1R2(Handle_GEOM_Object , double , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFillet2D(Handle_GEOM_Object , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFillet1D(Handle_GEOM_Object , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferAll(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdge(Handle_GEOM_Object , double , double , int , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdgeAD(Handle_GEOM_Object , double , double , int , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferFaces(Handle_GEOM_Object , double , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferFacesAD(Handle_GEOM_Object , double , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdges(Handle_GEOM_Object , double , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdgesAD(Handle_GEOM_Object , double , double , std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArchimede(Handle_GEOM_Object , double , double , double );
		%feature("autodoc", "1");
		Standard_Integer GetSubShapeIndex(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		static		bool GetSubShape(const TopoDS_Shape theShape, const int theIndex, TopoDS_Shape & theSubShape);

};
%feature("shadow") GEOMImpl_ILocalOperations::~GEOMImpl_ILocalOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ILocalOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_BlockDriver;
class GEOMImpl_BlockDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_BlockDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_BlockDriver {
	Handle_GEOMImpl_BlockDriver GetHandle() {
	return *(Handle_GEOMImpl_BlockDriver*) &$self;
	}
};
%extend GEOMImpl_BlockDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_BlockDriver::~GEOMImpl_BlockDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_BlockDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ArchimedeDriver;
class GEOMImpl_ArchimedeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ArchimedeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ArchimedeDriver {
	Handle_GEOMImpl_ArchimedeDriver GetHandle() {
	return *(Handle_GEOMImpl_ArchimedeDriver*) &$self;
	}
};
%extend GEOMImpl_ArchimedeDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ArchimedeDriver::~GEOMImpl_ArchimedeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ArchimedeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IMarker;
class GEOMImpl_IMarker {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IMarker(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOrigin(const double theX, const double theY, const double theZ);
		%feature("autodoc", "1");
		void SetXDir(const double theDX, const double theDY, const double theDZ);
		%feature("autodoc", "1");
		void SetYDir(const double theDX, const double theDY, const double theDZ);
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOrigin(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetXVec(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetYVec(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void GetOrigin(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void GetXDir(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void GetYDir(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOrigin();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetXVec();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetYVec();

};
%feature("shadow") GEOMImpl_IMarker::~GEOMImpl_IMarker %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IMarker {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IBooleanOperations;
class GEOMImpl_IBooleanOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBooleanOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBoolean(Handle_GEOM_Object , Handle_GEOM_Object , Standard_Integer );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePartition(const Handle_TColStd_HSequenceOfTransient &theShapes, const Handle_TColStd_HSequenceOfTransient &theTools, const Handle_TColStd_HSequenceOfTransient &theKeepInside, const Handle_TColStd_HSequenceOfTransient &theRemoveInside, const Standard_Integer theLimit, const Standard_Boolean theRemoveWebs, const Handle_TColStd_HArray1OfInteger &theMaterials, const Standard_Integer theKeepNonlimitShapes, const Standard_Boolean thePerformSelfIntersections);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeHalfPartition(Handle_GEOM_Object , Handle_GEOM_Object );

};
%feature("shadow") GEOMImpl_IBooleanOperations::~GEOMImpl_IBooleanOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IBooleanOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IHealing;
class GEOMImpl_IHealing {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IHealing(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOperators(const Handle_TColStd_HArray1OfExtendedString &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetOperators();
		%feature("autodoc", "1");
		void SetParameters(const Handle_TColStd_HArray1OfExtendedString &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetParameters();
		%feature("autodoc", "1");
		void SetValues(const Handle_TColStd_HArray1OfExtendedString &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetValues();
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function & f);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetFaces(const Handle_TColStd_HArray1OfInteger &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetFaces();
		%feature("autodoc", "1");
		void SetWires(const Handle_TColStd_HArray1OfInteger &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetWires();
		%feature("autodoc", "1");
		void SetIsCommonVertex(Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean GetIsCommonVertex();
		%feature("autodoc", "1");
		void SetIsByParameter(Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean GetIsByParameter();
		%feature("autodoc", "1");
		void SetTolerance(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetTolerance();
		%feature("autodoc", "1");
		void SetDevideEdgeValue(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetDevideEdgeValue();
		%feature("autodoc", "1");
		void SetIndex(Standard_Integer );
		%feature("autodoc", "1");
		Standard_Integer GetIndex();

};
%feature("shadow") GEOMImpl_IHealing::~GEOMImpl_IHealing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IHealing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ShapeDriver;
class GEOMImpl_ShapeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ShapeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ShapeDriver {
	Handle_GEOMImpl_ShapeDriver GetHandle() {
	return *(Handle_GEOMImpl_ShapeDriver*) &$self;
	}
};
%extend GEOMImpl_ShapeDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ShapeDriver::~GEOMImpl_ShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IMeasure;
class GEOMImpl_IMeasure {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IMeasure(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		void SetIndex(int );
		%feature("autodoc", "1");
		int GetIndex();

};
%feature("shadow") GEOMImpl_IMeasure::~GEOMImpl_IMeasure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IMeasure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_EllipseDriver;
class GEOMImpl_EllipseDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_EllipseDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_EllipseDriver {
	Handle_GEOMImpl_EllipseDriver GetHandle() {
	return *(Handle_GEOMImpl_EllipseDriver*) &$self;
	}
};
%extend GEOMImpl_EllipseDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_EllipseDriver::~GEOMImpl_EllipseDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_EllipseDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_VectorDriver;
class GEOMImpl_VectorDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_VectorDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_VectorDriver {
	Handle_GEOMImpl_VectorDriver GetHandle() {
	return *(Handle_GEOMImpl_VectorDriver*) &$self;
	}
};
%extend GEOMImpl_VectorDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_VectorDriver::~GEOMImpl_VectorDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_VectorDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_CopyDriver;
class GEOMImpl_CopyDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_CopyDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_CopyDriver {
	Handle_GEOMImpl_CopyDriver GetHandle() {
	return *(Handle_GEOMImpl_CopyDriver*) &$self;
	}
};
%extend GEOMImpl_CopyDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_CopyDriver::~GEOMImpl_CopyDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_CopyDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IEllipse;
class GEOMImpl_IEllipse {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IEllipse(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRMajor(double );
		%feature("autodoc", "1");
		void SetRMinor(double );
		%feature("autodoc", "1");
		void SetVectorMajor(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRMajor();
		%feature("autodoc", "1");
		double GetRMinor();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVectorMajor();

};
%feature("shadow") GEOMImpl_IEllipse::~GEOMImpl_IEllipse %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IEllipse {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ThruSectionsDriver;
class GEOMImpl_ThruSectionsDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ThruSectionsDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ThruSectionsDriver {
	Handle_GEOMImpl_ThruSectionsDriver GetHandle() {
	return *(Handle_GEOMImpl_ThruSectionsDriver*) &$self;
	}
};
%extend GEOMImpl_ThruSectionsDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ThruSectionsDriver::~GEOMImpl_ThruSectionsDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ThruSectionsDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_ChamferDriver;
class GEOMImpl_ChamferDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ChamferDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ChamferDriver {
	Handle_GEOMImpl_ChamferDriver GetHandle() {
	return *(Handle_GEOMImpl_ChamferDriver*) &$self;
	}
};
%extend GEOMImpl_ChamferDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_ChamferDriver::~GEOMImpl_ChamferDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_ChamferDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PrismDriver;
class GEOMImpl_PrismDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PrismDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		TopoDS_Shape MakeScaledPrism(const TopoDS_Shape theShapeBase, const gp_Vec theVector, const Standard_Real theScaleFactor, const gp_Pnt theCDG=gp::Origin(), bool =false);
		%feature("autodoc", "1");
		static		TopoDS_Shape MakeDraftPrism(const TopoDS_Shape theInitShape, const TopoDS_Shape theBaseShape, const Standard_Real theHeight, const Standard_Real theAngle, bool , const TopoDS_Shape theSupport);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PrismDriver {
	Handle_GEOMImpl_PrismDriver GetHandle() {
	return *(Handle_GEOMImpl_PrismDriver*) &$self;
	}
};
%extend GEOMImpl_PrismDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PrismDriver::~GEOMImpl_PrismDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PrismDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_DiskDriver;
class GEOMImpl_DiskDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_DiskDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_DiskDriver {
	Handle_GEOMImpl_DiskDriver GetHandle() {
	return *(Handle_GEOMImpl_DiskDriver*) &$self;
	}
};
%extend GEOMImpl_DiskDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_DiskDriver::~GEOMImpl_DiskDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_DiskDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IChamfer;
class GEOMImpl_IChamfer {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IChamfer(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetD(double );
		%feature("autodoc", "1");
		void SetD1(double );
		%feature("autodoc", "1");
		void SetD2(double );
		%feature("autodoc", "1");
		void SetAngle(double );
		%feature("autodoc", "1");
		double GetD();
		%feature("autodoc", "1");
		double GetD1();
		%feature("autodoc", "1");
		double GetD2();
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		void SetFace(int , int );
		%feature("autodoc", "1");
		void SetFace1(int );
		%feature("autodoc", "1");
		void SetFace2(int );
		%feature("autodoc", "1");
		void SetEdge(int , int );
		%feature("autodoc", "1");
		int GetFace(int );
		%feature("autodoc", "1");
		int GetFace1();
		%feature("autodoc", "1");
		int GetFace2();
		%feature("autodoc", "1");
		int GetEdge(int );

};
%feature("shadow") GEOMImpl_IChamfer::~GEOMImpl_IChamfer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IChamfer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_Fillet1dDriver;
class GEOMImpl_Fillet1dDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_Fillet1dDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_Fillet1dDriver {
	Handle_GEOMImpl_Fillet1dDriver GetHandle() {
	return *(Handle_GEOMImpl_Fillet1dDriver*) &$self;
	}
};
%extend GEOMImpl_Fillet1dDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_Fillet1dDriver::~GEOMImpl_Fillet1dDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_Fillet1dDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_OffsetDriver;
class GEOMImpl_OffsetDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_OffsetDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_OffsetDriver {
	Handle_GEOMImpl_OffsetDriver GetHandle() {
	return *(Handle_GEOMImpl_OffsetDriver*) &$self;
	}
};
%extend GEOMImpl_OffsetDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_OffsetDriver::~GEOMImpl_OffsetDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_OffsetDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IBlocksOperations;
class GEOMImpl_IBlocksOperations : public GEOM_IOperations {
	public:
		enum BCErrorType {
			NOT_BLOCK,
			EXTRA_EDGE,
			INVALID_CONNECTION,
			NOT_CONNECTED,
			NOT_GLUED,
		};
		%feature("autodoc", "1");
		GEOMImpl_IBlocksOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeQuad(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeQuad2Edges(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeQuad4Vertices(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeHexa(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeHexa2Faces(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBlockCompound(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetPoint(Handle_GEOM_Object , const Standard_Real theX, const Standard_Real theY, const Standard_Real theZ, const Standard_Real theEpsilon);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetVertexNearPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetEdge(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetEdgeNearPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceByPoints(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceByEdges(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetOppositeFace(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceNearPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceByNormale(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetShapesNearPoint(Handle_GEOM_Object , Handle_GEOM_Object , const Standard_Integer theShapeType, const Standard_Real theTolerance);
		%feature("autodoc","IsCompoundOfBlocks(Standard_Integer theMinNbFaces, Standard_Integer theMaxNbFaces) -> Standard_Integer");

		Standard_Boolean IsCompoundOfBlocks(Handle_GEOM_Object , const Standard_Integer theMinNbFaces, const Standard_Integer theMaxNbFaces, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CheckCompoundOfBlocksOld(Handle_GEOM_Object , std::list<GEOMImpl_IBlocksOperations::BCError>);
		%feature("autodoc", "1");
		Standard_Boolean CheckCompoundOfBlocks(Handle_GEOM_Object , std::list<GEOMImpl_IBlocksOperations::BCError>);
		%feature("autodoc", "1");
		TCollection_AsciiString PrintBCErrors(Handle_GEOM_Object , std::list<GEOMImpl_IBlocksOperations::BCError>);
		%feature("autodoc", "1");
		Handle_GEOM_Object RemoveExtraEdges(Handle_GEOM_Object , const Standard_Integer theOptimumNbFaces=6);
		%feature("autodoc", "1");
		Handle_GEOM_Object CheckAndImprove(Handle_GEOM_Object );
		%feature("autodoc", "1");
		static		void AddBlocksFrom(const TopoDS_Shape theShape, TopTools_ListOfShape & BLO, TopTools_ListOfShape & NOT, TopTools_ListOfShape & EXT);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient ExplodeCompoundOfBlocks(Handle_GEOM_Object , const Standard_Integer theMinNbFaces, const Standard_Integer theMaxNbFaces);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetBlockNearPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetBlockByParts(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theParts);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetBlocksByParts(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theParts);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMultiTransformation1D(Handle_GEOM_Object , const Standard_Integer theDirFace1, const Standard_Integer theDirFace2, const Standard_Integer theNbTimes);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMultiTransformation2D(Handle_GEOM_Object , const Standard_Integer theDirFace1U, const Standard_Integer theDirFace2U, const Standard_Integer theNbTimesU, const Standard_Integer theDirFace1V, const Standard_Integer theDirFace2V, const Standard_Integer theNbTimesV);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Propagate(Handle_GEOM_Object );

};
%feature("shadow") GEOMImpl_IBlocksOperations::~GEOMImpl_IBlocksOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IBlocksOperations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IImportExport;
class GEOMImpl_IImportExport {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IImportExport(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetFileName(const TCollection_AsciiString &theFileName);
		%feature("autodoc", "1");
		TCollection_AsciiString GetFileName();
		%feature("autodoc", "1");
		void SetPluginName(const TCollection_AsciiString &thePluginLibName);
		%feature("autodoc", "1");
		TCollection_AsciiString GetPluginName();
		%feature("autodoc", "1");
		void SetFormatName(const TCollection_AsciiString &theFormatName);
		%feature("autodoc", "1");
		TCollection_AsciiString GetFormatName();

};
%feature("shadow") GEOMImpl_IImportExport::~GEOMImpl_IImportExport %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IImportExport {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IPrism;
class GEOMImpl_IPrism {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPrism(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFirstPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLastPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetInitShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFirstPoint();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLastPoint();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetInitShape();
		%feature("autodoc", "1");
		void SetDX(double );
		%feature("autodoc", "1");
		void SetDY(double );
		%feature("autodoc", "1");
		void SetDZ(double );
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		double GetDZ();
		%feature("autodoc", "1");
		void SetH(double );
		%feature("autodoc", "1");
		void SetScale(double );
		%feature("autodoc", "1");
		void SetDraftAngle(double );
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		double GetScale();
		%feature("autodoc", "1");
		double GetDraftAngle();
		%feature("autodoc", "1");
		void SetFuseFlag(int );
		%feature("autodoc", "1");
		int GetFuseFlag();

};
%feature("shadow") GEOMImpl_IPrism::~GEOMImpl_IPrism %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IPrism {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_PointDriver;
class GEOMImpl_PointDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PointDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PointDriver {
	Handle_GEOMImpl_PointDriver GetHandle() {
	return *(Handle_GEOMImpl_PointDriver*) &$self;
	}
};
%extend GEOMImpl_PointDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_PointDriver::~GEOMImpl_PointDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_PointDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_IBoolean;
class GEOMImpl_IBoolean {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBoolean(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape2();

};
%feature("shadow") GEOMImpl_IBoolean::~GEOMImpl_IBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_IBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_HealingDriver;
class GEOMImpl_HealingDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_HealingDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_HealingDriver {
	Handle_GEOMImpl_HealingDriver GetHandle() {
	return *(Handle_GEOMImpl_HealingDriver*) &$self;
	}
};
%extend GEOMImpl_HealingDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_HealingDriver::~GEOMImpl_HealingDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_HealingDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOMImpl_CircleDriver;
class GEOMImpl_CircleDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_CircleDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_CircleDriver {
	Handle_GEOMImpl_CircleDriver GetHandle() {
	return *(Handle_GEOMImpl_CircleDriver*) &$self;
	}
};
%extend GEOMImpl_CircleDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GEOMImpl_CircleDriver::~GEOMImpl_CircleDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOMImpl_CircleDriver {
	void _kill_pointed() {
		delete $self;
	}
};
