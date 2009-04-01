/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%module PXCAFDoc

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include PXCAFDoc_dependencies.i


%include PXCAFDoc_headers.i




%nodefaultctor Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence;
class Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence(const PXCAFDoc_SeqNodeOfGraphNodeSequence *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence {
	PXCAFDoc_SeqNodeOfGraphNodeSequence* GetObject() {
	return (PXCAFDoc_SeqNodeOfGraphNodeSequence*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence {
	~Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_Location;
class Handle_PXCAFDoc_Location : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location(const Handle_PXCAFDoc_Location &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location(const PXCAFDoc_Location *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Location const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Location {
	PXCAFDoc_Location* GetObject() {
	return (PXCAFDoc_Location*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_Location {
	~Handle_PXCAFDoc_Location() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_Location\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_GraphNode;
class Handle_PXCAFDoc_GraphNode : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode(const Handle_PXCAFDoc_GraphNode &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode(const PXCAFDoc_GraphNode *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_GraphNode {
	PXCAFDoc_GraphNode* GetObject() {
	return (PXCAFDoc_GraphNode*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_GraphNode {
	~Handle_PXCAFDoc_GraphNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_GraphNode\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_GraphNodeSequence;
class Handle_PXCAFDoc_GraphNodeSequence : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence(const Handle_PXCAFDoc_GraphNodeSequence &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence(const PXCAFDoc_GraphNodeSequence *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_GraphNodeSequence {
	PXCAFDoc_GraphNodeSequence* GetObject() {
	return (PXCAFDoc_GraphNodeSequence*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_GraphNodeSequence {
	~Handle_PXCAFDoc_GraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_GraphNodeSequence\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_DocumentTool;
class Handle_PXCAFDoc_DocumentTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool(const Handle_PXCAFDoc_DocumentTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool(const PXCAFDoc_DocumentTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_DocumentTool const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_DocumentTool {
	PXCAFDoc_DocumentTool* GetObject() {
	return (PXCAFDoc_DocumentTool*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_DocumentTool {
	~Handle_PXCAFDoc_DocumentTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_DocumentTool\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_Centroid;
class Handle_PXCAFDoc_Centroid : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid(const Handle_PXCAFDoc_Centroid &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid(const PXCAFDoc_Centroid *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Centroid const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Centroid {
	PXCAFDoc_Centroid* GetObject() {
	return (PXCAFDoc_Centroid*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_Centroid {
	~Handle_PXCAFDoc_Centroid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_Centroid\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_ShapeTool;
class Handle_PXCAFDoc_ShapeTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool(const Handle_PXCAFDoc_ShapeTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool(const PXCAFDoc_ShapeTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ShapeTool const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_ShapeTool {
	PXCAFDoc_ShapeTool* GetObject() {
	return (PXCAFDoc_ShapeTool*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_ShapeTool {
	~Handle_PXCAFDoc_ShapeTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_ShapeTool\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_Volume;
class Handle_PXCAFDoc_Volume : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume(const Handle_PXCAFDoc_Volume &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume(const PXCAFDoc_Volume *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Volume const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Volume {
	PXCAFDoc_Volume* GetObject() {
	return (PXCAFDoc_Volume*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_Volume {
	~Handle_PXCAFDoc_Volume() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_Volume\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_Area;
class Handle_PXCAFDoc_Area : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area(const Handle_PXCAFDoc_Area &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area(const PXCAFDoc_Area *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Area const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Area {
	PXCAFDoc_Area* GetObject() {
	return (PXCAFDoc_Area*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_Area {
	~Handle_PXCAFDoc_Area() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_Area\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_LayerTool;
class Handle_PXCAFDoc_LayerTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool(const Handle_PXCAFDoc_LayerTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool(const PXCAFDoc_LayerTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_LayerTool const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_LayerTool {
	PXCAFDoc_LayerTool* GetObject() {
	return (PXCAFDoc_LayerTool*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_LayerTool {
	~Handle_PXCAFDoc_LayerTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_LayerTool\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_Color;
class Handle_PXCAFDoc_Color : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color(const Handle_PXCAFDoc_Color &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color(const PXCAFDoc_Color *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_Color const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_Color {
	PXCAFDoc_Color* GetObject() {
	return (PXCAFDoc_Color*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_Color {
	~Handle_PXCAFDoc_Color() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_Color\n");}
	}
};

%nodefaultctor Handle_PXCAFDoc_ColorTool;
class Handle_PXCAFDoc_ColorTool : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool();
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool(const Handle_PXCAFDoc_ColorTool &aHandle);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool(const PXCAFDoc_ColorTool *anItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_ColorTool const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PXCAFDoc_ColorTool {
	PXCAFDoc_ColorTool* GetObject() {
	return (PXCAFDoc_ColorTool*)$self->Access();
	}
};
%extend Handle_PXCAFDoc_ColorTool {
	~Handle_PXCAFDoc_ColorTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PXCAFDoc_ColorTool\n");}
	}
};

%nodefaultctor PXCAFDoc_Volume;
class PXCAFDoc_Volume : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Volume();
		%feature("autodoc", "1");
		PXCAFDoc_Volume(const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real V);
		%feature("autodoc", "1");
		PXCAFDoc_Volume(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPXCAFDoc_VolumemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_VolumemyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Volume {
	Handle_PXCAFDoc_Volume GetHandle() {
	return *(Handle_PXCAFDoc_Volume*) &$self;
	}
};
%extend PXCAFDoc_Volume {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_Volume {
	~PXCAFDoc_Volume() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_Volume\n");}
	}
};

%nodefaultctor PXCAFDoc_GraphNodeSequence;
class PXCAFDoc_GraphNodeSequence : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_GraphNodeSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode First() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void Append(const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void Prepend(const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PXCAFDoc_GraphNode &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PXCAFDoc_GraphNodeSequence(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodeSequenceFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodeSequenceFirstItem(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodeSequenceLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodeSequenceLastItem(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPXCAFDoc_GraphNodeSequenceSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodeSequenceSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_GraphNodeSequence {
	Handle_PXCAFDoc_GraphNodeSequence GetHandle() {
	return *(Handle_PXCAFDoc_GraphNodeSequence*) &$self;
	}
};
%extend PXCAFDoc_GraphNodeSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_GraphNodeSequence {
	~PXCAFDoc_GraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_GraphNodeSequence\n");}
	}
};

%nodefaultctor PXCAFDoc_SeqExplorerOfGraphNodeSequence;
class PXCAFDoc_SeqExplorerOfGraphNodeSequence {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_SeqExplorerOfGraphNodeSequence(const Handle_PXCAFDoc_GraphNodeSequence &S);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_PXCAFDoc_GraphNode &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Handle_PXCAFDoc_GraphNode &T);

};
%extend PXCAFDoc_SeqExplorerOfGraphNodeSequence {
	~PXCAFDoc_SeqExplorerOfGraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_SeqExplorerOfGraphNodeSequence\n");}
	}
};

%nodefaultctor PXCAFDoc_Location;
class PXCAFDoc_Location : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Location();
		%feature("autodoc", "1");
		PXCAFDoc_Location(const PTopLoc_Location &Loc);
		%feature("autodoc", "1");
		void Set(const PTopLoc_Location &Loc);
		%feature("autodoc", "1");
		PTopLoc_Location Get() const;
		%feature("autodoc", "1");
		PXCAFDoc_Location(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPXCAFDoc_LocationmyPLocation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Location {
	Handle_PXCAFDoc_Location GetHandle() {
	return *(Handle_PXCAFDoc_Location*) &$self;
	}
};
%extend PXCAFDoc_Location {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_Location {
	~PXCAFDoc_Location() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_Location\n");}
	}
};

%nodefaultctor PXCAFDoc_SeqNodeOfGraphNodeSequence;
class PXCAFDoc_SeqNodeOfGraphNodeSequence : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &TheLast, const Handle_PXCAFDoc_GraphNode &TheItem);
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_GraphNode &TheItem, const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &TheFirst);
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &ThePrevious, const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &TheNext, const Handle_PXCAFDoc_GraphNode &TheItem);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode Value() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence Next() const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_PXCAFDoc_GraphNode &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &ANode);
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence();
		%feature("autodoc", "1");
		PXCAFDoc_SeqNodeOfGraphNodeSequence(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyPrevious(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode _CSFDB_GetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyItem(const Handle_PXCAFDoc_GraphNode &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence _CSFDB_GetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_SeqNodeOfGraphNodeSequenceMyNext(const Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_SeqNodeOfGraphNodeSequence {
	Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence GetHandle() {
	return *(Handle_PXCAFDoc_SeqNodeOfGraphNodeSequence*) &$self;
	}
};
%extend PXCAFDoc_SeqNodeOfGraphNodeSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_SeqNodeOfGraphNodeSequence {
	~PXCAFDoc_SeqNodeOfGraphNodeSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_SeqNodeOfGraphNodeSequence\n");}
	}
};

%nodefaultctor PXCAFDoc_Color;
class PXCAFDoc_Color : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Color();
		%feature("autodoc", "1");
		PXCAFDoc_Color(const Quantity_Color &Loc);
		%feature("autodoc", "1");
		void Set(const Quantity_Color &Loc);
		%feature("autodoc", "1");
		Quantity_Color Get() const;
		%feature("autodoc", "1");
		PXCAFDoc_Color(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const Quantity_Color & _CSFDB_GetPXCAFDoc_ColormyColor() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Color {
	Handle_PXCAFDoc_Color GetHandle() {
	return *(Handle_PXCAFDoc_Color*) &$self;
	}
};
%extend PXCAFDoc_Color {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_Color {
	~PXCAFDoc_Color() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_Color\n");}
	}
};

%nodefaultctor PXCAFDoc_ShapeTool;
class PXCAFDoc_ShapeTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_ShapeTool();
		%feature("autodoc", "1");
		PXCAFDoc_ShapeTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_ShapeTool {
	Handle_PXCAFDoc_ShapeTool GetHandle() {
	return *(Handle_PXCAFDoc_ShapeTool*) &$self;
	}
};
%extend PXCAFDoc_ShapeTool {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_ShapeTool {
	~PXCAFDoc_ShapeTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_ShapeTool\n");}
	}
};

%nodefaultctor PXCAFDoc_GraphNode;
class PXCAFDoc_GraphNode : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_GraphNode();
		%feature("autodoc", "1");
		Standard_Integer SetFather(const Handle_PXCAFDoc_GraphNode &F);
		%feature("autodoc", "1");
		Standard_Integer SetChild(const Handle_PXCAFDoc_GraphNode &Ch);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode GetFather(const Standard_Integer Findex) const;
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNode GetChild(const Standard_Integer Chindex) const;
		%feature("autodoc", "1");
		Standard_Integer FatherIndex(const Handle_PXCAFDoc_GraphNode &F) const;
		%feature("autodoc", "1");
		Standard_Integer ChildIndex(const Handle_PXCAFDoc_GraphNode &Ch) const;
		%feature("autodoc", "1");
		Standard_Integer NbFathers() const;
		%feature("autodoc", "1");
		Standard_Integer NbChildren() const;
		%feature("autodoc", "1");
		void SetGraphID(const Standard_GUID &GUID);
		%feature("autodoc", "1");
		Standard_GUID GetGraphID() const;
		%feature("autodoc", "1");
		PXCAFDoc_GraphNode(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodemyFathers() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodemyFathers(const Handle_PXCAFDoc_GraphNodeSequence &p);
		%feature("autodoc", "1");
		Handle_PXCAFDoc_GraphNodeSequence _CSFDB_GetPXCAFDoc_GraphNodemyChildren() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_GraphNodemyChildren(const Handle_PXCAFDoc_GraphNodeSequence &p);
		%feature("autodoc", "1");
		const Standard_GUID & _CSFDB_GetPXCAFDoc_GraphNodemyGraphID() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_GraphNode {
	Handle_PXCAFDoc_GraphNode GetHandle() {
	return *(Handle_PXCAFDoc_GraphNode*) &$self;
	}
};
%extend PXCAFDoc_GraphNode {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_GraphNode {
	~PXCAFDoc_GraphNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_GraphNode\n");}
	}
};

%nodefaultctor PXCAFDoc_Centroid;
class PXCAFDoc_Centroid : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Centroid();
		%feature("autodoc", "1");
		PXCAFDoc_Centroid(const gp_Pnt &pnt);
		%feature("autodoc", "1");
		void Set(const gp_Pnt &pnt);
		%feature("autodoc", "1");
		gp_Pnt Get() const;
		%feature("autodoc", "1");
		PXCAFDoc_Centroid(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPXCAFDoc_CentroidmyPCentroid() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Centroid {
	Handle_PXCAFDoc_Centroid GetHandle() {
	return *(Handle_PXCAFDoc_Centroid*) &$self;
	}
};
%extend PXCAFDoc_Centroid {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_Centroid {
	~PXCAFDoc_Centroid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_Centroid\n");}
	}
};

%nodefaultctor PXCAFDoc_Area;
class PXCAFDoc_Area : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_Area();
		%feature("autodoc", "1");
		PXCAFDoc_Area(const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real Get() const;
		%feature("autodoc", "1");
		void Set(const Standard_Real V);
		%feature("autodoc", "1");
		PXCAFDoc_Area(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPXCAFDoc_AreamyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPXCAFDoc_AreamyValue(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_Area {
	Handle_PXCAFDoc_Area GetHandle() {
	return *(Handle_PXCAFDoc_Area*) &$self;
	}
};
%extend PXCAFDoc_Area {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_Area {
	~PXCAFDoc_Area() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_Area\n");}
	}
};

%nodefaultctor PXCAFDoc_ColorTool;
class PXCAFDoc_ColorTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_ColorTool();
		%feature("autodoc", "1");
		PXCAFDoc_ColorTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_ColorTool {
	Handle_PXCAFDoc_ColorTool GetHandle() {
	return *(Handle_PXCAFDoc_ColorTool*) &$self;
	}
};
%extend PXCAFDoc_ColorTool {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_ColorTool {
	~PXCAFDoc_ColorTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_ColorTool\n");}
	}
};

%nodefaultctor PXCAFDoc_DocumentTool;
class PXCAFDoc_DocumentTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_DocumentTool();
		%feature("autodoc", "1");
		PXCAFDoc_DocumentTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_DocumentTool {
	Handle_PXCAFDoc_DocumentTool GetHandle() {
	return *(Handle_PXCAFDoc_DocumentTool*) &$self;
	}
};
%extend PXCAFDoc_DocumentTool {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_DocumentTool {
	~PXCAFDoc_DocumentTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_DocumentTool\n");}
	}
};

%nodefaultctor PXCAFDoc_LayerTool;
class PXCAFDoc_LayerTool : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PXCAFDoc_LayerTool();
		%feature("autodoc", "1");
		PXCAFDoc_LayerTool(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PXCAFDoc_LayerTool {
	Handle_PXCAFDoc_LayerTool GetHandle() {
	return *(Handle_PXCAFDoc_LayerTool*) &$self;
	}
};
%extend PXCAFDoc_LayerTool {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend PXCAFDoc_LayerTool {
	~PXCAFDoc_LayerTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PXCAFDoc_LayerTool\n");}
	}
};