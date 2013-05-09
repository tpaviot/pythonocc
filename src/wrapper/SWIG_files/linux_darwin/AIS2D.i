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

%module AIS2D
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include AIS2D_renames.i


%include AIS2D_required_python_modules.i


%include AIS2D_dependencies.i


%include AIS2D_headers.i

typedef TColStd_ListOfInteger * AIS2D_PToListOfInt;

enum AIS2D_TypeOfDetection {
	AIS2D_TOD_OBJECT,
	AIS2D_TOD_PRIMITIVE,
	AIS2D_TOD_ELEMENT,
	AIS2D_TOD_VERTEX,
	AIS2D_TOD_NONE,
	};

enum AIS2D_StatusOfPick {
	AIS2D_SOP_Error,
	AIS2D_SOP_NothingSelected,
	AIS2D_SOP_Removed,
	AIS2D_SOP_OneSelected,
	AIS2D_SOP_SeveralSelected,
	};

enum AIS2D_DisplayStatus {
	AIS2D_DS_Displayed,
	AIS2D_DS_Erased,
	AIS2D_DS_FullErased,
	AIS2D_DS_Temporary,
	AIS2D_DS_None,
	};

enum AIS2D_SelectStatus {
	AIS2D_SS_Added,
	AIS2D_SS_Removed,
	AIS2D_SS_NotDone,
	};

enum AIS2D_StatusOfDetection {
	AIS2D_SOD_Error,
	AIS2D_SOD_Nothing,
	AIS2D_SOD_AllBad,
	AIS2D_SOD_Selected,
	AIS2D_SOD_OnlyOneDetected,
	AIS2D_SOD_OnlyOneGood,
	AIS2D_SOD_SeveralGood,
	};

enum AIS2D_KindOfIO {
	AIS2D_KOI_None,
	AIS2D_KOI_DATUM,
	AIS2D_KOI_DIMENSION,
	AIS2D_KOI_SHAPE,
	AIS2D_KOI_PROJSHAPE,
	AIS2D_KOI_COMPOUND,
	};

enum AIS2D_KindOfDimension {
	AIS2D_KOD_NONE,
	AIS2D_KOD_LENGTH,
	AIS2D_KOD_ANGLE,
	AIS2D_KOD_DIAMETER,
	AIS2D_KOD_RADIUS,
	};

enum AIS2D_TypeOfAxis {
	AIS2D_TOAX_Unknown,
	AIS2D_TOAX_XAxis,
	AIS2D_TOAX_YAxis,
	};

enum AIS2D_KindOfPrimitive {
	AIS2D_KOP_NONE,
	AIS2D_KOP_CIRCLE,
	AIS2D_KOP_CIRCLEMARKER,
	AIS2D_KOP_ELLIPS,
	AIS2D_KOP_ELLIPSEMARKER,
	AIS2D_KOP_FRAMEDTEXT,
	AIS2D_KOP_HIDINGTEXT,
	AIS2D_KOP_IMAGE,
	AIS2D_KOP_IMAGEFILE,
	AIS2D_KOP_INFINITELINE,
	AIS2D_KOP_MARKER,
	AIS2D_KOP_PARAGRAPH,
	AIS2D_KOP_POLYLINE,
	AIS2D_KOP_POLYLINEMARKER,
	AIS2D_KOP_SEGMENT,
	AIS2D_KOP_SETOFMARKERS,
	AIS2D_KOP_SETOFPOLYLINES,
	AIS2D_KOP_SETOFSEGMENTS,
	AIS2D_KOP_TEXT,
	AIS2D_KOP_CURVE,
	AIS2D_KOP_SETOFCURVES,
	AIS2D_KOP_ANGLE,
	AIS2D_KOP_ANGULARITY,
	AIS2D_KOP_ARROW,
	AIS2D_KOP_AXIS,
	AIS2D_KOP_CIRCULARITY,
	AIS2D_KOP_CONCENTRIC,
	AIS2D_KOP_CYLINDRIC,
	AIS2D_KOP_DIAMETER,
	AIS2D_KOP_FLATNESS,
	AIS2D_KOP_LENGTH,
	AIS2D_KOP_LINEPROFILE,
	AIS2D_KOP_PARALLELISM,
	AIS2D_KOP_PERPENDICULAR,
	AIS2D_KOP_POINT,
	AIS2D_KOP_RADIUS,
	AIS2D_KOP_RADIUSINDEP,
	AIS2D_KOP_REPERE,
	AIS2D_KOP_STRAIGHTNESS,
	AIS2D_KOP_SURFPROFILE,
	AIS2D_KOP_SYMCIRCULAR,
	AIS2D_KOP_SYMMETRY,
	AIS2D_KOP_SYMTOTAL,
	AIS2D_KOP_TAPER,
	AIS2D_KOP_TOLERANCEFRAME,
	};

enum AIS2D_ClearMode {
	AIS2D_CM_All,
	AIS2D_CM_Interactive,
	AIS2D_CM_StandardModes,
	AIS2D_CM_TemporaryShapePrs,
	};



%nodefaultctor Handle_AIS2D_ListNodeOfListOfIO;
class Handle_AIS2D_ListNodeOfListOfIO : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_ListNodeOfListOfIO();
		%feature("autodoc", "1");
		Handle_AIS2D_ListNodeOfListOfIO(const Handle_AIS2D_ListNodeOfListOfIO &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_ListNodeOfListOfIO(const AIS2D_ListNodeOfListOfIO *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_ListNodeOfListOfIO & operator=(const Handle_AIS2D_ListNodeOfListOfIO &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_ListNodeOfListOfIO & operator=(const AIS2D_ListNodeOfListOfIO *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_ListNodeOfListOfIO DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_ListNodeOfListOfIO {
	AIS2D_ListNodeOfListOfIO* GetObject() {
	return (AIS2D_ListNodeOfListOfIO*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_ListNodeOfListOfIO::~Handle_AIS2D_ListNodeOfListOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_ListNodeOfListOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit;
class Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit();
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit(const Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit(const AIS2D_SequenceNodeOfSequenceOfPrimArchit *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit & operator=(const Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit & operator=(const AIS2D_SequenceNodeOfSequenceOfPrimArchit *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit {
	AIS2D_SequenceNodeOfSequenceOfPrimArchit* GetObject() {
	return (AIS2D_SequenceNodeOfSequenceOfPrimArchit*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit::~Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_GlobalStatus;
class Handle_AIS2D_GlobalStatus : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus();
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus(const Handle_AIS2D_GlobalStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus(const AIS2D_GlobalStatus *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus & operator=(const Handle_AIS2D_GlobalStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus & operator=(const AIS2D_GlobalStatus *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_GlobalStatus DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_GlobalStatus {
	AIS2D_GlobalStatus* GetObject() {
	return (AIS2D_GlobalStatus*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_GlobalStatus::~Handle_AIS2D_GlobalStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_GlobalStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_LocalContext;
class Handle_AIS2D_LocalContext : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext();
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext(const Handle_AIS2D_LocalContext &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext(const AIS2D_LocalContext *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext & operator=(const Handle_AIS2D_LocalContext &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext & operator=(const AIS2D_LocalContext *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_LocalContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_LocalContext {
	AIS2D_LocalContext* GetObject() {
	return (AIS2D_LocalContext*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_LocalContext::~Handle_AIS2D_LocalContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_LocalContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_InteractiveObject;
class Handle_AIS2D_InteractiveObject : public Handle_Graphic2d_GraphicObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject();
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject(const Handle_AIS2D_InteractiveObject &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject(const AIS2D_InteractiveObject *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & operator=(const Handle_AIS2D_InteractiveObject &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & operator=(const AIS2D_InteractiveObject *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_InteractiveObject DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_InteractiveObject {
	AIS2D_InteractiveObject* GetObject() {
	return (AIS2D_InteractiveObject*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_InteractiveObject::~Handle_AIS2D_InteractiveObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_InteractiveObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_ProjShape;
class Handle_AIS2D_ProjShape : public Handle_AIS2D_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_ProjShape();
		%feature("autodoc", "1");
		Handle_AIS2D_ProjShape(const Handle_AIS2D_ProjShape &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_ProjShape(const AIS2D_ProjShape *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_ProjShape & operator=(const Handle_AIS2D_ProjShape &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_ProjShape & operator=(const AIS2D_ProjShape *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_ProjShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_ProjShape {
	AIS2D_ProjShape* GetObject() {
	return (AIS2D_ProjShape*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_ProjShape::~Handle_AIS2D_ProjShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_ProjShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_DataMapNodeOfDataMapOfLC;
class Handle_AIS2D_DataMapNodeOfDataMapOfLC : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLC();
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLC(const Handle_AIS2D_DataMapNodeOfDataMapOfLC &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLC(const AIS2D_DataMapNodeOfDataMapOfLC *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLC & operator=(const Handle_AIS2D_DataMapNodeOfDataMapOfLC &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLC & operator=(const AIS2D_DataMapNodeOfDataMapOfLC *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_DataMapNodeOfDataMapOfLC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_DataMapNodeOfDataMapOfLC {
	AIS2D_DataMapNodeOfDataMapOfLC* GetObject() {
	return (AIS2D_DataMapNodeOfDataMapOfLC*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_DataMapNodeOfDataMapOfLC::~Handle_AIS2D_DataMapNodeOfDataMapOfLC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_DataMapNodeOfDataMapOfLC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_SequenceNodeOfSequenceOfIO;
class Handle_AIS2D_SequenceNodeOfSequenceOfIO : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfIO();
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfIO(const Handle_AIS2D_SequenceNodeOfSequenceOfIO &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfIO(const AIS2D_SequenceNodeOfSequenceOfIO *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfIO & operator=(const Handle_AIS2D_SequenceNodeOfSequenceOfIO &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_SequenceNodeOfSequenceOfIO & operator=(const AIS2D_SequenceNodeOfSequenceOfIO *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_SequenceNodeOfSequenceOfIO DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_SequenceNodeOfSequenceOfIO {
	AIS2D_SequenceNodeOfSequenceOfIO* GetObject() {
	return (AIS2D_SequenceNodeOfSequenceOfIO*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_SequenceNodeOfSequenceOfIO::~Handle_AIS2D_SequenceNodeOfSequenceOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_SequenceNodeOfSequenceOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_LocalStatus;
class Handle_AIS2D_LocalStatus : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus();
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus(const Handle_AIS2D_LocalStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus(const AIS2D_LocalStatus *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus & operator=(const Handle_AIS2D_LocalStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus & operator=(const AIS2D_LocalStatus *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_LocalStatus DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_LocalStatus {
	AIS2D_LocalStatus* GetObject() {
	return (AIS2D_LocalStatus*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_LocalStatus::~Handle_AIS2D_LocalStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_LocalStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_DataMapNodeOfDataMapOfLocStat;
class Handle_AIS2D_DataMapNodeOfDataMapOfLocStat : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLocStat();
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLocStat(const Handle_AIS2D_DataMapNodeOfDataMapOfLocStat &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLocStat(const AIS2D_DataMapNodeOfDataMapOfLocStat *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLocStat & operator=(const Handle_AIS2D_DataMapNodeOfDataMapOfLocStat &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfLocStat & operator=(const AIS2D_DataMapNodeOfDataMapOfLocStat *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_DataMapNodeOfDataMapOfLocStat DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_DataMapNodeOfDataMapOfLocStat {
	AIS2D_DataMapNodeOfDataMapOfLocStat* GetObject() {
	return (AIS2D_DataMapNodeOfDataMapOfLocStat*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_DataMapNodeOfDataMapOfLocStat::~Handle_AIS2D_DataMapNodeOfDataMapOfLocStat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_DataMapNodeOfDataMapOfLocStat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects;
class Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects();
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects(const Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects(const AIS2D_DataMapNodeOfDataMapOfPrimAspects *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects & operator=(const Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects & operator=(const AIS2D_DataMapNodeOfDataMapOfPrimAspects *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects {
	AIS2D_DataMapNodeOfDataMapOfPrimAspects* GetObject() {
	return (AIS2D_DataMapNodeOfDataMapOfPrimAspects*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects::~Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus;
class Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus();
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus(const Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus(const AIS2D_DataMapNodeOfDataMapOfIOStatus *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus & operator=(const Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus & operator=(const AIS2D_DataMapNodeOfDataMapOfIOStatus *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus {
	AIS2D_DataMapNodeOfDataMapOfIOStatus* GetObject() {
	return (AIS2D_DataMapNodeOfDataMapOfIOStatus*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus::~Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_HSequenceOfPrimArchit;
class Handle_AIS2D_HSequenceOfPrimArchit : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfPrimArchit();
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfPrimArchit(const Handle_AIS2D_HSequenceOfPrimArchit &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfPrimArchit(const AIS2D_HSequenceOfPrimArchit *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfPrimArchit & operator=(const Handle_AIS2D_HSequenceOfPrimArchit &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfPrimArchit & operator=(const AIS2D_HSequenceOfPrimArchit *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_HSequenceOfPrimArchit DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_HSequenceOfPrimArchit {
	AIS2D_HSequenceOfPrimArchit* GetObject() {
	return (AIS2D_HSequenceOfPrimArchit*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_HSequenceOfPrimArchit::~Handle_AIS2D_HSequenceOfPrimArchit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_HSequenceOfPrimArchit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_PrimitiveArchit;
class Handle_AIS2D_PrimitiveArchit : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit();
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit(const Handle_AIS2D_PrimitiveArchit &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit(const AIS2D_PrimitiveArchit *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit & operator=(const Handle_AIS2D_PrimitiveArchit &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit & operator=(const AIS2D_PrimitiveArchit *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_PrimitiveArchit DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_PrimitiveArchit {
	AIS2D_PrimitiveArchit* GetObject() {
	return (AIS2D_PrimitiveArchit*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_PrimitiveArchit::~Handle_AIS2D_PrimitiveArchit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_PrimitiveArchit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_HSequenceOfIO;
class Handle_AIS2D_HSequenceOfIO : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfIO();
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfIO(const Handle_AIS2D_HSequenceOfIO &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfIO(const AIS2D_HSequenceOfIO *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfIO & operator=(const Handle_AIS2D_HSequenceOfIO &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfIO & operator=(const AIS2D_HSequenceOfIO *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_HSequenceOfIO DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_HSequenceOfIO {
	AIS2D_HSequenceOfIO* GetObject() {
	return (AIS2D_HSequenceOfIO*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_HSequenceOfIO::~Handle_AIS2D_HSequenceOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_HSequenceOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_AIS2D_InteractiveContext;
class Handle_AIS2D_InteractiveContext : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveContext();
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveContext(const Handle_AIS2D_InteractiveContext &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveContext(const AIS2D_InteractiveContext *anItem);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveContext & operator=(const Handle_AIS2D_InteractiveContext &aHandle);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveContext & operator=(const AIS2D_InteractiveContext *anItem);
		%feature("autodoc", "1");
		static		Handle_AIS2D_InteractiveContext DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS2D_InteractiveContext {
	AIS2D_InteractiveContext* GetObject() {
	return (AIS2D_InteractiveContext*)$self->Access();
	}
};
%feature("shadow") Handle_AIS2D_InteractiveContext::~Handle_AIS2D_InteractiveContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AIS2D_InteractiveContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_SequenceOfPrimArchit;
class AIS2D_SequenceOfPrimArchit : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AIS2D_SequenceOfPrimArchit();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AIS2D_SequenceOfPrimArchit & Assign(const AIS2D_SequenceOfPrimArchit &Other);
		%feature("autodoc", "1");
		const AIS2D_SequenceOfPrimArchit & operator=(const AIS2D_SequenceOfPrimArchit &Other);
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_PrimitiveArchit &T);
		%feature("autodoc", "1");
		void Append(AIS2D_SequenceOfPrimArchit & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_PrimitiveArchit &T);
		%feature("autodoc", "1");
		void Prepend(AIS2D_SequenceOfPrimArchit & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_AIS2D_PrimitiveArchit &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AIS2D_SequenceOfPrimArchit & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_AIS2D_PrimitiveArchit &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AIS2D_SequenceOfPrimArchit & S);
		%feature("autodoc", "1");
		const Handle_AIS2D_PrimitiveArchit & First() const;
		%feature("autodoc", "1");
		const Handle_AIS2D_PrimitiveArchit & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AIS2D_SequenceOfPrimArchit & S);
		%feature("autodoc", "1");
		const Handle_AIS2D_PrimitiveArchit & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_AIS2D_PrimitiveArchit & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_AIS2D_PrimitiveArchit &I);
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") AIS2D_SequenceOfPrimArchit::~AIS2D_SequenceOfPrimArchit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_SequenceOfPrimArchit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_ListIteratorOfListOfIO;
class AIS2D_ListIteratorOfListOfIO {
	public:
		%feature("autodoc", "1");
		AIS2D_ListIteratorOfListOfIO();
		%feature("autodoc", "1");
		AIS2D_ListIteratorOfListOfIO(const AIS2D_ListOfIO &L);
		%feature("autodoc", "1");
		void Initialize(const AIS2D_ListOfIO &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & Value() const;

};
%feature("shadow") AIS2D_ListIteratorOfListOfIO::~AIS2D_ListIteratorOfListOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_ListIteratorOfListOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapOfLC;
class AIS2D_DataMapOfLC : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapOfLC(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS2D_DataMapOfLC & Assign(const AIS2D_DataMapOfLC &Other);
		%feature("autodoc", "1");
		AIS2D_DataMapOfLC & operator=(const AIS2D_DataMapOfLC &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_AIS2D_LocalContext &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_AIS2D_LocalContext & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_AIS2D_LocalContext & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext & operator()(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Standard_Integer &K);

};
%feature("shadow") AIS2D_DataMapOfLC::~AIS2D_DataMapOfLC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapOfLC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_LocalStatus;
class AIS2D_LocalStatus : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS2D_LocalStatus(const Standard_Boolean isTemporary=1, const Standard_Boolean Decompose=0, const Standard_Integer DMode=-0x00000000000000001, const Standard_Integer SMode=-0x00000000000000001, const AIS2D_TypeOfDetection HMode=AIS2D_TOD_PRIMITIVE, const Standard_Boolean SubIntensity=0, const Quantity_NameOfColor HighlCol=Quantity_NOC_WHITE);
		%feature("autodoc", "1");
		Standard_Boolean Decomposed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTemporary() const;
		%feature("autodoc", "1");
		Standard_Integer DisplayMode() const;
		%feature("autodoc", "1");
		AIS2D_PToListOfInt SelectionModes();
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const Standard_Integer aSelMode) const;
		%feature("autodoc", "1");
		AIS2D_TypeOfDetection HighlightMode() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSubIntensityOn() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor HighlightColor() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFirstDisplay() const;
		%feature("autodoc", "1");
		void SetDecomposition(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		void SetTemporary(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		void SetDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void SetFirstDisplay(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		void AddSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void RemoveSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void ClearSelectionModes();
		%feature("autodoc", "1");
		Standard_Boolean IsSelModeIn(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void SetHighlightMode(const AIS2D_TypeOfDetection aMode);
		%feature("autodoc", "1");
		void SetHighlightColor(const Quantity_NameOfColor aHiCol);
		%feature("autodoc", "1");
		void SubIntensityOn();
		%feature("autodoc", "1");
		void SubIntensityOff();
		%feature("autodoc", "1");
		void SetPreviousState(const Handle_Standard_Transient &aStatus);
		%feature("autodoc", "1");
		Handle_Standard_Transient PreviousState() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_LocalStatus {
	Handle_AIS2D_LocalStatus GetHandle() {
	return *(Handle_AIS2D_LocalStatus*) &$self;
	}
};
%extend AIS2D_LocalStatus {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_LocalStatus::~AIS2D_LocalStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_LocalStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_InteractiveObject;
class AIS2D_InteractiveObject : public Graphic2d_GraphicObject {
	public:
		%feature("autodoc", "1");
		AIS2D_InteractiveObject();
		%feature("autodoc", "1");
		Handle_Prs2d_Drawer Attributes() const;
		%feature("autodoc", "1");
		virtual		void SetAttributes(const Handle_Prs2d_Drawer &aDrawer);
		%feature("autodoc", "1");
		virtual		void UnsetAttributes();
		%feature("autodoc", "1");
		void SetAspect(const Handle_Prs2d_AspectRoot &anAspect);
		%feature("autodoc", "1");
		void SetAspect(const Handle_Prs2d_AspectRoot &anAspect, const Handle_Graphic2d_Primitive &aPrimitive);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot GetAspect(const Handle_Graphic2d_Primitive &aPrimitive) const;
		%feature("autodoc", "1");
		Standard_Boolean HasAspect(const Handle_Graphic2d_Primitive &aPrimitive) const;
		%feature("autodoc", "1");
		Standard_Boolean HasInteractiveContext() const;
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveContext GetContext() const;
		%feature("autodoc", "1");
		virtual		void SetContext(const Handle_AIS2D_InteractiveContext &aCntx);
		%feature("autodoc", "1");
		Standard_Integer DisplayMode() const;
		%feature("autodoc", "1");
		Standard_Boolean HasDisplayMode() const;
		%feature("autodoc", "1");
		void SetDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void UnsetDisplayMode();
		%feature("autodoc", "1");
		virtual		Standard_Integer DefaultDisplayMode() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptDisplayMode(const Standard_Integer arg0) const;
		%feature("autodoc", "1");
		AIS2D_TypeOfDetection HighlightMode() const;
		%feature("autodoc", "1");
		Standard_Boolean HasHighlightMode() const;
		%feature("autodoc", "1");
		void SetHighlightMode(const AIS2D_TypeOfDetection aMode);
		%feature("autodoc", "1");
		void UnsetHighlightMode();
		%feature("autodoc", "1");
		virtual		AIS2D_TypeOfDetection DefaultHighlightMode() const;
		%feature("autodoc", "1");
		Standard_Integer SelectionMode() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSelectionMode() const;
		%feature("autodoc", "1");
		void SetSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void UnsetSelectionMode();
		%feature("autodoc", "1");
		virtual		Standard_Integer DefaultSelectionMode() const;
		%feature("autodoc", "1");
		Standard_Integer State() const;
		%feature("autodoc", "1");
		void SetState(const Standard_Integer aState);
		%feature("autodoc", "1");
		void SelectPrimitive(const Standard_Integer anIndex, const Standard_Boolean append);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		void Retrieve(Aspect_IFStream & anIFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_InteractiveObject {
	Handle_AIS2D_InteractiveObject GetHandle() {
	return *(Handle_AIS2D_InteractiveObject*) &$self;
	}
};
%extend AIS2D_InteractiveObject {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_InteractiveObject::~AIS2D_InteractiveObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_InteractiveObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapNodeOfDataMapOfPrimAspects;
class AIS2D_DataMapNodeOfDataMapOfPrimAspects : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapNodeOfDataMapOfPrimAspects(const Handle_Graphic2d_Primitive &K, const Handle_Prs2d_AspectRoot &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive & Key() const;
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_DataMapNodeOfDataMapOfPrimAspects {
	Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects GetHandle() {
	return *(Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects*) &$self;
	}
};
%extend AIS2D_DataMapNodeOfDataMapOfPrimAspects {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_DataMapNodeOfDataMapOfPrimAspects::~AIS2D_DataMapNodeOfDataMapOfPrimAspects %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapNodeOfDataMapOfPrimAspects {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_GlobalStatus;
class AIS2D_GlobalStatus : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS2D_GlobalStatus();
		%feature("autodoc", "1");
		AIS2D_GlobalStatus(const AIS2D_DisplayStatus aStat, const Standard_Integer aDMode, const Standard_Integer aSMode, const Standard_Boolean isHighlight=0, const Quantity_NameOfColor aHighlCol=Quantity_NOC_WHITE, const Standard_Integer aLayerIndex=0);
		%feature("autodoc", "1");
		void SetGraphicStatus(const AIS2D_DisplayStatus aStat);
		%feature("autodoc", "1");
		void AddDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void RemoveDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		Standard_Boolean IsDModeIn(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void AddSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void RemoveSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void ClearSelectionModes();
		%feature("autodoc", "1");
		Standard_Boolean IsSModeIn(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void SetLayerIndex(const Standard_Integer AnIndex);
		%feature("autodoc", "1");
		void SetHighlightStatus(const Standard_Boolean aStat);
		%feature("autodoc", "1");
		void SetHighlightColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		Standard_Boolean IsSubIntensityOn() const;
		%feature("autodoc", "1");
		void SubIntensityOn();
		%feature("autodoc", "1");
		void SubIntensityOff();
		%feature("autodoc", "1");
		AIS2D_DisplayStatus GraphicStatus() const;
		%feature("autodoc", "1");
		AIS2D_PToListOfInt DisplayedModes();
		%feature("autodoc", "1");
		AIS2D_PToListOfInt SelectionModes();
		%feature("autodoc", "1");
		Standard_Boolean IsHighlight() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor HighlightColor() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_GlobalStatus {
	Handle_AIS2D_GlobalStatus GetHandle() {
	return *(Handle_AIS2D_GlobalStatus*) &$self;
	}
};
%extend AIS2D_GlobalStatus {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_GlobalStatus::~AIS2D_GlobalStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_GlobalStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapIteratorOfDataMapOfLC;
class AIS2D_DataMapIteratorOfDataMapOfLC : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfLC();
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfLC(const AIS2D_DataMapOfLC &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS2D_DataMapOfLC &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_AIS2D_LocalContext & Value() const;

};
%feature("shadow") AIS2D_DataMapIteratorOfDataMapOfLC::~AIS2D_DataMapIteratorOfDataMapOfLC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapIteratorOfDataMapOfLC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_ListOfIO;
class AIS2D_ListOfIO {
	public:
		%feature("autodoc", "1");
		AIS2D_ListOfIO();
		%feature("autodoc", "1");
		void Assign(const AIS2D_ListOfIO &Other);
		%feature("autodoc", "1");
		void operator=(const AIS2D_ListOfIO &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_InteractiveObject &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_InteractiveObject &I, AIS2D_ListIteratorOfListOfIO & theIt);
		%feature("autodoc", "1");
		void Prepend(AIS2D_ListOfIO & Other);
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_InteractiveObject &I);
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_InteractiveObject &I, AIS2D_ListIteratorOfListOfIO & theIt);
		%feature("autodoc", "1");
		void Append(AIS2D_ListOfIO & Other);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & First() const;
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(AIS2D_ListIteratorOfListOfIO & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_AIS2D_InteractiveObject &I, AIS2D_ListIteratorOfListOfIO & It);
		%feature("autodoc", "1");
		void InsertBefore(AIS2D_ListOfIO & Other, AIS2D_ListIteratorOfListOfIO & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_AIS2D_InteractiveObject &I, AIS2D_ListIteratorOfListOfIO & It);
		%feature("autodoc", "1");
		void InsertAfter(AIS2D_ListOfIO & Other, AIS2D_ListIteratorOfListOfIO & It);

};
%feature("shadow") AIS2D_ListOfIO::~AIS2D_ListOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_ListOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapNodeOfDataMapOfLocStat;
class AIS2D_DataMapNodeOfDataMapOfLocStat : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapNodeOfDataMapOfLocStat(const Handle_AIS2D_InteractiveObject &K, const Handle_AIS2D_LocalStatus &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & Key() const;
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_DataMapNodeOfDataMapOfLocStat {
	Handle_AIS2D_DataMapNodeOfDataMapOfLocStat GetHandle() {
	return *(Handle_AIS2D_DataMapNodeOfDataMapOfLocStat*) &$self;
	}
};
%extend AIS2D_DataMapNodeOfDataMapOfLocStat {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_DataMapNodeOfDataMapOfLocStat::~AIS2D_DataMapNodeOfDataMapOfLocStat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapNodeOfDataMapOfLocStat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_ListNodeOfListOfIO;
class AIS2D_ListNodeOfListOfIO : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS2D_ListNodeOfListOfIO(const Handle_AIS2D_InteractiveObject &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_ListNodeOfListOfIO {
	Handle_AIS2D_ListNodeOfListOfIO GetHandle() {
	return *(Handle_AIS2D_ListNodeOfListOfIO*) &$self;
	}
};
%extend AIS2D_ListNodeOfListOfIO {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_ListNodeOfListOfIO::~AIS2D_ListNodeOfListOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_ListNodeOfListOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_ProjShape;
class AIS2D_ProjShape : public AIS2D_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS2D_ProjShape();
		%feature("autodoc", "1");
		AIS2D_ProjShape(const HLRAlgo_Projector &aProjector, const Standard_Integer nbIsos=3, const Standard_Boolean isPolyAlgo=0, const Standard_Boolean visHL=1);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape aShape);
		%feature("autodoc", "1");
		void SetProjector(const HLRAlgo_Projector &aProjector);
		%feature("autodoc", "1");
		void SetNbIsos(const Standard_Integer aNbIsos);
		%feature("autodoc", "1");
		void SetPolyAlgo(const Standard_Boolean aIsPoly=0);
		%feature("autodoc", "1");
		void SetHLMode(const Standard_Boolean aIsHLM=1);
		%feature("autodoc", "1");
		Standard_Boolean IsHLMode() const;
		%feature("autodoc", "1");
		Standard_Integer GetNbIsos() const;
		%feature("autodoc", "1");
		Standard_Boolean GetIsPoly() const;
		%feature("autodoc", "1");
		Handle_Graphic2d_Line GetPrimitives() const;
		%feature("autodoc", "1");
		Handle_Graphic2d_Line GetHLPrimitives() const;
		%feature("autodoc", "1");
		void ShowEdges(const Standard_Boolean aSharp=1, const Standard_Boolean aSmooth=1, const Standard_Boolean aSewn=1, const Standard_Boolean anOutline=1, const Standard_Boolean anIsoline=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_ProjShape {
	Handle_AIS2D_ProjShape GetHandle() {
	return *(Handle_AIS2D_ProjShape*) &$self;
	}
};
%extend AIS2D_ProjShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_ProjShape::~AIS2D_ProjShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_ProjShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapIteratorOfDataMapOfPrimAspects;
class AIS2D_DataMapIteratorOfDataMapOfPrimAspects : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfPrimAspects();
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfPrimAspects(const AIS2D_DataMapOfPrimAspects &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS2D_DataMapOfPrimAspects &aMap);
		%feature("autodoc", "1");
		const Handle_Graphic2d_Primitive & Key() const;
		%feature("autodoc", "1");
		const Handle_Prs2d_AspectRoot & Value() const;

};
%feature("shadow") AIS2D_DataMapIteratorOfDataMapOfPrimAspects::~AIS2D_DataMapIteratorOfDataMapOfPrimAspects %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapIteratorOfDataMapOfPrimAspects {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_InteractiveContext;
class AIS2D_InteractiveContext : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS2D_InteractiveContext(const Handle_V2d_Viewer &MainViewer);
		%feature("autodoc", "1");
		AIS2D_InteractiveContext(const Handle_V2d_Viewer &MainViewer, const Handle_V2d_Viewer &aCollector);
		%feature("autodoc", "1");
		void Display(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void Display(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Integer aDispMode, const Standard_Integer aSelectMode, const Standard_Boolean UpdateVwr=1, const Standard_Boolean AllowDecomp=1);
		%feature("autodoc", "1");
		void Load(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Integer SelMode=-0x00000000000000001, const Standard_Boolean AllowDecomp=0);
		%feature("autodoc", "1");
		void Erase(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1, const Standard_Boolean PutInCollector=1);
		%feature("autodoc", "1");
		void EraseAll(const Standard_Boolean PutInCollector=1, const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void DisplayAll(const Standard_Boolean OnlyFromCollector=1, const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void EraseSelected(const Standard_Boolean PutInCollector=1, const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void DisplaySelected(const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		Standard_Boolean KeepTemporary(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Integer InWhichLocal=-0x00000000000000001);
		%feature("autodoc", "1");
		void Redisplay(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean updateVwr=1, const Standard_Boolean allModes=0);
		%feature("autodoc", "1");
		Standard_Boolean IsCurrent(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		void Highlight(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void HighlightWithColor(const Handle_AIS2D_InteractiveObject &anIObj, const Quantity_NameOfColor aCol, const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void Unhighlight(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Integer aPrec);
		%feature("autodoc", "1");
		Standard_Integer DetectPrecision() const;
		%feature("autodoc", "1");
		void Place(const Standard_Integer XPix, const Standard_Integer YPix, const Handle_V2d_View &aView, const Handle_AIS2D_InteractiveObject &anIO, const Standard_Boolean isTemporary=0);
		%feature("autodoc", "1");
		void Drag(const Standard_Integer XPix, const Standard_Integer YPix, const Handle_V2d_View &aView, const Standard_Boolean isTemporary=1);
		%feature("autodoc", "1");
		AIS2D_StatusOfDetection MoveTo(const Standard_Integer XPix, const Standard_Integer YPix, const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		AIS2D_StatusOfDetection MoveCircleTo(const Standard_Integer XPix, const Standard_Integer YPix, const Standard_Integer Radius, const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		AIS2D_StatusOfDetection MoveTo(const Standard_Integer Xmin, const Standard_Integer Ymin, const Standard_Integer Xmax, const Standard_Integer Ymax, const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		AIS2D_StatusOfPick Select(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		AIS2D_StatusOfPick ShiftSelect(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		AIS2D_StatusOfPick ShiftSelect(const Standard_Integer XPMin, const Standard_Integer YPMin, const Standard_Integer XPMax, const Standard_Integer YPMax, const Handle_V2d_View &aView, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void SetHighlightColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void SetSelectionColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void SetSubIntensityColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		Standard_Integer DisplayMode() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor HighlightColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor SelectionColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor SubIntensityColor() const;
		%feature("autodoc", "1");
		void SubIntensityOn(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void SubIntensityOff(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		Standard_Boolean IsCollectorClosed() const;
		%feature("autodoc", "1");
		void CloseCollector();
		%feature("autodoc", "1");
		void OpenCollector();
		%feature("autodoc", "1");
		Standard_Integer OpenLocalContext(const Standard_Boolean UseDispObj=1, const Standard_Boolean AllowDecomposit=1, const Standard_Boolean AcceptEraseOfObj=0);
		%feature("autodoc", "1");
		void CloseLocalContext(const Standard_Integer ind=-0x00000000000000001, const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		Standard_Integer IndexOfCurrentLocal() const;
		%feature("autodoc", "1");
		void CloseAllContext(const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void SetCurrentObject(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void AddOrRemoveCurObject(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void UpdateCurrent();
		%feature("autodoc", "1");
		void SetOkCurrent();
		%feature("autodoc", "1");
		void HighlightCurrent(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void UnhighlightCurrent(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void ClearCurrent(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void SetSelected(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void SetSelectedCurrent();
		%feature("autodoc", "1");
		void UpdateSelected(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void HighlightSelected(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void UnhighlightSelected(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void ClearSelected(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		Standard_Integer NbSelected() const;
		%feature("autodoc", "1");
		void InitSelected();
		%feature("autodoc", "1");
		Standard_Boolean MoreSelected() const;
		%feature("autodoc", "1");
		void NextSelected();
		%feature("autodoc", "1");
		Handle_MMgt_TShared SelectedObject() const;
		%feature("autodoc", "1");
		AIS2D_DisplayStatus DisplayStatus(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		AIS2D_PToListOfInt DisplayedModes(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHighlighted(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHighlighted(const Handle_AIS2D_InteractiveObject &anIObj, Standard_Boolean & WithColor, Quantity_NameOfColor & theHiCol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInCollector(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		void Status(const Handle_AIS2D_InteractiveObject &anIObj, TCollection_ExtendedString & aStatus) const;
		%feature("autodoc", "1");
		void UpdateCurrentViewer();
		%feature("autodoc", "1");
		void UpdateCollector();
		%feature("autodoc", "1");
		Handle_V2d_Viewer CurrentViewer() const;
		%feature("autodoc", "1");
		Standard_Boolean HasOpenedContext() const;
		%feature("autodoc", "1");
		void DisplayedObjects(AIS2D_ListOfIO & aListOfIO, const Standard_Boolean OnlyFromNeutral=0) const;
		%feature("autodoc", "1");
		void SetPickMode(const Graphic2d_PickMode aPickMode);
		%feature("autodoc", "1");
		Graphic2d_PickMode GetPickMode() const;
		%feature("autodoc", "1");
		Standard_Integer HighestIndex() const;
		%feature("autodoc", "1");
		Standard_Integer InitializeColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		Standard_Integer InitializeStyle(const Aspect_TypeOfLine aType);
		%feature("autodoc", "1");
		Standard_Integer InitializeWidth(const Aspect_WidthOfLine aWidth);
		%feature("autodoc", "1");
		Standard_Integer InitializeMarker(const Aspect_TypeOfMarker aMark);
		%feature("autodoc", "1");
		Standard_Integer InitializeFont(const Aspect_FontStyle &aFont);
		%feature("autodoc", "1");
		void ResetOriginalState(const Standard_Boolean updateVwr=1);
		%feature("autodoc", "1");
		void BeginImmediateDraw(const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		void ImmediateDraw(const Handle_AIS2D_InteractiveObject &anIObj, const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		void EndImmediateDraw(const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		Standard_Boolean IsImmediateModeOn(const Handle_V2d_View &aView) const;
		%feature("autodoc", "1");
		void SetDetectionMode(const AIS2D_TypeOfDetection mode);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_InteractiveContext {
	Handle_AIS2D_InteractiveContext GetHandle() {
	return *(Handle_AIS2D_InteractiveContext*) &$self;
	}
};
%extend AIS2D_InteractiveContext {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_InteractiveContext::~AIS2D_InteractiveContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_InteractiveContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapOfIOStatus;
class AIS2D_DataMapOfIOStatus : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapOfIOStatus(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS2D_DataMapOfIOStatus & Assign(const AIS2D_DataMapOfIOStatus &Other);
		%feature("autodoc", "1");
		AIS2D_DataMapOfIOStatus & operator=(const AIS2D_DataMapOfIOStatus &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_AIS2D_InteractiveObject &K, const Handle_AIS2D_GlobalStatus &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_AIS2D_InteractiveObject &K);
		%feature("autodoc", "1");
		const Handle_AIS2D_GlobalStatus & Find(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		const Handle_AIS2D_GlobalStatus & operator()(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus & ChangeFind(const Handle_AIS2D_InteractiveObject &K);
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus & operator()(const Handle_AIS2D_InteractiveObject &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Handle_AIS2D_InteractiveObject &K);

};
%feature("shadow") AIS2D_DataMapOfIOStatus::~AIS2D_DataMapOfIOStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapOfIOStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_SequenceNodeOfSequenceOfIO;
class AIS2D_SequenceNodeOfSequenceOfIO : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AIS2D_SequenceNodeOfSequenceOfIO(const Handle_AIS2D_InteractiveObject &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_SequenceNodeOfSequenceOfIO {
	Handle_AIS2D_SequenceNodeOfSequenceOfIO GetHandle() {
	return *(Handle_AIS2D_SequenceNodeOfSequenceOfIO*) &$self;
	}
};
%extend AIS2D_SequenceNodeOfSequenceOfIO {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_SequenceNodeOfSequenceOfIO::~AIS2D_SequenceNodeOfSequenceOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_SequenceNodeOfSequenceOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_HSequenceOfIO;
class AIS2D_HSequenceOfIO : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS2D_HSequenceOfIO();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_InteractiveObject &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_HSequenceOfIO &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_InteractiveObject &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_HSequenceOfIO &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_AIS2D_InteractiveObject &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_AIS2D_HSequenceOfIO &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_AIS2D_InteractiveObject &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_AIS2D_HSequenceOfIO &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfIO Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_AIS2D_InteractiveObject &anItem);
		%feature("autodoc", "1");
		const Handle_AIS2D_InteractiveObject & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const AIS2D_SequenceOfIO & Sequence() const;
		%feature("autodoc", "1");
		AIS2D_SequenceOfIO & ChangeSequence();
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfIO ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_HSequenceOfIO {
	Handle_AIS2D_HSequenceOfIO GetHandle() {
	return *(Handle_AIS2D_HSequenceOfIO*) &$self;
	}
};
%extend AIS2D_HSequenceOfIO {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_HSequenceOfIO::~AIS2D_HSequenceOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_HSequenceOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapNodeOfDataMapOfLC;
class AIS2D_DataMapNodeOfDataMapOfLC : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapNodeOfDataMapOfLC(const Standard_Integer &K, const Handle_AIS2D_LocalContext &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		Handle_AIS2D_LocalContext & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_DataMapNodeOfDataMapOfLC {
	Handle_AIS2D_DataMapNodeOfDataMapOfLC GetHandle() {
	return *(Handle_AIS2D_DataMapNodeOfDataMapOfLC*) &$self;
	}
};
%extend AIS2D_DataMapNodeOfDataMapOfLC {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_DataMapNodeOfDataMapOfLC::~AIS2D_DataMapNodeOfDataMapOfLC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapNodeOfDataMapOfLC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapOfPrimAspects;
class AIS2D_DataMapOfPrimAspects : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapOfPrimAspects(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS2D_DataMapOfPrimAspects & Assign(const AIS2D_DataMapOfPrimAspects &Other);
		%feature("autodoc", "1");
		AIS2D_DataMapOfPrimAspects & operator=(const AIS2D_DataMapOfPrimAspects &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Graphic2d_Primitive &K, const Handle_Prs2d_AspectRoot &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Graphic2d_Primitive &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Graphic2d_Primitive &K);
		%feature("autodoc", "1");
		const Handle_Prs2d_AspectRoot & Find(const Handle_Graphic2d_Primitive &K) const;
		%feature("autodoc", "1");
		const Handle_Prs2d_AspectRoot & operator()(const Handle_Graphic2d_Primitive &K) const;
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot & ChangeFind(const Handle_Graphic2d_Primitive &K);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot & operator()(const Handle_Graphic2d_Primitive &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Handle_Graphic2d_Primitive &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Handle_Graphic2d_Primitive &K);

};
%feature("shadow") AIS2D_DataMapOfPrimAspects::~AIS2D_DataMapOfPrimAspects %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapOfPrimAspects {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapNodeOfDataMapOfIOStatus;
class AIS2D_DataMapNodeOfDataMapOfIOStatus : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapNodeOfDataMapOfIOStatus(const Handle_AIS2D_InteractiveObject &K, const Handle_AIS2D_GlobalStatus &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & Key() const;
		%feature("autodoc", "1");
		Handle_AIS2D_GlobalStatus & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_DataMapNodeOfDataMapOfIOStatus {
	Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus GetHandle() {
	return *(Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus*) &$self;
	}
};
%extend AIS2D_DataMapNodeOfDataMapOfIOStatus {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_DataMapNodeOfDataMapOfIOStatus::~AIS2D_DataMapNodeOfDataMapOfIOStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapNodeOfDataMapOfIOStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_SequenceOfIO;
class AIS2D_SequenceOfIO : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AIS2D_SequenceOfIO();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AIS2D_SequenceOfIO & Assign(const AIS2D_SequenceOfIO &Other);
		%feature("autodoc", "1");
		const AIS2D_SequenceOfIO & operator=(const AIS2D_SequenceOfIO &Other);
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_InteractiveObject &T);
		%feature("autodoc", "1");
		void Append(AIS2D_SequenceOfIO & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_InteractiveObject &T);
		%feature("autodoc", "1");
		void Prepend(AIS2D_SequenceOfIO & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_AIS2D_InteractiveObject &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AIS2D_SequenceOfIO & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_AIS2D_InteractiveObject &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AIS2D_SequenceOfIO & S);
		%feature("autodoc", "1");
		const Handle_AIS2D_InteractiveObject & First() const;
		%feature("autodoc", "1");
		const Handle_AIS2D_InteractiveObject & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AIS2D_SequenceOfIO & S);
		%feature("autodoc", "1");
		const Handle_AIS2D_InteractiveObject & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_AIS2D_InteractiveObject & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_AIS2D_InteractiveObject &I);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") AIS2D_SequenceOfIO::~AIS2D_SequenceOfIO %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_SequenceOfIO {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D;
class AIS2D {
	public:
		%feature("autodoc", "1");
		AIS2D();
		%feature("autodoc", "1");
		static		Standard_Boolean Save(const Handle_AIS2D_InteractiveContext &aCntx, const char * aFile);
		%feature("autodoc", "1");
		static		Handle_AIS2D_InteractiveObject Retrieve(const Handle_AIS2D_InteractiveContext &aCntx, const char * aFile);

};
%feature("shadow") AIS2D::~AIS2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_SequenceNodeOfSequenceOfPrimArchit;
class AIS2D_SequenceNodeOfSequenceOfPrimArchit : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AIS2D_SequenceNodeOfSequenceOfPrimArchit(const Handle_AIS2D_PrimitiveArchit &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_SequenceNodeOfSequenceOfPrimArchit {
	Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit GetHandle() {
	return *(Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit*) &$self;
	}
};
%extend AIS2D_SequenceNodeOfSequenceOfPrimArchit {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_SequenceNodeOfSequenceOfPrimArchit::~AIS2D_SequenceNodeOfSequenceOfPrimArchit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_SequenceNodeOfSequenceOfPrimArchit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapIteratorOfDataMapOfLocStat;
class AIS2D_DataMapIteratorOfDataMapOfLocStat : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfLocStat();
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfLocStat(const AIS2D_DataMapOfLocStat &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS2D_DataMapOfLocStat &aMap);
		%feature("autodoc", "1");
		const Handle_AIS2D_InteractiveObject & Key() const;
		%feature("autodoc", "1");
		const Handle_AIS2D_LocalStatus & Value() const;

};
%feature("shadow") AIS2D_DataMapIteratorOfDataMapOfLocStat::~AIS2D_DataMapIteratorOfDataMapOfLocStat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapIteratorOfDataMapOfLocStat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_PrimitiveArchit;
class AIS2D_PrimitiveArchit : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS2D_PrimitiveArchit(const Handle_Graphic2d_Primitive &aPrim, const Standard_Integer ind);
		%feature("autodoc", "1");
		Handle_Graphic2d_Primitive GetPrimitive() const;
		%feature("autodoc", "1");
		Standard_Integer GetIndex() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_PrimitiveArchit {
	Handle_AIS2D_PrimitiveArchit GetHandle() {
	return *(Handle_AIS2D_PrimitiveArchit*) &$self;
	}
};
%extend AIS2D_PrimitiveArchit {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_PrimitiveArchit::~AIS2D_PrimitiveArchit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_PrimitiveArchit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_HSequenceOfPrimArchit;
class AIS2D_HSequenceOfPrimArchit : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS2D_HSequenceOfPrimArchit();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_PrimitiveArchit &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_AIS2D_HSequenceOfPrimArchit &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_PrimitiveArchit &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS2D_HSequenceOfPrimArchit &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_AIS2D_PrimitiveArchit &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_AIS2D_HSequenceOfPrimArchit &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_AIS2D_PrimitiveArchit &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_AIS2D_HSequenceOfPrimArchit &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfPrimArchit Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_AIS2D_PrimitiveArchit &anItem);
		%feature("autodoc", "1");
		const Handle_AIS2D_PrimitiveArchit & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_AIS2D_PrimitiveArchit & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const AIS2D_SequenceOfPrimArchit & Sequence() const;
		%feature("autodoc", "1");
		AIS2D_SequenceOfPrimArchit & ChangeSequence();
		%feature("autodoc", "1");
		Handle_AIS2D_HSequenceOfPrimArchit ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_HSequenceOfPrimArchit {
	Handle_AIS2D_HSequenceOfPrimArchit GetHandle() {
	return *(Handle_AIS2D_HSequenceOfPrimArchit*) &$self;
	}
};
%extend AIS2D_HSequenceOfPrimArchit {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_HSequenceOfPrimArchit::~AIS2D_HSequenceOfPrimArchit %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_HSequenceOfPrimArchit {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_LocalContext;
class AIS2D_LocalContext : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS2D_LocalContext();
		%feature("autodoc", "1");
		AIS2D_LocalContext(const Handle_AIS2D_InteractiveContext &aCtx, const Standard_Integer anIndex, const Standard_Boolean LoadDisplayed=1, const Standard_Boolean AcceptStdModes=1, const Standard_Boolean AcceptErase=0);
		%feature("autodoc", "1");
		Standard_Boolean Display(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Integer DisplayMode=0, const Standard_Boolean AllowDecomp=1, const Standard_Integer ActivationMode=0);
		%feature("autodoc", "1");
		Standard_Boolean Load(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean AllowDecomp=1, const Standard_Integer ActivationMode=0);
		%feature("autodoc", "1");
		Standard_Boolean Erase(const Handle_AIS2D_InteractiveObject &anIObj);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_AIS2D_InteractiveObject &aSelObj);
		%feature("autodoc", "1");
		void LoadContextObjects();
		%feature("autodoc", "1");
		void UnloadContextObjects();
		%feature("autodoc", "1");
		void Terminate();
		%feature("autodoc", "1");
		void Clear(const AIS2D_ClearMode aType=AIS2D_CM_All);
		%feature("autodoc", "1");
		void HighlightPicked(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void UnhighlightPicked(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void UpdateSelected(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void SetSelected(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Handle_AIS2D_InteractiveObject SelectedIO() const;
		%feature("autodoc", "1");
		void SetDisplayPriority(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Integer Prior);
		%feature("autodoc", "1");
		Standard_Integer DisplayedObjects(TColStd_MapOfTransient & theMapToFill) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS2D_InteractiveObject &anIObj, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void Unhighlight(const Handle_AIS2D_InteractiveObject &anIObj);
		%feature("autodoc", "1");
		Standard_Boolean IsHighlight(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHighlight(const Handle_AIS2D_InteractiveObject &anIObj, Standard_Boolean & WithColor, Quantity_NameOfColor & HiCol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_AIS2D_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		void SubIntensityOn(const Handle_AIS2D_InteractiveObject &anIObj);
		%feature("autodoc", "1");
		void SubIntensityOff(const Handle_AIS2D_InteractiveObject &anIObj);
		%feature("autodoc", "1");
		Standard_Boolean UnhighLastDetect(const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		AIS2D_StatusOfDetection MoveTo(const Standard_Integer Xpix, const Standard_Integer Ypix, const Handle_V2d_View &aView);
		%feature("autodoc", "1");
		AIS2D_StatusOfPick Select(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		AIS2D_StatusOfPick ShiftSelect(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		void ClearSelected(const Standard_Boolean UpdateVwr=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS2D_LocalContext {
	Handle_AIS2D_LocalContext GetHandle() {
	return *(Handle_AIS2D_LocalContext*) &$self;
	}
};
%extend AIS2D_LocalContext {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") AIS2D_LocalContext::~AIS2D_LocalContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_LocalContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapOfLocStat;
class AIS2D_DataMapOfLocStat : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapOfLocStat(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS2D_DataMapOfLocStat & Assign(const AIS2D_DataMapOfLocStat &Other);
		%feature("autodoc", "1");
		AIS2D_DataMapOfLocStat & operator=(const AIS2D_DataMapOfLocStat &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_AIS2D_InteractiveObject &K, const Handle_AIS2D_LocalStatus &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_AIS2D_InteractiveObject &K);
		%feature("autodoc", "1");
		const Handle_AIS2D_LocalStatus & Find(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		const Handle_AIS2D_LocalStatus & operator()(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus & ChangeFind(const Handle_AIS2D_InteractiveObject &K);
		%feature("autodoc", "1");
		Handle_AIS2D_LocalStatus & operator()(const Handle_AIS2D_InteractiveObject &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Handle_AIS2D_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Handle_AIS2D_InteractiveObject &K);

};
%feature("shadow") AIS2D_DataMapOfLocStat::~AIS2D_DataMapOfLocStat %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapOfLocStat {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AIS2D_DataMapIteratorOfDataMapOfIOStatus;
class AIS2D_DataMapIteratorOfDataMapOfIOStatus : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfIOStatus();
		%feature("autodoc", "1");
		AIS2D_DataMapIteratorOfDataMapOfIOStatus(const AIS2D_DataMapOfIOStatus &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS2D_DataMapOfIOStatus &aMap);
		%feature("autodoc", "1");
		const Handle_AIS2D_InteractiveObject & Key() const;
		%feature("autodoc", "1");
		const Handle_AIS2D_GlobalStatus & Value() const;

};
%feature("shadow") AIS2D_DataMapIteratorOfDataMapOfIOStatus::~AIS2D_DataMapIteratorOfDataMapOfIOStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AIS2D_DataMapIteratorOfDataMapOfIOStatus {
	void _kill_pointed() {
		delete $self;
	}
};
