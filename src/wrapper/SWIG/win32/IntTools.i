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

%module IntTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntTools_renames.i


%include IntTools_required_python_modules.i


%include IntTools_dependencies.i


%include IntTools_headers.i

typedef IntTools_Context * IntTools_PContext;



%nodefaultctor Handle_IntTools_SequenceNodeOfSequenceOfCurves;
class Handle_IntTools_SequenceNodeOfSequenceOfCurves : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCurves();
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCurves(const Handle_IntTools_SequenceNodeOfSequenceOfCurves &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCurves(const IntTools_SequenceNodeOfSequenceOfCurves *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCurves & operator=(const Handle_IntTools_SequenceNodeOfSequenceOfCurves &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCurves & operator=(const IntTools_SequenceNodeOfSequenceOfCurves *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_SequenceNodeOfSequenceOfCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_SequenceNodeOfSequenceOfCurves {
	IntTools_SequenceNodeOfSequenceOfCurves* GetObject() {
	return (IntTools_SequenceNodeOfSequenceOfCurves*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_SequenceNodeOfSequenceOfCurves::~Handle_IntTools_SequenceNodeOfSequenceOfCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_SequenceNodeOfSequenceOfCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_ListNodeOfListOfCurveRangeSample;
class Handle_IntTools_ListNodeOfListOfCurveRangeSample : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfCurveRangeSample();
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfCurveRangeSample(const Handle_IntTools_ListNodeOfListOfCurveRangeSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfCurveRangeSample(const IntTools_ListNodeOfListOfCurveRangeSample *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfCurveRangeSample & operator=(const Handle_IntTools_ListNodeOfListOfCurveRangeSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfCurveRangeSample & operator=(const IntTools_ListNodeOfListOfCurveRangeSample *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_ListNodeOfListOfCurveRangeSample const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_ListNodeOfListOfCurveRangeSample {
	IntTools_ListNodeOfListOfCurveRangeSample* GetObject() {
	return (IntTools_ListNodeOfListOfCurveRangeSample*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_ListNodeOfListOfCurveRangeSample::~Handle_IntTools_ListNodeOfListOfCurveRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_ListNodeOfListOfCurveRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_ListNodeOfListOfSurfaceRangeSample;
class Handle_IntTools_ListNodeOfListOfSurfaceRangeSample : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfSurfaceRangeSample();
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfSurfaceRangeSample(const Handle_IntTools_ListNodeOfListOfSurfaceRangeSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfSurfaceRangeSample(const IntTools_ListNodeOfListOfSurfaceRangeSample *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfSurfaceRangeSample & operator=(const Handle_IntTools_ListNodeOfListOfSurfaceRangeSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfSurfaceRangeSample & operator=(const IntTools_ListNodeOfListOfSurfaceRangeSample *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_ListNodeOfListOfSurfaceRangeSample const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_ListNodeOfListOfSurfaceRangeSample {
	IntTools_ListNodeOfListOfSurfaceRangeSample* GetObject() {
	return (IntTools_ListNodeOfListOfSurfaceRangeSample*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_ListNodeOfListOfSurfaceRangeSample::~Handle_IntTools_ListNodeOfListOfSurfaceRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_ListNodeOfListOfSurfaceRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_ListNodeOfListOfBox;
class Handle_IntTools_ListNodeOfListOfBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfBox();
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfBox(const Handle_IntTools_ListNodeOfListOfBox &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfBox(const IntTools_ListNodeOfListOfBox *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfBox & operator=(const Handle_IntTools_ListNodeOfListOfBox &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_ListNodeOfListOfBox & operator=(const IntTools_ListNodeOfListOfBox *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_ListNodeOfListOfBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_ListNodeOfListOfBox {
	IntTools_ListNodeOfListOfBox* GetObject() {
	return (IntTools_ListNodeOfListOfBox*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_ListNodeOfListOfBox::~Handle_IntTools_ListNodeOfListOfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_ListNodeOfListOfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress;
class Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress();
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress(const Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress(const IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress & operator=(const Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress & operator=(const IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress {
	IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress* GetObject() {
	return (IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress::~Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox;
class Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox();
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox(const Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox(const IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox & operator=(const Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox & operator=(const IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox {
	IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox* GetObject() {
	return (IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox::~Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_SequenceNodeOfSequenceOfRanges;
class Handle_IntTools_SequenceNodeOfSequenceOfRanges : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRanges();
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRanges(const Handle_IntTools_SequenceNodeOfSequenceOfRanges &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRanges(const IntTools_SequenceNodeOfSequenceOfRanges *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRanges & operator=(const Handle_IntTools_SequenceNodeOfSequenceOfRanges &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRanges & operator=(const IntTools_SequenceNodeOfSequenceOfRanges *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_SequenceNodeOfSequenceOfRanges const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_SequenceNodeOfSequenceOfRanges {
	IntTools_SequenceNodeOfSequenceOfRanges* GetObject() {
	return (IntTools_SequenceNodeOfSequenceOfRanges*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_SequenceNodeOfSequenceOfRanges::~Handle_IntTools_SequenceNodeOfSequenceOfRanges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_SequenceNodeOfSequenceOfRanges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_TopolTool;
class Handle_IntTools_TopolTool : public Handle_Adaptor3d_TopolTool {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_TopolTool();
		%feature("autodoc", "1");
		Handle_IntTools_TopolTool(const Handle_IntTools_TopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_TopolTool(const IntTools_TopolTool *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_TopolTool & operator=(const Handle_IntTools_TopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_TopolTool & operator=(const IntTools_TopolTool *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_TopolTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_TopolTool {
	IntTools_TopolTool* GetObject() {
	return (IntTools_TopolTool*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_TopolTool::~Handle_IntTools_TopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_TopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts;
class Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts();
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts(const Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts(const IntTools_SequenceNodeOfSequenceOfCommonPrts *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts & operator=(const Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts & operator=(const IntTools_SequenceNodeOfSequenceOfCommonPrts *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts {
	IntTools_SequenceNodeOfSequenceOfCommonPrts* GetObject() {
	return (IntTools_SequenceNodeOfSequenceOfCommonPrts*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts::~Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox;
class Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox();
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox(const Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox(const IntTools_DataMapNodeOfDataMapOfCurveSampleBox *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox & operator=(const Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox & operator=(const IntTools_DataMapNodeOfDataMapOfCurveSampleBox *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox {
	IntTools_DataMapNodeOfDataMapOfCurveSampleBox* GetObject() {
	return (IntTools_DataMapNodeOfDataMapOfCurveSampleBox*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox::~Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_StdMapNodeOfMapOfCurveSample;
class Handle_IntTools_StdMapNodeOfMapOfCurveSample : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfCurveSample();
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfCurveSample(const Handle_IntTools_StdMapNodeOfMapOfCurveSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfCurveSample(const IntTools_StdMapNodeOfMapOfCurveSample *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfCurveSample & operator=(const Handle_IntTools_StdMapNodeOfMapOfCurveSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfCurveSample & operator=(const IntTools_StdMapNodeOfMapOfCurveSample *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_StdMapNodeOfMapOfCurveSample const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_StdMapNodeOfMapOfCurveSample {
	IntTools_StdMapNodeOfMapOfCurveSample* GetObject() {
	return (IntTools_StdMapNodeOfMapOfCurveSample*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_StdMapNodeOfMapOfCurveSample::~Handle_IntTools_StdMapNodeOfMapOfCurveSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_StdMapNodeOfMapOfCurveSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_StdMapNodeOfMapOfSurfaceSample;
class Handle_IntTools_StdMapNodeOfMapOfSurfaceSample : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfSurfaceSample();
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfSurfaceSample(const Handle_IntTools_StdMapNodeOfMapOfSurfaceSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfSurfaceSample(const IntTools_StdMapNodeOfMapOfSurfaceSample *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfSurfaceSample & operator=(const Handle_IntTools_StdMapNodeOfMapOfSurfaceSample &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_StdMapNodeOfMapOfSurfaceSample & operator=(const IntTools_StdMapNodeOfMapOfSurfaceSample *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_StdMapNodeOfMapOfSurfaceSample const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_StdMapNodeOfMapOfSurfaceSample {
	IntTools_StdMapNodeOfMapOfSurfaceSample* GetObject() {
	return (IntTools_StdMapNodeOfMapOfSurfaceSample*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_StdMapNodeOfMapOfSurfaceSample::~Handle_IntTools_StdMapNodeOfMapOfSurfaceSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_StdMapNodeOfMapOfSurfaceSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_SequenceNodeOfSequenceOfRoots;
class Handle_IntTools_SequenceNodeOfSequenceOfRoots : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRoots();
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRoots(const Handle_IntTools_SequenceNodeOfSequenceOfRoots &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRoots(const IntTools_SequenceNodeOfSequenceOfRoots *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRoots & operator=(const Handle_IntTools_SequenceNodeOfSequenceOfRoots &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfRoots & operator=(const IntTools_SequenceNodeOfSequenceOfRoots *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_SequenceNodeOfSequenceOfRoots const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_SequenceNodeOfSequenceOfRoots {
	IntTools_SequenceNodeOfSequenceOfRoots* GetObject() {
	return (IntTools_SequenceNodeOfSequenceOfRoots*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_SequenceNodeOfSequenceOfRoots::~Handle_IntTools_SequenceNodeOfSequenceOfRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_SequenceNodeOfSequenceOfRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress;
class Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress();
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress & operator=(const Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress & operator=(const IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress* GetObject() {
	return (IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress::~Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces;
class Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces();
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces(const Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces(const IntTools_SequenceNodeOfSequenceOfPntOn2Faces *anItem);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces & operator=(const Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces &aHandle);
		%feature("autodoc", "1");
		Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces & operator=(const IntTools_SequenceNodeOfSequenceOfPntOn2Faces *anItem);
		%feature("autodoc", "1");
		static		Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces {
	IntTools_SequenceNodeOfSequenceOfPntOn2Faces* GetObject() {
	return (IntTools_SequenceNodeOfSequenceOfPntOn2Faces*)$self->Access();
	}
};
%feature("shadow") Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces::~Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SurfaceRangeSampleMapHasher;
class IntTools_SurfaceRangeSampleMapHasher {
	public:
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSampleMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const IntTools_SurfaceRangeSample &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const IntTools_SurfaceRangeSample &S1, const IntTools_SurfaceRangeSample &S2);

};
%feature("shadow") IntTools_SurfaceRangeSampleMapHasher::~IntTools_SurfaceRangeSampleMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SurfaceRangeSampleMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_CArray1OfReal;
class IntTools_CArray1OfReal {
	public:
		%feature("autodoc", "1");
		IntTools_CArray1OfReal(const Standard_Integer Length=0);
		%feature("autodoc", "1");
		IntTools_CArray1OfReal(const Standard_Real &Item, const Standard_Integer Length);
		%feature("autodoc", "1");
		void Init(const Standard_Real &V);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Append(const Standard_Real &Value);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Real &Value);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Index) {
				return (Standard_Real) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const IntTools_CArray1OfReal &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const IntTools_CArray1OfReal &Other) const;

};
%feature("shadow") IntTools_CArray1OfReal::~IntTools_CArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_CArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceNodeOfSequenceOfCurves;
class IntTools_SequenceNodeOfSequenceOfCurves : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceNodeOfSequenceOfCurves(const IntTools_Curve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntTools_Curve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_SequenceNodeOfSequenceOfCurves {
	Handle_IntTools_SequenceNodeOfSequenceOfCurves GetHandle() {
	return *(Handle_IntTools_SequenceNodeOfSequenceOfCurves*) &$self;
	}
};
%extend IntTools_SequenceNodeOfSequenceOfCurves {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_SequenceNodeOfSequenceOfCurves::~IntTools_SequenceNodeOfSequenceOfCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceNodeOfSequenceOfCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceNodeOfSequenceOfRoots;
class IntTools_SequenceNodeOfSequenceOfRoots : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceNodeOfSequenceOfRoots(const IntTools_Root &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntTools_Root & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_SequenceNodeOfSequenceOfRoots {
	Handle_IntTools_SequenceNodeOfSequenceOfRoots GetHandle() {
	return *(Handle_IntTools_SequenceNodeOfSequenceOfRoots*) &$self;
	}
};
%extend IntTools_SequenceNodeOfSequenceOfRoots {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_SequenceNodeOfSequenceOfRoots::~IntTools_SequenceNodeOfSequenceOfRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceNodeOfSequenceOfRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_FClass2d;
class IntTools_FClass2d {
	public:
		%feature("autodoc", "1");
		IntTools_FClass2d();
		%feature("autodoc", "1");
		IntTools_FClass2d(const TopoDS_Face F, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Init(const TopoDS_Face F, const Standard_Real Tol);
		%feature("autodoc", "1");
		TopAbs_State PerformInfinitePoint() const;
		%feature("autodoc", "1");
		TopAbs_State Perform(const gp_Pnt2d Puv, const Standard_Boolean RecadreOnPeriodic=1) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		TopAbs_State TestOnRestriction(const gp_Pnt2d Puv, const Standard_Real Tol, const Standard_Boolean RecadreOnPeriodic=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHole() const;

};
%feature("shadow") IntTools_FClass2d::~IntTools_FClass2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_FClass2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListNodeOfListOfSurfaceRangeSample;
class IntTools_ListNodeOfListOfSurfaceRangeSample : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_ListNodeOfListOfSurfaceRangeSample(const IntTools_SurfaceRangeSample &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_ListNodeOfListOfSurfaceRangeSample {
	Handle_IntTools_ListNodeOfListOfSurfaceRangeSample GetHandle() {
	return *(Handle_IntTools_ListNodeOfListOfSurfaceRangeSample*) &$self;
	}
};
%extend IntTools_ListNodeOfListOfSurfaceRangeSample {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_ListNodeOfListOfSurfaceRangeSample::~IntTools_ListNodeOfListOfSurfaceRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListNodeOfListOfSurfaceRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_IndexedDataMapOfTransientAddress;
class IntTools_IndexedDataMapOfTransientAddress : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntTools_IndexedDataMapOfTransientAddress(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntTools_IndexedDataMapOfTransientAddress & Assign(const IntTools_IndexedDataMapOfTransientAddress &Other);
		%feature("autodoc", "1");
		IntTools_IndexedDataMapOfTransientAddress & operator=(const IntTools_IndexedDataMapOfTransientAddress &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_Standard_Transient &K, const Standard_Address &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_Standard_Transient &K, const Standard_Address &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Address & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Standard_Address & FindFromKey(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFromKey(const Handle_Standard_Transient &K);

};
%feature("shadow") IntTools_IndexedDataMapOfTransientAddress::~IntTools_IndexedDataMapOfTransientAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_IndexedDataMapOfTransientAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_CommonPrt;
class IntTools_CommonPrt {
	public:
		%feature("autodoc", "1");
		IntTools_CommonPrt();
		%feature("autodoc", "1");
		IntTools_CommonPrt(const IntTools_CommonPrt &aCPrt);
		%feature("autodoc", "1");
		IntTools_CommonPrt & Assign(const IntTools_CommonPrt &Other);
		%feature("autodoc", "1");
		IntTools_CommonPrt & operator=(const IntTools_CommonPrt &Other);
		%feature("autodoc", "1");
		void SetEdge1(const TopoDS_Edge anE);
		%feature("autodoc", "1");
		void SetEdge2(const TopoDS_Edge anE);
		%feature("autodoc", "1");
		void SetType(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		void SetRange1(const IntTools_Range &aR);
		%feature("autodoc", "1");
		void SetRange1(const Standard_Real tf, const Standard_Real tl);
		%feature("autodoc", "1");
		void AppendRange2(const IntTools_Range &aR);
		%feature("autodoc", "1");
		void AppendRange2(const Standard_Real tf, const Standard_Real tl);
		%feature("autodoc", "1");
		void SetVertexParameter1(const Standard_Real tV);
		%feature("autodoc", "1");
		void SetVertexParameter2(const Standard_Real tV);
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge1() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge2() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		const IntTools_Range & Range1() const;
		%feature("autodoc","Range1() -> [Standard_Real, Standard_Real]");

		void Range1(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const IntTools_SequenceOfRanges & Ranges2() const;
		%feature("autodoc", "1");
		IntTools_SequenceOfRanges & ChangeRanges2();
		%feature("autodoc", "1");
		Standard_Real VertexParameter1() const;
		%feature("autodoc", "1");
		Standard_Real VertexParameter2() const;
		%feature("autodoc", "1");
		void Copy(IntTools_CommonPrt & anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean AllNullFlag() const;
		%feature("autodoc", "1");
		void SetAllNullFlag(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		void SetBoundingPoints(const gp_Pnt aP1, const gp_Pnt aP2);
		%feature("autodoc", "1");
		void BoundingPoints(gp_Pnt & aP1, gp_Pnt & aP2) const;

};
%feature("shadow") IntTools_CommonPrt::~IntTools_CommonPrt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_CommonPrt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_BaseRangeSample;
class IntTools_BaseRangeSample {
	public:
		%feature("autodoc", "1");
		IntTools_BaseRangeSample();
		%feature("autodoc", "1");
		IntTools_BaseRangeSample(const Standard_Integer theDepth);
		%feature("autodoc", "1");
		void SetDepth(const Standard_Integer theDepth);
		%feature("autodoc", "1");
		Standard_Integer GetDepth() const;

};
%feature("shadow") IntTools_BaseRangeSample::~IntTools_BaseRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_BaseRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListNodeOfListOfBox;
class IntTools_ListNodeOfListOfBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_ListNodeOfListOfBox(const Bnd_Box &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_ListNodeOfListOfBox {
	Handle_IntTools_ListNodeOfListOfBox GetHandle() {
	return *(Handle_IntTools_ListNodeOfListOfBox*) &$self;
	}
};
%extend IntTools_ListNodeOfListOfBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_ListNodeOfListOfBox::~IntTools_ListNodeOfListOfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListNodeOfListOfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_CurveRangeSampleMapHasher;
class IntTools_CurveRangeSampleMapHasher {
	public:
		%feature("autodoc", "1");
		IntTools_CurveRangeSampleMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const IntTools_CurveRangeSample &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const IntTools_CurveRangeSample &S1, const IntTools_CurveRangeSample &S2);

};
%feature("shadow") IntTools_CurveRangeSampleMapHasher::~IntTools_CurveRangeSampleMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_CurveRangeSampleMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_BeanFaceIntersector;
class IntTools_BeanFaceIntersector {
	public:
		%feature("autodoc", "1");
		IntTools_BeanFaceIntersector();
		%feature("autodoc", "1");
		IntTools_BeanFaceIntersector(const TopoDS_Edge theEdge, const TopoDS_Face theFace);
		%feature("autodoc", "1");
		IntTools_BeanFaceIntersector(const BRepAdaptor_Curve &theCurve, const BRepAdaptor_Surface &theSurface, const Standard_Real theBeanTolerance, const Standard_Real theFaceTolerance);
		%feature("autodoc", "1");
		IntTools_BeanFaceIntersector(const BRepAdaptor_Curve &theCurve, const BRepAdaptor_Surface &theSurface, const Standard_Real theFirstParOnCurve, const Standard_Real theLastParOnCurve, const Standard_Real theUMinParameter, const Standard_Real theUMaxParameter, const Standard_Real theVMinParameter, const Standard_Real theVMaxParameter, const Standard_Real theBeanTolerance, const Standard_Real theFaceTolerance);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge theEdge, const TopoDS_Face theFace);
		%feature("autodoc", "1");
		void Init(const BRepAdaptor_Curve &theCurve, const BRepAdaptor_Surface &theSurface, const Standard_Real theBeanTolerance, const Standard_Real theFaceTolerance);
		%feature("autodoc", "1");
		void Init(const BRepAdaptor_Curve &theCurve, const BRepAdaptor_Surface &theSurface, const Standard_Real theFirstParOnCurve, const Standard_Real theLastParOnCurve, const Standard_Real theUMinParameter, const Standard_Real theUMaxParameter, const Standard_Real theVMinParameter, const Standard_Real theVMaxParameter, const Standard_Real theBeanTolerance, const Standard_Real theFaceTolerance);
		%feature("autodoc", "1");
		void SetContext(const IntTools_PContext &theContext);
		%feature("autodoc", "1");
		void SetBeanParameters(const Standard_Real theFirstParOnCurve, const Standard_Real theLastParOnCurve);
		%feature("autodoc", "1");
		void SetSurfaceParameters(const Standard_Real theUMinParameter, const Standard_Real theUMaxParameter, const Standard_Real theVMinParameter, const Standard_Real theVMaxParameter);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const IntTools_SequenceOfRanges & Result() const;
		%feature("autodoc", "1");
		void Result(IntTools_SequenceOfRanges & theResults) const;

};
%feature("shadow") IntTools_BeanFaceIntersector::~IntTools_BeanFaceIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_BeanFaceIntersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_IndexedDataMapOfShapeAddress;
class IntTools_IndexedDataMapOfShapeAddress : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntTools_IndexedDataMapOfShapeAddress(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntTools_IndexedDataMapOfShapeAddress & Assign(const IntTools_IndexedDataMapOfShapeAddress &Other);
		%feature("autodoc", "1");
		IntTools_IndexedDataMapOfShapeAddress & operator=(const IntTools_IndexedDataMapOfShapeAddress &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const Standard_Address &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const Standard_Address &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Address & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Address & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address & ChangeFromKey(const TopoDS_Shape K);

};
%feature("shadow") IntTools_IndexedDataMapOfShapeAddress::~IntTools_IndexedDataMapOfShapeAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_IndexedDataMapOfShapeAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceOfRoots;
class IntTools_SequenceOfRoots : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceOfRoots();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntTools_SequenceOfRoots & Assign(const IntTools_SequenceOfRoots &Other);
		%feature("autodoc", "1");
		const IntTools_SequenceOfRoots & operator=(const IntTools_SequenceOfRoots &Other);
		%feature("autodoc", "1");
		void Append(const IntTools_Root &T);
		%feature("autodoc", "1");
		void Append(IntTools_SequenceOfRoots & S);
		%feature("autodoc", "1");
		void Prepend(const IntTools_Root &T);
		%feature("autodoc", "1");
		void Prepend(IntTools_SequenceOfRoots & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntTools_Root &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntTools_SequenceOfRoots & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntTools_Root &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntTools_SequenceOfRoots & S);
		%feature("autodoc", "1");
		const IntTools_Root & First() const;
		%feature("autodoc", "1");
		const IntTools_Root & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntTools_SequenceOfRoots & S);
		%feature("autodoc", "1");
		const IntTools_Root & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntTools_Root & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntTools_Root &I);
		%feature("autodoc", "1");
		IntTools_Root & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntTools_Root & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntTools_SequenceOfRoots::~IntTools_SequenceOfRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceOfRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Compare;
class IntTools_Compare {
	public:
		%feature("autodoc", "1");
		IntTools_Compare();
		%feature("autodoc", "1");
		IntTools_Compare(const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const IntTools_Root &Left, const IntTools_Root &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const IntTools_Root &Left, const IntTools_Root &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const IntTools_Root &Left, const IntTools_Root &Right) const;

};
%feature("shadow") IntTools_Compare::~IntTools_Compare %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Compare {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceOfCurves;
class IntTools_SequenceOfCurves : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceOfCurves();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntTools_SequenceOfCurves & Assign(const IntTools_SequenceOfCurves &Other);
		%feature("autodoc", "1");
		const IntTools_SequenceOfCurves & operator=(const IntTools_SequenceOfCurves &Other);
		%feature("autodoc", "1");
		void Append(const IntTools_Curve &T);
		%feature("autodoc", "1");
		void Append(IntTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		void Prepend(const IntTools_Curve &T);
		%feature("autodoc", "1");
		void Prepend(IntTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntTools_Curve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntTools_Curve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		const IntTools_Curve & First() const;
		%feature("autodoc", "1");
		const IntTools_Curve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntTools_SequenceOfCurves & S);
		%feature("autodoc", "1");
		const IntTools_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntTools_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntTools_Curve &I);
		%feature("autodoc", "1");
		IntTools_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntTools_Curve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntTools_SequenceOfCurves::~IntTools_SequenceOfCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceOfCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListOfSurfaceRangeSample;
class IntTools_ListOfSurfaceRangeSample {
	public:
		%feature("autodoc", "1");
		IntTools_ListOfSurfaceRangeSample();
		%feature("autodoc", "1");
		void Assign(const IntTools_ListOfSurfaceRangeSample &Other);
		%feature("autodoc", "1");
		void operator=(const IntTools_ListOfSurfaceRangeSample &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const IntTools_SurfaceRangeSample &I);
		%feature("autodoc", "1");
		void Prepend(const IntTools_SurfaceRangeSample &I, IntTools_ListIteratorOfListOfSurfaceRangeSample & theIt);
		%feature("autodoc", "1");
		void Prepend(IntTools_ListOfSurfaceRangeSample & Other);
		%feature("autodoc", "1");
		void Append(const IntTools_SurfaceRangeSample &I);
		%feature("autodoc", "1");
		void Append(const IntTools_SurfaceRangeSample &I, IntTools_ListIteratorOfListOfSurfaceRangeSample & theIt);
		%feature("autodoc", "1");
		void Append(IntTools_ListOfSurfaceRangeSample & Other);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & First() const;
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(IntTools_ListIteratorOfListOfSurfaceRangeSample & It);
		%feature("autodoc", "1");
		void InsertBefore(const IntTools_SurfaceRangeSample &I, IntTools_ListIteratorOfListOfSurfaceRangeSample & It);
		%feature("autodoc", "1");
		void InsertBefore(IntTools_ListOfSurfaceRangeSample & Other, IntTools_ListIteratorOfListOfSurfaceRangeSample & It);
		%feature("autodoc", "1");
		void InsertAfter(const IntTools_SurfaceRangeSample &I, IntTools_ListIteratorOfListOfSurfaceRangeSample & It);
		%feature("autodoc", "1");
		void InsertAfter(IntTools_ListOfSurfaceRangeSample & Other, IntTools_ListIteratorOfListOfSurfaceRangeSample & It);

};
%feature("shadow") IntTools_ListOfSurfaceRangeSample::~IntTools_ListOfSurfaceRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListOfSurfaceRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Array1OfRoots;
class IntTools_Array1OfRoots {
	public:
		%feature("autodoc", "1");
		IntTools_Array1OfRoots(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IntTools_Array1OfRoots(const IntTools_Root &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const IntTools_Root &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IntTools_Array1OfRoots & Assign(const IntTools_Array1OfRoots &Other);
		%feature("autodoc", "1");
		const IntTools_Array1OfRoots & operator=(const IntTools_Array1OfRoots &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntTools_Root &Value);
		%feature("autodoc", "1");
		const IntTools_Root & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntTools_Root & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		IntTools_Root & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntTools_Root & operator()(const Standard_Integer Index);

};
%feature("shadow") IntTools_Array1OfRoots::~IntTools_Array1OfRoots %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Array1OfRoots {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_EdgeEdge;
class IntTools_EdgeEdge {
	public:
		%feature("autodoc", "1");
		IntTools_EdgeEdge();
		%feature("autodoc", "1");
		void SetEdge1(const TopoDS_Edge anEdge);
		%feature("autodoc", "1");
		void SetTolerance1(const Standard_Real aTolEdge1);
		%feature("autodoc", "1");
		void SetEdge2(const TopoDS_Edge anEdge);
		%feature("autodoc", "1");
		void SetTolerance2(const Standard_Real aTolEdge2);
		%feature("autodoc", "1");
		void SetDiscretize(const Standard_Integer aDiscret);
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real aDeflection);
		%feature("autodoc", "1");
		void SetEpsilonT(const Standard_Real anEpsT);
		%feature("autodoc", "1");
		void SetEpsilonNull(const Standard_Real anEpsNull);
		%feature("autodoc", "1");
		void SetRange1(const IntTools_Range &aRange);
		%feature("autodoc", "1");
		void SetRange2(const IntTools_Range &aRange);
		%feature("autodoc", "1");
		void SetRange1(const Standard_Real aFirst, const Standard_Real aLast);
		%feature("autodoc", "1");
		void SetRange2(const Standard_Real aFirst, const Standard_Real aLast);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean Order() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		const IntTools_SequenceOfCommonPrts & CommonParts() const;
		%feature("autodoc", "1");
		const IntTools_Range & Range1() const;
		%feature("autodoc", "1");
		const IntTools_Range & Range2() const;

};
%feature("shadow") IntTools_EdgeEdge::~IntTools_EdgeEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_EdgeEdge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_CompareRange;
class IntTools_CompareRange {
	public:
		%feature("autodoc", "1");
		IntTools_CompareRange();
		%feature("autodoc", "1");
		IntTools_CompareRange(const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const IntTools_Range &Left, const IntTools_Range &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const IntTools_Range &Left, const IntTools_Range &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const IntTools_Range &Left, const IntTools_Range &Right) const;

};
%feature("shadow") IntTools_CompareRange::~IntTools_CompareRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_CompareRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_QuickSort;
class IntTools_QuickSort {
	public:
		%feature("autodoc", "1");
		IntTools_QuickSort();
		%feature("autodoc", "1");
		static		void Sort(IntTools_Array1OfRoots & TheArray, const IntTools_Compare &Comp);

};
%feature("shadow") IntTools_QuickSort::~IntTools_QuickSort %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_QuickSort {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_LineConstructor;
class IntTools_LineConstructor {
	public:
		%feature("autodoc", "1");
		IntTools_LineConstructor();
		%feature("autodoc", "1");
		void Load(const Handle_Adaptor3d_TopolTool &D1, const Handle_Adaptor3d_TopolTool &D2, const Handle_GeomAdaptor_HSurface &S1, const Handle_GeomAdaptor_HSurface &S2);
		%feature("autodoc", "1");
		void Perform(const Handle_IntPatch_Line &L);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbParts() const;
		%feature("autodoc","Part(Standard_Integer I) -> [Standard_Real, Standard_Real]");

		void Part(const Standard_Integer I, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntTools_LineConstructor::~IntTools_LineConstructor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_LineConstructor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_MapOfCurveSample;
class IntTools_MapOfCurveSample : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntTools_MapOfCurveSample(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntTools_MapOfCurveSample & Assign(const IntTools_MapOfCurveSample &Other);
		%feature("autodoc", "1");
		IntTools_MapOfCurveSample & operator=(const IntTools_MapOfCurveSample &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const IntTools_CurveRangeSample &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const IntTools_CurveRangeSample &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const IntTools_CurveRangeSample &aKey);

};
%feature("shadow") IntTools_MapOfCurveSample::~IntTools_MapOfCurveSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_MapOfCurveSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceOfCommonPrts;
class IntTools_SequenceOfCommonPrts : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceOfCommonPrts();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntTools_SequenceOfCommonPrts & Assign(const IntTools_SequenceOfCommonPrts &Other);
		%feature("autodoc", "1");
		const IntTools_SequenceOfCommonPrts & operator=(const IntTools_SequenceOfCommonPrts &Other);
		%feature("autodoc", "1");
		void Append(const IntTools_CommonPrt &T);
		%feature("autodoc", "1");
		void Append(IntTools_SequenceOfCommonPrts & S);
		%feature("autodoc", "1");
		void Prepend(const IntTools_CommonPrt &T);
		%feature("autodoc", "1");
		void Prepend(IntTools_SequenceOfCommonPrts & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntTools_CommonPrt &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntTools_SequenceOfCommonPrts & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntTools_CommonPrt &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntTools_SequenceOfCommonPrts & S);
		%feature("autodoc", "1");
		const IntTools_CommonPrt & First() const;
		%feature("autodoc", "1");
		const IntTools_CommonPrt & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntTools_SequenceOfCommonPrts & S);
		%feature("autodoc", "1");
		const IntTools_CommonPrt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntTools_CommonPrt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntTools_CommonPrt &I);
		%feature("autodoc", "1");
		IntTools_CommonPrt & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntTools_CommonPrt & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntTools_SequenceOfCommonPrts::~IntTools_SequenceOfCommonPrts %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceOfCommonPrts {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_MarkedRangeSet;
class IntTools_MarkedRangeSet {
	public:
		%feature("autodoc", "1");
		IntTools_MarkedRangeSet();
		%feature("autodoc", "1");
		IntTools_MarkedRangeSet(const Standard_Real theFirstBoundary, const Standard_Real theLastBoundary, const Standard_Integer theInitFlag);
		%feature("autodoc", "1");
		IntTools_MarkedRangeSet(const IntTools_CArray1OfReal &theSortedArray, const Standard_Integer theInitFlag);
		%feature("autodoc", "1");
		void SetBoundaries(const Standard_Real theFirstBoundary, const Standard_Real theLastBoundary, const Standard_Integer theInitFlag);
		%feature("autodoc", "1");
		void SetRanges(const IntTools_CArray1OfReal &theSortedArray, const Standard_Integer theInitFlag);
		%feature("autodoc", "1");
		Standard_Boolean InsertRange(const Standard_Real theFirstBoundary, const Standard_Real theLastBoundary, const Standard_Integer theFlag);
		%feature("autodoc", "1");
		Standard_Boolean InsertRange(const IntTools_Range &theRange, const Standard_Integer theFlag);
		%feature("autodoc", "1");
		Standard_Boolean InsertRange(const Standard_Real theFirstBoundary, const Standard_Real theLastBoundary, const Standard_Integer theFlag, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Boolean InsertRange(const IntTools_Range &theRange, const Standard_Integer theFlag, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void SetFlag(const Standard_Integer theIndex, const Standard_Integer theFlag);
		%feature("autodoc", "1");
		Standard_Integer Flag(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Integer GetIndex(const Standard_Real theValue) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & GetIndices(const Standard_Real theValue);
		%feature("autodoc", "1");
		Standard_Integer GetIndex(const Standard_Real theValue, const Standard_Boolean UseLower) const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		IntTools_Range Range(const Standard_Integer theIndex) const;

};
%feature("shadow") IntTools_MarkedRangeSet::~IntTools_MarkedRangeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_MarkedRangeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SurfaceRangeLocalizeData;
class IntTools_SurfaceRangeLocalizeData {
	public:
		%feature("autodoc", "1");
		IntTools_SurfaceRangeLocalizeData();
		%feature("autodoc", "1");
		IntTools_SurfaceRangeLocalizeData(const Standard_Integer theNbSampleU, const Standard_Integer theNbSampleV, const Standard_Real theMinRangeU, const Standard_Real theMinRangeV);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeLocalizeData(const IntTools_SurfaceRangeLocalizeData &Other);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeLocalizeData & Assign(const IntTools_SurfaceRangeLocalizeData &Other);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeLocalizeData & operator=(const IntTools_SurfaceRangeLocalizeData &Other);
		%feature("autodoc", "1");
		Standard_Integer GetNbSampleU() const;
		%feature("autodoc", "1");
		Standard_Integer GetNbSampleV() const;
		%feature("autodoc", "1");
		Standard_Real GetMinRangeU() const;
		%feature("autodoc", "1");
		Standard_Real GetMinRangeV() const;
		%feature("autodoc", "1");
		void AddOutRange(const IntTools_SurfaceRangeSample &theRange);
		%feature("autodoc", "1");
		void AddBox(const IntTools_SurfaceRangeSample &theRange, const Bnd_Box &theBox);
		%feature("autodoc", "1");
		Standard_Boolean FindBox(const IntTools_SurfaceRangeSample &theRange, Bnd_Box & theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsRangeOut(const IntTools_SurfaceRangeSample &theRange) const;
		%feature("autodoc", "1");
		void ListRangeOut(IntTools_ListOfSurfaceRangeSample & theList) const;
		%feature("autodoc", "1");
		void RemoveRangeOutAll();
		%feature("autodoc", "1");
		void SetGridDeflection(const Standard_Real theDeflection);
		%feature("autodoc", "1");
		Standard_Real GetGridDeflection() const;
		%feature("autodoc", "1");
		void SetRangeUGrid(const Standard_Integer theNbUGrid);
		%feature("autodoc", "1");
		Standard_Integer GetRangeUGrid() const;
		%feature("autodoc", "1");
		void SetUParam(const Standard_Integer theIndex, const Standard_Real theUParam);
		%feature("autodoc", "1");
		Standard_Real GetUParam(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		void SetRangeVGrid(const Standard_Integer theNbVGrid);
		%feature("autodoc", "1");
		Standard_Integer GetRangeVGrid() const;
		%feature("autodoc", "1");
		void SetVParam(const Standard_Integer theIndex, const Standard_Real theVParam);
		%feature("autodoc", "1");
		Standard_Real GetVParam(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		void SetGridPoint(const Standard_Integer theUIndex, const Standard_Integer theVIndex, const gp_Pnt thePoint);
		%feature("autodoc", "1");
		const gp_Pnt  GetGridPoint(const Standard_Integer theUIndex, const Standard_Integer theVIndex) const;
		%feature("autodoc", "1");
		void SetFrame(const Standard_Real theUMin, const Standard_Real theUMax, const Standard_Real theVMin, const Standard_Real theVMax);
		%feature("autodoc", "1");
		Standard_Integer GetNBUPointsInFrame() const;
		%feature("autodoc", "1");
		Standard_Integer GetNBVPointsInFrame() const;
		%feature("autodoc", "1");
		const gp_Pnt  GetPointInFrame(const Standard_Integer theUIndex, const Standard_Integer theVIndex) const;
		%feature("autodoc", "1");
		Standard_Real GetUParamInFrame(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		Standard_Real GetVParamInFrame(const Standard_Integer theIndex) const;
		%feature("autodoc", "1");
		void ClearGrid();

};
%feature("shadow") IntTools_SurfaceRangeLocalizeData::~IntTools_SurfaceRangeLocalizeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SurfaceRangeLocalizeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceOfPntOn2Faces;
class IntTools_SequenceOfPntOn2Faces : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceOfPntOn2Faces();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntTools_SequenceOfPntOn2Faces & Assign(const IntTools_SequenceOfPntOn2Faces &Other);
		%feature("autodoc", "1");
		const IntTools_SequenceOfPntOn2Faces & operator=(const IntTools_SequenceOfPntOn2Faces &Other);
		%feature("autodoc", "1");
		void Append(const IntTools_PntOn2Faces &T);
		%feature("autodoc", "1");
		void Append(IntTools_SequenceOfPntOn2Faces & S);
		%feature("autodoc", "1");
		void Prepend(const IntTools_PntOn2Faces &T);
		%feature("autodoc", "1");
		void Prepend(IntTools_SequenceOfPntOn2Faces & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntTools_PntOn2Faces &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntTools_SequenceOfPntOn2Faces & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntTools_PntOn2Faces &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntTools_SequenceOfPntOn2Faces & S);
		%feature("autodoc", "1");
		const IntTools_PntOn2Faces & First() const;
		%feature("autodoc", "1");
		const IntTools_PntOn2Faces & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntTools_SequenceOfPntOn2Faces & S);
		%feature("autodoc", "1");
		const IntTools_PntOn2Faces & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntTools_PntOn2Faces & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntTools_PntOn2Faces &I);
		%feature("autodoc", "1");
		IntTools_PntOn2Faces & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntTools_PntOn2Faces & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntTools_SequenceOfPntOn2Faces::~IntTools_SequenceOfPntOn2Faces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceOfPntOn2Faces {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceNodeOfSequenceOfRanges;
class IntTools_SequenceNodeOfSequenceOfRanges : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceNodeOfSequenceOfRanges(const IntTools_Range &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntTools_Range & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_SequenceNodeOfSequenceOfRanges {
	Handle_IntTools_SequenceNodeOfSequenceOfRanges GetHandle() {
	return *(Handle_IntTools_SequenceNodeOfSequenceOfRanges*) &$self;
	}
};
%extend IntTools_SequenceNodeOfSequenceOfRanges {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_SequenceNodeOfSequenceOfRanges::~IntTools_SequenceNodeOfSequenceOfRanges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceNodeOfSequenceOfRanges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListOfCurveRangeSample;
class IntTools_ListOfCurveRangeSample {
	public:
		%feature("autodoc", "1");
		IntTools_ListOfCurveRangeSample();
		%feature("autodoc", "1");
		void Assign(const IntTools_ListOfCurveRangeSample &Other);
		%feature("autodoc", "1");
		void operator=(const IntTools_ListOfCurveRangeSample &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const IntTools_CurveRangeSample &I);
		%feature("autodoc", "1");
		void Prepend(const IntTools_CurveRangeSample &I, IntTools_ListIteratorOfListOfCurveRangeSample & theIt);
		%feature("autodoc", "1");
		void Prepend(IntTools_ListOfCurveRangeSample & Other);
		%feature("autodoc", "1");
		void Append(const IntTools_CurveRangeSample &I);
		%feature("autodoc", "1");
		void Append(const IntTools_CurveRangeSample &I, IntTools_ListIteratorOfListOfCurveRangeSample & theIt);
		%feature("autodoc", "1");
		void Append(IntTools_ListOfCurveRangeSample & Other);
		%feature("autodoc", "1");
		IntTools_CurveRangeSample & First() const;
		%feature("autodoc", "1");
		IntTools_CurveRangeSample & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(IntTools_ListIteratorOfListOfCurveRangeSample & It);
		%feature("autodoc", "1");
		void InsertBefore(const IntTools_CurveRangeSample &I, IntTools_ListIteratorOfListOfCurveRangeSample & It);
		%feature("autodoc", "1");
		void InsertBefore(IntTools_ListOfCurveRangeSample & Other, IntTools_ListIteratorOfListOfCurveRangeSample & It);
		%feature("autodoc", "1");
		void InsertAfter(const IntTools_CurveRangeSample &I, IntTools_ListIteratorOfListOfCurveRangeSample & It);
		%feature("autodoc", "1");
		void InsertAfter(IntTools_ListOfCurveRangeSample & Other, IntTools_ListIteratorOfListOfCurveRangeSample & It);

};
%feature("shadow") IntTools_ListOfCurveRangeSample::~IntTools_ListOfCurveRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListOfCurveRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Root;
class IntTools_Root {
	public:
		%feature("autodoc", "1");
		IntTools_Root();
		%feature("autodoc", "1");
		IntTools_Root(const Standard_Real aRoot, const Standard_Integer aType);
		%feature("autodoc", "1");
		void SetRoot(const Standard_Real aRoot);
		%feature("autodoc", "1");
		void SetType(const Standard_Integer aType);
		%feature("autodoc", "1");
		void SetStateBefore(const TopAbs_State aState);
		%feature("autodoc", "1");
		void SetStateAfter(const TopAbs_State aState);
		%feature("autodoc", "1");
		void SetLayerHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		void SetInterval(const Standard_Real t1, const Standard_Real t2, const Standard_Real f1, const Standard_Real f2);
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Integer Type() const;
		%feature("autodoc", "1");
		TopAbs_State StateBefore() const;
		%feature("autodoc", "1");
		TopAbs_State StateAfter() const;
		%feature("autodoc", "1");
		Standard_Real LayerHeight() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc","Interval() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void Interval(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntTools_Root::~IntTools_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_DataMapOfCurveSampleBox;
class IntTools_DataMapOfCurveSampleBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntTools_DataMapOfCurveSampleBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntTools_DataMapOfCurveSampleBox & Assign(const IntTools_DataMapOfCurveSampleBox &Other);
		%feature("autodoc", "1");
		IntTools_DataMapOfCurveSampleBox & operator=(const IntTools_DataMapOfCurveSampleBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const IntTools_CurveRangeSample &K, const Bnd_Box &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const IntTools_CurveRangeSample &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const IntTools_CurveRangeSample &K);
		%feature("autodoc", "1");
		const Bnd_Box & Find(const IntTools_CurveRangeSample &K) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const IntTools_CurveRangeSample &K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFind(const IntTools_CurveRangeSample &K);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const IntTools_CurveRangeSample &K);

};
%feature("shadow") IntTools_DataMapOfCurveSampleBox::~IntTools_DataMapOfCurveSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_DataMapOfCurveSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_StdMapNodeOfMapOfCurveSample;
class IntTools_StdMapNodeOfMapOfCurveSample : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_StdMapNodeOfMapOfCurveSample(const IntTools_CurveRangeSample &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntTools_CurveRangeSample & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_StdMapNodeOfMapOfCurveSample {
	Handle_IntTools_StdMapNodeOfMapOfCurveSample GetHandle() {
	return *(Handle_IntTools_StdMapNodeOfMapOfCurveSample*) &$self;
	}
};
%extend IntTools_StdMapNodeOfMapOfCurveSample {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_StdMapNodeOfMapOfCurveSample::~IntTools_StdMapNodeOfMapOfCurveSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_StdMapNodeOfMapOfCurveSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_CArray1OfInteger;
class IntTools_CArray1OfInteger {
	public:
		%feature("autodoc", "1");
		IntTools_CArray1OfInteger(const Standard_Integer Length=0);
		%feature("autodoc", "1");
		IntTools_CArray1OfInteger(const Standard_Integer &Item, const Standard_Integer Length);
		%feature("autodoc", "1");
		void Init(const Standard_Integer &V);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer theNewLength);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Append(const Standard_Integer &Value);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Integer &Value);
		%feature("autodoc", "1");
		const Standard_Integer & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Standard_Integer Index) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeValue(const Standard_Integer Index) {
				return (Standard_Integer) $self->ChangeValue(Index);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Integer value ,const Standard_Integer Index) {
				$self->ChangeValue(Index)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const IntTools_CArray1OfInteger &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const IntTools_CArray1OfInteger &Other) const;

};
%feature("shadow") IntTools_CArray1OfInteger::~IntTools_CArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_CArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListIteratorOfListOfCurveRangeSample;
class IntTools_ListIteratorOfListOfCurveRangeSample {
	public:
		%feature("autodoc", "1");
		IntTools_ListIteratorOfListOfCurveRangeSample();
		%feature("autodoc", "1");
		IntTools_ListIteratorOfListOfCurveRangeSample(const IntTools_ListOfCurveRangeSample &L);
		%feature("autodoc", "1");
		void Initialize(const IntTools_ListOfCurveRangeSample &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		IntTools_CurveRangeSample & Value() const;

};
%feature("shadow") IntTools_ListIteratorOfListOfCurveRangeSample::~IntTools_ListIteratorOfListOfCurveRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListIteratorOfListOfCurveRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_TopolTool;
class IntTools_TopolTool : public Adaptor3d_TopolTool {
	public:
		%feature("autodoc", "1");
		IntTools_TopolTool();
		%feature("autodoc", "1");
		IntTools_TopolTool(const Handle_Adaptor3d_HSurface &theSurface);
		%feature("autodoc", "1");
		virtual		void Initialize();
		%feature("autodoc", "1");
		virtual		void Initialize(const Handle_Adaptor3d_HSurface &theSurface);
		%feature("autodoc", "1");
		virtual		void ComputeSamplePoints();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesU();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamplesV();
		%feature("autodoc", "1");
		virtual		Standard_Integer NbSamples();
		%feature("autodoc", "1");
		virtual		void SamplePoint(const Standard_Integer Index, gp_Pnt2d & P2d, gp_Pnt & P3d);
		%feature("autodoc", "1");
		virtual		void SamplePnts(const Standard_Real theDefl, const Standard_Integer theNUmin, const Standard_Integer theNVmin);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_TopolTool {
	Handle_IntTools_TopolTool GetHandle() {
	return *(Handle_IntTools_TopolTool*) &$self;
	}
};
%extend IntTools_TopolTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_TopolTool::~IntTools_TopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_TopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListNodeOfListOfCurveRangeSample;
class IntTools_ListNodeOfListOfCurveRangeSample : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_ListNodeOfListOfCurveRangeSample(const IntTools_CurveRangeSample &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntTools_CurveRangeSample & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_ListNodeOfListOfCurveRangeSample {
	Handle_IntTools_ListNodeOfListOfCurveRangeSample GetHandle() {
	return *(Handle_IntTools_ListNodeOfListOfCurveRangeSample*) &$self;
	}
};
%extend IntTools_ListNodeOfListOfCurveRangeSample {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_ListNodeOfListOfCurveRangeSample::~IntTools_ListNodeOfListOfCurveRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListNodeOfListOfCurveRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_DataMapOfSurfaceSampleBox;
class IntTools_DataMapOfSurfaceSampleBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntTools_DataMapOfSurfaceSampleBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntTools_DataMapOfSurfaceSampleBox & Assign(const IntTools_DataMapOfSurfaceSampleBox &Other);
		%feature("autodoc", "1");
		IntTools_DataMapOfSurfaceSampleBox & operator=(const IntTools_DataMapOfSurfaceSampleBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const IntTools_SurfaceRangeSample &K, const Bnd_Box &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const IntTools_SurfaceRangeSample &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const IntTools_SurfaceRangeSample &K);
		%feature("autodoc", "1");
		const Bnd_Box & Find(const IntTools_SurfaceRangeSample &K) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const IntTools_SurfaceRangeSample &K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFind(const IntTools_SurfaceRangeSample &K);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const IntTools_SurfaceRangeSample &K);

};
%feature("shadow") IntTools_DataMapOfSurfaceSampleBox::~IntTools_DataMapOfSurfaceSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_DataMapOfSurfaceSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_MapOfSurfaceSample;
class IntTools_MapOfSurfaceSample : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		IntTools_MapOfSurfaceSample(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		IntTools_MapOfSurfaceSample & Assign(const IntTools_MapOfSurfaceSample &Other);
		%feature("autodoc", "1");
		IntTools_MapOfSurfaceSample & operator=(const IntTools_MapOfSurfaceSample &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const IntTools_SurfaceRangeSample &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const IntTools_SurfaceRangeSample &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const IntTools_SurfaceRangeSample &aKey);

};
%feature("shadow") IntTools_MapOfSurfaceSample::~IntTools_MapOfSurfaceSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_MapOfSurfaceSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_StdMapNodeOfMapOfSurfaceSample;
class IntTools_StdMapNodeOfMapOfSurfaceSample : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_StdMapNodeOfMapOfSurfaceSample(const IntTools_SurfaceRangeSample &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_StdMapNodeOfMapOfSurfaceSample {
	Handle_IntTools_StdMapNodeOfMapOfSurfaceSample GetHandle() {
	return *(Handle_IntTools_StdMapNodeOfMapOfSurfaceSample*) &$self;
	}
};
%extend IntTools_StdMapNodeOfMapOfSurfaceSample {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_StdMapNodeOfMapOfSurfaceSample::~IntTools_StdMapNodeOfMapOfSurfaceSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_StdMapNodeOfMapOfSurfaceSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_PntOnFace;
class IntTools_PntOnFace {
	public:
		%feature("autodoc", "1");
		IntTools_PntOnFace();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face aF, const gp_Pnt aP, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aF);
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt aP);
		%feature("autodoc", "1");
		void SetParameters(const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetValid(const Standard_Boolean bF);
		%feature("autodoc", "1");
		Standard_Boolean Valid() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face() const;
		%feature("autodoc", "1");
		const gp_Pnt  Pnt() const;
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real]");

		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntTools_PntOnFace::~IntTools_PntOnFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_PntOnFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceNodeOfSequenceOfCommonPrts;
class IntTools_SequenceNodeOfSequenceOfCommonPrts : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceNodeOfSequenceOfCommonPrts(const IntTools_CommonPrt &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntTools_CommonPrt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_SequenceNodeOfSequenceOfCommonPrts {
	Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts GetHandle() {
	return *(Handle_IntTools_SequenceNodeOfSequenceOfCommonPrts*) &$self;
	}
};
%extend IntTools_SequenceNodeOfSequenceOfCommonPrts {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_SequenceNodeOfSequenceOfCommonPrts::~IntTools_SequenceNodeOfSequenceOfCommonPrts %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceNodeOfSequenceOfCommonPrts {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox;
class IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox(const IntTools_SurfaceRangeSample &K, const Bnd_Box &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & Key() const;
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox {
	Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox GetHandle() {
	return *(Handle_IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox*) &$self;
	}
};
%extend IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox::~IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_DataMapNodeOfDataMapOfSurfaceSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_PntOn2Faces;
class IntTools_PntOn2Faces {
	public:
		%feature("autodoc", "1");
		IntTools_PntOn2Faces();
		%feature("autodoc", "1");
		IntTools_PntOn2Faces(const IntTools_PntOnFace &aP1, const IntTools_PntOnFace &aP2);
		%feature("autodoc", "1");
		void SetP1(const IntTools_PntOnFace &aP1);
		%feature("autodoc", "1");
		void SetP2(const IntTools_PntOnFace &aP2);
		%feature("autodoc", "1");
		void SetValid(const Standard_Boolean bF);
		%feature("autodoc", "1");
		const IntTools_PntOnFace & P1() const;
		%feature("autodoc", "1");
		const IntTools_PntOnFace & P2() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;

};
%feature("shadow") IntTools_PntOn2Faces::~IntTools_PntOn2Faces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_PntOn2Faces {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_CurveRangeLocalizeData;
class IntTools_CurveRangeLocalizeData {
	public:
		%feature("autodoc", "1");
		IntTools_CurveRangeLocalizeData(const Standard_Integer theNbSample, const Standard_Real theMinRange);
		%feature("autodoc", "1");
		Standard_Integer GetNbSample() const;
		%feature("autodoc", "1");
		Standard_Real GetMinRange() const;
		%feature("autodoc", "1");
		void AddOutRange(const IntTools_CurveRangeSample &theRange);
		%feature("autodoc", "1");
		void AddBox(const IntTools_CurveRangeSample &theRange, const Bnd_Box &theBox);
		%feature("autodoc", "1");
		Standard_Boolean FindBox(const IntTools_CurveRangeSample &theRange, Bnd_Box & theBox) const;
		%feature("autodoc", "1");
		Standard_Boolean IsRangeOut(const IntTools_CurveRangeSample &theRange) const;
		%feature("autodoc", "1");
		void ListRangeOut(IntTools_ListOfCurveRangeSample & theList) const;

};
%feature("shadow") IntTools_CurveRangeLocalizeData::~IntTools_CurveRangeLocalizeData %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_CurveRangeLocalizeData {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress;
class IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const TopoDS_Shape K1, const Standard_Integer K2, const Standard_Address &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape  Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress GetHandle() {
	return *(Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress*) &$self;
	}
};
%extend IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress::~IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SurfaceRangeSample;
class IntTools_SurfaceRangeSample {
	public:
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample();
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample(const Standard_Integer theIndexU, const Standard_Integer theDepthU, const Standard_Integer theIndexV, const Standard_Integer theDepthV);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample(const IntTools_CurveRangeSample &theRangeU, const IntTools_CurveRangeSample &theRangeV);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample(const IntTools_SurfaceRangeSample &Other);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & Assign(const IntTools_SurfaceRangeSample &Other);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & operator=(const IntTools_SurfaceRangeSample &Other);
		%feature("autodoc", "1");
		void SetRanges(const IntTools_CurveRangeSample &theRangeU, const IntTools_CurveRangeSample &theRangeV);
		%feature("autodoc", "1");
		void GetRanges(IntTools_CurveRangeSample & theRangeU, IntTools_CurveRangeSample & theRangeV) const;
		%feature("autodoc", "1");
		void SetIndexes(const Standard_Integer theIndexU, const Standard_Integer theIndexV);
		%feature("autodoc","GetIndexes() -> [Standard_Integer, Standard_Integer]");

		void GetIndexes(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","GetDepths() -> [Standard_Integer, Standard_Integer]");

		void GetDepths(Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetSampleRangeU(const IntTools_CurveRangeSample &theRangeSampleU);
		%feature("autodoc", "1");
		const IntTools_CurveRangeSample & GetSampleRangeU() const;
		%feature("autodoc", "1");
		void SetSampleRangeV(const IntTools_CurveRangeSample &theRangeSampleV);
		%feature("autodoc", "1");
		const IntTools_CurveRangeSample & GetSampleRangeV() const;
		%feature("autodoc", "1");
		void SetIndexU(const Standard_Integer theIndexU);
		%feature("autodoc", "1");
		Standard_Integer GetIndexU() const;
		%feature("autodoc", "1");
		void SetIndexV(const Standard_Integer theIndexV);
		%feature("autodoc", "1");
		Standard_Integer GetIndexV() const;
		%feature("autodoc", "1");
		void SetDepthU(const Standard_Integer theDepthU);
		%feature("autodoc", "1");
		Standard_Integer GetDepthU() const;
		%feature("autodoc", "1");
		void SetDepthV(const Standard_Integer theDepthV);
		%feature("autodoc", "1");
		Standard_Integer GetDepthV() const;
		%feature("autodoc", "1");
		IntTools_Range GetRangeU(const Standard_Real theFirstU, const Standard_Real theLastU, const Standard_Integer theNbSampleU) const;
		%feature("autodoc", "1");
		IntTools_Range GetRangeV(const Standard_Real theFirstV, const Standard_Real theLastV, const Standard_Integer theNbSampleV) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const IntTools_SurfaceRangeSample &Other) const;
		%feature("autodoc", "1");
		Standard_Integer GetRangeIndexUDeeper(const Standard_Integer theNbSampleU) const;
		%feature("autodoc", "1");
		Standard_Integer GetRangeIndexVDeeper(const Standard_Integer theNbSampleV) const;

};
%feature("shadow") IntTools_SurfaceRangeSample::~IntTools_SurfaceRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SurfaceRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceNodeOfSequenceOfPntOn2Faces;
class IntTools_SequenceNodeOfSequenceOfPntOn2Faces : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceNodeOfSequenceOfPntOn2Faces(const IntTools_PntOn2Faces &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntTools_PntOn2Faces & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_SequenceNodeOfSequenceOfPntOn2Faces {
	Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces GetHandle() {
	return *(Handle_IntTools_SequenceNodeOfSequenceOfPntOn2Faces*) &$self;
	}
};
%extend IntTools_SequenceNodeOfSequenceOfPntOn2Faces {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_SequenceNodeOfSequenceOfPntOn2Faces::~IntTools_SequenceNodeOfSequenceOfPntOn2Faces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceNodeOfSequenceOfPntOn2Faces {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Range;
class IntTools_Range {
	public:
		%feature("autodoc", "1");
		IntTools_Range();
		%feature("autodoc", "1");
		IntTools_Range(const Standard_Real aFirst, const Standard_Real aLast);
		%feature("autodoc", "1");
		void SetFirst(const Standard_Real aFirst);
		%feature("autodoc", "1");
		void SetLast(const Standard_Real aLast);
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc","Range() -> [Standard_Real, Standard_Real]");

		void Range(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") IntTools_Range::~IntTools_Range %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Range {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_BeanBeanIntersector;
class IntTools_BeanBeanIntersector {
	public:
		%feature("autodoc", "1");
		IntTools_BeanBeanIntersector();
		%feature("autodoc", "1");
		IntTools_BeanBeanIntersector(const TopoDS_Edge theEdge1, const TopoDS_Edge theEdge2);
		%feature("autodoc", "1");
		IntTools_BeanBeanIntersector(const BRepAdaptor_Curve &theCurve1, const BRepAdaptor_Curve &theCurve2, const Standard_Real theBeanTolerance1, const Standard_Real theBeanTolerance2);
		%feature("autodoc", "1");
		IntTools_BeanBeanIntersector(const BRepAdaptor_Curve &theCurve1, const BRepAdaptor_Curve &theCurve2, const Standard_Real theFirstParOnCurve1, const Standard_Real theLastParOnCurve1, const Standard_Real theFirstParOnCurve2, const Standard_Real theLastParOnCurve2, const Standard_Real theBeanTolerance1, const Standard_Real theBeanTolerance2);
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge theEdge1, const TopoDS_Edge theEdge2);
		%feature("autodoc", "1");
		void Init(const BRepAdaptor_Curve &theCurve1, const BRepAdaptor_Curve &theCurve2, const Standard_Real theBeanTolerance1, const Standard_Real theBeanTolerance2);
		%feature("autodoc", "1");
		void Init(const BRepAdaptor_Curve &theCurve1, const BRepAdaptor_Curve &theCurve2, const Standard_Real theFirstParOnCurve1, const Standard_Real theLastParOnCurve1, const Standard_Real theFirstParOnCurve2, const Standard_Real theLastParOnCurve2, const Standard_Real theBeanTolerance1, const Standard_Real theBeanTolerance2);
		%feature("autodoc", "1");
		void SetBeanParameters(const Standard_Boolean IsFirstBean, const Standard_Real theFirstParOnCurve, const Standard_Real theLastParOnCurve);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const IntTools_SequenceOfRanges & Result() const;
		%feature("autodoc", "1");
		void Result(IntTools_SequenceOfRanges & theResults) const;

};
%feature("shadow") IntTools_BeanBeanIntersector::~IntTools_BeanBeanIntersector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_BeanBeanIntersector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_DataMapIteratorOfDataMapOfCurveSampleBox;
class IntTools_DataMapIteratorOfDataMapOfCurveSampleBox : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		IntTools_DataMapIteratorOfDataMapOfCurveSampleBox();
		%feature("autodoc", "1");
		IntTools_DataMapIteratorOfDataMapOfCurveSampleBox(const IntTools_DataMapOfCurveSampleBox &aMap);
		%feature("autodoc", "1");
		void Initialize(const IntTools_DataMapOfCurveSampleBox &aMap);
		%feature("autodoc", "1");
		const IntTools_CurveRangeSample & Key() const;
		%feature("autodoc", "1");
		const Bnd_Box & Value() const;

};
%feature("shadow") IntTools_DataMapIteratorOfDataMapOfCurveSampleBox::~IntTools_DataMapIteratorOfDataMapOfCurveSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_DataMapIteratorOfDataMapOfCurveSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Context;
class IntTools_Context {
	public:
		%feature("autodoc", "1");
		IntTools_Context();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		IntTools_FClass2d & FClass2d(const TopoDS_Face aF);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnSurf & ProjPS(const TopoDS_Face aF);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve & ProjPC(const TopoDS_Edge aE);
		%feature("autodoc", "1");
		GeomAPI_ProjectPointOnCurve & ProjPT(const Handle_Geom_Curve &aC);
		%feature("autodoc", "1");
		IntTools_SurfaceRangeLocalizeData & SurfaceData(const TopoDS_Face aF);
		%feature("autodoc", "1");
		BRepClass3d_SolidClassifier & SolidClassifier(const TopoDS_Solid aSolid);
		%feature("autodoc","ComputeVE(const aV, const aE) -> Standard_Real");

		Standard_Integer ComputeVE(const TopoDS_Vertex aV, const TopoDS_Edge aE, Standard_Real &OutValue);
		%feature("autodoc","ComputeVS(const aV, const aF) -> [Standard_Real, Standard_Real]");

		Standard_Integer ComputeVS(const TopoDS_Vertex aV, const TopoDS_Face aF, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		TopAbs_State StatePointFace(const TopoDS_Face aF, const gp_Pnt2d aP2D);
		%feature("autodoc", "1");
		Standard_Boolean IsPointInFace(const TopoDS_Face aF, const gp_Pnt2d aP2D);
		%feature("autodoc", "1");
		Standard_Boolean IsPointInOnFace(const TopoDS_Face aF, const gp_Pnt2d aP2D);
		%feature("autodoc", "1");
		Standard_Boolean IsValidPointForFace(const gp_Pnt aP3D, const TopoDS_Face aF, const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsValidPointForFaces(const gp_Pnt aP3D, const TopoDS_Face aF1, const TopoDS_Face aF2, const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsValidBlockForFace(const Standard_Real aT1, const Standard_Real aT2, const IntTools_Curve &aIC, const TopoDS_Face aF, const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsValidBlockForFaces(const Standard_Real aT1, const Standard_Real aT2, const IntTools_Curve &aIC, const TopoDS_Face aF1, const TopoDS_Face aF2, const Standard_Real aTol);
		%feature("autodoc","IsVertexOnLine(const aV, const aIC, Standard_Real aTolC) -> Standard_Real");

		Standard_Boolean IsVertexOnLine(const TopoDS_Vertex aV, const IntTools_Curve &aIC, const Standard_Real aTolC, Standard_Real &OutValue);
		%feature("autodoc","IsVertexOnLine(const aV, Standard_Real aTolV, const aIC, Standard_Real aTolC) -> Standard_Real");

		Standard_Boolean IsVertexOnLine(const TopoDS_Vertex aV, const Standard_Real aTolV, const IntTools_Curve &aIC, const Standard_Real aTolC, Standard_Real &OutValue);
		%feature("autodoc","ProjectPointOnEdge(const aP, const aE) -> Standard_Real");

		Standard_Boolean ProjectPointOnEdge(const gp_Pnt aP, const TopoDS_Edge aE, Standard_Real &OutValue);

};
%feature("shadow") IntTools_Context::~IntTools_Context %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Context {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_MapIteratorOfMapOfSurfaceSample;
class IntTools_MapIteratorOfMapOfSurfaceSample : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		IntTools_MapIteratorOfMapOfSurfaceSample();
		%feature("autodoc", "1");
		IntTools_MapIteratorOfMapOfSurfaceSample(const IntTools_MapOfSurfaceSample &aMap);
		%feature("autodoc", "1");
		void Initialize(const IntTools_MapOfSurfaceSample &aMap);
		%feature("autodoc", "1");
		const IntTools_SurfaceRangeSample & Key() const;

};
%feature("shadow") IntTools_MapIteratorOfMapOfSurfaceSample::~IntTools_MapIteratorOfMapOfSurfaceSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_MapIteratorOfMapOfSurfaceSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_QuickSortRange;
class IntTools_QuickSortRange {
	public:
		%feature("autodoc", "1");
		IntTools_QuickSortRange();
		%feature("autodoc", "1");
		static		void Sort(IntTools_Array1OfRange & TheArray, const IntTools_CompareRange &Comp);

};
%feature("shadow") IntTools_QuickSortRange::~IntTools_QuickSortRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_QuickSortRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Tools;
class IntTools_Tools {
	public:
		%feature("autodoc", "1");
		IntTools_Tools();
		%feature("autodoc", "1");
		static		Standard_Integer ComputeVV(const TopoDS_Vertex V1, const TopoDS_Vertex V2);
		%feature("autodoc", "1");
		static		Standard_Boolean HasInternalEdge(const TopoDS_Wire aW);
		%feature("autodoc", "1");
		static		void MakeFaceFromWireAndFace(const TopoDS_Wire aW, const TopoDS_Face aF, TopoDS_Face & aFNew);
		%feature("autodoc", "1");
		static		TopAbs_State ClassifyPointByFace(const TopoDS_Face aF, const gp_Pnt2d P);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVertex(const TopoDS_Edge E, const Standard_Real t);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVertex(const TopoDS_Edge E, const TopoDS_Vertex V, const Standard_Real t);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVertex(const IntTools_CommonPrt &aCmnPrt);
		%feature("autodoc", "1");
		static		Standard_Boolean IsMiddlePointsEqual(const TopoDS_Edge E1, const TopoDS_Edge E2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVertex(const gp_Pnt aP, const Standard_Real aTolPV, const TopoDS_Vertex aV);
		%feature("autodoc", "1");
		static		Standard_Real IntermediatePoint(const Standard_Real aFirst, const Standard_Real aLast);
		%feature("autodoc", "1");
		static		Standard_Integer SplitCurve(const IntTools_Curve &aC, IntTools_SequenceOfCurves & aS);
		%feature("autodoc", "1");
		static		void RejectLines(const IntTools_SequenceOfCurves &aSIn, IntTools_SequenceOfCurves & aSOut);
		%feature("autodoc", "1");
		static		Standard_Boolean IsDirsCoinside(const gp_Dir D1, const gp_Dir D2);
		%feature("autodoc", "1");
		static		Standard_Boolean IsDirsCoinside(const gp_Dir D1, const gp_Dir D2, const Standard_Real aTol);
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const Handle_Geom_Curve &aC);
		%feature("autodoc", "1");
		static		Standard_Real CurveTolerance(const Handle_Geom_Curve &aC, const Standard_Real aTolBase);

};
%feature("shadow") IntTools_Tools::~IntTools_Tools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Tools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_EdgeFace;
class IntTools_EdgeFace {
	public:
		%feature("autodoc", "1");
		IntTools_EdgeFace();
		%feature("autodoc", "1");
		void SetEdge(const TopoDS_Edge anEdge);
		%feature("autodoc", "1");
		void SetTolE(const Standard_Real aTolEdge1);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face aFace);
		%feature("autodoc", "1");
		void SetTolF(const Standard_Real aTolFace);
		%feature("autodoc", "1");
		void SetDiscretize(const Standard_Integer aDiscret);
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real aDeflection);
		%feature("autodoc", "1");
		void SetEpsilonT(const Standard_Real anEpsT);
		%feature("autodoc", "1");
		void SetEpsilonNull(const Standard_Real anEpsNull);
		%feature("autodoc", "1");
		void SetRange(const IntTools_Range &aRange);
		%feature("autodoc", "1");
		void SetRange(const Standard_Real aFirst, const Standard_Real aLast);
		%feature("autodoc", "1");
		void SetContext(const IntTools_PContext &theContext);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		const IntTools_SequenceOfCommonPrts & CommonParts() const;
		%feature("autodoc", "1");
		const IntTools_Range & Range() const;
		%feature("autodoc","IsEqDistance(const aP, const aS, Standard_Real aT) -> Standard_Real");

		static		Standard_Boolean IsEqDistance(const gp_Pnt aP, const BRepAdaptor_Surface &aS, const Standard_Real aT, Standard_Real &OutValue);

};
%feature("shadow") IntTools_EdgeFace::~IntTools_EdgeFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_EdgeFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListIteratorOfListOfSurfaceRangeSample;
class IntTools_ListIteratorOfListOfSurfaceRangeSample {
	public:
		%feature("autodoc", "1");
		IntTools_ListIteratorOfListOfSurfaceRangeSample();
		%feature("autodoc", "1");
		IntTools_ListIteratorOfListOfSurfaceRangeSample(const IntTools_ListOfSurfaceRangeSample &L);
		%feature("autodoc", "1");
		void Initialize(const IntTools_ListOfSurfaceRangeSample &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		IntTools_SurfaceRangeSample & Value() const;

};
%feature("shadow") IntTools_ListIteratorOfListOfSurfaceRangeSample::~IntTools_ListIteratorOfListOfSurfaceRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListIteratorOfListOfSurfaceRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox;
class IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox();
		%feature("autodoc", "1");
		IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox(const IntTools_DataMapOfSurfaceSampleBox &aMap);
		%feature("autodoc", "1");
		void Initialize(const IntTools_DataMapOfSurfaceSampleBox &aMap);
		%feature("autodoc", "1");
		const IntTools_SurfaceRangeSample & Key() const;
		%feature("autodoc", "1");
		const Bnd_Box & Value() const;

};
%feature("shadow") IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox::~IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_DataMapIteratorOfDataMapOfSurfaceSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ShrunkRange;
class IntTools_ShrunkRange {
	public:
		%feature("autodoc", "1");
		IntTools_ShrunkRange();
		%feature("autodoc", "1");
		IntTools_ShrunkRange(const TopoDS_Edge aE, const TopoDS_Vertex aV1, const TopoDS_Vertex aV2, const IntTools_Range &aR, const IntTools_Context &ICtx);
		%feature("autodoc", "1");
		void SetShrunkRange(const IntTools_Range &aR);
		%feature("autodoc", "1");
		const IntTools_Range & ShrunkRange() const;
		%feature("autodoc", "1");
		const Bnd_Box & BndBox() const;
		%feature("autodoc", "1");
		const TopoDS_Edge  Edge() const;
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;

};
%feature("shadow") IntTools_ShrunkRange::~IntTools_ShrunkRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ShrunkRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListOfBox;
class IntTools_ListOfBox {
	public:
		%feature("autodoc", "1");
		IntTools_ListOfBox();
		%feature("autodoc", "1");
		void Assign(const IntTools_ListOfBox &Other);
		%feature("autodoc", "1");
		void operator=(const IntTools_ListOfBox &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Bnd_Box &I);
		%feature("autodoc", "1");
		void Prepend(const Bnd_Box &I, IntTools_ListIteratorOfListOfBox & theIt);
		%feature("autodoc", "1");
		void Prepend(IntTools_ListOfBox & Other);
		%feature("autodoc", "1");
		void Append(const Bnd_Box &I);
		%feature("autodoc", "1");
		void Append(const Bnd_Box &I, IntTools_ListIteratorOfListOfBox & theIt);
		%feature("autodoc", "1");
		void Append(IntTools_ListOfBox & Other);
		%feature("autodoc", "1");
		Bnd_Box & First() const;
		%feature("autodoc", "1");
		Bnd_Box & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(IntTools_ListIteratorOfListOfBox & It);
		%feature("autodoc", "1");
		void InsertBefore(const Bnd_Box &I, IntTools_ListIteratorOfListOfBox & It);
		%feature("autodoc", "1");
		void InsertBefore(IntTools_ListOfBox & Other, IntTools_ListIteratorOfListOfBox & It);
		%feature("autodoc", "1");
		void InsertAfter(const Bnd_Box &I, IntTools_ListIteratorOfListOfBox & It);
		%feature("autodoc", "1");
		void InsertAfter(IntTools_ListOfBox & Other, IntTools_ListIteratorOfListOfBox & It);

};
%feature("shadow") IntTools_ListOfBox::~IntTools_ListOfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListOfBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_MapIteratorOfMapOfCurveSample;
class IntTools_MapIteratorOfMapOfCurveSample : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		IntTools_MapIteratorOfMapOfCurveSample();
		%feature("autodoc", "1");
		IntTools_MapIteratorOfMapOfCurveSample(const IntTools_MapOfCurveSample &aMap);
		%feature("autodoc", "1");
		void Initialize(const IntTools_MapOfCurveSample &aMap);
		%feature("autodoc", "1");
		const IntTools_CurveRangeSample & Key() const;

};
%feature("shadow") IntTools_MapIteratorOfMapOfCurveSample::~IntTools_MapIteratorOfMapOfCurveSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_MapIteratorOfMapOfCurveSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_SequenceOfRanges;
class IntTools_SequenceOfRanges : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntTools_SequenceOfRanges();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const IntTools_SequenceOfRanges & Assign(const IntTools_SequenceOfRanges &Other);
		%feature("autodoc", "1");
		const IntTools_SequenceOfRanges & operator=(const IntTools_SequenceOfRanges &Other);
		%feature("autodoc", "1");
		void Append(const IntTools_Range &T);
		%feature("autodoc", "1");
		void Append(IntTools_SequenceOfRanges & S);
		%feature("autodoc", "1");
		void Prepend(const IntTools_Range &T);
		%feature("autodoc", "1");
		void Prepend(IntTools_SequenceOfRanges & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntTools_Range &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntTools_SequenceOfRanges & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntTools_Range &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntTools_SequenceOfRanges & S);
		%feature("autodoc", "1");
		const IntTools_Range & First() const;
		%feature("autodoc", "1");
		const IntTools_Range & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntTools_SequenceOfRanges & S);
		%feature("autodoc", "1");
		const IntTools_Range & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntTools_Range & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntTools_Range &I);
		%feature("autodoc", "1");
		IntTools_Range & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntTools_Range & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") IntTools_SequenceOfRanges::~IntTools_SequenceOfRanges %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_SequenceOfRanges {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Array1OfRange;
class IntTools_Array1OfRange {
	public:
		%feature("autodoc", "1");
		IntTools_Array1OfRange(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IntTools_Array1OfRange(const IntTools_Range &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const IntTools_Range &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IntTools_Array1OfRange & Assign(const IntTools_Array1OfRange &Other);
		%feature("autodoc", "1");
		const IntTools_Array1OfRange & operator=(const IntTools_Array1OfRange &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntTools_Range &Value);
		%feature("autodoc", "1");
		const IntTools_Range & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntTools_Range & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		IntTools_Range & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntTools_Range & operator()(const Standard_Integer Index);

};
%feature("shadow") IntTools_Array1OfRange::~IntTools_Array1OfRange %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Array1OfRange {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress;
class IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress(const Handle_Standard_Transient &K1, const Standard_Integer K2, const Standard_Address &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress {
	Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress GetHandle() {
	return *(Handle_IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress*) &$self;
	}
};
%extend IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress::~IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_IndexedDataMapNodeOfIndexedDataMapOfTransientAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_DataMapNodeOfDataMapOfCurveSampleBox;
class IntTools_DataMapNodeOfDataMapOfCurveSampleBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		IntTools_DataMapNodeOfDataMapOfCurveSampleBox(const IntTools_CurveRangeSample &K, const Bnd_Box &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		IntTools_CurveRangeSample & Key() const;
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntTools_DataMapNodeOfDataMapOfCurveSampleBox {
	Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox GetHandle() {
	return *(Handle_IntTools_DataMapNodeOfDataMapOfCurveSampleBox*) &$self;
	}
};
%extend IntTools_DataMapNodeOfDataMapOfCurveSampleBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntTools_DataMapNodeOfDataMapOfCurveSampleBox::~IntTools_DataMapNodeOfDataMapOfCurveSampleBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_DataMapNodeOfDataMapOfCurveSampleBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_CurveRangeSample;
class IntTools_CurveRangeSample : public IntTools_BaseRangeSample {
	public:
		%feature("autodoc", "1");
		IntTools_CurveRangeSample();
		%feature("autodoc", "1");
		IntTools_CurveRangeSample(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void SetRangeIndex(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Integer GetRangeIndex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const IntTools_CurveRangeSample &Other) const;
		%feature("autodoc", "1");
		IntTools_Range GetRange(const Standard_Real theFirst, const Standard_Real theLast, const Standard_Integer theNbSample) const;
		%feature("autodoc", "1");
		Standard_Integer GetRangeIndexDeeper(const Standard_Integer theNbSample) const;

};
%feature("shadow") IntTools_CurveRangeSample::~IntTools_CurveRangeSample %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_CurveRangeSample {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_FaceFace;
class IntTools_FaceFace {
	public:
		%feature("autodoc", "1");
		IntTools_FaceFace();
		%feature("autodoc", "1");
		void SetParameters(const Standard_Boolean ApproxCurves, const Standard_Boolean ComputeCurveOnS1, const Standard_Boolean ComputeCurveOnS2, const Standard_Real ApproximationTolerance);
		%feature("autodoc", "1");
		void Perform(const TopoDS_Face F1, const TopoDS_Face F2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const IntTools_SequenceOfCurves & Lines() const;
		%feature("autodoc", "1");
		const IntTools_SequenceOfPntOn2Faces & Points() const;
		%feature("autodoc", "1");
		Standard_Real TolReached3d() const;
		%feature("autodoc", "1");
		Standard_Real TolReached2d() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face1() const;
		%feature("autodoc", "1");
		const TopoDS_Face  Face2() const;
		%feature("autodoc", "1");
		Standard_Boolean TangentFaces() const;
		%feature("autodoc", "1");
		void PrepareLines3D();
		%feature("autodoc", "1");
		void SetList(IntSurf_ListOfPntOn2S & ListOfPnts);

};
%feature("shadow") IntTools_FaceFace::~IntTools_FaceFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_FaceFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_Curve;
class IntTools_Curve {
	public:
		%feature("autodoc", "1");
		IntTools_Curve();
		%feature("autodoc", "1");
		IntTools_Curve(const Handle_Geom_Curve &Curve3d, const Handle_Geom2d_Curve &FirstCurve2d, const Handle_Geom2d_Curve &SecondCurve2d);
		%feature("autodoc", "1");
		void SetCurves(const Handle_Geom_Curve &Curve3d, const Handle_Geom2d_Curve &FirstCurve2d, const Handle_Geom2d_Curve &SecondCurve2d);
		%feature("autodoc", "1");
		void SetCurve(const Handle_Geom_Curve &Curve3d);
		%feature("autodoc", "1");
		void SetFirstCurve2d(const Handle_Geom2d_Curve &FirstCurve2d);
		%feature("autodoc", "1");
		void SetSecondCurve2d(const Handle_Geom2d_Curve &SecondCurve2d);
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & FirstCurve2d() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & SecondCurve2d() const;
		%feature("autodoc", "1");
		Standard_Boolean HasBounds() const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & aP1, gp_Pnt & aP2) const;
		%feature("autodoc","D0() -> Standard_Real");

		Standard_Boolean D0(Standard_Real &OutValue, gp_Pnt & aP1) const;
		%feature("autodoc", "1");
		GeomAbs_CurveType Type() const;

};
%feature("shadow") IntTools_Curve::~IntTools_Curve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_Curve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools;
class IntTools {
	public:
		%feature("autodoc", "1");
		IntTools();
		%feature("autodoc", "1");
		static		Standard_Real Length(const TopoDS_Edge E);
		%feature("autodoc", "1");
		static		void RemoveIdenticalRoots(IntTools_SequenceOfRoots & aSeq, const Standard_Real anEpsT);
		%feature("autodoc", "1");
		static		void SortRoots(IntTools_SequenceOfRoots & aSeq, const Standard_Real anEpsT);
		%feature("autodoc", "1");
		static		void FindRootStates(IntTools_SequenceOfRoots & aSeq, const Standard_Real anEpsNull);
		%feature("autodoc","Parameter(const P, const Curve) -> Standard_Real");

		static		Standard_Integer Parameter(const gp_Pnt P, const Handle_Geom_Curve &Curve, Standard_Real &OutValue);
		%feature("autodoc","GetRadius(const C, Standard_Real t1, Standard_Real t3) -> Standard_Real");

		static		Standard_Integer GetRadius(const BRepAdaptor_Curve &C, const Standard_Real t1, const Standard_Real t3, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Integer PrepareArgs(BRepAdaptor_Curve & C, const Standard_Real tMax, const Standard_Real tMin, const Standard_Integer Discret, const Standard_Real Deflect, IntTools_CArray1OfReal & anArgs);

};
%feature("shadow") IntTools::~IntTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntTools_ListIteratorOfListOfBox;
class IntTools_ListIteratorOfListOfBox {
	public:
		%feature("autodoc", "1");
		IntTools_ListIteratorOfListOfBox();
		%feature("autodoc", "1");
		IntTools_ListIteratorOfListOfBox(const IntTools_ListOfBox &L);
		%feature("autodoc", "1");
		void Initialize(const IntTools_ListOfBox &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Bnd_Box & Value() const;

};
%feature("shadow") IntTools_ListIteratorOfListOfBox::~IntTools_ListIteratorOfListOfBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntTools_ListIteratorOfListOfBox {
	void _kill_pointed() {
		delete $self;
	}
};
