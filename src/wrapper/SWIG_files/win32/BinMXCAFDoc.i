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

%module BinMXCAFDoc
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinMXCAFDoc_renames.i


%include BinMXCAFDoc_required_python_modules.i


%include BinMXCAFDoc_dependencies.i


%include BinMXCAFDoc_headers.i




%nodefaultctor Handle_BinMXCAFDoc_DimTolToolDriver;
class Handle_BinMXCAFDoc_DimTolToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolToolDriver(const Handle_BinMXCAFDoc_DimTolToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolToolDriver(const BinMXCAFDoc_DimTolToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolToolDriver & operator=(const Handle_BinMXCAFDoc_DimTolToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolToolDriver & operator=(const BinMXCAFDoc_DimTolToolDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_DimTolToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_DimTolToolDriver {
	BinMXCAFDoc_DimTolToolDriver* GetObject() {
	return (BinMXCAFDoc_DimTolToolDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_DimTolToolDriver::~Handle_BinMXCAFDoc_DimTolToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_DimTolToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_MaterialDriver;
class Handle_BinMXCAFDoc_MaterialDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialDriver(const Handle_BinMXCAFDoc_MaterialDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialDriver(const BinMXCAFDoc_MaterialDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialDriver & operator=(const Handle_BinMXCAFDoc_MaterialDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialDriver & operator=(const BinMXCAFDoc_MaterialDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_MaterialDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_MaterialDriver {
	BinMXCAFDoc_MaterialDriver* GetObject() {
	return (BinMXCAFDoc_MaterialDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_MaterialDriver::~Handle_BinMXCAFDoc_MaterialDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_MaterialDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_VolumeDriver;
class Handle_BinMXCAFDoc_VolumeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver(const Handle_BinMXCAFDoc_VolumeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver(const BinMXCAFDoc_VolumeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver & operator=(const Handle_BinMXCAFDoc_VolumeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_VolumeDriver & operator=(const BinMXCAFDoc_VolumeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_VolumeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_VolumeDriver {
	BinMXCAFDoc_VolumeDriver* GetObject() {
	return (BinMXCAFDoc_VolumeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_VolumeDriver::~Handle_BinMXCAFDoc_VolumeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_VolumeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_CentroidDriver;
class Handle_BinMXCAFDoc_CentroidDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver(const Handle_BinMXCAFDoc_CentroidDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver(const BinMXCAFDoc_CentroidDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver & operator=(const Handle_BinMXCAFDoc_CentroidDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_CentroidDriver & operator=(const BinMXCAFDoc_CentroidDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_CentroidDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_CentroidDriver {
	BinMXCAFDoc_CentroidDriver* GetObject() {
	return (BinMXCAFDoc_CentroidDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_CentroidDriver::~Handle_BinMXCAFDoc_CentroidDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_CentroidDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_ColorDriver;
class Handle_BinMXCAFDoc_ColorDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver(const Handle_BinMXCAFDoc_ColorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver(const BinMXCAFDoc_ColorDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver & operator=(const Handle_BinMXCAFDoc_ColorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorDriver & operator=(const BinMXCAFDoc_ColorDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_ColorDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_ColorDriver {
	BinMXCAFDoc_ColorDriver* GetObject() {
	return (BinMXCAFDoc_ColorDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_ColorDriver::~Handle_BinMXCAFDoc_ColorDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_ColorDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_MaterialToolDriver;
class Handle_BinMXCAFDoc_MaterialToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialToolDriver(const Handle_BinMXCAFDoc_MaterialToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialToolDriver(const BinMXCAFDoc_MaterialToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialToolDriver & operator=(const Handle_BinMXCAFDoc_MaterialToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_MaterialToolDriver & operator=(const BinMXCAFDoc_MaterialToolDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_MaterialToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_MaterialToolDriver {
	BinMXCAFDoc_MaterialToolDriver* GetObject() {
	return (BinMXCAFDoc_MaterialToolDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_MaterialToolDriver::~Handle_BinMXCAFDoc_MaterialToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_MaterialToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_LocationDriver;
class Handle_BinMXCAFDoc_LocationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver(const Handle_BinMXCAFDoc_LocationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver(const BinMXCAFDoc_LocationDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver & operator=(const Handle_BinMXCAFDoc_LocationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LocationDriver & operator=(const BinMXCAFDoc_LocationDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_LocationDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_LocationDriver {
	BinMXCAFDoc_LocationDriver* GetObject() {
	return (BinMXCAFDoc_LocationDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_LocationDriver::~Handle_BinMXCAFDoc_LocationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_LocationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_DimTolDriver;
class Handle_BinMXCAFDoc_DimTolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolDriver(const Handle_BinMXCAFDoc_DimTolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolDriver(const BinMXCAFDoc_DimTolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolDriver & operator=(const Handle_BinMXCAFDoc_DimTolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DimTolDriver & operator=(const BinMXCAFDoc_DimTolDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_DimTolDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_DimTolDriver {
	BinMXCAFDoc_DimTolDriver* GetObject() {
	return (BinMXCAFDoc_DimTolDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_DimTolDriver::~Handle_BinMXCAFDoc_DimTolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_DimTolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_DatumDriver;
class Handle_BinMXCAFDoc_DatumDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DatumDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DatumDriver(const Handle_BinMXCAFDoc_DatumDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DatumDriver(const BinMXCAFDoc_DatumDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DatumDriver & operator=(const Handle_BinMXCAFDoc_DatumDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DatumDriver & operator=(const BinMXCAFDoc_DatumDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_DatumDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_DatumDriver {
	BinMXCAFDoc_DatumDriver* GetObject() {
	return (BinMXCAFDoc_DatumDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_DatumDriver::~Handle_BinMXCAFDoc_DatumDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_DatumDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_AreaDriver;
class Handle_BinMXCAFDoc_AreaDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver(const Handle_BinMXCAFDoc_AreaDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver(const BinMXCAFDoc_AreaDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver & operator=(const Handle_BinMXCAFDoc_AreaDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_AreaDriver & operator=(const BinMXCAFDoc_AreaDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_AreaDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_AreaDriver {
	BinMXCAFDoc_AreaDriver* GetObject() {
	return (BinMXCAFDoc_AreaDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_AreaDriver::~Handle_BinMXCAFDoc_AreaDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_AreaDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_ColorToolDriver;
class Handle_BinMXCAFDoc_ColorToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver(const Handle_BinMXCAFDoc_ColorToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver(const BinMXCAFDoc_ColorToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver & operator=(const Handle_BinMXCAFDoc_ColorToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ColorToolDriver & operator=(const BinMXCAFDoc_ColorToolDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_ColorToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_ColorToolDriver {
	BinMXCAFDoc_ColorToolDriver* GetObject() {
	return (BinMXCAFDoc_ColorToolDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_ColorToolDriver::~Handle_BinMXCAFDoc_ColorToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_ColorToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_LayerToolDriver;
class Handle_BinMXCAFDoc_LayerToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver(const Handle_BinMXCAFDoc_LayerToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver(const BinMXCAFDoc_LayerToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver & operator=(const Handle_BinMXCAFDoc_LayerToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_LayerToolDriver & operator=(const BinMXCAFDoc_LayerToolDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_LayerToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_LayerToolDriver {
	BinMXCAFDoc_LayerToolDriver* GetObject() {
	return (BinMXCAFDoc_LayerToolDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_LayerToolDriver::~Handle_BinMXCAFDoc_LayerToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_LayerToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_GraphNodeDriver;
class Handle_BinMXCAFDoc_GraphNodeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver(const Handle_BinMXCAFDoc_GraphNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver(const BinMXCAFDoc_GraphNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver & operator=(const Handle_BinMXCAFDoc_GraphNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_GraphNodeDriver & operator=(const BinMXCAFDoc_GraphNodeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_GraphNodeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_GraphNodeDriver {
	BinMXCAFDoc_GraphNodeDriver* GetObject() {
	return (BinMXCAFDoc_GraphNodeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_GraphNodeDriver::~Handle_BinMXCAFDoc_GraphNodeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_GraphNodeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_ShapeToolDriver;
class Handle_BinMXCAFDoc_ShapeToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver(const Handle_BinMXCAFDoc_ShapeToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver(const BinMXCAFDoc_ShapeToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver & operator=(const Handle_BinMXCAFDoc_ShapeToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_ShapeToolDriver & operator=(const BinMXCAFDoc_ShapeToolDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_ShapeToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_ShapeToolDriver {
	BinMXCAFDoc_ShapeToolDriver* GetObject() {
	return (BinMXCAFDoc_ShapeToolDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_ShapeToolDriver::~Handle_BinMXCAFDoc_ShapeToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_ShapeToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_BinMXCAFDoc_DocumentToolDriver;
class Handle_BinMXCAFDoc_DocumentToolDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver();
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver(const Handle_BinMXCAFDoc_DocumentToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver(const BinMXCAFDoc_DocumentToolDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver & operator=(const Handle_BinMXCAFDoc_DocumentToolDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMXCAFDoc_DocumentToolDriver & operator=(const BinMXCAFDoc_DocumentToolDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_BinMXCAFDoc_DocumentToolDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMXCAFDoc_DocumentToolDriver {
	BinMXCAFDoc_DocumentToolDriver* GetObject() {
	return (BinMXCAFDoc_DocumentToolDriver*)$self->Access();
	}
};
%feature("shadow") Handle_BinMXCAFDoc_DocumentToolDriver::~Handle_BinMXCAFDoc_DocumentToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_BinMXCAFDoc_DocumentToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_VolumeDriver;
class BinMXCAFDoc_VolumeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_VolumeDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_VolumeDriver {
	Handle_BinMXCAFDoc_VolumeDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_VolumeDriver*) &$self;
	}
};
%extend BinMXCAFDoc_VolumeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_VolumeDriver::~BinMXCAFDoc_VolumeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_VolumeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_GraphNodeDriver;
class BinMXCAFDoc_GraphNodeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_GraphNodeDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_GraphNodeDriver {
	Handle_BinMXCAFDoc_GraphNodeDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_GraphNodeDriver*) &$self;
	}
};
%extend BinMXCAFDoc_GraphNodeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_GraphNodeDriver::~BinMXCAFDoc_GraphNodeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_GraphNodeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_ColorToolDriver;
class BinMXCAFDoc_ColorToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_ColorToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_ColorToolDriver {
	Handle_BinMXCAFDoc_ColorToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ColorToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_ColorToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_ColorToolDriver::~BinMXCAFDoc_ColorToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_ColorToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_ShapeToolDriver;
class BinMXCAFDoc_ShapeToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_ShapeToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_ShapeToolDriver {
	Handle_BinMXCAFDoc_ShapeToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ShapeToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_ShapeToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_ShapeToolDriver::~BinMXCAFDoc_ShapeToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_ShapeToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_LayerToolDriver;
class BinMXCAFDoc_LayerToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_LayerToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_LayerToolDriver {
	Handle_BinMXCAFDoc_LayerToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_LayerToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_LayerToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_LayerToolDriver::~BinMXCAFDoc_LayerToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_LayerToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_DimTolDriver;
class BinMXCAFDoc_DimTolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_DimTolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_DimTolDriver {
	Handle_BinMXCAFDoc_DimTolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_DimTolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_DimTolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_DimTolDriver::~BinMXCAFDoc_DimTolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_DimTolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_DimTolToolDriver;
class BinMXCAFDoc_DimTolToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_DimTolToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_DimTolToolDriver {
	Handle_BinMXCAFDoc_DimTolToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_DimTolToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_DimTolToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_DimTolToolDriver::~BinMXCAFDoc_DimTolToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_DimTolToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_LocationDriver;
class BinMXCAFDoc_LocationDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_LocationDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		Standard_Boolean Translate(const BinObjMgt_Persistent &theSource, TopLoc_Location & theLoc, BinObjMgt_RRelocationTable & theMap) const;
		%feature("autodoc", "1");
		void Translate(const TopLoc_Location &theLoc, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theMap) const;
		%feature("autodoc", "1");
		void SetSharedLocations(const BinTools_LocationSetPtr &theLocations);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_LocationDriver {
	Handle_BinMXCAFDoc_LocationDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_LocationDriver*) &$self;
	}
};
%extend BinMXCAFDoc_LocationDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_LocationDriver::~BinMXCAFDoc_LocationDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_LocationDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_CentroidDriver;
class BinMXCAFDoc_CentroidDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_CentroidDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_CentroidDriver {
	Handle_BinMXCAFDoc_CentroidDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_CentroidDriver*) &$self;
	}
};
%extend BinMXCAFDoc_CentroidDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_CentroidDriver::~BinMXCAFDoc_CentroidDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_CentroidDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_DatumDriver;
class BinMXCAFDoc_DatumDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_DatumDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_DatumDriver {
	Handle_BinMXCAFDoc_DatumDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_DatumDriver*) &$self;
	}
};
%extend BinMXCAFDoc_DatumDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_DatumDriver::~BinMXCAFDoc_DatumDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_DatumDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_ColorDriver;
class BinMXCAFDoc_ColorDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_ColorDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_ColorDriver {
	Handle_BinMXCAFDoc_ColorDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_ColorDriver*) &$self;
	}
};
%extend BinMXCAFDoc_ColorDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_ColorDriver::~BinMXCAFDoc_ColorDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_ColorDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_MaterialToolDriver;
class BinMXCAFDoc_MaterialToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_MaterialToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_MaterialToolDriver {
	Handle_BinMXCAFDoc_MaterialToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_MaterialToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_MaterialToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_MaterialToolDriver::~BinMXCAFDoc_MaterialToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_MaterialToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc;
class BinMXCAFDoc {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc();
		%feature("autodoc", "1");
		static		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &theMsgDrv);

};
%feature("shadow") BinMXCAFDoc::~BinMXCAFDoc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_DocumentToolDriver;
class BinMXCAFDoc_DocumentToolDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_DocumentToolDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_DocumentToolDriver {
	Handle_BinMXCAFDoc_DocumentToolDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_DocumentToolDriver*) &$self;
	}
};
%extend BinMXCAFDoc_DocumentToolDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_DocumentToolDriver::~BinMXCAFDoc_DocumentToolDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_DocumentToolDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_AreaDriver;
class BinMXCAFDoc_AreaDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_AreaDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_AreaDriver {
	Handle_BinMXCAFDoc_AreaDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_AreaDriver*) &$self;
	}
};
%extend BinMXCAFDoc_AreaDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_AreaDriver::~BinMXCAFDoc_AreaDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_AreaDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor BinMXCAFDoc_MaterialDriver;
class BinMXCAFDoc_MaterialDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMXCAFDoc_MaterialDriver(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BinMXCAFDoc_MaterialDriver {
	Handle_BinMXCAFDoc_MaterialDriver GetHandle() {
	return *(Handle_BinMXCAFDoc_MaterialDriver*) &$self;
	}
};
%extend BinMXCAFDoc_MaterialDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") BinMXCAFDoc_MaterialDriver::~BinMXCAFDoc_MaterialDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinMXCAFDoc_MaterialDriver {
	void _kill_pointed() {
		delete $self;
	}
};
