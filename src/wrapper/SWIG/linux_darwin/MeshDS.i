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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module MeshDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MeshDS_renames.i


%include MeshDS_required_python_modules.i


%include MeshDS_dependencies.i


%include MeshDS_headers.i

typedef Handle_NCollection_IncAllocator MeshDS_BaseAllocator;
typedef NCollection_DataMap<int,NCollection_Map<int> > MeshDS_DataMapOfInteger;
typedef NCollection_List<int> MeshDS_ListOfInteger;
typedef NCollection_Map<int> MeshDS_MapOfInteger;

enum MeshDS_DegreeOfFreedom {
	MeshDS_Free,
	MeshDS_InVolume,
	MeshDS_OnSurface,
	MeshDS_OnCurve,
	MeshDS_Fixed,
	MeshDS_Frontier,
	MeshDS_Deleted,
	};



%nodefaultctor Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger & operator=(const Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger & operator=(const MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger* GetObject() {
	return (MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::~Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger;
class MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger();
		%feature("autodoc", "1");
		MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger(const MeshDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshDS_DataMapOfIntegerMapOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Value() const;

};
%feature("shadow") MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger::~MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger;
class MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger(const Standard_Integer &K, const TColStd_MapOfInteger &I, const TCollection_MapNodePtr &n);
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
		TColStd_MapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger GetHandle() {
	return *(Handle_MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger*) &$self;
	}
};
%extend MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger::~MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshDS_DataMapNodeOfDataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshDS_DataMapOfIntegerMapOfInteger;
class MeshDS_DataMapOfIntegerMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshDS_DataMapOfIntegerMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshDS_DataMapOfIntegerMapOfInteger & Assign(const MeshDS_DataMapOfIntegerMapOfInteger &Other);
		%feature("autodoc", "1");
		MeshDS_DataMapOfIntegerMapOfInteger & operator=(const MeshDS_DataMapOfIntegerMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TColStd_MapOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshDS_DataMapOfIntegerMapOfInteger::~MeshDS_DataMapOfIntegerMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshDS_DataMapOfIntegerMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};
