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
%module GEOMAlgo

%include GEOMAlgo_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GEOMAlgo_dependencies.i


%include GEOMAlgo_headers.i

typedef GEOMAlgo_WireEdgeSet * GEOMAlgo_PWireEdgeSet;

enum GEOMAlgo_KindOfBounds {
	GEOMAlgo_KB_UNKNOWN,
	GEOMAlgo_KB_TRIMMED,
	GEOMAlgo_KB_INFINITE,
	};

enum GEOMAlgo_KindOfClosed {
	GEOMAlgo_KC_UNKNOWN,
	GEOMAlgo_KC_CLOSED,
	GEOMAlgo_KC_NOTCLOSED,
	};

enum GEOMAlgo_State {
	GEOMAlgo_ST_UNKNOWN,
	GEOMAlgo_ST_IN,
	GEOMAlgo_ST_OUT,
	GEOMAlgo_ST_ON,
	GEOMAlgo_ST_ONIN,
	GEOMAlgo_ST_ONOUT,
	GEOMAlgo_ST_INOUT,
	};

enum GEOMAlgo_KindOfName {
	GEOMAlgo_KN_UNKNOWN,
	GEOMAlgo_KN_SPHERE,
	GEOMAlgo_KN_CYLINDER,
	GEOMAlgo_KN_TORUS,
	GEOMAlgo_KN_CONE,
	GEOMAlgo_KN_ELLIPSE,
	GEOMAlgo_KN_CIRCLE,
	GEOMAlgo_KN_PLANE,
	GEOMAlgo_KN_LINE,
	GEOMAlgo_KN_BOX,
	GEOMAlgo_KN_SEGMENT,
	GEOMAlgo_KN_ARCCIRCLE,
	GEOMAlgo_KN_POLYGON,
	GEOMAlgo_KN_POLYHEDRON,
	GEOMAlgo_KN_DISKCIRCLE,
	GEOMAlgo_KN_DISKELLIPSE,
	GEOMAlgo_KN_RECTANGLE,
	GEOMAlgo_KN_TRIANGLE,
	GEOMAlgo_KN_QUADRANGLE,
	GEOMAlgo_KN_ARCELLIPSE,
	};

enum GEOMAlgo_KindOfShape {
	GEOMAlgo_KS_UNKNOWN,
	GEOMAlgo_KS_SPHERE,
	GEOMAlgo_KS_CYLINDER,
	GEOMAlgo_KS_BOX,
	GEOMAlgo_KS_TORUS,
	GEOMAlgo_KS_CONE,
	GEOMAlgo_KS_ELLIPSE,
	GEOMAlgo_KS_PLANE,
	GEOMAlgo_KS_CIRCLE,
	GEOMAlgo_KS_LINE,
	GEOMAlgo_KS_DEGENERATED,
	};



%nodefaultctor Handle_GEOMAlgo_HAlgo;
class Handle_GEOMAlgo_HAlgo : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo(const Handle_GEOMAlgo_HAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo(const GEOMAlgo_HAlgo *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo & operator=(const Handle_GEOMAlgo_HAlgo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo & operator=(const GEOMAlgo_HAlgo *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_HAlgo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_HAlgo {
	GEOMAlgo_HAlgo* GetObject() {
	return (GEOMAlgo_HAlgo*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_HAlgo {
	~Handle_GEOMAlgo_HAlgo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_HAlgo\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_Clsf;
class Handle_GEOMAlgo_Clsf : public Handle_GEOMAlgo_HAlgo {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf(const Handle_GEOMAlgo_Clsf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf(const GEOMAlgo_Clsf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf & operator=(const Handle_GEOMAlgo_Clsf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf & operator=(const GEOMAlgo_Clsf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_Clsf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_Clsf {
	GEOMAlgo_Clsf* GetObject() {
	return (GEOMAlgo_Clsf*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_Clsf {
	~Handle_GEOMAlgo_Clsf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_Clsf\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfBox;
class Handle_GEOMAlgo_ClsfBox : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox(const Handle_GEOMAlgo_ClsfBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox(const GEOMAlgo_ClsfBox *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox & operator=(const Handle_GEOMAlgo_ClsfBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox & operator=(const GEOMAlgo_ClsfBox *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfBox {
	GEOMAlgo_ClsfBox* GetObject() {
	return (GEOMAlgo_ClsfBox*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_ClsfBox {
	~Handle_GEOMAlgo_ClsfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_ClsfBox\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal(const GEOMAlgo_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	GEOMAlgo_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	~Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	~Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet(const GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	~Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfSurf;
class Handle_GEOMAlgo_ClsfSurf : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf(const Handle_GEOMAlgo_ClsfSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf(const GEOMAlgo_ClsfSurf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf & operator=(const Handle_GEOMAlgo_ClsfSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf & operator=(const GEOMAlgo_ClsfSurf *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSurf const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfSurf {
	GEOMAlgo_ClsfSurf* GetObject() {
	return (GEOMAlgo_ClsfSurf*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_ClsfSurf {
	~Handle_GEOMAlgo_ClsfSurf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_ClsfSurf\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape(const GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	~Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger;
class Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger & operator=(const Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger & operator=(const GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger* GetObject() {
	return (GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	~Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes;
class Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes(const Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes(const GEOMAlgo_ListNodeOfListOfCoupleOfShapes *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes & operator=(const Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes & operator=(const GEOMAlgo_ListNodeOfListOfCoupleOfShapes *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	GEOMAlgo_ListNodeOfListOfCoupleOfShapes* GetObject() {
	return (GEOMAlgo_ListNodeOfListOfCoupleOfShapes*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	~Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_ClsfSolid;
class Handle_GEOMAlgo_ClsfSolid : public Handle_GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid(const Handle_GEOMAlgo_ClsfSolid &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid(const GEOMAlgo_ClsfSolid *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid & operator=(const Handle_GEOMAlgo_ClsfSolid &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid & operator=(const GEOMAlgo_ClsfSolid *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ClsfSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ClsfSolid {
	GEOMAlgo_ClsfSolid* GetObject() {
	return (GEOMAlgo_ClsfSolid*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_ClsfSolid {
	~Handle_GEOMAlgo_ClsfSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_ClsfSolid\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo;
class Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo & operator=(const Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo & operator=(const GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo* GetObject() {
	return (GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	~Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo\n");}
	}
};


%nodefaultctor Handle_GEOMAlgo_ListNodeOfListOfPnt;
class Handle_GEOMAlgo_ListNodeOfListOfPnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt();
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt(const Handle_GEOMAlgo_ListNodeOfListOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt(const GEOMAlgo_ListNodeOfListOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt & operator=(const Handle_GEOMAlgo_ListNodeOfListOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt & operator=(const GEOMAlgo_ListNodeOfListOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_GEOMAlgo_ListNodeOfListOfPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMAlgo_ListNodeOfListOfPnt {
	GEOMAlgo_ListNodeOfListOfPnt* GetObject() {
	return (GEOMAlgo_ListNodeOfListOfPnt*)$self->Access();
	}
};
%extend Handle_GEOMAlgo_ListNodeOfListOfPnt {
	~Handle_GEOMAlgo_ListNodeOfListOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMAlgo_ListNodeOfListOfPnt\n");}
	}
};


%nodefaultctor GEOMAlgo_Algo;
class GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		Standard_Integer WarningStatus() const;

};
%extend GEOMAlgo_Algo {
	~GEOMAlgo_Algo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Algo\n");}
	}
};


%nodefaultctor GEOMAlgo_BuilderArea;
class GEOMAlgo_BuilderArea : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetContext(const IntTools_Context &theContext);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &theLS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Loops() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Areas() const;

};
%extend GEOMAlgo_BuilderArea {
	~GEOMAlgo_BuilderArea() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_BuilderArea\n");}
	}
};


%nodefaultctor GEOMAlgo_BuilderSolid;
class GEOMAlgo_BuilderSolid : public GEOMAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderSolid();

};
%extend GEOMAlgo_BuilderSolid {
	~GEOMAlgo_BuilderSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_BuilderSolid\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet;
class GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet(const TopoDS_Shape &K, const GEOMAlgo_ShapeSet &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet {
	~GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet\n");}
	}
};


%nodefaultctor GEOMAlgo_ShapeAlgo;
class GEOMAlgo_ShapeAlgo : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Result() const;

};
%extend GEOMAlgo_ShapeAlgo {
	~GEOMAlgo_ShapeAlgo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ShapeAlgo\n");}
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOn;
class GEOMAlgo_FinderShapeOn : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		void CopySource(const TopoDS_Shape &aS, TopTools_DataMapOfShapeShape & aImages, TopTools_DataMapOfShapeShape & aOriginals, TopoDS_Shape & aSC);
		%feature("autodoc", "1");
		bool BuildTriangulation(const TopoDS_Shape &theShape);

};
%extend GEOMAlgo_FinderShapeOn {
	~GEOMAlgo_FinderShapeOn() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_FinderShapeOn\n");}
	}
};


%nodefaultctor GEOMAlgo_BuilderShape;
class GEOMAlgo_BuilderShape : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &theS);
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Modified(const TopoDS_Shape &theS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDeleted(const TopoDS_Shape &theS);
		%feature("autodoc", "1");
		Standard_Boolean HasDeleted() const;
		%feature("autodoc", "1");
		Standard_Boolean HasGenerated() const;
		%feature("autodoc", "1");
		Standard_Boolean HasModified() const;
		%feature("autodoc", "1");
		const TopTools_IndexedDataMapOfShapeListOfShape & ImagesResult() const;

};
%extend GEOMAlgo_BuilderShape {
	~GEOMAlgo_BuilderShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_BuilderShape\n");}
	}
};


%nodefaultctor GEOMAlgo_Builder;
class GEOMAlgo_Builder : public GEOMAlgo_BuilderShape {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Builder();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void PerformWithFiller(const NMTTools_PaveFiller &theDSF);
		%feature("autodoc", "1");
		virtual		void AddShape(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		void AddCompound(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes1(const Standard_Integer theType) const;
		%feature("autodoc", "1");
		const BRepAlgo_Image & Images() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & InParts(const TopoDS_Shape &theShape) const;

};
%extend GEOMAlgo_Builder {
	~GEOMAlgo_Builder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Builder\n");}
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOn1;
class GEOMAlgo_FinderShapeOn1 : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn1();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		void SetNbPntsMin(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMin() const;
		%feature("autodoc", "1");
		void SetNbPntsMax(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMax() const;
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const GEOMAlgo_IndexedDataMapOfShapeState & MSS() const;

};
%extend GEOMAlgo_FinderShapeOn1 {
	~GEOMAlgo_FinderShapeOn1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_FinderShapeOn1\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState(const TopoDS_Shape &K1, const Standard_Integer K2, const TopAbs_State &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopAbs_State & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState {
	~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapOfPassKeyInteger;
class GEOMAlgo_DataMapOfPassKeyInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyInteger & Assign(const GEOMAlgo_DataMapOfPassKeyInteger &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyInteger & operator=(const GEOMAlgo_DataMapOfPassKeyInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const GEOMAlgo_PassKey &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const GEOMAlgo_PassKey &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const GEOMAlgo_PassKey &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const GEOMAlgo_PassKey &K);

};
%extend GEOMAlgo_DataMapOfPassKeyInteger {
	~GEOMAlgo_DataMapOfPassKeyInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapOfPassKeyInteger\n");}
	}
};


%nodefaultctor GEOMAlgo_PassKeyShapeMapHasher;
class GEOMAlgo_PassKeyShapeMapHasher {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShapeMapHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const GEOMAlgo_PassKeyShape &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKeyShape &aPKey1, const GEOMAlgo_PassKeyShape &aPKey2);

};
%extend GEOMAlgo_PassKeyShapeMapHasher {
	~GEOMAlgo_PassKeyShapeMapHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_PassKeyShapeMapHasher\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape(const GEOMAlgo_DataMapOfRealListOfShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfRealListOfShape &aMap);
		%feature("autodoc", "1");
		const Standard_Real & Key() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Value() const;

};
%extend GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape {
	~GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet;
class GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet(const GEOMAlgo_DataMapOfShapeShapeSet &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfShapeShapeSet &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeSet & Value() const;

};
%extend GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet {
	~GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapOfShapeShapeSet;
class GEOMAlgo_DataMapOfShapeShapeSet : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeShapeSet(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeShapeSet & Assign(const GEOMAlgo_DataMapOfShapeShapeSet &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeShapeSet & operator=(const GEOMAlgo_DataMapOfShapeShapeSet &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const GEOMAlgo_ShapeSet &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeSet & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeSet & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet & operator()(const TopoDS_Shape &K);

};
%extend GEOMAlgo_DataMapOfShapeShapeSet {
	~GEOMAlgo_DataMapOfShapeShapeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapOfShapeShapeSet\n");}
	}
};


%nodefaultctor GEOMAlgo_HAlgo;
class GEOMAlgo_HAlgo : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		void CheckResult();
		%feature("autodoc", "1");
		Standard_Integer ErrorStatus() const;
		%feature("autodoc", "1");
		Standard_Integer WarningStatus() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_HAlgo {
	Handle_GEOMAlgo_HAlgo GetHandle() {
	return *(Handle_GEOMAlgo_HAlgo*) &$self;
	}
};
%extend GEOMAlgo_HAlgo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_HAlgo {
	~GEOMAlgo_HAlgo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_HAlgo\n");}
	}
};


%nodefaultctor GEOMAlgo_Clsf;
class GEOMAlgo_Clsf : public GEOMAlgo_HAlgo {
	public:
		%feature("autodoc", "1");
		void SetPnt(const gp_Pnt &aP);
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		TopAbs_State State() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aCT) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Surface &aST) const;

};
%extend GEOMAlgo_Clsf {
	Handle_GEOMAlgo_Clsf GetHandle() {
	return *(Handle_GEOMAlgo_Clsf*) &$self;
	}
};
%extend GEOMAlgo_Clsf {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_Clsf {
	~GEOMAlgo_Clsf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Clsf\n");}
	}
};


%nodefaultctor GEOMAlgo_ClsfBox;
class GEOMAlgo_ClsfBox : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfBox();
		%feature("autodoc", "1");
		void SetBox(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		const TopoDS_Shape & Box() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aC) const;

};
%extend GEOMAlgo_ClsfBox {
	Handle_GEOMAlgo_ClsfBox GetHandle() {
	return *(Handle_GEOMAlgo_ClsfBox*) &$self;
	}
};
%extend GEOMAlgo_ClsfBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_ClsfBox {
	~GEOMAlgo_ClsfBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ClsfBox\n");}
	}
};


%nodefaultctor GEOMAlgo_CoupleOfShapes;
class GEOMAlgo_CoupleOfShapes {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes();
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2);
		%feature("autodoc", "1");
		void SetShape1(const TopoDS_Shape &aS1);
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape &aS2);
		%feature("autodoc", "1");
		void Shapes(TopoDS_Shape & aS1, TopoDS_Shape & aS2) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape1() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;

};
%extend GEOMAlgo_CoupleOfShapes {
	~GEOMAlgo_CoupleOfShapes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_CoupleOfShapes\n");}
	}
};


%nodefaultctor GEOMAlgo_BuilderFace;
class GEOMAlgo_BuilderFace : public GEOMAlgo_BuilderArea {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderFace();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &theFace);
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		virtual		void Perform();

};
%extend GEOMAlgo_BuilderFace {
	~GEOMAlgo_BuilderFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_BuilderFace\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapOfPassKeyShapeShape;
class GEOMAlgo_DataMapOfPassKeyShapeShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyShapeShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyShapeShape & Assign(const GEOMAlgo_DataMapOfPassKeyShapeShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfPassKeyShapeShape & operator=(const GEOMAlgo_DataMapOfPassKeyShapeShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const GEOMAlgo_PassKeyShape &K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const GEOMAlgo_PassKeyShape &K);
		%feature("autodoc", "1");
		const TopoDS_Shape & Find(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFind(const GEOMAlgo_PassKeyShape &K);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const GEOMAlgo_PassKeyShape &K);

};
%extend GEOMAlgo_DataMapOfPassKeyShapeShape {
	~GEOMAlgo_DataMapOfPassKeyShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapOfPassKeyShapeShape\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfShapeReal;
class GEOMAlgo_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfShapeReal {
	~GEOMAlgo_DataMapNodeOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapNodeOfDataMapOfShapeReal\n");}
	}
};


%nodefaultctor GEOMAlgo_Tools3D;
class GEOMAlgo_Tools3D {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Tools3D();
		%feature("autodoc", "1");
		Standard_Boolean IsSplitToReverse(const TopoDS_Shape &theSplit, const TopoDS_Shape &theShape, IntTools_Context & theContext);
		%feature("autodoc", "1");
		Standard_Boolean IsSplitToReverse(const TopoDS_Face &theSplit, const TopoDS_Face &theShape, IntTools_Context & theContext);
		%feature("autodoc", "1");
		Standard_Boolean IsSplitToReverse(const TopoDS_Edge &theEdge, const TopoDS_Edge &theSplit, IntTools_Context & theContext);
		%feature("autodoc", "1");
		Standard_Integer Sense(const TopoDS_Face &theF1, const TopoDS_Face &theF2);
		%feature("autodoc", "1");
		void CopyFace(const TopoDS_Face &theF1, TopoDS_Face & theF2);
		%feature("autodoc", "1");
		void MakeContainer(const TopAbs_ShapeEnum theType, TopoDS_Shape & theShape);
		%feature("autodoc", "1");
		void MakeConnexityBlock(const TopTools_ListOfShape &theLS, const TopTools_IndexedMapOfShape &theMapAvoid, TopTools_ListOfShape & theLSCB);
		%feature("autodoc", "1");
		TopAbs_State ComputeStateByOnePoint(const TopoDS_Shape &theShape, const TopoDS_Solid &theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		TopAbs_State ComputeState(const gp_Pnt &thePoint, const TopoDS_Solid &theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		TopAbs_State ComputeState(const TopoDS_Vertex &theVertex, const TopoDS_Solid &theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		TopAbs_State ComputeState(const TopoDS_Edge &theEdge, const TopoDS_Solid &theSolid, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		TopAbs_State ComputeState(const TopoDS_Face &theFace, const TopoDS_Solid &theSolid, const Standard_Real theTol, const TopTools_IndexedMapOfShape &theBounds, IntTools_Context & theContext);
		%feature("autodoc", "1");
		Standard_Boolean IsInternalFace(const TopoDS_Face &theFace, const TopoDS_Edge &theEdge, const TopoDS_Face &theFace1, const TopoDS_Face &theFace2);
		%feature("autodoc", "1");
		Standard_Boolean IsInternalFace(const TopoDS_Face &theFace, const TopoDS_Edge &theEdge, const TopTools_ListOfShape &theLF);
		%feature("autodoc", "1");
		Standard_Boolean IsInternalFace(const TopoDS_Face &theFace, const TopoDS_Solid &theSolid, const TopTools_IndexedDataMapOfShapeListOfShape &theMEF, const Standard_Real theTol, IntTools_Context & theContext);
		%feature("autodoc", "1");
		void GetFaceOff(const TopoDS_Edge &theEdge, const TopoDS_Face &theFace, const NMTTools_ListOfCoupleOfShape &theLCEF, TopoDS_Face & theFaceOff);
		%feature("autodoc", "1");
		Standard_Boolean GetEdgeOnFace(const TopoDS_Edge &theEdge, const TopoDS_Face &theFace, TopoDS_Edge & theEdgeOnF);
		%feature("autodoc", "1");
		Standard_Boolean GetEdgeOff(const TopoDS_Edge &theEdge, const TopoDS_Face &theFace, TopoDS_Edge & theEdgeOff);

};
%extend GEOMAlgo_Tools3D {
	~GEOMAlgo_Tools3D() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Tools3D\n");}
	}
};


%nodefaultctor GEOMAlgo_Gluer;
class GEOMAlgo_Gluer : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Gluer();
		%feature("autodoc", "1");
		void SetCheckGeometry(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		Standard_Boolean CheckGeometry() const;
		%feature("autodoc", "1");
		void SetKeepNonSolids(const Standard_Boolean aFlag);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Integer AloneShapes() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Modified(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeListOfShape & Images() const;
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Origins() const;

};
%extend GEOMAlgo_Gluer {
	~GEOMAlgo_Gluer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Gluer\n");}
	}
};


%nodefaultctor GEOMAlgo_Gluer1;
class GEOMAlgo_Gluer1 : public GEOMAlgo_Gluer {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Gluer1();
		%feature("autodoc", "1");
		void SetFacesToUnglue(const GEOMAlgo_ListOfCoupleOfShapes &aLCS);
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & FacesToUnglue() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & GluedFaces() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & RejectedFaces() const;
		%feature("autodoc", "1");
		void UnglueFaces();

};
%extend GEOMAlgo_Gluer1 {
	~GEOMAlgo_Gluer1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Gluer1\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger;
class GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger(const GEOMAlgo_DataMapOfPassKeyInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfPassKeyInteger &aMap);
		%feature("autodoc", "1");
		const GEOMAlgo_PassKey & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%extend GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger {
	~GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfIntegerShape;
class GEOMAlgo_IndexedDataMapOfIntegerShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfIntegerShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfIntegerShape & Assign(const GEOMAlgo_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfIntegerShape & operator=(const GEOMAlgo_IndexedDataMapOfIntegerShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Standard_Integer &K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Standard_Integer &K, const TopoDS_Shape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindFromKey(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFromKey(const Standard_Integer &K);

};
%extend GEOMAlgo_IndexedDataMapOfIntegerShape {
	~GEOMAlgo_IndexedDataMapOfIntegerShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapOfIntegerShape\n");}
	}
};


%nodefaultctor GEOMAlgo_GlueAnalyser;
class GEOMAlgo_GlueAnalyser : public GEOMAlgo_Gluer {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_GlueAnalyser();
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean HasSolidsToGlue() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ListOfCoupleOfShapes & SolidsToGlue() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSolidsAlone() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & SolidsAlone() const;

};
%extend GEOMAlgo_GlueAnalyser {
	~GEOMAlgo_GlueAnalyser() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_GlueAnalyser\n");}
	}
};


%nodefaultctor GEOMAlgo_ShapeSolid;
class GEOMAlgo_ShapeSolid : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		void SetFiller(const BOPTools_DSFiller &aDSF);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes(const TopAbs_State aState) const;

};
%extend GEOMAlgo_ShapeSolid {
	~GEOMAlgo_ShapeSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ShapeSolid\n");}
	}
};


%nodefaultctor GEOMAlgo_ShellSolid;
class GEOMAlgo_ShellSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShellSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%extend GEOMAlgo_ShellSolid {
	~GEOMAlgo_ShellSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ShellSolid\n");}
	}
};


%nodefaultctor GEOMAlgo_SolidSolid;
class GEOMAlgo_SolidSolid : public GEOMAlgo_ShellSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_SolidSolid();
		%feature("autodoc", "1");
		void SetShape2(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape2() const;

};
%extend GEOMAlgo_SolidSolid {
	~GEOMAlgo_SolidSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_SolidSolid\n");}
	}
};


%nodefaultctor GEOMAlgo_Splitter;
class GEOMAlgo_Splitter : public GEOMAlgo_Builder {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Splitter();
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		virtual		void AddTool(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Tools() const;
		%feature("autodoc", "1");
		void SetLimit(const TopAbs_ShapeEnum aLimit);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Limit() const;
		%feature("autodoc", "1");
		void SetLimitMode(const Standard_Integer aLimitMode);
		%feature("autodoc", "1");
		Standard_Integer LimitMode() const;
		%feature("autodoc", "1");
		void AddToolCompound(const TopoDS_Shape &theShape);

};
%extend GEOMAlgo_Splitter {
	~GEOMAlgo_Splitter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Splitter\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape(const Standard_Integer &K1, const Standard_Integer K2, const TopoDS_Shape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Standard_Integer & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape {
	~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape\n");}
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOnQuad;
class GEOMAlgo_FinderShapeOnQuad : public GEOMAlgo_FinderShapeOn1 {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOnQuad(const gp_Pnt &theTopLeftPoint, const gp_Pnt &theTopRigthPoint, const gp_Pnt &theBottomLeftPoint, const gp_Pnt &theBottomRigthPoint);

};
%extend GEOMAlgo_FinderShapeOnQuad {
	~GEOMAlgo_FinderShapeOnQuad() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_FinderShapeOnQuad\n");}
	}
};


%nodefaultctor GEOMAlgo_ListOfCoupleOfShapes;
class GEOMAlgo_ListOfCoupleOfShapes {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListOfCoupleOfShapes();
		%feature("autodoc", "1");
		void Assign(const GEOMAlgo_ListOfCoupleOfShapes &Other);
		%feature("autodoc", "1");
		void operator=(const GEOMAlgo_ListOfCoupleOfShapes &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const GEOMAlgo_CoupleOfShapes &I);
		%feature("autodoc", "1");
		void Prepend(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & theIt);
		%feature("autodoc", "1");
		void Prepend(GEOMAlgo_ListOfCoupleOfShapes & Other);
		%feature("autodoc", "1");
		void Append(const GEOMAlgo_CoupleOfShapes &I);
		%feature("autodoc", "1");
		void Append(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & theIt);
		%feature("autodoc", "1");
		void Append(GEOMAlgo_ListOfCoupleOfShapes & Other);
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & First() const;
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertBefore(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertBefore(GEOMAlgo_ListOfCoupleOfShapes & Other, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertAfter(const GEOMAlgo_CoupleOfShapes &I, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);
		%feature("autodoc", "1");
		void InsertAfter(GEOMAlgo_ListOfCoupleOfShapes & Other, GEOMAlgo_ListIteratorOfListOfCoupleOfShapes & It);

};
%extend GEOMAlgo_ListOfCoupleOfShapes {
	~GEOMAlgo_ListOfCoupleOfShapes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ListOfCoupleOfShapes\n");}
	}
};


%nodefaultctor GEOMAlgo_ShapeSet;
class GEOMAlgo_ShapeSet {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeSet();
		%feature("autodoc", "1");
		void Add(const TopTools_ListOfShape &theLS);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &theShape, const TopAbs_ShapeEnum theType);
		%feature("autodoc", "1");
		void Subtract(const GEOMAlgo_ShapeSet &theSet);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const GEOMAlgo_ShapeSet &theSet) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & GetSet() const;

};
%extend GEOMAlgo_ShapeSet {
	~GEOMAlgo_ShapeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ShapeSet\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape;
class GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape & Assign(const GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape & operator=(const GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const GEOMAlgo_PassKeyShape &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const GEOMAlgo_PassKeyShape &K, const TopTools_ListOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_PassKeyShape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromKey(const GEOMAlgo_PassKeyShape &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromKey(const GEOMAlgo_PassKeyShape &K);

};
%extend GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape {
	~GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape;
class GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape(const GEOMAlgo_DataMapOfPassKeyShapeShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfPassKeyShapeShape &aMap);
		%feature("autodoc", "1");
		const GEOMAlgo_PassKeyShape & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;

};
%extend GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape {
	~GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape(const GEOMAlgo_PassKeyShape &K1, const Standard_Integer K2, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape {
	~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfShapeShapeInfo;
class GEOMAlgo_IndexedDataMapOfShapeShapeInfo : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeShapeInfo(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeShapeInfo & Assign(const GEOMAlgo_IndexedDataMapOfShapeShapeInfo &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeShapeInfo & operator=(const GEOMAlgo_IndexedDataMapOfShapeShapeInfo &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const GEOMAlgo_ShapeInfo &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const GEOMAlgo_ShapeInfo &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo & ChangeFromKey(const TopoDS_Shape &K);

};
%extend GEOMAlgo_IndexedDataMapOfShapeShapeInfo {
	~GEOMAlgo_IndexedDataMapOfShapeShapeInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapOfShapeShapeInfo\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfPassKeyListOfShape;
class GEOMAlgo_IndexedDataMapOfPassKeyListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyListOfShape & Assign(const GEOMAlgo_IndexedDataMapOfPassKeyListOfShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfPassKeyListOfShape & operator=(const GEOMAlgo_IndexedDataMapOfPassKeyListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const GEOMAlgo_PassKey &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const GEOMAlgo_PassKey &K, const TopTools_ListOfShape &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		const GEOMAlgo_PassKey & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & FindFromKey(const GEOMAlgo_PassKey &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFromKey(const GEOMAlgo_PassKey &K);

};
%extend GEOMAlgo_IndexedDataMapOfPassKeyListOfShape {
	~GEOMAlgo_IndexedDataMapOfPassKeyListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapOfPassKeyListOfShape\n");}
	}
};


%nodefaultctor GEOMAlgo_WireSolid;
class GEOMAlgo_WireSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%extend GEOMAlgo_WireSolid {
	~GEOMAlgo_WireSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_WireSolid\n");}
	}
};


%nodefaultctor GEOMAlgo_WESCorrector;
class GEOMAlgo_WESCorrector : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WESCorrector();
		%feature("autodoc", "1");
		void SetWES(const GEOMAlgo_WireEdgeSet &aWES);
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet & WES();
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet & NewWES();

};
%extend GEOMAlgo_WESCorrector {
	~GEOMAlgo_WESCorrector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_WESCorrector\n");}
	}
};


%nodefaultctor GEOMAlgo_FinderShapeOn2;
class GEOMAlgo_FinderShapeOn2 : public GEOMAlgo_ShapeAlgo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_FinderShapeOn2();
		%feature("autodoc", "1");
		void SetClsf(const Handle_GEOMAlgo_Clsf &aClsf);
		%feature("autodoc", "1");
		const Handle_GEOMAlgo_Clsf & Clsf() const;
		%feature("autodoc", "1");
		void SetShapeType(const TopAbs_ShapeEnum aST);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		void SetState(const GEOMAlgo_State aSF);
		%feature("autodoc", "1");
		GEOMAlgo_State State() const;
		%feature("autodoc", "1");
		void SetNbPntsMin(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMin() const;
		%feature("autodoc", "1");
		void SetNbPntsMax(const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbPntsMax() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;
		%feature("autodoc", "1");
		const GEOMAlgo_IndexedDataMapOfShapeState & MSS() const;

};
%extend GEOMAlgo_FinderShapeOn2 {
	~GEOMAlgo_FinderShapeOn2() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_FinderShapeOn2\n");}
	}
};


%nodefaultctor GEOMAlgo_Tools;
class GEOMAlgo_Tools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_Tools();
		%feature("autodoc", "1");
		Standard_Boolean IsCompositeShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		Standard_Integer RefineSDShapes(GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape & aMSD, const Standard_Real aTol, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		Standard_Integer FindSDShapes(const TopTools_ListOfShape &aLE, const Standard_Real aTol, TopTools_IndexedDataMapOfShapeListOfShape & aMEE, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		Standard_Integer FindSDShapes(const TopoDS_Shape &aE1, const TopTools_ListOfShape &aLE, const Standard_Real aTol, TopTools_ListOfShape & aLESD, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		Standard_Boolean ProjectPointOnShape(const gp_Pnt &aP1, const TopoDS_Shape &aS, gp_Pnt & aP2, IntTools_Context & aCtx);
		%feature("autodoc", "1");
		void PointOnShape(const TopoDS_Shape &aS, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		void PointOnEdge(const TopoDS_Edge &aE, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		void PointOnEdge(const TopoDS_Edge &aE, const Standard_Real aT, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		void PointOnFace(const TopoDS_Face &aF, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		void PointOnFace(const TopoDS_Face &aF, const Standard_Real aU, const Standard_Real aV, gp_Pnt & aP3D);
		%feature("autodoc", "1");
		void RefinePCurveForEdgeOnFace(const TopoDS_Edge &aE, const TopoDS_Face &aF, const Standard_Real aU1, const Standard_Real aU2);
		%feature("autodoc", "1");
		Standard_Boolean IsUPeriodic(const Handle_Geom_Surface &aS);

};
%extend GEOMAlgo_Tools {
	~GEOMAlgo_Tools() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_Tools\n");}
	}
};


%nodefaultctor GEOMAlgo_ClsfSurf;
class GEOMAlgo_ClsfSurf : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfSurf();
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Curve &aC) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean CanBeON(const Handle_Geom_Surface &aST) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ClsfSurf {
	Handle_GEOMAlgo_ClsfSurf GetHandle() {
	return *(Handle_GEOMAlgo_ClsfSurf*) &$self;
	}
};
%extend GEOMAlgo_ClsfSurf {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_ClsfSurf {
	~GEOMAlgo_ClsfSurf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ClsfSurf\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfShapeState;
class GEOMAlgo_IndexedDataMapOfShapeState : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeState(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeState & Assign(const GEOMAlgo_IndexedDataMapOfShapeState &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeState & operator=(const GEOMAlgo_IndexedDataMapOfShapeState &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const TopAbs_State &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const TopAbs_State &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopAbs_State & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const TopAbs_State & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		TopAbs_State & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		TopAbs_State & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopAbs_State & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TopAbs_State & ChangeFromKey(const TopoDS_Shape &K);

};
%extend GEOMAlgo_IndexedDataMapOfShapeState {
	~GEOMAlgo_IndexedDataMapOfShapeState() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapOfShapeState\n");}
	}
};


%nodefaultctor GEOMAlgo_PassKeyMapHasher;
class GEOMAlgo_PassKeyMapHasher {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyMapHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const GEOMAlgo_PassKey &aPKey, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKey &aPKey1, const GEOMAlgo_PassKey &aPKey2);

};
%extend GEOMAlgo_PassKeyMapHasher {
	~GEOMAlgo_PassKeyMapHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_PassKeyMapHasher\n");}
	}
};


%nodefaultctor GEOMAlgo_PassKeyShape;
class GEOMAlgo_PassKeyShape {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape();
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & Assign(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & operator=(const GEOMAlgo_PassKeyShape &Other);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2, const TopoDS_Shape &aS3);
		%feature("autodoc", "1");
		void SetShapes(const TopoDS_Shape &aS1, const TopoDS_Shape &aS2, const TopoDS_Shape &aS3, const TopoDS_Shape &aS4);
		%feature("autodoc", "1");
		void SetShapes(const TopTools_ListOfShape &aLS);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKeyShape &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend GEOMAlgo_PassKeyShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_PassKeyShape {
	~GEOMAlgo_PassKeyShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_PassKeyShape\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo(const TopoDS_Shape &K1, const Standard_Integer K2, const GEOMAlgo_ShapeInfo &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo {
	~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape;
class GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape(const Standard_Real &K, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Real & Key() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape {
	~GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape\n");}
	}
};


%nodefaultctor GEOMAlgo_ListIteratorOfListOfPnt;
class GEOMAlgo_ListIteratorOfListOfPnt {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfPnt();
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfPnt(const GEOMAlgo_ListOfPnt &L);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_ListOfPnt &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		gp_Pnt & Value() const;

};
%extend GEOMAlgo_ListIteratorOfListOfPnt {
	~GEOMAlgo_ListIteratorOfListOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ListIteratorOfListOfPnt\n");}
	}
};


%nodefaultctor GEOMAlgo_ShapeInfoFiller;
class GEOMAlgo_ShapeInfoFiller : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfoFiller();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real aT);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & Info() const;
		%feature("autodoc", "1");
		const GEOMAlgo_ShapeInfo & Info(const TopoDS_Shape &aS) const;
		%feature("autodoc", "1");
		virtual		void Perform();

};
%extend GEOMAlgo_ShapeInfoFiller {
	~GEOMAlgo_ShapeInfoFiller() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ShapeInfoFiller\n");}
	}
};


%nodefaultctor GEOMAlgo_ShapeInfo;
class GEOMAlgo_ShapeInfo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ShapeInfo();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		void SetType(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		void SetNbSubShapes(const TopAbs_ShapeEnum aType, const Standard_Integer aNb);
		%feature("autodoc", "1");
		Standard_Integer NbSubShapes(const TopAbs_ShapeEnum aType) const;
		%feature("autodoc", "1");
		void SetKindOfShape(const GEOMAlgo_KindOfShape aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfShape KindOfShape() const;
		%feature("autodoc", "1");
		void SetKindOfName(const GEOMAlgo_KindOfName aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfName KindOfName() const;
		%feature("autodoc", "1");
		void SetKindOfBounds(const GEOMAlgo_KindOfBounds aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfBounds KindOfBounds() const;
		%feature("autodoc", "1");
		void SetKindOfClosed(const GEOMAlgo_KindOfClosed aT);
		%feature("autodoc", "1");
		GEOMAlgo_KindOfClosed KindOfClosed() const;
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &aP);
		%feature("autodoc", "1");
		const gp_Pnt & Location() const;
		%feature("autodoc", "1");
		void SetDirection(const gp_Dir &aD);
		%feature("autodoc", "1");
		const gp_Dir & Direction() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax2 &aAx2);
		%feature("autodoc", "1");
		void SetPosition(const gp_Ax3 &aAx3);
		%feature("autodoc", "1");
		const gp_Ax3 & Position() const;
		%feature("autodoc", "1");
		void SetPnt1(const gp_Pnt &aP);
		%feature("autodoc", "1");
		const gp_Pnt & Pnt1() const;
		%feature("autodoc", "1");
		void SetPnt2(const gp_Pnt &aP);
		%feature("autodoc", "1");
		const gp_Pnt & Pnt2() const;
		%feature("autodoc", "1");
		void SetRadius1(const Standard_Real aR);
		%feature("autodoc", "1");
		Standard_Real Radius1() const;
		%feature("autodoc", "1");
		void SetRadius2(const Standard_Real aR);
		%feature("autodoc", "1");
		Standard_Real Radius2() const;
		%feature("autodoc", "1");
		void SetLength(const Standard_Real aL);
		%feature("autodoc", "1");
		Standard_Real Length() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aW);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aH);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%extend GEOMAlgo_ShapeInfo {
	~GEOMAlgo_ShapeInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ShapeInfo\n");}
	}
};


%nodefaultctor GEOMAlgo_VertexSolid;
class GEOMAlgo_VertexSolid : public GEOMAlgo_ShapeSolid {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_VertexSolid();
		%feature("autodoc", "1");
		virtual		void Perform();

};
%extend GEOMAlgo_VertexSolid {
	~GEOMAlgo_VertexSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_VertexSolid\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger;
class GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger(const GEOMAlgo_PassKey &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger {
	~GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapOfShapeBox;
class GEOMAlgo_IndexedDataMapOfShapeBox : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeBox(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeBox & Assign(const GEOMAlgo_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapOfShapeBox & operator=(const GEOMAlgo_IndexedDataMapOfShapeBox &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const Bnd_Box &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const Bnd_Box &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Bnd_Box & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Bnd_Box & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Bnd_Box & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Bnd_Box & ChangeFromKey(const TopoDS_Shape &K);

};
%extend GEOMAlgo_IndexedDataMapOfShapeBox {
	~GEOMAlgo_IndexedDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapOfShapeBox\n");}
	}
};


%nodefaultctor GEOMAlgo_ListOfPnt;
class GEOMAlgo_ListOfPnt {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListOfPnt();
		%feature("autodoc", "1");
		void Assign(const GEOMAlgo_ListOfPnt &Other);
		%feature("autodoc", "1");
		void operator=(const GEOMAlgo_ListOfPnt &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt &I);
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt &I, GEOMAlgo_ListIteratorOfListOfPnt & theIt);
		%feature("autodoc", "1");
		void Prepend(GEOMAlgo_ListOfPnt & Other);
		%feature("autodoc", "1");
		void Append(const gp_Pnt &I);
		%feature("autodoc", "1");
		void Append(const gp_Pnt &I, GEOMAlgo_ListIteratorOfListOfPnt & theIt);
		%feature("autodoc", "1");
		void Append(GEOMAlgo_ListOfPnt & Other);
		%feature("autodoc", "1");
		gp_Pnt & First() const;
		%feature("autodoc", "1");
		gp_Pnt & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertBefore(const gp_Pnt &I, GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertBefore(GEOMAlgo_ListOfPnt & Other, GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertAfter(const gp_Pnt &I, GEOMAlgo_ListIteratorOfListOfPnt & It);
		%feature("autodoc", "1");
		void InsertAfter(GEOMAlgo_ListOfPnt & Other, GEOMAlgo_ListIteratorOfListOfPnt & It);

};
%extend GEOMAlgo_ListOfPnt {
	~GEOMAlgo_ListOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ListOfPnt\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapOfShapeReal;
class GEOMAlgo_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeReal & Assign(const GEOMAlgo_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfShapeReal & operator=(const GEOMAlgo_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Standard_Real & operator()(const TopoDS_Shape &K);

};
%extend GEOMAlgo_DataMapOfShapeReal {
	~GEOMAlgo_DataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapOfShapeReal\n");}
	}
};


%nodefaultctor GEOMAlgo_ListNodeOfListOfCoupleOfShapes;
class GEOMAlgo_ListNodeOfListOfCoupleOfShapes : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListNodeOfListOfCoupleOfShapes(const GEOMAlgo_CoupleOfShapes &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes GetHandle() {
	return *(Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes*) &$self;
	}
};
%extend GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_ListNodeOfListOfCoupleOfShapes {
	~GEOMAlgo_ListNodeOfListOfCoupleOfShapes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ListNodeOfListOfCoupleOfShapes\n");}
	}
};


%nodefaultctor GEOMAlgo_WireEdgeSet;
class GEOMAlgo_WireEdgeSet {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireEdgeSet();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &aF);
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		void AddStartElement(const TopoDS_Shape &sS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & StartElements() const;
		%feature("autodoc", "1");
		void AddShape(const TopoDS_Shape &sS);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Shapes() const;

};
%extend GEOMAlgo_WireEdgeSet {
	~GEOMAlgo_WireEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_WireEdgeSet\n");}
	}
};


%nodefaultctor GEOMAlgo_ListNodeOfListOfPnt;
class GEOMAlgo_ListNodeOfListOfPnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListNodeOfListOfPnt(const gp_Pnt &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		gp_Pnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ListNodeOfListOfPnt {
	Handle_GEOMAlgo_ListNodeOfListOfPnt GetHandle() {
	return *(Handle_GEOMAlgo_ListNodeOfListOfPnt*) &$self;
	}
};
%extend GEOMAlgo_ListNodeOfListOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_ListNodeOfListOfPnt {
	~GEOMAlgo_ListNodeOfListOfPnt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ListNodeOfListOfPnt\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox(const TopoDS_Shape &K1, const Standard_Integer K2, const Bnd_Box &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Bnd_Box & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox {
	~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox\n");}
	}
};


%nodefaultctor GEOMAlgo_StateCollector;
class GEOMAlgo_StateCollector {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_StateCollector();
		%feature("autodoc", "1");
		Standard_Boolean AppendState(const TopAbs_State aSt);
		%feature("autodoc", "1");
		TopAbs_State State() const;

};
%extend GEOMAlgo_StateCollector {
	~GEOMAlgo_StateCollector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_StateCollector\n");}
	}
};


%nodefaultctor GEOMAlgo_SurfaceTools;
class GEOMAlgo_SurfaceTools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_SurfaceTools();
		%feature("autodoc", "1");
		Standard_Boolean IsAnalytic(const Handle_Geom_Surface &aS);
		%feature("autodoc", "1");
		Standard_Boolean IsCoaxial(const gp_Pnt &aP1, const gp_Pnt &aP2, const gp_Cylinder &aCyl, const Standard_Real aTol);
		%feature("autodoc", "1");
		Standard_Boolean IsConformState(const TopAbs_State aST1, const GEOMAlgo_State aST2);
		%feature("autodoc", "1");
		Standard_Integer GetState(const gp_Pnt &aP, const GeomAdaptor_Surface &aS, const Standard_Real aTol, TopAbs_State & aSt);
		%feature("autodoc", "1");
		Standard_Integer GetState(const gp_Pnt &aP, const Handle_Geom_Surface &aS, const Standard_Real aTol, TopAbs_State & aSt);
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt &aP, const gp_Pln &aPln);
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt &aP, const gp_Cylinder &aCyl);
		%feature("autodoc", "1");
		Standard_Real Distance(const gp_Pnt &aP, const gp_Sphere &aSph);
		%feature("autodoc", "1");
		TopAbs_State ReverseState(const TopAbs_State aSt);

};
%extend GEOMAlgo_SurfaceTools {
	~GEOMAlgo_SurfaceTools() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_SurfaceTools\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal;
class GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal(const GEOMAlgo_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};
%extend GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal {
	~GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapOfRealListOfShape;
class GEOMAlgo_DataMapOfRealListOfShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfRealListOfShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfRealListOfShape & Assign(const GEOMAlgo_DataMapOfRealListOfShape &Other);
		%feature("autodoc", "1");
		GEOMAlgo_DataMapOfRealListOfShape & operator=(const GEOMAlgo_DataMapOfRealListOfShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Real &K, const TopTools_ListOfShape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Real &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Real &K);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Find(const Standard_Real &K) const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & operator()(const Standard_Real &K) const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & ChangeFind(const Standard_Real &K);
		%feature("autodoc", "1");
		TopTools_ListOfShape & operator()(const Standard_Real &K);

};
%extend GEOMAlgo_DataMapOfRealListOfShape {
	~GEOMAlgo_DataMapOfRealListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapOfRealListOfShape\n");}
	}
};


%nodefaultctor GEOMAlgo_PassKey;
class GEOMAlgo_PassKey {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_PassKey();
		%feature("autodoc", "1");
		GEOMAlgo_PassKey(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & Assign(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & operator=(const GEOMAlgo_PassKey &Other);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3);
		%feature("autodoc", "1");
		void SetIds(const Standard_Integer aI1, const Standard_Integer aI2, const Standard_Integer aI3, const Standard_Integer aI4);
		%feature("autodoc", "1");
		void SetIds(const TColStd_ListOfInteger &aLS);
		%feature("autodoc", "1");
		Standard_Integer NbIds() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const GEOMAlgo_PassKey &aOther) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Integer Id(const Standard_Integer aIndex) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer aHex=0) const;

};
%extend GEOMAlgo_PassKey {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_PassKey {
	~GEOMAlgo_PassKey() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_PassKey\n");}
	}
};


%nodefaultctor GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape;
class GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape(const GEOMAlgo_PassKeyShape &K, const TopoDS_Shape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		GEOMAlgo_PassKeyShape & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape GetHandle() {
	return *(Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape*) &$self;
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape {
	~GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape\n");}
	}
};


%nodefaultctor GEOMAlgo_ClsfSolid;
class GEOMAlgo_ClsfSolid : public GEOMAlgo_Clsf {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ClsfSolid();
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aS);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		virtual		void CheckData();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GEOMAlgo_ClsfSolid {
	Handle_GEOMAlgo_ClsfSolid GetHandle() {
	return *(Handle_GEOMAlgo_ClsfSolid*) &$self;
	}
};
%extend GEOMAlgo_ClsfSolid {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_ClsfSolid {
	~GEOMAlgo_ClsfSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ClsfSolid\n");}
	}
};


%nodefaultctor GEOMAlgo_ListIteratorOfListOfCoupleOfShapes;
class GEOMAlgo_ListIteratorOfListOfCoupleOfShapes {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfCoupleOfShapes();
		%feature("autodoc", "1");
		GEOMAlgo_ListIteratorOfListOfCoupleOfShapes(const GEOMAlgo_ListOfCoupleOfShapes &L);
		%feature("autodoc", "1");
		void Initialize(const GEOMAlgo_ListOfCoupleOfShapes &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		GEOMAlgo_CoupleOfShapes & Value() const;

};
%extend GEOMAlgo_ListIteratorOfListOfCoupleOfShapes {
	~GEOMAlgo_ListIteratorOfListOfCoupleOfShapes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_ListIteratorOfListOfCoupleOfShapes\n");}
	}
};


%nodefaultctor GEOMAlgo_WireSplitter;
class GEOMAlgo_WireSplitter : public GEOMAlgo_Algo {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_WireSplitter();
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &aF);
		%feature("autodoc", "1");
		void SetEdges(const TopTools_ListOfShape &aLE);
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Edges() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsNothingToDo() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		const BOPTColStd_ListOfListOfShape & Shapes() const;

};
%extend GEOMAlgo_WireSplitter {
	~GEOMAlgo_WireSplitter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_WireSplitter\n");}
	}
};


%nodefaultctor GEOMAlgo_BuilderTools;
class GEOMAlgo_BuilderTools {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_BuilderTools();
		%feature("autodoc", "1");
		Standard_Boolean IsHole(const TopoDS_Shape &aW, const TopoDS_Shape &aF);
		%feature("autodoc", "1");
		Standard_Boolean IsHole(const TopoDS_Shape &aShell);

};
%extend GEOMAlgo_BuilderTools {
	~GEOMAlgo_BuilderTools() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_BuilderTools\n");}
	}
};


%nodefaultctor GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape;
class GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape(const GEOMAlgo_PassKey &K1, const Standard_Integer K2, const TopTools_ListOfShape &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		GEOMAlgo_PassKey & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		TopTools_ListOfShape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &arg0) const;

};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape GetHandle() {
	return *(Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape*) &$self;
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape {
	~GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape\n");}
	}
};
