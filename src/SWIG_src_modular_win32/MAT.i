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
%module MAT

%include MAT_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include MAT_dependencies.i


%include MAT_headers.i


enum MAT_Side {
	MAT_Left,
	MAT_Right,
	};



%nodefaultctor Handle_MAT_TListNodeOfListOfBisector;
class Handle_MAT_TListNodeOfListOfBisector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector();
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector(const Handle_MAT_TListNodeOfListOfBisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector(const MAT_TListNodeOfListOfBisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector & operator=(const Handle_MAT_TListNodeOfListOfBisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector & operator=(const MAT_TListNodeOfListOfBisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_TListNodeOfListOfBisector {
	MAT_TListNodeOfListOfBisector* GetObject() {
	return (MAT_TListNodeOfListOfBisector*)$self->Access();
	}
};
%extend Handle_MAT_TListNodeOfListOfBisector {
	~Handle_MAT_TListNodeOfListOfBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_TListNodeOfListOfBisector\n");}
	}
};


%nodefaultctor Handle_MAT_ListOfBisector;
class Handle_MAT_ListOfBisector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_ListOfBisector();
		%feature("autodoc", "1");
		Handle_MAT_ListOfBisector(const Handle_MAT_ListOfBisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_ListOfBisector(const MAT_ListOfBisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_ListOfBisector & operator=(const Handle_MAT_ListOfBisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_ListOfBisector & operator=(const MAT_ListOfBisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_ListOfBisector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_ListOfBisector {
	MAT_ListOfBisector* GetObject() {
	return (MAT_ListOfBisector*)$self->Access();
	}
};
%extend Handle_MAT_ListOfBisector {
	~Handle_MAT_ListOfBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_ListOfBisector\n");}
	}
};


%nodefaultctor Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt;
class Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt();
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt(const Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt(const MAT_DataMapNodeOfDataMapOfIntegerBasicElt *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt & operator=(const Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt & operator=(const MAT_DataMapNodeOfDataMapOfIntegerBasicElt *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt {
	MAT_DataMapNodeOfDataMapOfIntegerBasicElt* GetObject() {
	return (MAT_DataMapNodeOfDataMapOfIntegerBasicElt*)$self->Access();
	}
};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt {
	~Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt\n");}
	}
};


%nodefaultctor Handle_MAT_SequenceNodeOfSequenceOfArc;
class Handle_MAT_SequenceNodeOfSequenceOfArc : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfArc();
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfArc(const Handle_MAT_SequenceNodeOfSequenceOfArc &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfArc(const MAT_SequenceNodeOfSequenceOfArc *anItem);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfArc & operator=(const Handle_MAT_SequenceNodeOfSequenceOfArc &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfArc & operator=(const MAT_SequenceNodeOfSequenceOfArc *anItem);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfArc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_SequenceNodeOfSequenceOfArc {
	MAT_SequenceNodeOfSequenceOfArc* GetObject() {
	return (MAT_SequenceNodeOfSequenceOfArc*)$self->Access();
	}
};
%extend Handle_MAT_SequenceNodeOfSequenceOfArc {
	~Handle_MAT_SequenceNodeOfSequenceOfArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_SequenceNodeOfSequenceOfArc\n");}
	}
};


%nodefaultctor Handle_MAT_BasicElt;
class Handle_MAT_BasicElt : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_BasicElt();
		%feature("autodoc", "1");
		Handle_MAT_BasicElt(const Handle_MAT_BasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt(const MAT_BasicElt *anItem);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & operator=(const Handle_MAT_BasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & operator=(const MAT_BasicElt *anItem);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_BasicElt {
	MAT_BasicElt* GetObject() {
	return (MAT_BasicElt*)$self->Access();
	}
};
%extend Handle_MAT_BasicElt {
	~Handle_MAT_BasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_BasicElt\n");}
	}
};


%nodefaultctor Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector;
class Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector();
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector(const Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector(const MAT_DataMapNodeOfDataMapOfIntegerBisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector & operator=(const Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector & operator=(const MAT_DataMapNodeOfDataMapOfIntegerBisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector {
	MAT_DataMapNodeOfDataMapOfIntegerBisector* GetObject() {
	return (MAT_DataMapNodeOfDataMapOfIntegerBisector*)$self->Access();
	}
};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector {
	~Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector\n");}
	}
};


%nodefaultctor Handle_MAT_Node;
class Handle_MAT_Node : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_Node();
		%feature("autodoc", "1");
		Handle_MAT_Node(const Handle_MAT_Node &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Node(const MAT_Node *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Node & operator=(const Handle_MAT_Node &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Node & operator=(const MAT_Node *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Node const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_Node {
	MAT_Node* GetObject() {
	return (MAT_Node*)$self->Access();
	}
};
%extend Handle_MAT_Node {
	~Handle_MAT_Node() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_Node\n");}
	}
};


%nodefaultctor Handle_MAT_Bisector;
class Handle_MAT_Bisector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_Bisector();
		%feature("autodoc", "1");
		Handle_MAT_Bisector(const Handle_MAT_Bisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Bisector(const MAT_Bisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Bisector & operator=(const Handle_MAT_Bisector &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Bisector & operator=(const MAT_Bisector *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Bisector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_Bisector {
	MAT_Bisector* GetObject() {
	return (MAT_Bisector*)$self->Access();
	}
};
%extend Handle_MAT_Bisector {
	~Handle_MAT_Bisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_Bisector\n");}
	}
};


%nodefaultctor Handle_MAT_ListOfEdge;
class Handle_MAT_ListOfEdge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_ListOfEdge();
		%feature("autodoc", "1");
		Handle_MAT_ListOfEdge(const Handle_MAT_ListOfEdge &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_ListOfEdge(const MAT_ListOfEdge *anItem);
		%feature("autodoc", "1");
		Handle_MAT_ListOfEdge & operator=(const Handle_MAT_ListOfEdge &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_ListOfEdge & operator=(const MAT_ListOfEdge *anItem);
		%feature("autodoc", "1");
		Handle_MAT_ListOfEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_ListOfEdge {
	MAT_ListOfEdge* GetObject() {
	return (MAT_ListOfEdge*)$self->Access();
	}
};
%extend Handle_MAT_ListOfEdge {
	~Handle_MAT_ListOfEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_ListOfEdge\n");}
	}
};


%nodefaultctor Handle_MAT_SequenceNodeOfSequenceOfBasicElt;
class Handle_MAT_SequenceNodeOfSequenceOfBasicElt : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfBasicElt();
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfBasicElt(const Handle_MAT_SequenceNodeOfSequenceOfBasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfBasicElt(const MAT_SequenceNodeOfSequenceOfBasicElt *anItem);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfBasicElt & operator=(const Handle_MAT_SequenceNodeOfSequenceOfBasicElt &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfBasicElt & operator=(const MAT_SequenceNodeOfSequenceOfBasicElt *anItem);
		%feature("autodoc", "1");
		Handle_MAT_SequenceNodeOfSequenceOfBasicElt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_SequenceNodeOfSequenceOfBasicElt {
	MAT_SequenceNodeOfSequenceOfBasicElt* GetObject() {
	return (MAT_SequenceNodeOfSequenceOfBasicElt*)$self->Access();
	}
};
%extend Handle_MAT_SequenceNodeOfSequenceOfBasicElt {
	~Handle_MAT_SequenceNodeOfSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_SequenceNodeOfSequenceOfBasicElt\n");}
	}
};


%nodefaultctor Handle_MAT_Arc;
class Handle_MAT_Arc : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_Arc();
		%feature("autodoc", "1");
		Handle_MAT_Arc(const Handle_MAT_Arc &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Arc(const MAT_Arc *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Arc & operator=(const Handle_MAT_Arc &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Arc & operator=(const MAT_Arc *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Arc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_Arc {
	MAT_Arc* GetObject() {
	return (MAT_Arc*)$self->Access();
	}
};
%extend Handle_MAT_Arc {
	~Handle_MAT_Arc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_Arc\n");}
	}
};


%nodefaultctor Handle_MAT_Zone;
class Handle_MAT_Zone : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_Zone();
		%feature("autodoc", "1");
		Handle_MAT_Zone(const Handle_MAT_Zone &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Zone(const MAT_Zone *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Zone & operator=(const Handle_MAT_Zone &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Zone & operator=(const MAT_Zone *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Zone const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_Zone {
	MAT_Zone* GetObject() {
	return (MAT_Zone*)$self->Access();
	}
};
%extend Handle_MAT_Zone {
	~Handle_MAT_Zone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_Zone\n");}
	}
};


%nodefaultctor Handle_MAT_Graph;
class Handle_MAT_Graph : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_Graph();
		%feature("autodoc", "1");
		Handle_MAT_Graph(const Handle_MAT_Graph &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Graph(const MAT_Graph *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Graph & operator=(const Handle_MAT_Graph &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Graph & operator=(const MAT_Graph *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Graph const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_Graph {
	MAT_Graph* GetObject() {
	return (MAT_Graph*)$self->Access();
	}
};
%extend Handle_MAT_Graph {
	~Handle_MAT_Graph() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_Graph\n");}
	}
};


%nodefaultctor Handle_MAT_Edge;
class Handle_MAT_Edge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_Edge();
		%feature("autodoc", "1");
		Handle_MAT_Edge(const Handle_MAT_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Edge(const MAT_Edge *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Edge & operator=(const Handle_MAT_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_Edge & operator=(const MAT_Edge *anItem);
		%feature("autodoc", "1");
		Handle_MAT_Edge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_Edge {
	MAT_Edge* GetObject() {
	return (MAT_Edge*)$self->Access();
	}
};
%extend Handle_MAT_Edge {
	~Handle_MAT_Edge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_Edge\n");}
	}
};


%nodefaultctor Handle_MAT_DataMapNodeOfDataMapOfIntegerArc;
class Handle_MAT_DataMapNodeOfDataMapOfIntegerArc : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerArc();
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerArc(const Handle_MAT_DataMapNodeOfDataMapOfIntegerArc &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerArc(const MAT_DataMapNodeOfDataMapOfIntegerArc *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerArc & operator=(const Handle_MAT_DataMapNodeOfDataMapOfIntegerArc &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerArc & operator=(const MAT_DataMapNodeOfDataMapOfIntegerArc *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerArc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerArc {
	MAT_DataMapNodeOfDataMapOfIntegerArc* GetObject() {
	return (MAT_DataMapNodeOfDataMapOfIntegerArc*)$self->Access();
	}
};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerArc {
	~Handle_MAT_DataMapNodeOfDataMapOfIntegerArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_DataMapNodeOfDataMapOfIntegerArc\n");}
	}
};


%nodefaultctor Handle_MAT_TListNodeOfListOfEdge;
class Handle_MAT_TListNodeOfListOfEdge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge();
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge(const Handle_MAT_TListNodeOfListOfEdge &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge(const MAT_TListNodeOfListOfEdge *anItem);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge & operator=(const Handle_MAT_TListNodeOfListOfEdge &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge & operator=(const MAT_TListNodeOfListOfEdge *anItem);
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_TListNodeOfListOfEdge {
	MAT_TListNodeOfListOfEdge* GetObject() {
	return (MAT_TListNodeOfListOfEdge*)$self->Access();
	}
};
%extend Handle_MAT_TListNodeOfListOfEdge {
	~Handle_MAT_TListNodeOfListOfEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_TListNodeOfListOfEdge\n");}
	}
};


%nodefaultctor Handle_MAT_DataMapNodeOfDataMapOfIntegerNode;
class Handle_MAT_DataMapNodeOfDataMapOfIntegerNode : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerNode();
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerNode(const Handle_MAT_DataMapNodeOfDataMapOfIntegerNode &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerNode(const MAT_DataMapNodeOfDataMapOfIntegerNode *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerNode & operator=(const Handle_MAT_DataMapNodeOfDataMapOfIntegerNode &aHandle);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerNode & operator=(const MAT_DataMapNodeOfDataMapOfIntegerNode *anItem);
		%feature("autodoc", "1");
		Handle_MAT_DataMapNodeOfDataMapOfIntegerNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerNode {
	MAT_DataMapNodeOfDataMapOfIntegerNode* GetObject() {
	return (MAT_DataMapNodeOfDataMapOfIntegerNode*)$self->Access();
	}
};
%extend Handle_MAT_DataMapNodeOfDataMapOfIntegerNode {
	~Handle_MAT_DataMapNodeOfDataMapOfIntegerNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MAT_DataMapNodeOfDataMapOfIntegerNode\n");}
	}
};


%nodefaultctor MAT_DataMapOfIntegerBasicElt;
class MAT_DataMapOfIntegerBasicElt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerBasicElt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerBasicElt & Assign(const MAT_DataMapOfIntegerBasicElt &Other);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerBasicElt & operator=(const MAT_DataMapOfIntegerBasicElt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_MAT_BasicElt &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & operator()(const Standard_Integer &K);

};
%extend MAT_DataMapOfIntegerBasicElt {
	~MAT_DataMapOfIntegerBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapOfIntegerBasicElt\n");}
	}
};


%nodefaultctor MAT_SequenceNodeOfSequenceOfArc;
class MAT_SequenceNodeOfSequenceOfArc : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MAT_SequenceNodeOfSequenceOfArc(const Handle_MAT_Arc &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MAT_Arc & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_SequenceNodeOfSequenceOfArc {
	Handle_MAT_SequenceNodeOfSequenceOfArc GetHandle() {
	return *(Handle_MAT_SequenceNodeOfSequenceOfArc*) &$self;
	}
};
%extend MAT_SequenceNodeOfSequenceOfArc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_SequenceNodeOfSequenceOfArc {
	~MAT_SequenceNodeOfSequenceOfArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_SequenceNodeOfSequenceOfArc\n");}
	}
};


%nodefaultctor MAT_Graph;
class MAT_Graph : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_Graph();
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean SemiInfinite, const Handle_MAT_ListOfBisector &TheRoots, const Standard_Integer NbBasicElts, const Standard_Integer NbArcs);
		%feature("autodoc", "1");
		Handle_MAT_Arc Arc(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MAT_BasicElt BasicElt(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MAT_Node Node(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfArcs() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfNodes() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfBasicElts() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfInfiniteNodes() const;
		%feature("autodoc", "1");
		void FusionOfBasicElts(const Standard_Integer IndexElt1, const Standard_Integer IndexElt2, Standard_Boolean & MergeArc1, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & MergeArc2, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		void CompactArcs();
		%feature("autodoc", "1");
		void CompactNodes();
		%feature("autodoc", "1");
		void ChangeBasicElts(const MAT_DataMapOfIntegerBasicElt &NewMap);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt ChangeBasicElt(const Standard_Integer Index);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_Graph {
	Handle_MAT_Graph GetHandle() {
	return *(Handle_MAT_Graph*) &$self;
	}
};
%extend MAT_Graph {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_Graph {
	~MAT_Graph() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_Graph\n");}
	}
};


%nodefaultctor MAT_DataMapOfIntegerBisector;
class MAT_DataMapOfIntegerBisector : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerBisector(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerBisector & Assign(const MAT_DataMapOfIntegerBisector &Other);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerBisector & operator=(const MAT_DataMapOfIntegerBisector &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_MAT_Bisector &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_MAT_Bisector & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_MAT_Bisector & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_MAT_Bisector & operator()(const Standard_Integer &K);

};
%extend MAT_DataMapOfIntegerBisector {
	~MAT_DataMapOfIntegerBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapOfIntegerBisector\n");}
	}
};


%nodefaultctor MAT_DataMapIteratorOfDataMapOfIntegerArc;
class MAT_DataMapIteratorOfDataMapOfIntegerArc : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerArc();
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerArc(const MAT_DataMapOfIntegerArc &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT_DataMapOfIntegerArc &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_MAT_Arc & Value() const;

};
%extend MAT_DataMapIteratorOfDataMapOfIntegerArc {
	~MAT_DataMapIteratorOfDataMapOfIntegerArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapIteratorOfDataMapOfIntegerArc\n");}
	}
};


%nodefaultctor MAT_TListNodeOfListOfBisector;
class MAT_TListNodeOfListOfBisector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_TListNodeOfListOfBisector();
		%feature("autodoc", "1");
		MAT_TListNodeOfListOfBisector(const Handle_MAT_Bisector &anitem);
		%feature("autodoc", "1");
		Handle_MAT_Bisector GetItem() const;
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector Next() const;
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfBisector Previous() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_MAT_Bisector &anitem);
		%feature("autodoc", "1");
		void Next(const Handle_MAT_TListNodeOfListOfBisector &atlistnode);
		%feature("autodoc", "1");
		void Previous(const Handle_MAT_TListNodeOfListOfBisector &atlistnode);
		%feature("autodoc", "1");
		void Dummy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_TListNodeOfListOfBisector {
	Handle_MAT_TListNodeOfListOfBisector GetHandle() {
	return *(Handle_MAT_TListNodeOfListOfBisector*) &$self;
	}
};
%extend MAT_TListNodeOfListOfBisector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_TListNodeOfListOfBisector {
	~MAT_TListNodeOfListOfBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_TListNodeOfListOfBisector\n");}
	}
};


%nodefaultctor MAT_Arc;
class MAT_Arc : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_Arc(const Standard_Integer ArcIndex, const Standard_Integer GeomIndex, const Handle_MAT_BasicElt &FirstElement, const Handle_MAT_BasicElt &SecondElement);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Standard_Integer GeomIndex() const;
		%feature("autodoc", "1");
		Handle_MAT_BasicElt FirstElement() const;
		%feature("autodoc", "1");
		Handle_MAT_BasicElt SecondElement() const;
		%feature("autodoc", "1");
		Handle_MAT_Node FirstNode() const;
		%feature("autodoc", "1");
		Handle_MAT_Node SecondNode() const;
		%feature("autodoc", "1");
		Handle_MAT_Node TheOtherNode(const Handle_MAT_Node &aNode) const;
		%feature("autodoc", "1");
		Standard_Boolean HasNeighbour(const Handle_MAT_Node &aNode, const MAT_Side aSide) const;
		%feature("autodoc", "1");
		Handle_MAT_Arc Neighbour(const Handle_MAT_Node &aNode, const MAT_Side aSide) const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer anInteger);
		%feature("autodoc", "1");
		void SetGeomIndex(const Standard_Integer anInteger);
		%feature("autodoc", "1");
		void SetFirstElement(const Handle_MAT_BasicElt &aBasicElt);
		%feature("autodoc", "1");
		void SetSecondElement(const Handle_MAT_BasicElt &aBasicElt);
		%feature("autodoc", "1");
		void SetFirstNode(const Handle_MAT_Node &aNode);
		%feature("autodoc", "1");
		void SetSecondNode(const Handle_MAT_Node &aNode);
		%feature("autodoc", "1");
		void SetFirstArc(const MAT_Side aSide, const Handle_MAT_Arc &anArc);
		%feature("autodoc", "1");
		void SetSecondArc(const MAT_Side aSide, const Handle_MAT_Arc &anArc);
		%feature("autodoc", "1");
		void SetNeighbour(const MAT_Side aSide, const Handle_MAT_Node &aNode, const Handle_MAT_Arc &anArc);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_Arc {
	Handle_MAT_Arc GetHandle() {
	return *(Handle_MAT_Arc*) &$self;
	}
};
%extend MAT_Arc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_Arc {
	~MAT_Arc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_Arc\n");}
	}
};


%nodefaultctor MAT_ListOfBisector;
class MAT_ListOfBisector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_ListOfBisector();
		%feature("autodoc", "1");
		void First();
		%feature("autodoc", "1");
		void Last();
		%feature("autodoc", "1");
		void Init(const Handle_MAT_Bisector &aniten);
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void Previous();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector Current() const;
		%feature("autodoc", "1");
		void Current(const Handle_MAT_Bisector &anitem) const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector FirstItem() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector LastItem() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector PreviousItem() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector NextItem() const;
		%feature("autodoc", "1");
		Standard_Integer Number() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector Brackets(const Standard_Integer anindex);
		%feature("autodoc", "1");
		Handle_MAT_Bisector operator()(const Standard_Integer anindex);
		%feature("autodoc", "1");
		void Unlink();
		%feature("autodoc", "1");
		void LinkBefore(const Handle_MAT_Bisector &anitem);
		%feature("autodoc", "1");
		void LinkAfter(const Handle_MAT_Bisector &anitem);
		%feature("autodoc", "1");
		void FrontAdd(const Handle_MAT_Bisector &anitem);
		%feature("autodoc", "1");
		void BackAdd(const Handle_MAT_Bisector &anitem);
		%feature("autodoc", "1");
		void Permute();
		%feature("autodoc", "1");
		void Loop() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer ashift, const Standard_Integer alevel);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_ListOfBisector {
	Handle_MAT_ListOfBisector GetHandle() {
	return *(Handle_MAT_ListOfBisector*) &$self;
	}
};
%extend MAT_ListOfBisector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_ListOfBisector {
	~MAT_ListOfBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_ListOfBisector\n");}
	}
};


%nodefaultctor MAT_Edge;
class MAT_Edge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_Edge();
		%feature("autodoc", "1");
		void EdgeNumber(const Standard_Integer anumber);
		%feature("autodoc", "1");
		void FirstBisector(const Handle_MAT_Bisector &abisector);
		%feature("autodoc", "1");
		void SecondBisector(const Handle_MAT_Bisector &abisector);
		%feature("autodoc", "1");
		void Distance(const Standard_Real adistance);
		%feature("autodoc", "1");
		void IntersectionPoint(const Standard_Integer apoint);
		%feature("autodoc", "1");
		Standard_Integer EdgeNumber() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector FirstBisector() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector SecondBisector() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		Standard_Integer IntersectionPoint() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer ashift, const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_Edge {
	Handle_MAT_Edge GetHandle() {
	return *(Handle_MAT_Edge*) &$self;
	}
};
%extend MAT_Edge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_Edge {
	~MAT_Edge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_Edge\n");}
	}
};


%nodefaultctor MAT_SequenceOfArc;
class MAT_SequenceOfArc : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MAT_SequenceOfArc();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MAT_SequenceOfArc & Assign(const MAT_SequenceOfArc &Other);
		%feature("autodoc", "1");
		const MAT_SequenceOfArc & operator=(const MAT_SequenceOfArc &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MAT_Arc &T);
		%feature("autodoc", "1");
		void Append(MAT_SequenceOfArc & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MAT_Arc &T);
		%feature("autodoc", "1");
		void Prepend(MAT_SequenceOfArc & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MAT_Arc &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MAT_SequenceOfArc & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MAT_Arc &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MAT_SequenceOfArc & S);
		%feature("autodoc", "1");
		const Handle_MAT_Arc & First() const;
		%feature("autodoc", "1");
		const Handle_MAT_Arc & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MAT_SequenceOfArc & S);
		%feature("autodoc", "1");
		const Handle_MAT_Arc & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MAT_Arc & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MAT_Arc &I);
		%feature("autodoc", "1");
		Handle_MAT_Arc & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MAT_Arc & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend MAT_SequenceOfArc {
	~MAT_SequenceOfArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_SequenceOfArc\n");}
	}
};


%nodefaultctor MAT_DataMapIteratorOfDataMapOfIntegerBasicElt;
class MAT_DataMapIteratorOfDataMapOfIntegerBasicElt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerBasicElt();
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerBasicElt(const MAT_DataMapOfIntegerBasicElt &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT_DataMapOfIntegerBasicElt &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & Value() const;

};
%extend MAT_DataMapIteratorOfDataMapOfIntegerBasicElt {
	~MAT_DataMapIteratorOfDataMapOfIntegerBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapIteratorOfDataMapOfIntegerBasicElt\n");}
	}
};


%nodefaultctor MAT_DataMapIteratorOfDataMapOfIntegerBisector;
class MAT_DataMapIteratorOfDataMapOfIntegerBisector : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerBisector();
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerBisector(const MAT_DataMapOfIntegerBisector &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT_DataMapOfIntegerBisector &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_MAT_Bisector & Value() const;

};
%extend MAT_DataMapIteratorOfDataMapOfIntegerBisector {
	~MAT_DataMapIteratorOfDataMapOfIntegerBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapIteratorOfDataMapOfIntegerBisector\n");}
	}
};


%nodefaultctor MAT_DataMapNodeOfDataMapOfIntegerBasicElt;
class MAT_DataMapNodeOfDataMapOfIntegerBasicElt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT_DataMapNodeOfDataMapOfIntegerBasicElt(const Standard_Integer &K, const Handle_MAT_BasicElt &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_DataMapNodeOfDataMapOfIntegerBasicElt {
	Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt GetHandle() {
	return *(Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt*) &$self;
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerBasicElt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerBasicElt {
	~MAT_DataMapNodeOfDataMapOfIntegerBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapNodeOfDataMapOfIntegerBasicElt\n");}
	}
};


%nodefaultctor MAT_Node;
class MAT_Node : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_Node(const Standard_Integer GeomIndex, const Handle_MAT_Arc &LinkedArc, const Standard_Real Distance);
		%feature("autodoc", "1");
		Standard_Integer GeomIndex() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		void LinkedArcs(MAT_SequenceOfArc & S) const;
		%feature("autodoc", "1");
		void NearElts(MAT_SequenceOfBasicElt & S) const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		Standard_Boolean PendingNode() const;
		%feature("autodoc", "1");
		Standard_Boolean OnBasicElt() const;
		%feature("autodoc", "1");
		Standard_Boolean Infinite() const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetLinkedArc(const Handle_MAT_Arc &anArc);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_Node {
	Handle_MAT_Node GetHandle() {
	return *(Handle_MAT_Node*) &$self;
	}
};
%extend MAT_Node {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_Node {
	~MAT_Node() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_Node\n");}
	}
};


%nodefaultctor MAT_DataMapIteratorOfDataMapOfIntegerNode;
class MAT_DataMapIteratorOfDataMapOfIntegerNode : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerNode();
		%feature("autodoc", "1");
		MAT_DataMapIteratorOfDataMapOfIntegerNode(const MAT_DataMapOfIntegerNode &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT_DataMapOfIntegerNode &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_MAT_Node & Value() const;

};
%extend MAT_DataMapIteratorOfDataMapOfIntegerNode {
	~MAT_DataMapIteratorOfDataMapOfIntegerNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapIteratorOfDataMapOfIntegerNode\n");}
	}
};


%nodefaultctor MAT_SequenceOfBasicElt;
class MAT_SequenceOfBasicElt : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MAT_SequenceOfBasicElt();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MAT_SequenceOfBasicElt & Assign(const MAT_SequenceOfBasicElt &Other);
		%feature("autodoc", "1");
		const MAT_SequenceOfBasicElt & operator=(const MAT_SequenceOfBasicElt &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MAT_BasicElt &T);
		%feature("autodoc", "1");
		void Append(MAT_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MAT_BasicElt &T);
		%feature("autodoc", "1");
		void Prepend(MAT_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MAT_BasicElt &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MAT_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MAT_BasicElt &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MAT_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & First() const;
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MAT_SequenceOfBasicElt & S);
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MAT_BasicElt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MAT_BasicElt &I);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend MAT_SequenceOfBasicElt {
	~MAT_SequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_SequenceOfBasicElt\n");}
	}
};


%nodefaultctor MAT_DataMapNodeOfDataMapOfIntegerBisector;
class MAT_DataMapNodeOfDataMapOfIntegerBisector : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT_DataMapNodeOfDataMapOfIntegerBisector(const Standard_Integer &K, const Handle_MAT_Bisector &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_DataMapNodeOfDataMapOfIntegerBisector {
	Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector GetHandle() {
	return *(Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector*) &$self;
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerBisector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerBisector {
	~MAT_DataMapNodeOfDataMapOfIntegerBisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapNodeOfDataMapOfIntegerBisector\n");}
	}
};


%nodefaultctor MAT_DataMapNodeOfDataMapOfIntegerArc;
class MAT_DataMapNodeOfDataMapOfIntegerArc : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT_DataMapNodeOfDataMapOfIntegerArc(const Standard_Integer &K, const Handle_MAT_Arc &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_MAT_Arc & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_DataMapNodeOfDataMapOfIntegerArc {
	Handle_MAT_DataMapNodeOfDataMapOfIntegerArc GetHandle() {
	return *(Handle_MAT_DataMapNodeOfDataMapOfIntegerArc*) &$self;
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerArc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerArc {
	~MAT_DataMapNodeOfDataMapOfIntegerArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapNodeOfDataMapOfIntegerArc\n");}
	}
};


%nodefaultctor MAT_ListOfEdge;
class MAT_ListOfEdge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_ListOfEdge();
		%feature("autodoc", "1");
		void First();
		%feature("autodoc", "1");
		void Last();
		%feature("autodoc", "1");
		void Init(const Handle_MAT_Edge &aniten);
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		void Previous();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		Handle_MAT_Edge Current() const;
		%feature("autodoc", "1");
		void Current(const Handle_MAT_Edge &anitem) const;
		%feature("autodoc", "1");
		Handle_MAT_Edge FirstItem() const;
		%feature("autodoc", "1");
		Handle_MAT_Edge LastItem() const;
		%feature("autodoc", "1");
		Handle_MAT_Edge PreviousItem() const;
		%feature("autodoc", "1");
		Handle_MAT_Edge NextItem() const;
		%feature("autodoc", "1");
		Standard_Integer Number() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Handle_MAT_Edge Brackets(const Standard_Integer anindex);
		%feature("autodoc", "1");
		Handle_MAT_Edge operator()(const Standard_Integer anindex);
		%feature("autodoc", "1");
		void Unlink();
		%feature("autodoc", "1");
		void LinkBefore(const Handle_MAT_Edge &anitem);
		%feature("autodoc", "1");
		void LinkAfter(const Handle_MAT_Edge &anitem);
		%feature("autodoc", "1");
		void FrontAdd(const Handle_MAT_Edge &anitem);
		%feature("autodoc", "1");
		void BackAdd(const Handle_MAT_Edge &anitem);
		%feature("autodoc", "1");
		void Permute();
		%feature("autodoc", "1");
		void Loop() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer ashift, const Standard_Integer alevel);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_ListOfEdge {
	Handle_MAT_ListOfEdge GetHandle() {
	return *(Handle_MAT_ListOfEdge*) &$self;
	}
};
%extend MAT_ListOfEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_ListOfEdge {
	~MAT_ListOfEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_ListOfEdge\n");}
	}
};


%nodefaultctor MAT_SequenceNodeOfSequenceOfBasicElt;
class MAT_SequenceNodeOfSequenceOfBasicElt : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MAT_SequenceNodeOfSequenceOfBasicElt(const Handle_MAT_BasicElt &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MAT_BasicElt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_SequenceNodeOfSequenceOfBasicElt {
	Handle_MAT_SequenceNodeOfSequenceOfBasicElt GetHandle() {
	return *(Handle_MAT_SequenceNodeOfSequenceOfBasicElt*) &$self;
	}
};
%extend MAT_SequenceNodeOfSequenceOfBasicElt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_SequenceNodeOfSequenceOfBasicElt {
	~MAT_SequenceNodeOfSequenceOfBasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_SequenceNodeOfSequenceOfBasicElt\n");}
	}
};


%nodefaultctor MAT_DataMapOfIntegerNode;
class MAT_DataMapOfIntegerNode : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerNode(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerNode & Assign(const MAT_DataMapOfIntegerNode &Other);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerNode & operator=(const MAT_DataMapOfIntegerNode &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_MAT_Node &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_MAT_Node & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_MAT_Node & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_MAT_Node & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_MAT_Node & operator()(const Standard_Integer &K);

};
%extend MAT_DataMapOfIntegerNode {
	~MAT_DataMapOfIntegerNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapOfIntegerNode\n");}
	}
};


%nodefaultctor MAT_BasicElt;
class MAT_BasicElt : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_BasicElt(const Standard_Integer anInteger);
		%feature("autodoc", "1");
		Handle_MAT_Arc StartArc() const;
		%feature("autodoc", "1");
		Handle_MAT_Arc EndArc() const;
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		Standard_Integer GeomIndex() const;
		%feature("autodoc", "1");
		void SetStartArc(const Handle_MAT_Arc &anArc);
		%feature("autodoc", "1");
		void SetEndArc(const Handle_MAT_Arc &anArc);
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer anInteger);
		%feature("autodoc", "1");
		void SetGeomIndex(const Standard_Integer anInteger);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_BasicElt {
	Handle_MAT_BasicElt GetHandle() {
	return *(Handle_MAT_BasicElt*) &$self;
	}
};
%extend MAT_BasicElt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_BasicElt {
	~MAT_BasicElt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_BasicElt\n");}
	}
};


%nodefaultctor MAT_Zone;
class MAT_Zone : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_Zone();
		%feature("autodoc", "1");
		MAT_Zone(const Handle_MAT_BasicElt &aBasicElt);
		%feature("autodoc", "1");
		void Perform(const Handle_MAT_BasicElt &aBasicElt);
		%feature("autodoc", "1");
		Standard_Integer NumberOfArcs() const;
		%feature("autodoc", "1");
		Handle_MAT_Arc ArcOnFrontier(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean NoEmptyZone() const;
		%feature("autodoc", "1");
		Standard_Boolean Limited() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_Zone {
	Handle_MAT_Zone GetHandle() {
	return *(Handle_MAT_Zone*) &$self;
	}
};
%extend MAT_Zone {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_Zone {
	~MAT_Zone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_Zone\n");}
	}
};


%nodefaultctor MAT_TListNodeOfListOfEdge;
class MAT_TListNodeOfListOfEdge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_TListNodeOfListOfEdge();
		%feature("autodoc", "1");
		MAT_TListNodeOfListOfEdge(const Handle_MAT_Edge &anitem);
		%feature("autodoc", "1");
		Handle_MAT_Edge GetItem() const;
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge Next() const;
		%feature("autodoc", "1");
		Handle_MAT_TListNodeOfListOfEdge Previous() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_MAT_Edge &anitem);
		%feature("autodoc", "1");
		void Next(const Handle_MAT_TListNodeOfListOfEdge &atlistnode);
		%feature("autodoc", "1");
		void Previous(const Handle_MAT_TListNodeOfListOfEdge &atlistnode);
		%feature("autodoc", "1");
		void Dummy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_TListNodeOfListOfEdge {
	Handle_MAT_TListNodeOfListOfEdge GetHandle() {
	return *(Handle_MAT_TListNodeOfListOfEdge*) &$self;
	}
};
%extend MAT_TListNodeOfListOfEdge {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_TListNodeOfListOfEdge {
	~MAT_TListNodeOfListOfEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_TListNodeOfListOfEdge\n");}
	}
};


%nodefaultctor MAT_DataMapOfIntegerArc;
class MAT_DataMapOfIntegerArc : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerArc(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerArc & Assign(const MAT_DataMapOfIntegerArc &Other);
		%feature("autodoc", "1");
		MAT_DataMapOfIntegerArc & operator=(const MAT_DataMapOfIntegerArc &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_MAT_Arc &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_MAT_Arc & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_MAT_Arc & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_MAT_Arc & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_MAT_Arc & operator()(const Standard_Integer &K);

};
%extend MAT_DataMapOfIntegerArc {
	~MAT_DataMapOfIntegerArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapOfIntegerArc\n");}
	}
};


%nodefaultctor MAT_DataMapNodeOfDataMapOfIntegerNode;
class MAT_DataMapNodeOfDataMapOfIntegerNode : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT_DataMapNodeOfDataMapOfIntegerNode(const Standard_Integer &K, const Handle_MAT_Node &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_MAT_Node & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_DataMapNodeOfDataMapOfIntegerNode {
	Handle_MAT_DataMapNodeOfDataMapOfIntegerNode GetHandle() {
	return *(Handle_MAT_DataMapNodeOfDataMapOfIntegerNode*) &$self;
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_DataMapNodeOfDataMapOfIntegerNode {
	~MAT_DataMapNodeOfDataMapOfIntegerNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_DataMapNodeOfDataMapOfIntegerNode\n");}
	}
};


%nodefaultctor MAT_Bisector;
class MAT_Bisector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT_Bisector();
		%feature("autodoc", "1");
		void AddBisector(const Handle_MAT_Bisector &abisector) const;
		%feature("autodoc", "1");
		Handle_MAT_ListOfBisector List() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector FirstBisector() const;
		%feature("autodoc", "1");
		Handle_MAT_Bisector LastBisector() const;
		%feature("autodoc", "1");
		void BisectorNumber(const Standard_Integer anumber);
		%feature("autodoc", "1");
		void IndexNumber(const Standard_Integer anumber);
		%feature("autodoc", "1");
		void FirstEdge(const Handle_MAT_Edge &anedge);
		%feature("autodoc", "1");
		void SecondEdge(const Handle_MAT_Edge &anedge);
		%feature("autodoc", "1");
		void IssuePoint(const Standard_Integer apoint);
		%feature("autodoc", "1");
		void EndPoint(const Standard_Integer apoint);
		%feature("autodoc", "1");
		void DistIssuePoint(const Standard_Real areal);
		%feature("autodoc", "1");
		void FirstVector(const Standard_Integer avector);
		%feature("autodoc", "1");
		void SecondVector(const Standard_Integer avector);
		%feature("autodoc", "1");
		void Sense(const Standard_Real asense);
		%feature("autodoc", "1");
		void FirstParameter(const Standard_Real aparameter);
		%feature("autodoc", "1");
		void SecondParameter(const Standard_Real aparameter);
		%feature("autodoc", "1");
		Standard_Integer BisectorNumber() const;
		%feature("autodoc", "1");
		Standard_Integer IndexNumber() const;
		%feature("autodoc", "1");
		Handle_MAT_Edge FirstEdge() const;
		%feature("autodoc", "1");
		Handle_MAT_Edge SecondEdge() const;
		%feature("autodoc", "1");
		Standard_Integer IssuePoint() const;
		%feature("autodoc", "1");
		Standard_Integer EndPoint() const;
		%feature("autodoc", "1");
		Standard_Real DistIssuePoint() const;
		%feature("autodoc", "1");
		Standard_Integer FirstVector() const;
		%feature("autodoc", "1");
		Standard_Integer SecondVector() const;
		%feature("autodoc", "1");
		Standard_Real Sense() const;
		%feature("autodoc", "1");
		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Real SecondParameter() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer ashift, const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT_Bisector {
	Handle_MAT_Bisector GetHandle() {
	return *(Handle_MAT_Bisector*) &$self;
	}
};
%extend MAT_Bisector {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MAT_Bisector {
	~MAT_Bisector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MAT_Bisector\n");}
	}
};
