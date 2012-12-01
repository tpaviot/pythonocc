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

%module TopTools
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TopTools_renames.i


%include TopTools_required_python_modules.i


%include TopTools_dependencies.i


%include TopTools_headers.i

typedef TopTools_LocationSet * TopTools_LocationSetPtr;



%nodefaultctor Handle_TopTools_ListNodeOfListOfShape;
class Handle_TopTools_ListNodeOfListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_ListNodeOfListOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_ListNodeOfListOfShape(const Handle_TopTools_ListNodeOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_ListNodeOfListOfShape(const TopTools_ListNodeOfListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_ListNodeOfListOfShape & operator=(const Handle_TopTools_ListNodeOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_ListNodeOfListOfShape & operator=(const TopTools_ListNodeOfListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_ListNodeOfListOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_ListNodeOfListOfShape {
	TopTools_ListNodeOfListOfShape* GetObject() {
	return (TopTools_ListNodeOfListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_ListNodeOfListOfShape::~Handle_TopTools_ListNodeOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_ListNodeOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape;
class Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape(const Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape(const TopTools_DataMapNodeOfDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape & operator=(const TopTools_DataMapNodeOfDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape {
	TopTools_DataMapNodeOfDataMapOfIntegerShape* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfIntegerShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape::~Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_HSequenceOfShape;
class Handle_TopTools_HSequenceOfShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape(const Handle_TopTools_HSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape(const TopTools_HSequenceOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape & operator=(const Handle_TopTools_HSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape & operator=(const TopTools_HSequenceOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_HSequenceOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_HSequenceOfShape {
	TopTools_HSequenceOfShape* GetObject() {
	return (TopTools_HSequenceOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_HSequenceOfShape::~Handle_TopTools_HSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_HSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape;
class Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape(const Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape(const TopTools_IndexedMapNodeOfIndexedMapOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape & operator=(const Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape & operator=(const TopTools_IndexedMapNodeOfIndexedMapOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape {
	TopTools_IndexedMapNodeOfIndexedMapOfShape* GetObject() {
	return (TopTools_IndexedMapNodeOfIndexedMapOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape::~Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_SequenceNodeOfSequenceOfShape;
class Handle_TopTools_SequenceNodeOfSequenceOfShape : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_SequenceNodeOfSequenceOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_SequenceNodeOfSequenceOfShape(const Handle_TopTools_SequenceNodeOfSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_SequenceNodeOfSequenceOfShape(const TopTools_SequenceNodeOfSequenceOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_SequenceNodeOfSequenceOfShape & operator=(const Handle_TopTools_SequenceNodeOfSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_SequenceNodeOfSequenceOfShape & operator=(const TopTools_SequenceNodeOfSequenceOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_SequenceNodeOfSequenceOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_SequenceNodeOfSequenceOfShape {
	TopTools_SequenceNodeOfSequenceOfShape* GetObject() {
	return (TopTools_SequenceNodeOfSequenceOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_SequenceNodeOfSequenceOfShape::~Handle_TopTools_SequenceNodeOfSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_SequenceNodeOfSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_HArray1OfListOfShape;
class Handle_TopTools_HArray1OfListOfShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfListOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfListOfShape(const Handle_TopTools_HArray1OfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfListOfShape(const TopTools_HArray1OfListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfListOfShape & operator=(const Handle_TopTools_HArray1OfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfListOfShape & operator=(const TopTools_HArray1OfListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_HArray1OfListOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_HArray1OfListOfShape {
	TopTools_HArray1OfListOfShape* GetObject() {
	return (TopTools_HArray1OfListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_HArray1OfListOfShape::~Handle_TopTools_HArray1OfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_HArray1OfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfShapeShape;
class Handle_TopTools_DataMapNodeOfDataMapOfShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeShape();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeShape(const Handle_TopTools_DataMapNodeOfDataMapOfShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeShape(const TopTools_DataMapNodeOfDataMapOfShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeShape & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeShape & operator=(const TopTools_DataMapNodeOfDataMapOfShapeShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfShapeShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeShape {
	TopTools_DataMapNodeOfDataMapOfShapeShape* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfShapeShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfShapeShape::~Handle_TopTools_DataMapNodeOfDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape;
class Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape(const Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape(const TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape & operator=(const Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape & operator=(const TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape {
	TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape* GetObject() {
	return (TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape::~Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape;
class Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape();
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape(const Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape(const TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape & operator=(const Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape & operator=(const TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape {
	TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape* GetObject() {
	return (TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape::~Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_HArray1OfShape;
class Handle_TopTools_HArray1OfShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfShape();
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfShape(const Handle_TopTools_HArray1OfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfShape(const TopTools_HArray1OfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfShape & operator=(const Handle_TopTools_HArray1OfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HArray1OfShape & operator=(const TopTools_HArray1OfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_HArray1OfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_HArray1OfShape {
	TopTools_HArray1OfShape* GetObject() {
	return (TopTools_HArray1OfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_HArray1OfShape::~Handle_TopTools_HArray1OfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_HArray1OfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape;
class Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape(const Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape(const TopTools_DataMapNodeOfDataMapOfIntegerListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape & operator=(const TopTools_DataMapNodeOfDataMapOfIntegerListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape {
	TopTools_DataMapNodeOfDataMapOfIntegerListOfShape* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfIntegerListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape::~Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress;
class Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress();
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress & operator=(const Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress & operator=(const TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress* GetObject() {
	return (TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress::~Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger;
class Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger(const Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger(const TopTools_DataMapNodeOfDataMapOfShapeListOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger & operator=(const TopTools_DataMapNodeOfDataMapOfShapeListOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger {
	TopTools_DataMapNodeOfDataMapOfShapeListOfInteger* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfShapeListOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger::~Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger;
class Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger(const Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger(const TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger & operator=(const TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger {
	TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger::~Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape;
class Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape();
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape(const Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape(const TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape & operator=(const Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape & operator=(const TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape {
	TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape* GetObject() {
	return (TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape::~Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfShapeReal;
class Handle_TopTools_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeReal(const Handle_TopTools_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeReal(const TopTools_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeReal & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeReal & operator=(const TopTools_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfShapeReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeReal {
	TopTools_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfShapeReal::~Handle_TopTools_DataMapNodeOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger;
class Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger(const Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger(const TopTools_DataMapNodeOfDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger & operator=(const TopTools_DataMapNodeOfDataMapOfShapeInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger {
	TopTools_DataMapNodeOfDataMapOfShapeInteger* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfShapeInteger*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger::~Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape;
class Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape(const Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape(const TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape & operator=(const TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape::~Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_HArray2OfShape;
class Handle_TopTools_HArray2OfShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape();
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape(const Handle_TopTools_HArray2OfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape(const TopTools_HArray2OfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape & operator=(const Handle_TopTools_HArray2OfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_HArray2OfShape & operator=(const TopTools_HArray2OfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_HArray2OfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_HArray2OfShape {
	TopTools_HArray2OfShape* GetObject() {
	return (TopTools_HArray2OfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_HArray2OfShape::~Handle_TopTools_HArray2OfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_HArray2OfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape;
class Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape(const Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape(const TopTools_DataMapNodeOfDataMapOfOrientedShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape & operator=(const TopTools_DataMapNodeOfDataMapOfOrientedShapeShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape {
	TopTools_DataMapNodeOfDataMapOfOrientedShapeShape* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfOrientedShapeShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape::~Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_StdMapNodeOfMapOfShape;
class Handle_TopTools_StdMapNodeOfMapOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfShape(const Handle_TopTools_StdMapNodeOfMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfShape(const TopTools_StdMapNodeOfMapOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfShape & operator=(const Handle_TopTools_StdMapNodeOfMapOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfShape & operator=(const TopTools_StdMapNodeOfMapOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_StdMapNodeOfMapOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_StdMapNodeOfMapOfShape {
	TopTools_StdMapNodeOfMapOfShape* GetObject() {
	return (TopTools_StdMapNodeOfMapOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_StdMapNodeOfMapOfShape::~Handle_TopTools_StdMapNodeOfMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_StdMapNodeOfMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_StdMapNodeOfMapOfOrientedShape;
class Handle_TopTools_StdMapNodeOfMapOfOrientedShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfOrientedShape();
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfOrientedShape(const Handle_TopTools_StdMapNodeOfMapOfOrientedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfOrientedShape(const TopTools_StdMapNodeOfMapOfOrientedShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfOrientedShape & operator=(const Handle_TopTools_StdMapNodeOfMapOfOrientedShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_StdMapNodeOfMapOfOrientedShape & operator=(const TopTools_StdMapNodeOfMapOfOrientedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_StdMapNodeOfMapOfOrientedShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_StdMapNodeOfMapOfOrientedShape {
	TopTools_StdMapNodeOfMapOfOrientedShape* GetObject() {
	return (TopTools_StdMapNodeOfMapOfOrientedShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_StdMapNodeOfMapOfOrientedShape::~Handle_TopTools_StdMapNodeOfMapOfOrientedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_StdMapNodeOfMapOfOrientedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape;
class Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape(const Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape(const TopTools_DataMapNodeOfDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape & operator=(const Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape & operator=(const TopTools_DataMapNodeOfDataMapOfShapeListOfShape *anItem);
		%feature("autodoc", "1");
		static		Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape {
	TopTools_DataMapNodeOfDataMapOfShapeListOfShape* GetObject() {
	return (TopTools_DataMapNodeOfDataMapOfShapeListOfShape*)$self->Access();
	}
};
%feature("shadow") Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape::~Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfOrientedShapeShape;
class TopTools_DataMapOfOrientedShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfOrientedShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfOrientedShapeShape & Assign(const TopTools_DataMapOfOrientedShapeShape &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfOrientedShapeShape & operator=(const TopTools_DataMapOfOrientedShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfOrientedShapeShape::~TopTools_DataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_LocationSet;
class TopTools_LocationSet {
	public:
		%feature("autodoc", "1");
		TopTools_LocationSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopLoc_Location &L);
		%feature("autodoc", "1");
		const TopLoc_Location & Location(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteToString() {
			std::stringstream s;
			self->Write(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadFromString(std::string src) {
			std::stringstream s(src);
			self->Read(s);}
		};
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};
%feature("shadow") TopTools_LocationSet::~TopTools_LocationSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_LocationSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools;
class TopTools {
	public:
		%feature("autodoc", "1");
		TopTools();
		%feature("autodoc", "1");
		static		void Dump(const TopoDS_Shape Sh, Standard_OStream & S);
		%feature("autodoc", "1");
		static		void Dummy(const Standard_Integer I);

};
%feature("shadow") TopTools::~TopTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfIntegerListOfShape;
class TopTools_DataMapNodeOfDataMapOfIntegerListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfIntegerListOfShape(const Standard_Integer &K, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
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
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfIntegerListOfShape {
	Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfIntegerListOfShape*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfIntegerListOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfIntegerListOfShape::~TopTools_DataMapNodeOfDataMapOfIntegerListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfIntegerListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedDataMapOfShapeShape;
class TopTools_IndexedDataMapOfShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeShape & Assign(const TopTools_IndexedDataMapOfShapeShape &Other);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeShape & operator=(const TopTools_IndexedDataMapOfShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const TopoDS_Shape T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFromKey(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address FindFromKey1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFromKey1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_IndexedDataMapOfShapeShape::~TopTools_IndexedDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfShapeListOfShape;
class TopTools_DataMapIteratorOfDataMapOfShapeListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeListOfShape();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeListOfShape(const TopTools_DataMapOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfShapeListOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfShapeListOfShape::~TopTools_DataMapIteratorOfDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfShapeInteger;
class TopTools_DataMapNodeOfDataMapOfShapeInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfShapeInteger(const TopoDS_Shape K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfShapeInteger {
	Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfShapeInteger*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfShapeInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfShapeInteger::~TopTools_DataMapNodeOfDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_Array1OfListOfShape;
class TopTools_Array1OfListOfShape {
	public:
		%feature("autodoc", "1");
		TopTools_Array1OfListOfShape(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopTools_Array1OfListOfShape(const TopTools_ListOfShape &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TopTools_ListOfShape &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TopTools_Array1OfListOfShape & Assign(const TopTools_Array1OfListOfShape &Other);
		%feature("autodoc", "1");
		const TopTools_Array1OfListOfShape & operator=(const TopTools_Array1OfListOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopTools_ListOfShape &Value);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Integer Index);

};
%feature("shadow") TopTools_Array1OfListOfShape::~TopTools_Array1OfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_Array1OfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress;
class TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress(const TopoDS_Shape K1, const Standard_Integer K2, const Standard_Address &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress GetHandle() {
	return *(Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress*) &$self;
	}
};
%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress::~TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_MapOfOrientedShape;
class TopTools_MapOfOrientedShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_MapOfOrientedShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_MapOfOrientedShape & Assign(const TopTools_MapOfOrientedShape &Other);
		%feature("autodoc", "1");
		TopTools_MapOfOrientedShape & operator=(const TopTools_MapOfOrientedShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TopoDS_Shape aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TopoDS_Shape aKey);

};
%feature("shadow") TopTools_MapOfOrientedShape::~TopTools_MapOfOrientedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_MapOfOrientedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape;
class TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape(const TopoDS_Shape K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape {
	Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape GetHandle() {
	return *(Handle_TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape*) &$self;
	}
};
%extend TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape::~TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfShapeShape;
class TopTools_DataMapIteratorOfDataMapOfShapeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeShape();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeShape(const TopTools_DataMapOfShapeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfShapeShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfShapeShape::~TopTools_DataMapIteratorOfDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfOrientedShapeShape;
class TopTools_DataMapNodeOfDataMapOfOrientedShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfOrientedShapeShape(const TopoDS_Shape K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfOrientedShapeShape {
	Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeShape*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfOrientedShapeShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfOrientedShapeShape::~TopTools_DataMapNodeOfDataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedMapNodeOfIndexedMapOfShape;
class TopTools_IndexedMapNodeOfIndexedMapOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedMapNodeOfIndexedMapOfShape(const TopoDS_Shape K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_IndexedMapNodeOfIndexedMapOfShape {
	Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape GetHandle() {
	return *(Handle_TopTools_IndexedMapNodeOfIndexedMapOfShape*) &$self;
	}
};
%extend TopTools_IndexedMapNodeOfIndexedMapOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_IndexedMapNodeOfIndexedMapOfShape::~TopTools_IndexedMapNodeOfIndexedMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedMapNodeOfIndexedMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_ShapeSet;
class TopTools_ShapeSet {
	public:
		%feature("autodoc", "1");
		TopTools_ShapeSet();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void SetFormatNb(const Standard_Integer theFormatNb);
		%feature("autodoc", "1");
		Standard_Integer FormatNb() const;
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape S);
		%feature("autodoc", "1");
		const TopoDS_Shape  Shape(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer Index(const TopoDS_Shape S) const;
		%feature("autodoc", "1");
		const TopTools_LocationSet & Locations() const;
		%feature("autodoc", "1");
		TopTools_LocationSet & ChangeLocations();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpExtentToString() {
			std::stringstream s;
			self->DumpExtent(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void DumpExtent(TCollection_AsciiString & S) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteToString() {
			std::stringstream s;
			self->Write(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadFromString(std::string src) {
			std::stringstream s(src);
			self->Read(s);}
		};
		%feature("autodoc", "1");
		void Dump(const TopoDS_Shape S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		void Read(TopoDS_Shape & S, std::istream & IS) const;
		%feature("autodoc", "1");
		virtual		void AddGeometry(const TopoDS_Shape S);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpGeometryToString() {
			std::stringstream s;
			self->DumpGeometry(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteGeometryToString() {
			std::stringstream s;
			self->WriteGeometry(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadGeometryFromString(std::string src) {
			std::stringstream s(src);
			self->ReadGeometry(s);}
		};
		%feature("autodoc", "1");
		virtual		void DumpGeometry(const TopoDS_Shape S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void WriteGeometry(const TopoDS_Shape S, Standard_OStream & OS) const;
		%feature("autodoc", "1");
		virtual		void ReadGeometry(const TopAbs_ShapeEnum T, std::istream & IS, TopoDS_Shape & S);
		%feature("autodoc", "1");
		virtual		void AddShapes(TopoDS_Shape & S1, const TopoDS_Shape S2);
		%feature("autodoc", "1");
		virtual		void Check(const TopAbs_ShapeEnum T, TopoDS_Shape & S);
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		void SetProgress(const Handle_Message_ProgressIndicator &PR);
		%feature("autodoc", "1");
		Handle_Message_ProgressIndicator GetProgress() const;

};
%feature("shadow") TopTools_ShapeSet::~TopTools_ShapeSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_ShapeSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_Array2OfShape;
class TopTools_Array2OfShape {
	public:
		%feature("autodoc", "1");
		TopTools_Array2OfShape(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TopTools_Array2OfShape(const TopoDS_Shape Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TopTools_Array2OfShape & Assign(const TopTools_Array2OfShape &Other);
		%feature("autodoc", "1");
		const TopTools_Array2OfShape & operator=(const TopTools_Array2OfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const TopoDS_Shape Value);
		%feature("autodoc", "1");
		const TopoDS_Shape  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TopTools_Array2OfShape::~TopTools_Array2OfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_Array2OfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfShapeListOfInteger;
class TopTools_DataMapNodeOfDataMapOfShapeListOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfShapeListOfInteger(const TopoDS_Shape K, const TColStd_ListOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfShapeListOfInteger {
	Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfInteger*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfShapeListOfInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfShapeListOfInteger::~TopTools_DataMapNodeOfDataMapOfShapeListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfShapeListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_HArray2OfShape;
class TopTools_HArray2OfShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopTools_HArray2OfShape(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TopTools_HArray2OfShape(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const TopoDS_Shape V);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const TopoDS_Shape Value);
		%feature("autodoc", "1");
		const TopoDS_Shape  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TopTools_Array2OfShape & Array2() const;
		%feature("autodoc", "1");
		TopTools_Array2OfShape & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_HArray2OfShape {
	Handle_TopTools_HArray2OfShape GetHandle() {
	return *(Handle_TopTools_HArray2OfShape*) &$self;
	}
};
%extend TopTools_HArray2OfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_HArray2OfShape::~TopTools_HArray2OfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_HArray2OfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_ShapeMapHasher;
class TopTools_ShapeMapHasher {
	public:
		%feature("autodoc", "1");
		TopTools_ShapeMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const TopoDS_Shape S, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const TopoDS_Shape S1, const TopoDS_Shape S2);

};
%feature("shadow") TopTools_ShapeMapHasher::~TopTools_ShapeMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_ShapeMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape;
class TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape(const TopoDS_Shape K, const TopTools_SequenceOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape::~TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape;
class TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape(const TopoDS_Shape K1, const Standard_Integer K2, const TopoDS_Shape I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape {
	Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape GetHandle() {
	return *(Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape*) &$self;
	}
};
%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape::~TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedDataMapOfShapeAddress;
class TopTools_IndexedDataMapOfShapeAddress : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeAddress(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeAddress & Assign(const TopTools_IndexedDataMapOfShapeAddress &Other);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeAddress & operator=(const TopTools_IndexedDataMapOfShapeAddress &Other);
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
		%feature("autodoc", "1");
		Standard_Address FindFromKey1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFromKey1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_IndexedDataMapOfShapeAddress::~TopTools_IndexedDataMapOfShapeAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedDataMapOfShapeAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfShapeShape;
class TopTools_DataMapOfShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & Assign(const TopTools_DataMapOfShapeShape &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeShape & operator=(const TopTools_DataMapOfShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfShapeShape::~TopTools_DataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_ListIteratorOfListOfShape;
class TopTools_ListIteratorOfListOfShape {
	public:
		%feature("autodoc", "1");
		TopTools_ListIteratorOfListOfShape();
		%feature("autodoc", "1");
		TopTools_ListIteratorOfListOfShape(const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const TopTools_ListOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;

};
%feature("shadow") TopTools_ListIteratorOfListOfShape::~TopTools_ListIteratorOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_ListIteratorOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedMapOfOrientedShape;
class TopTools_IndexedMapOfOrientedShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedMapOfOrientedShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_IndexedMapOfOrientedShape & Assign(const TopTools_IndexedMapOfOrientedShape &Other);
		%feature("autodoc", "1");
		TopTools_IndexedMapOfOrientedShape & operator=(const TopTools_IndexedMapOfOrientedShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;

};
%feature("shadow") TopTools_IndexedMapOfOrientedShape::~TopTools_IndexedMapOfOrientedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedMapOfOrientedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_ListOfShape;
class TopTools_ListOfShape {
	public:
		%feature("autodoc", "1");
		TopTools_ListOfShape();
		%feature("autodoc", "1");
		void Assign(const TopTools_ListOfShape &Other);
		%feature("autodoc", "1");
		void operator=(const TopTools_ListOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape I);
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape I, TopTools_ListIteratorOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(TopTools_ListOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape I);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape I, TopTools_ListIteratorOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Append(TopTools_ListOfShape & Other);
		%feature("autodoc", "1");
		TopoDS_Shape  First() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopTools_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopoDS_Shape I, TopTools_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(TopTools_ListOfShape & Other, TopTools_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopoDS_Shape I, TopTools_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(TopTools_ListOfShape & Other, TopTools_ListIteratorOfListOfShape & It);

};
%feature("shadow") TopTools_ListOfShape::~TopTools_ListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_ListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedMapOfShape;
class TopTools_IndexedMapOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & Assign(const TopTools_IndexedMapOfShape &Other);
		%feature("autodoc", "1");
		TopTools_IndexedMapOfShape & operator=(const TopTools_IndexedMapOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;

};
%feature("shadow") TopTools_IndexedMapOfShape::~TopTools_IndexedMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfShapeListOfShape;
class TopTools_DataMapOfShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & Assign(const TopTools_DataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfShape & operator=(const TopTools_DataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfShapeListOfShape::~TopTools_DataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger;
class TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger(const TopoDS_Shape K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger {
	Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger::~TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_MapIteratorOfMapOfShape;
class TopTools_MapIteratorOfMapOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_MapIteratorOfMapOfShape();
		%feature("autodoc", "1");
		TopTools_MapIteratorOfMapOfShape(const TopTools_MapOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_MapOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;

};
%feature("shadow") TopTools_MapIteratorOfMapOfShape::~TopTools_MapIteratorOfMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_MapIteratorOfMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfShapeSequenceOfShape;
class TopTools_DataMapOfShapeSequenceOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeSequenceOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeSequenceOfShape & Assign(const TopTools_DataMapOfShapeSequenceOfShape &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeSequenceOfShape & operator=(const TopTools_DataMapOfShapeSequenceOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TopTools_SequenceOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfShapeSequenceOfShape::~TopTools_DataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfShapeInteger;
class TopTools_DataMapOfShapeInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeInteger & Assign(const TopTools_DataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeInteger & operator=(const TopTools_DataMapOfShapeInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TopoDS_Shape K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const TopoDS_Shape K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const TopoDS_Shape K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfShapeInteger::~TopTools_DataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfShapeReal;
class TopTools_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeReal & Assign(const TopTools_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeReal & operator=(const TopTools_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TopoDS_Shape K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeFind(const TopoDS_Shape K) {
				return (Standard_Real) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Real value ,const TopoDS_Shape K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfShapeReal::~TopTools_DataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfShapeReal;
class TopTools_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetValue() {
				return (Standard_Real) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Real value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfShapeReal {
	Handle_TopTools_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfShapeReal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfShapeReal::~TopTools_DataMapNodeOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_Array1OfShape;
class TopTools_Array1OfShape {
	public:
		%feature("autodoc", "1");
		TopTools_Array1OfShape(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopTools_Array1OfShape(const TopoDS_Shape Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TopTools_Array1OfShape & Assign(const TopTools_Array1OfShape &Other);
		%feature("autodoc", "1");
		const TopTools_Array1OfShape & operator=(const TopTools_Array1OfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopoDS_Shape Value);
		%feature("autodoc", "1");
		const TopoDS_Shape  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer Index);

};
%feature("shadow") TopTools_Array1OfShape::~TopTools_Array1OfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_Array1OfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_HArray1OfListOfShape;
class TopTools_HArray1OfListOfShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopTools_HArray1OfListOfShape(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopTools_HArray1OfListOfShape(const Standard_Integer Low, const Standard_Integer Up, const TopTools_ListOfShape &V);
		%feature("autodoc", "1");
		void Init(const TopTools_ListOfShape &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopTools_ListOfShape &Value);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TopTools_Array1OfListOfShape & Array1() const;
		%feature("autodoc", "1");
		TopTools_Array1OfListOfShape & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_HArray1OfListOfShape {
	Handle_TopTools_HArray1OfListOfShape GetHandle() {
	return *(Handle_TopTools_HArray1OfListOfShape*) &$self;
	}
};
%extend TopTools_HArray1OfListOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_HArray1OfListOfShape::~TopTools_HArray1OfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_HArray1OfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedDataMapOfShapeListOfShape;
class TopTools_IndexedDataMapOfShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeListOfShape & Assign(const TopTools_IndexedDataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		TopTools_IndexedDataMapOfShapeListOfShape & operator=(const TopTools_IndexedDataMapOfShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape K, const TopTools_ListOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromKey(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromKey(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address FindFromKey1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFromKey1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_IndexedDataMapOfShapeListOfShape::~TopTools_IndexedDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfShapeListOfShape;
class TopTools_DataMapNodeOfDataMapOfShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfShapeListOfShape(const TopoDS_Shape K, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfShapeListOfShape {
	Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfShapeListOfShape*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfShapeListOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfShapeListOfShape::~TopTools_DataMapNodeOfDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_MutexForShapeProvider;
class TopTools_MutexForShapeProvider {
	public:
		%feature("autodoc", "1");
		TopTools_MutexForShapeProvider();
		%feature("autodoc", "1");
		void CreateMutexesForSubShapes(const TopoDS_Shape theShape, const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		void CreateMutexForShape(const TopoDS_Shape theShape);
		%feature("autodoc", "1");
		Standard_Mutex * GetMutex(const TopoDS_Shape theShape) const;
		%feature("autodoc", "1");
		void RemoveAllMutexes();

};
%feature("shadow") TopTools_MutexForShapeProvider::~TopTools_MutexForShapeProvider %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_MutexForShapeProvider {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfIntegerShape;
class TopTools_DataMapNodeOfDataMapOfIntegerShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfIntegerShape(const Standard_Integer &K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
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
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfIntegerShape {
	Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfIntegerShape*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfIntegerShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfIntegerShape::~TopTools_DataMapNodeOfDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfShapeListOfInteger;
class TopTools_DataMapOfShapeListOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfInteger & Assign(const TopTools_DataMapOfShapeListOfInteger &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfShapeListOfInteger & operator=(const TopTools_DataMapOfShapeListOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TColStd_ListOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TColStd_ListOfInteger & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfShapeListOfInteger::~TopTools_DataMapOfShapeListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfShapeListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_OrientedShapeMapHasher;
class TopTools_OrientedShapeMapHasher {
	public:
		%feature("autodoc", "1");
		TopTools_OrientedShapeMapHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const TopoDS_Shape S, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const TopoDS_Shape S1, const TopoDS_Shape S2);

};
%feature("shadow") TopTools_OrientedShapeMapHasher::~TopTools_OrientedShapeMapHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_OrientedShapeMapHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_HArray1OfShape;
class TopTools_HArray1OfShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopTools_HArray1OfShape(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TopTools_HArray1OfShape(const Standard_Integer Low, const Standard_Integer Up, const TopoDS_Shape V);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopoDS_Shape Value);
		%feature("autodoc", "1");
		const TopoDS_Shape  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TopTools_Array1OfShape & Array1() const;
		%feature("autodoc", "1");
		TopTools_Array1OfShape & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_HArray1OfShape {
	Handle_TopTools_HArray1OfShape GetHandle() {
	return *(Handle_TopTools_HArray1OfShape*) &$self;
	}
};
%extend TopTools_HArray1OfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_HArray1OfShape::~TopTools_HArray1OfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_HArray1OfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfIntegerShape;
class TopTools_DataMapIteratorOfDataMapOfIntegerShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfIntegerShape();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfIntegerShape(const TopTools_DataMapOfIntegerShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfIntegerShape &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfIntegerShape::~TopTools_DataMapIteratorOfDataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_MapIteratorOfMapOfOrientedShape;
class TopTools_MapIteratorOfMapOfOrientedShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_MapIteratorOfMapOfOrientedShape();
		%feature("autodoc", "1");
		TopTools_MapIteratorOfMapOfOrientedShape(const TopTools_MapOfOrientedShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_MapOfOrientedShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;

};
%feature("shadow") TopTools_MapIteratorOfMapOfOrientedShape::~TopTools_MapIteratorOfMapOfOrientedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_MapIteratorOfMapOfOrientedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapNodeOfDataMapOfShapeShape;
class TopTools_DataMapNodeOfDataMapOfShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapNodeOfDataMapOfShapeShape(const TopoDS_Shape K, const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_DataMapNodeOfDataMapOfShapeShape {
	Handle_TopTools_DataMapNodeOfDataMapOfShapeShape GetHandle() {
	return *(Handle_TopTools_DataMapNodeOfDataMapOfShapeShape*) &$self;
	}
};
%extend TopTools_DataMapNodeOfDataMapOfShapeShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_DataMapNodeOfDataMapOfShapeShape::~TopTools_DataMapNodeOfDataMapOfShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapNodeOfDataMapOfShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfIntegerListOfShape;
class TopTools_DataMapOfIntegerListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfIntegerListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfIntegerListOfShape & Assign(const TopTools_DataMapOfIntegerListOfShape &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfIntegerListOfShape & operator=(const TopTools_DataMapOfIntegerListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Standard_Integer &K);

};
%feature("shadow") TopTools_DataMapOfIntegerListOfShape::~TopTools_DataMapOfIntegerListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfIntegerListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfIntegerShape;
class TopTools_DataMapOfIntegerShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfIntegerShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfIntegerShape & Assign(const TopTools_DataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfIntegerShape & operator=(const TopTools_DataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopoDS_Shape I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopoDS_Shape  Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Standard_Integer &K);

};
%feature("shadow") TopTools_DataMapOfIntegerShape::~TopTools_DataMapOfIntegerShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfIntegerShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_HSequenceOfShape;
class TopTools_HSequenceOfShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopTools_HSequenceOfShape();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TopTools_HSequenceOfShape &aSequence);
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TopTools_HSequenceOfShape &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const TopoDS_Shape anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TopTools_HSequenceOfShape &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const TopoDS_Shape anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TopTools_HSequenceOfShape &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const TopoDS_Shape anItem);
		%feature("autodoc", "1");
		const TopoDS_Shape  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Sequence() const;
		%feature("autodoc", "1");
		TopTools_SequenceOfShape & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_HSequenceOfShape {
	Handle_TopTools_HSequenceOfShape GetHandle() {
	return *(Handle_TopTools_HSequenceOfShape*) &$self;
	}
};
%extend TopTools_HSequenceOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_HSequenceOfShape::~TopTools_HSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_HSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger;
class TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger(const TopTools_DataMapOfShapeListOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfShapeListOfInteger &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger::~TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfShapeInteger;
class TopTools_DataMapIteratorOfDataMapOfShapeInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeInteger();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeInteger(const TopTools_DataMapOfShapeInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfShapeInteger &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfShapeInteger::~TopTools_DataMapIteratorOfDataMapOfShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape;
class TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape(const TopTools_DataMapOfIntegerListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfIntegerListOfShape &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape::~TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_StdMapNodeOfMapOfOrientedShape;
class TopTools_StdMapNodeOfMapOfOrientedShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_StdMapNodeOfMapOfOrientedShape(const TopoDS_Shape K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_StdMapNodeOfMapOfOrientedShape {
	Handle_TopTools_StdMapNodeOfMapOfOrientedShape GetHandle() {
	return *(Handle_TopTools_StdMapNodeOfMapOfOrientedShape*) &$self;
	}
};
%extend TopTools_StdMapNodeOfMapOfOrientedShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_StdMapNodeOfMapOfOrientedShape::~TopTools_StdMapNodeOfMapOfOrientedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_StdMapNodeOfMapOfOrientedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_ListNodeOfListOfShape;
class TopTools_ListNodeOfListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_ListNodeOfListOfShape(const TopoDS_Shape I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_ListNodeOfListOfShape {
	Handle_TopTools_ListNodeOfListOfShape GetHandle() {
	return *(Handle_TopTools_ListNodeOfListOfShape*) &$self;
	}
};
%extend TopTools_ListNodeOfListOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_ListNodeOfListOfShape::~TopTools_ListNodeOfListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_ListNodeOfListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape;
class TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape(const TopTools_DataMapOfShapeSequenceOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfShapeSequenceOfShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape::~TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfShapeSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape;
class TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape(const TopTools_DataMapOfOrientedShapeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfOrientedShapeShape &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape::~TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfOrientedShapeShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapOfOrientedShapeInteger;
class TopTools_DataMapOfOrientedShapeInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapOfOrientedShapeInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_DataMapOfOrientedShapeInteger & Assign(const TopTools_DataMapOfOrientedShapeInteger &Other);
		%feature("autodoc", "1");
		TopTools_DataMapOfOrientedShapeInteger & operator=(const TopTools_DataMapOfOrientedShapeInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TopoDS_Shape K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const TopoDS_Shape K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const TopoDS_Shape K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TopoDS_Shape K);
		%feature("autodoc", "1");
		Standard_Address Find1(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const TopoDS_Shape K);

};
%feature("shadow") TopTools_DataMapOfOrientedShapeInteger::~TopTools_DataMapOfOrientedShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapOfOrientedShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger;
class TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger(const TopTools_DataMapOfOrientedShapeInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfOrientedShapeInteger &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger::~TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape;
class TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape(const TopoDS_Shape K1, const Standard_Integer K2, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
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
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape {
	Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape GetHandle() {
	return *(Handle_TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape*) &$self;
	}
};
%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape::~TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_DataMapIteratorOfDataMapOfShapeReal;
class TopTools_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		TopTools_DataMapIteratorOfDataMapOfShapeReal(const TopTools_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const TopTools_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%feature("shadow") TopTools_DataMapIteratorOfDataMapOfShapeReal::~TopTools_DataMapIteratorOfDataMapOfShapeReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_DataMapIteratorOfDataMapOfShapeReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_SequenceNodeOfSequenceOfShape;
class TopTools_SequenceNodeOfSequenceOfShape : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TopTools_SequenceNodeOfSequenceOfShape(const TopoDS_Shape I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TopoDS_Shape  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_SequenceNodeOfSequenceOfShape {
	Handle_TopTools_SequenceNodeOfSequenceOfShape GetHandle() {
	return *(Handle_TopTools_SequenceNodeOfSequenceOfShape*) &$self;
	}
};
%extend TopTools_SequenceNodeOfSequenceOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_SequenceNodeOfSequenceOfShape::~TopTools_SequenceNodeOfSequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_SequenceNodeOfSequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_SequenceOfShape;
class TopTools_SequenceOfShape : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TopTools_SequenceOfShape();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & Assign(const TopTools_SequenceOfShape &Other);
		%feature("autodoc", "1");
		const TopTools_SequenceOfShape & operator=(const TopTools_SequenceOfShape &Other);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape T);
		%feature("autodoc", "1");
		void Append(TopTools_SequenceOfShape & S);
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape T);
		%feature("autodoc", "1");
		void Prepend(TopTools_SequenceOfShape & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TopoDS_Shape I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TopTools_SequenceOfShape & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TopoDS_Shape T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TopTools_SequenceOfShape & S);
		%feature("autodoc", "1");
		const TopoDS_Shape  First() const;
		%feature("autodoc", "1");
		const TopoDS_Shape  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TopTools_SequenceOfShape & S);
		%feature("autodoc", "1");
		const TopoDS_Shape  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TopoDS_Shape  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TopoDS_Shape I);
		%feature("autodoc", "1");
		TopoDS_Shape  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TopoDS_Shape  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TopTools_SequenceOfShape::~TopTools_SequenceOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_SequenceOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_MapOfShape;
class TopTools_MapOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TopTools_MapOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TopTools_MapOfShape & Assign(const TopTools_MapOfShape &Other);
		%feature("autodoc", "1");
		TopTools_MapOfShape & operator=(const TopTools_MapOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TopoDS_Shape aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TopoDS_Shape aKey);

};
%feature("shadow") TopTools_MapOfShape::~TopTools_MapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_MapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TopTools_StdMapNodeOfMapOfShape;
class TopTools_StdMapNodeOfMapOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopTools_StdMapNodeOfMapOfShape(const TopoDS_Shape K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopTools_StdMapNodeOfMapOfShape {
	Handle_TopTools_StdMapNodeOfMapOfShape GetHandle() {
	return *(Handle_TopTools_StdMapNodeOfMapOfShape*) &$self;
	}
};
%extend TopTools_StdMapNodeOfMapOfShape {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TopTools_StdMapNodeOfMapOfShape::~TopTools_StdMapNodeOfMapOfShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopTools_StdMapNodeOfMapOfShape {
	void _kill_pointed() {
		delete $self;
	}
};
