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
%module MeshAlgo

%include MeshAlgo_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MeshAlgo_dependencies.i


%include MeshAlgo_headers.i

typedef NCollection_CellFilter<MeshAlgo_CircleInspector> MeshAlgo_CellFilter;



%nodefaultctor Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc;
class Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc();
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc(const Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc &aHandle);
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc(const MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc *anItem);
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc & operator=(const Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc &aHandle);
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc & operator=(const MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc *anItem);
		%feature("autodoc", "1");
		Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc {
	MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc* GetObject() {
	return (MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc*)$self->Access();
	}
};
%extend Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc {
	~Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc\n");}
	}
};


%nodefaultctor MeshAlgo;
class MeshAlgo {
	public:
		%feature("autodoc", "1");
		MeshAlgo();
		%feature("autodoc", "1");
		void SetMesure(const Standard_Boolean val);
		%feature("autodoc", "1");
		void SetTrace(const Standard_Integer val);

};
%extend MeshAlgo {
	~MeshAlgo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshAlgo\n");}
	}
};


%nodefaultctor MeshAlgo_Circ;
class MeshAlgo_Circ {
	public:
		%feature("autodoc", "1");
		MeshAlgo_Circ();
		%feature("autodoc", "1");
		MeshAlgo_Circ(const gp_XY &loc, const Standard_Real rad);
		%feature("autodoc", "1");
		void SetLocation(const gp_XY &loc);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real rad);
		%feature("autodoc", "1");
		const gp_XY & Location() const;
		%feature("autodoc", "1");
		const Standard_Real & Radius() const;

};
%extend MeshAlgo_Circ {
	~MeshAlgo_Circ() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshAlgo_Circ\n");}
	}
};


%nodefaultctor MeshAlgo_DataMapOfIntegerCirc;
class MeshAlgo_DataMapOfIntegerCirc : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshAlgo_DataMapOfIntegerCirc(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshAlgo_DataMapOfIntegerCirc & Assign(const MeshAlgo_DataMapOfIntegerCirc &Other);
		%feature("autodoc", "1");
		MeshAlgo_DataMapOfIntegerCirc & operator=(const MeshAlgo_DataMapOfIntegerCirc &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const MeshAlgo_Circ &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const MeshAlgo_Circ & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const MeshAlgo_Circ & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		MeshAlgo_Circ & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		MeshAlgo_Circ & operator()(const Standard_Integer &K);

};
%extend MeshAlgo_DataMapOfIntegerCirc {
	~MeshAlgo_DataMapOfIntegerCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshAlgo_DataMapOfIntegerCirc\n");}
	}
};


%nodefaultctor MeshAlgo_CircleTool;
class MeshAlgo_CircleTool {
	public:
		%feature("autodoc", "1");
		MeshAlgo_CircleTool(const MeshDS_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		MeshAlgo_CircleTool(const Standard_Integer numberOfComponents, const MeshDS_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer numberOfComponents);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theSize);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theXSize, const Standard_Real theYSize);
		%feature("autodoc", "1");
		void SetMinMaxSize(const gp_XY &theMin, const gp_XY &theMax);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d &theCirc, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Boolean Add(const gp_XY &p1, const gp_XY &p2, const gp_XY &p3, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void MocAdd(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void Delete(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		TColStd_ListOfInteger & Select(const gp_XY &thePnt);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetGetNbPoints() {
				return (Standard_Integer) $self->GetNbPoints();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetGetNbPoints(Standard_Integer value ) {
				$self->GetNbPoints()=value;
				}
		};

};
%extend MeshAlgo_CircleTool {
	~MeshAlgo_CircleTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshAlgo_CircleTool\n");}
	}
};


%nodefaultctor MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc;
class MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc();
		%feature("autodoc", "1");
		MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc(const MeshAlgo_DataMapOfIntegerCirc &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshAlgo_DataMapOfIntegerCirc &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const MeshAlgo_Circ & Value() const;

};
%extend MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc {
	~MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshAlgo_DataMapIteratorOfDataMapOfIntegerCirc\n");}
	}
};


%nodefaultctor MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc;
class MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc(const Standard_Integer &K, const MeshAlgo_Circ &I, const TCollection_MapNodePtr &n);
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
		MeshAlgo_Circ & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc {
	Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc GetHandle() {
	return *(Handle_MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc*) &$self;
	}
};
%extend MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc {
	~MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MeshAlgo_DataMapNodeOfDataMapOfIntegerCirc\n");}
	}
};
