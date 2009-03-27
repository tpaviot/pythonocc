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
%module Prs2d

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


%include Prs2d_dependencies.i


%include Prs2d_headers.i


enum Prs2d_AspectName {
	Prs2d_AN_UNKNOWN,
	Prs2d_AN_LINE,
	Prs2d_AN_HIDDENLINE,
	Prs2d_AN_TEXT,
	Prs2d_AN_HIDINGPOLY,
	Prs2d_AN_HIDINGTEXT,
	Prs2d_AN_FRAMEDTEXT,
	Prs2d_AN_LAST,
	};

enum Prs2d_TypeOfArrow {
	Prs2d_TOA_OPENED,
	Prs2d_TOA_CLOSED,
	Prs2d_TOA_FILLED,
	};

enum Prs2d_TypeOfSymbol {
	Prs2d_TOS_NONE,
	Prs2d_TOS_DIAMETER,
	Prs2d_TOS_LAST,
	};

enum Prs2d_TypeOf2DObject {
	Prs2d_TOO_UNKNOWN,
	Prs2d_TOO_ANGLE,
	Prs2d_TOO_ARROW,
	Prs2d_TOO_CURVE,
	Prs2d_TOO_DATUM,
	Prs2d_TOO_DIAMETER,
	Prs2d_TOO_ELLIPSERADIUS,
	Prs2d_TOO_EQUALDISTANCE,
	Prs2d_TOO_LENGTH,
	};

enum Prs2d_TypeOfRadius {
	Prs2d_TOR_STANDARD,
	Prs2d_TOR_CENTER,
	Prs2d_TOR_REVARROW,
	Prs2d_TOR_CENTREV,
	Prs2d_TOR_NONE,
	};

enum Prs2d_TypeOfAxis {
	Prs2d_TOAX_Unknown,
	Prs2d_TOAX_XAxis,
	Prs2d_TOAX_YAxis,
	};

enum Prs2d_TypeOfDist {
	Prs2d_TOD_AUTOMATIC,
	Prs2d_TOD_OBLIQUE,
	Prs2d_TOD_HORIZONTAL,
	Prs2d_TOD_VERTICAL,
	};

enum Prs2d_TypeOfTolerance {
	Prs2d_TOT_TAPER,
	Prs2d_TOT_SYMTOTAL,
	Prs2d_TOT_SYMCIRCULAR,
	Prs2d_TOT_SYMMETRY,
	Prs2d_TOT_CONCENTRIC,
	Prs2d_TOT_POSITION,
	Prs2d_TOT_ANGULARITY,
	Prs2d_TOT_PERPENDIC,
	Prs2d_TOT_PARALLELISM,
	Prs2d_TOT_SURFACEPROF,
	Prs2d_TOT_LINEPROF,
	Prs2d_TOT_CYLINDRIC,
	Prs2d_TOT_CIRCULARITY,
	Prs2d_TOT_FLATNESS,
	Prs2d_TOT_STRAIGHTNESS,
	Prs2d_TOT_NONE,
	};

enum Prs2d_ArrowSide {
	Prs2d_AS_NONE,
	Prs2d_AS_FIRSTAR,
	Prs2d_AS_LASTAR,
	Prs2d_AS_BOTHAR,
	Prs2d_AS_FIRSTPT,
	Prs2d_AS_LASTPT,
	Prs2d_AS_BOTHPT,
	Prs2d_AS_FIRSTAR_LASTPT,
	Prs2d_AS_FIRSTPT_LASTAR,
	};



%nodefaultctor Handle_Prs2d_Tolerance;
class Handle_Prs2d_Tolerance : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Tolerance();
		%feature("autodoc", "1");
		Handle_Prs2d_Tolerance(const Handle_Prs2d_Tolerance &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Tolerance(const Prs2d_Tolerance *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Tolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Tolerance {
	Prs2d_Tolerance* GetObject() {
	return (Prs2d_Tolerance*)$self->Access();
	}
};
%extend Handle_Prs2d_Tolerance {
	~Handle_Prs2d_Tolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Tolerance\n");}
	}
};

%nodefaultctor Handle_Prs2d_Flatness;
class Handle_Prs2d_Flatness : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Flatness();
		%feature("autodoc", "1");
		Handle_Prs2d_Flatness(const Handle_Prs2d_Flatness &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Flatness(const Prs2d_Flatness *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Flatness const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Flatness {
	Prs2d_Flatness* GetObject() {
	return (Prs2d_Flatness*)$self->Access();
	}
};
%extend Handle_Prs2d_Flatness {
	~Handle_Prs2d_Flatness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Flatness\n");}
	}
};

%nodefaultctor Handle_Prs2d_SurfProfile;
class Handle_Prs2d_SurfProfile : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_SurfProfile();
		%feature("autodoc", "1");
		Handle_Prs2d_SurfProfile(const Handle_Prs2d_SurfProfile &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_SurfProfile(const Prs2d_SurfProfile *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_SurfProfile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_SurfProfile {
	Prs2d_SurfProfile* GetObject() {
	return (Prs2d_SurfProfile*)$self->Access();
	}
};
%extend Handle_Prs2d_SurfProfile {
	~Handle_Prs2d_SurfProfile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_SurfProfile\n");}
	}
};

%nodefaultctor Handle_Prs2d_Dimension;
class Handle_Prs2d_Dimension : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Dimension();
		%feature("autodoc", "1");
		Handle_Prs2d_Dimension(const Handle_Prs2d_Dimension &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Dimension(const Prs2d_Dimension *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Dimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Dimension {
	Prs2d_Dimension* GetObject() {
	return (Prs2d_Dimension*)$self->Access();
	}
};
%extend Handle_Prs2d_Dimension {
	~Handle_Prs2d_Dimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Dimension\n");}
	}
};

%nodefaultctor Handle_Prs2d_Repere;
class Handle_Prs2d_Repere : public Handle_Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Repere();
		%feature("autodoc", "1");
		Handle_Prs2d_Repere(const Handle_Prs2d_Repere &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Repere(const Prs2d_Repere *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Repere const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Repere {
	Prs2d_Repere* GetObject() {
	return (Prs2d_Repere*)$self->Access();
	}
};
%extend Handle_Prs2d_Repere {
	~Handle_Prs2d_Repere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Repere\n");}
	}
};

%nodefaultctor Handle_Prs2d_Axis;
class Handle_Prs2d_Axis : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Axis();
		%feature("autodoc", "1");
		Handle_Prs2d_Axis(const Handle_Prs2d_Axis &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Axis(const Prs2d_Axis *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Axis const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Axis {
	Prs2d_Axis* GetObject() {
	return (Prs2d_Axis*)$self->Access();
	}
};
%extend Handle_Prs2d_Axis {
	~Handle_Prs2d_Axis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Axis\n");}
	}
};

%nodefaultctor Handle_Prs2d_Radius;
class Handle_Prs2d_Radius : public Handle_Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Radius();
		%feature("autodoc", "1");
		Handle_Prs2d_Radius(const Handle_Prs2d_Radius &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Radius(const Prs2d_Radius *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Radius const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Radius {
	Prs2d_Radius* GetObject() {
	return (Prs2d_Radius*)$self->Access();
	}
};
%extend Handle_Prs2d_Radius {
	~Handle_Prs2d_Radius() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Radius\n");}
	}
};

%nodefaultctor Handle_Prs2d_AspectRoot;
class Handle_Prs2d_AspectRoot : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot();
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot(const Handle_Prs2d_AspectRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot(const Prs2d_AspectRoot *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_AspectRoot {
	Prs2d_AspectRoot* GetObject() {
	return (Prs2d_AspectRoot*)$self->Access();
	}
};
%extend Handle_Prs2d_AspectRoot {
	~Handle_Prs2d_AspectRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_AspectRoot\n");}
	}
};

%nodefaultctor Handle_Prs2d_AspectFramedText;
class Handle_Prs2d_AspectFramedText : public Handle_Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_AspectFramedText();
		%feature("autodoc", "1");
		Handle_Prs2d_AspectFramedText(const Handle_Prs2d_AspectFramedText &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectFramedText(const Prs2d_AspectFramedText *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectFramedText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_AspectFramedText {
	Prs2d_AspectFramedText* GetObject() {
	return (Prs2d_AspectFramedText*)$self->Access();
	}
};
%extend Handle_Prs2d_AspectFramedText {
	~Handle_Prs2d_AspectFramedText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_AspectFramedText\n");}
	}
};

%nodefaultctor Handle_Prs2d_DrawSymbol;
class Handle_Prs2d_DrawSymbol : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_DrawSymbol();
		%feature("autodoc", "1");
		Handle_Prs2d_DrawSymbol(const Handle_Prs2d_DrawSymbol &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_DrawSymbol(const Prs2d_DrawSymbol *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_DrawSymbol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_DrawSymbol {
	Prs2d_DrawSymbol* GetObject() {
	return (Prs2d_DrawSymbol*)$self->Access();
	}
};
%extend Handle_Prs2d_DrawSymbol {
	~Handle_Prs2d_DrawSymbol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_DrawSymbol\n");}
	}
};

%nodefaultctor Handle_Prs2d_Cylindric;
class Handle_Prs2d_Cylindric : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Cylindric();
		%feature("autodoc", "1");
		Handle_Prs2d_Cylindric(const Handle_Prs2d_Cylindric &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Cylindric(const Prs2d_Cylindric *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Cylindric const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Cylindric {
	Prs2d_Cylindric* GetObject() {
	return (Prs2d_Cylindric*)$self->Access();
	}
};
%extend Handle_Prs2d_Cylindric {
	~Handle_Prs2d_Cylindric() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Cylindric\n");}
	}
};

%nodefaultctor Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot;
class Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot();
		%feature("autodoc", "1");
		Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot(const Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot(const Prs2d_DataMapNodeOfDataMapOfAspectRoot *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot {
	Prs2d_DataMapNodeOfDataMapOfAspectRoot* GetObject() {
	return (Prs2d_DataMapNodeOfDataMapOfAspectRoot*)$self->Access();
	}
};
%extend Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot {
	~Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot\n");}
	}
};

%nodefaultctor Handle_Prs2d_Diameter;
class Handle_Prs2d_Diameter : public Handle_Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Diameter();
		%feature("autodoc", "1");
		Handle_Prs2d_Diameter(const Handle_Prs2d_Diameter &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Diameter(const Prs2d_Diameter *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Diameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Diameter {
	Prs2d_Diameter* GetObject() {
	return (Prs2d_Diameter*)$self->Access();
	}
};
%extend Handle_Prs2d_Diameter {
	~Handle_Prs2d_Diameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Diameter\n");}
	}
};

%nodefaultctor Handle_Prs2d_Drawer;
class Handle_Prs2d_Drawer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Drawer();
		%feature("autodoc", "1");
		Handle_Prs2d_Drawer(const Handle_Prs2d_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Drawer(const Prs2d_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Drawer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Drawer {
	Prs2d_Drawer* GetObject() {
	return (Prs2d_Drawer*)$self->Access();
	}
};
%extend Handle_Prs2d_Drawer {
	~Handle_Prs2d_Drawer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Drawer\n");}
	}
};

%nodefaultctor Handle_Prs2d_Length;
class Handle_Prs2d_Length : public Handle_Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Length();
		%feature("autodoc", "1");
		Handle_Prs2d_Length(const Handle_Prs2d_Length &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Length(const Prs2d_Length *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Length const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Length {
	Prs2d_Length* GetObject() {
	return (Prs2d_Length*)$self->Access();
	}
};
%extend Handle_Prs2d_Length {
	~Handle_Prs2d_Length() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Length\n");}
	}
};

%nodefaultctor Handle_Prs2d_Taper;
class Handle_Prs2d_Taper : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Taper();
		%feature("autodoc", "1");
		Handle_Prs2d_Taper(const Handle_Prs2d_Taper &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Taper(const Prs2d_Taper *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Taper const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Taper {
	Prs2d_Taper* GetObject() {
	return (Prs2d_Taper*)$self->Access();
	}
};
%extend Handle_Prs2d_Taper {
	~Handle_Prs2d_Taper() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Taper\n");}
	}
};

%nodefaultctor Handle_Prs2d_Arrow;
class Handle_Prs2d_Arrow : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Arrow();
		%feature("autodoc", "1");
		Handle_Prs2d_Arrow(const Handle_Prs2d_Arrow &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Arrow(const Prs2d_Arrow *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Arrow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Arrow {
	Prs2d_Arrow* GetObject() {
	return (Prs2d_Arrow*)$self->Access();
	}
};
%extend Handle_Prs2d_Arrow {
	~Handle_Prs2d_Arrow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Arrow\n");}
	}
};

%nodefaultctor Handle_Prs2d_ToleranceFrame;
class Handle_Prs2d_ToleranceFrame : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_ToleranceFrame();
		%feature("autodoc", "1");
		Handle_Prs2d_ToleranceFrame(const Handle_Prs2d_ToleranceFrame &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_ToleranceFrame(const Prs2d_ToleranceFrame *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_ToleranceFrame const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_ToleranceFrame {
	Prs2d_ToleranceFrame* GetObject() {
	return (Prs2d_ToleranceFrame*)$self->Access();
	}
};
%extend Handle_Prs2d_ToleranceFrame {
	~Handle_Prs2d_ToleranceFrame() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_ToleranceFrame\n");}
	}
};

%nodefaultctor Handle_Prs2d_SymCircular;
class Handle_Prs2d_SymCircular : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_SymCircular();
		%feature("autodoc", "1");
		Handle_Prs2d_SymCircular(const Handle_Prs2d_SymCircular &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_SymCircular(const Prs2d_SymCircular *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_SymCircular const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_SymCircular {
	Prs2d_SymCircular* GetObject() {
	return (Prs2d_SymCircular*)$self->Access();
	}
};
%extend Handle_Prs2d_SymCircular {
	~Handle_Prs2d_SymCircular() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_SymCircular\n");}
	}
};

%nodefaultctor Handle_Prs2d_Position;
class Handle_Prs2d_Position : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Position();
		%feature("autodoc", "1");
		Handle_Prs2d_Position(const Handle_Prs2d_Position &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Position(const Prs2d_Position *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Position const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Position {
	Prs2d_Position* GetObject() {
	return (Prs2d_Position*)$self->Access();
	}
};
%extend Handle_Prs2d_Position {
	~Handle_Prs2d_Position() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Position\n");}
	}
};

%nodefaultctor Handle_Prs2d_Concentric;
class Handle_Prs2d_Concentric : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Concentric();
		%feature("autodoc", "1");
		Handle_Prs2d_Concentric(const Handle_Prs2d_Concentric &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Concentric(const Prs2d_Concentric *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Concentric const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Concentric {
	Prs2d_Concentric* GetObject() {
	return (Prs2d_Concentric*)$self->Access();
	}
};
%extend Handle_Prs2d_Concentric {
	~Handle_Prs2d_Concentric() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Concentric\n");}
	}
};

%nodefaultctor Handle_Prs2d_Perpendicular;
class Handle_Prs2d_Perpendicular : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Perpendicular();
		%feature("autodoc", "1");
		Handle_Prs2d_Perpendicular(const Handle_Prs2d_Perpendicular &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Perpendicular(const Prs2d_Perpendicular *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Perpendicular const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Perpendicular {
	Prs2d_Perpendicular* GetObject() {
	return (Prs2d_Perpendicular*)$self->Access();
	}
};
%extend Handle_Prs2d_Perpendicular {
	~Handle_Prs2d_Perpendicular() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Perpendicular\n");}
	}
};

%nodefaultctor Handle_Prs2d_LineProfile;
class Handle_Prs2d_LineProfile : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_LineProfile();
		%feature("autodoc", "1");
		Handle_Prs2d_LineProfile(const Handle_Prs2d_LineProfile &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_LineProfile(const Prs2d_LineProfile *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_LineProfile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_LineProfile {
	Prs2d_LineProfile* GetObject() {
	return (Prs2d_LineProfile*)$self->Access();
	}
};
%extend Handle_Prs2d_LineProfile {
	~Handle_Prs2d_LineProfile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_LineProfile\n");}
	}
};

%nodefaultctor Handle_Prs2d_AspectHidingText;
class Handle_Prs2d_AspectHidingText : public Handle_Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingText();
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingText(const Handle_Prs2d_AspectHidingText &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingText(const Prs2d_AspectHidingText *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_AspectHidingText {
	Prs2d_AspectHidingText* GetObject() {
	return (Prs2d_AspectHidingText*)$self->Access();
	}
};
%extend Handle_Prs2d_AspectHidingText {
	~Handle_Prs2d_AspectHidingText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_AspectHidingText\n");}
	}
};

%nodefaultctor Handle_Prs2d_RadiusIndep;
class Handle_Prs2d_RadiusIndep : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_RadiusIndep();
		%feature("autodoc", "1");
		Handle_Prs2d_RadiusIndep(const Handle_Prs2d_RadiusIndep &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_RadiusIndep(const Prs2d_RadiusIndep *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_RadiusIndep const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_RadiusIndep {
	Prs2d_RadiusIndep* GetObject() {
	return (Prs2d_RadiusIndep*)$self->Access();
	}
};
%extend Handle_Prs2d_RadiusIndep {
	~Handle_Prs2d_RadiusIndep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_RadiusIndep\n");}
	}
};

%nodefaultctor Handle_Prs2d_Angularity;
class Handle_Prs2d_Angularity : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Angularity();
		%feature("autodoc", "1");
		Handle_Prs2d_Angularity(const Handle_Prs2d_Angularity &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Angularity(const Prs2d_Angularity *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Angularity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Angularity {
	Prs2d_Angularity* GetObject() {
	return (Prs2d_Angularity*)$self->Access();
	}
};
%extend Handle_Prs2d_Angularity {
	~Handle_Prs2d_Angularity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Angularity\n");}
	}
};

%nodefaultctor Handle_Prs2d_Symmetry;
class Handle_Prs2d_Symmetry : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Symmetry();
		%feature("autodoc", "1");
		Handle_Prs2d_Symmetry(const Handle_Prs2d_Symmetry &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Symmetry(const Prs2d_Symmetry *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Symmetry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Symmetry {
	Prs2d_Symmetry* GetObject() {
	return (Prs2d_Symmetry*)$self->Access();
	}
};
%extend Handle_Prs2d_Symmetry {
	~Handle_Prs2d_Symmetry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Symmetry\n");}
	}
};

%nodefaultctor Handle_Prs2d_Circularity;
class Handle_Prs2d_Circularity : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Circularity();
		%feature("autodoc", "1");
		Handle_Prs2d_Circularity(const Handle_Prs2d_Circularity &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Circularity(const Prs2d_Circularity *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Circularity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Circularity {
	Prs2d_Circularity* GetObject() {
	return (Prs2d_Circularity*)$self->Access();
	}
};
%extend Handle_Prs2d_Circularity {
	~Handle_Prs2d_Circularity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Circularity\n");}
	}
};

%nodefaultctor Handle_Prs2d_Straightness;
class Handle_Prs2d_Straightness : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Straightness();
		%feature("autodoc", "1");
		Handle_Prs2d_Straightness(const Handle_Prs2d_Straightness &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Straightness(const Prs2d_Straightness *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Straightness const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Straightness {
	Prs2d_Straightness* GetObject() {
	return (Prs2d_Straightness*)$self->Access();
	}
};
%extend Handle_Prs2d_Straightness {
	~Handle_Prs2d_Straightness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Straightness\n");}
	}
};

%nodefaultctor Handle_Prs2d_SymbolDefinitionError;
class Handle_Prs2d_SymbolDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_SymbolDefinitionError();
		%feature("autodoc", "1");
		Handle_Prs2d_SymbolDefinitionError(const Handle_Prs2d_SymbolDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_SymbolDefinitionError(const Prs2d_SymbolDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_SymbolDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_SymbolDefinitionError {
	Prs2d_SymbolDefinitionError* GetObject() {
	return (Prs2d_SymbolDefinitionError*)$self->Access();
	}
};
%extend Handle_Prs2d_SymbolDefinitionError {
	~Handle_Prs2d_SymbolDefinitionError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_SymbolDefinitionError\n");}
	}
};

%nodefaultctor Handle_Prs2d_AspectHidingPoly;
class Handle_Prs2d_AspectHidingPoly : public Handle_Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingPoly();
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingPoly(const Handle_Prs2d_AspectHidingPoly &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingPoly(const Prs2d_AspectHidingPoly *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectHidingPoly const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_AspectHidingPoly {
	Prs2d_AspectHidingPoly* GetObject() {
	return (Prs2d_AspectHidingPoly*)$self->Access();
	}
};
%extend Handle_Prs2d_AspectHidingPoly {
	~Handle_Prs2d_AspectHidingPoly() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_AspectHidingPoly\n");}
	}
};

%nodefaultctor Handle_Prs2d_Point;
class Handle_Prs2d_Point : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Point();
		%feature("autodoc", "1");
		Handle_Prs2d_Point(const Handle_Prs2d_Point &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Point(const Prs2d_Point *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Point const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Point {
	Prs2d_Point* GetObject() {
	return (Prs2d_Point*)$self->Access();
	}
};
%extend Handle_Prs2d_Point {
	~Handle_Prs2d_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Point\n");}
	}
};

%nodefaultctor Handle_Prs2d_AspectText;
class Handle_Prs2d_AspectText : public Handle_Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_AspectText();
		%feature("autodoc", "1");
		Handle_Prs2d_AspectText(const Handle_Prs2d_AspectText &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectText(const Prs2d_AspectText *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_AspectText {
	Prs2d_AspectText* GetObject() {
	return (Prs2d_AspectText*)$self->Access();
	}
};
%extend Handle_Prs2d_AspectText {
	~Handle_Prs2d_AspectText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_AspectText\n");}
	}
};

%nodefaultctor Handle_Prs2d_Parallelism;
class Handle_Prs2d_Parallelism : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Parallelism();
		%feature("autodoc", "1");
		Handle_Prs2d_Parallelism(const Handle_Prs2d_Parallelism &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Parallelism(const Prs2d_Parallelism *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Parallelism const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Parallelism {
	Prs2d_Parallelism* GetObject() {
	return (Prs2d_Parallelism*)$self->Access();
	}
};
%extend Handle_Prs2d_Parallelism {
	~Handle_Prs2d_Parallelism() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Parallelism\n");}
	}
};

%nodefaultctor Handle_Prs2d_SymTotal;
class Handle_Prs2d_SymTotal : public Handle_Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_SymTotal();
		%feature("autodoc", "1");
		Handle_Prs2d_SymTotal(const Handle_Prs2d_SymTotal &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_SymTotal(const Prs2d_SymTotal *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_SymTotal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_SymTotal {
	Prs2d_SymTotal* GetObject() {
	return (Prs2d_SymTotal*)$self->Access();
	}
};
%extend Handle_Prs2d_SymTotal {
	~Handle_Prs2d_SymTotal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_SymTotal\n");}
	}
};

%nodefaultctor Handle_Prs2d_Angle;
class Handle_Prs2d_Angle : public Handle_Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_Angle();
		%feature("autodoc", "1");
		Handle_Prs2d_Angle(const Handle_Prs2d_Angle &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_Angle(const Prs2d_Angle *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_Angle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_Angle {
	Prs2d_Angle* GetObject() {
	return (Prs2d_Angle*)$self->Access();
	}
};
%extend Handle_Prs2d_Angle {
	~Handle_Prs2d_Angle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_Angle\n");}
	}
};

%nodefaultctor Handle_Prs2d_AspectLine;
class Handle_Prs2d_AspectLine : public Handle_Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Handle_Prs2d_AspectLine();
		%feature("autodoc", "1");
		Handle_Prs2d_AspectLine(const Handle_Prs2d_AspectLine &aHandle);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectLine(const Prs2d_AspectLine *anItem);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Prs2d_AspectLine {
	Prs2d_AspectLine* GetObject() {
	return (Prs2d_AspectLine*)$self->Access();
	}
};
%extend Handle_Prs2d_AspectLine {
	~Handle_Prs2d_AspectLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_Prs2d_AspectLine\n");}
	}
};

%nodefaultctor Prs2d_Tolerance;
class Prs2d_Tolerance : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real aX, const Standard_Real aY);
		%feature("autodoc", "1");
		void SetSize(const Standard_Real aLen);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Tolerance {
	Handle_Prs2d_Tolerance GetHandle() {
	return *(Handle_Prs2d_Tolerance*) &$self;
	}
};
%extend Prs2d_Tolerance {
	~Prs2d_Tolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Tolerance\n");}
	}
};

%nodefaultctor Prs2d_LineProfile;
class Prs2d_LineProfile : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_LineProfile(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;

};
%extend Prs2d_LineProfile {
	Handle_Prs2d_LineProfile GetHandle() {
	return *(Handle_Prs2d_LineProfile*) &$self;
	}
};
%extend Prs2d_LineProfile {
	~Prs2d_LineProfile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_LineProfile\n");}
	}
};

%nodefaultctor Prs2d_AspectRoot;
class Prs2d_AspectRoot : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Prs2d_AspectName GetAspectName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_AspectRoot {
	Handle_Prs2d_AspectRoot GetHandle() {
	return *(Handle_Prs2d_AspectRoot*) &$self;
	}
};
%extend Prs2d_AspectRoot {
	~Prs2d_AspectRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_AspectRoot\n");}
	}
};

%nodefaultctor Prs2d_AspectHidingText;
class Prs2d_AspectHidingText : public Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Prs2d_AspectHidingText(const Quantity_NameOfColor ColorInd, const Quantity_NameOfColor HidingColorInd, const Quantity_NameOfColor FrameColorInd, const Aspect_WidthOfLine FrameWidthInd, const Aspect_TypeOfFont FontInd, const Standard_ShortReal aSlantInd, const Standard_ShortReal aHScaleInd, const Standard_ShortReal aWScaleInd, const Standard_Boolean isUnderlined);
		%feature("autodoc", "1");
		void SetColorOfText(const Quantity_NameOfColor aColorInd);
		%feature("autodoc", "1");
		void SetHidingColorOfText(const Quantity_NameOfColor aHidColorInd);
		%feature("autodoc", "1");
		void SetFrameColorOfText(const Quantity_NameOfColor aFrameColorInd);
		%feature("autodoc", "1");
		void SetFrameWidthOfText(const Aspect_WidthOfLine aFrameWidthInd);
		%feature("autodoc", "1");
		void SetFontOfText(const Aspect_TypeOfFont aFontInd);
		%feature("autodoc", "1");
		void SetSlant(const Standard_ShortReal aSlantInd);
		%feature("autodoc", "1");
		void SetHScale(const Standard_ShortReal aHScaleInd);
		%feature("autodoc", "1");
		void SetWScale(const Standard_ShortReal aWScaleInd);
		%feature("autodoc", "1");
		void SetUnderlined(const Standard_Boolean anIsUnderline);
		%feature("autodoc", "1");
		void Values(Quantity_NameOfColor & ColorInd, Quantity_NameOfColor & HidingColorInd, Quantity_NameOfColor & FrameColorInd, Aspect_WidthOfLine & FrameWidthInd, Aspect_TypeOfFont & FontInd, Standard_ShortReal & aSlantInd, Standard_ShortReal & aHScaleInd, Standard_ShortReal & aWScaleInd, Standard_Boolean & isUnderlined) const;

};
%extend Prs2d_AspectHidingText {
	Handle_Prs2d_AspectHidingText GetHandle() {
	return *(Handle_Prs2d_AspectHidingText*) &$self;
	}
};
%extend Prs2d_AspectHidingText {
	~Prs2d_AspectHidingText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_AspectHidingText\n");}
	}
};

%nodefaultctor Prs2d_DataMapOfAspectRoot;
class Prs2d_DataMapOfAspectRoot : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Prs2d_DataMapOfAspectRoot(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Prs2d_DataMapOfAspectRoot & Assign(const Prs2d_DataMapOfAspectRoot &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_Prs2d_AspectRoot &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_Prs2d_AspectRoot & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_Prs2d_AspectRoot & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot & operator()(const Standard_Integer &K);

};
%extend Prs2d_DataMapOfAspectRoot {
	~Prs2d_DataMapOfAspectRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_DataMapOfAspectRoot\n");}
	}
};

%nodefaultctor Prs2d_DataMapIteratorOfDataMapOfAspectRoot;
class Prs2d_DataMapIteratorOfDataMapOfAspectRoot : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Prs2d_DataMapIteratorOfDataMapOfAspectRoot();
		%feature("autodoc", "1");
		Prs2d_DataMapIteratorOfDataMapOfAspectRoot(const Prs2d_DataMapOfAspectRoot &aMap);
		%feature("autodoc", "1");
		void Initialize(const Prs2d_DataMapOfAspectRoot &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_Prs2d_AspectRoot & Value() const;

};
%extend Prs2d_DataMapIteratorOfDataMapOfAspectRoot {
	~Prs2d_DataMapIteratorOfDataMapOfAspectRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_DataMapIteratorOfDataMapOfAspectRoot\n");}
	}
};

%nodefaultctor Prs2d_Dimension;
class Prs2d_Dimension : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		void SetText(const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		void SetTextScale(const Standard_Real aTS);
		%feature("autodoc", "1");
		void SetTextFont(const Standard_Integer aTF);
		%feature("autodoc", "1");
		void SetFontOfSymb(const Standard_Integer aFS);
		%feature("autodoc", "1");
		void SetArrowType(const Prs2d_TypeOfArrow anArrT);
		%feature("autodoc", "1");
		void SetArrowSides(const Prs2d_ArrowSide anArrS);
		%feature("autodoc", "1");
		void DrawSymbol(const Standard_Boolean isDraw);
		%feature("autodoc", "1");
		void SetSymbolCode(const Standard_Integer aCode);
		%feature("autodoc", "1");
		void SetTextAbsPos(const Standard_Real Xp, const Standard_Real Yp);
		%feature("autodoc", "1");
		void SetTextAbsAngle(const Standard_Real Ap);
		%feature("autodoc", "1");
		void SetTextRelPos(const Standard_Real Xp, const Standard_Real Yp);
		%feature("autodoc", "1");
		void SetTextRelAngle(const Standard_Real Ap);
		%feature("autodoc", "1");
		TCollection_ExtendedString Text() const;
		%feature("autodoc", "1");
		Standard_Real TextAbsX() const;
		%feature("autodoc", "1");
		Standard_Real TextAbsY() const;
		%feature("autodoc", "1");
		Standard_Real TextAbsAngle() const;
		%feature("autodoc", "1");
		Standard_Real TextRelH() const;
		%feature("autodoc", "1");
		Standard_Real TextRelV() const;
		%feature("autodoc", "1");
		Standard_Real TextRelAngle() const;
		%feature("autodoc", "1");
		Standard_Real TextScale() const;
		%feature("autodoc", "1");
		Standard_Integer TextFont() const;
		%feature("autodoc", "1");
		Standard_Integer FontOfSymb() const;
		%feature("autodoc", "1");
		Prs2d_TypeOfArrow ArrowType() const;
		%feature("autodoc", "1");
		Prs2d_ArrowSide ArrowSides() const;
		%feature("autodoc", "1");
		Standard_Real ArrowAngle() const;
		%feature("autodoc", "1");
		Standard_Real ArrowLength() const;
		%feature("autodoc", "1");
		Standard_Boolean ArrowIsReversed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDrawSymbol() const;
		%feature("autodoc", "1");
		Standard_Integer SymbolCode() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d const ArrayOfFirstArrowPnt() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d const ArrayOfSecondArrowPnt() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Dimension {
	Handle_Prs2d_Dimension GetHandle() {
	return *(Handle_Prs2d_Dimension*) &$self;
	}
};
%extend Prs2d_Dimension {
	~Prs2d_Dimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Dimension\n");}
	}
};

%nodefaultctor Prs2d_Radius;
class Prs2d_Radius : public Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Prs2d_Radius(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Pnt2d &anAttachPnt, const gp_Circ2d &aCircle, const TCollection_ExtendedString &aText, const Standard_Real aTxtScale=1.0e+1, const Standard_Real anArrAngle=2.0e+1, const Standard_Real anArrLength=2.5e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Prs2d_ArrowSide anArrow=Prs2d_AS_BOTHAR, const Standard_Boolean IsReverseArrow=0);
		%feature("autodoc", "1");
		void Values(gp_Pnt2d & anAttPnt, gp_Circ2d & aCirc) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;

};
%extend Prs2d_Radius {
	Handle_Prs2d_Radius GetHandle() {
	return *(Handle_Prs2d_Radius*) &$self;
	}
};
%extend Prs2d_Radius {
	~Prs2d_Radius() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Radius\n");}
	}
};

%nodefaultctor Prs2d_Concentric;
class Prs2d_Concentric : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Concentric(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Concentric {
	Handle_Prs2d_Concentric GetHandle() {
	return *(Handle_Prs2d_Concentric*) &$self;
	}
};
%extend Prs2d_Concentric {
	~Prs2d_Concentric() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Concentric\n");}
	}
};

%nodefaultctor Prs2d_SymCircular;
class Prs2d_SymCircular : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_SymCircular(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_SymCircular {
	Handle_Prs2d_SymCircular GetHandle() {
	return *(Handle_Prs2d_SymCircular*) &$self;
	}
};
%extend Prs2d_SymCircular {
	~Prs2d_SymCircular() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_SymCircular\n");}
	}
};

%nodefaultctor Prs2d_Angularity;
class Prs2d_Angularity : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Angularity(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Angularity {
	Handle_Prs2d_Angularity GetHandle() {
	return *(Handle_Prs2d_Angularity*) &$self;
	}
};
%extend Prs2d_Angularity {
	~Prs2d_Angularity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Angularity\n");}
	}
};

%nodefaultctor Prs2d_Axis;
class Prs2d_Axis : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Prs2d_Axis(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Ax22d &anAx, const Standard_Real aLength, const Standard_Real anArrAngle=3.0e+1, const Standard_Real anArrLength=3.0e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Standard_Real aTxtScale=1.0e+1);
		%feature("autodoc", "1");
		Prs2d_Axis(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Ax2d &anAx, const Standard_Real aLength, const Standard_Real anArrAngle=3.0e+1, const Standard_Real anArrLength=3.0e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Standard_Real aTxtScale=1.0e+1);
		%feature("autodoc", "1");
		Prs2d_Axis(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Lin2d &aLine, const Standard_Real aLength, const Standard_Real anArrAngle=3.0e+1, const Standard_Real anArrLength=3.0e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Standard_Real aTxtScale=1.0e+1);
		%feature("autodoc", "1");
		Prs2d_TypeOfArrow TypeOfArrow() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d const ArrayOfPnt2d() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d const ArrayOfXArrowPnt2d() const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d const ArrayOfYArrowPnt2d() const;
		%feature("autodoc", "1");
		Standard_Real TextScale() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Axis {
	Handle_Prs2d_Axis GetHandle() {
	return *(Handle_Prs2d_Axis*) &$self;
	}
};
%extend Prs2d_Axis {
	~Prs2d_Axis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Axis\n");}
	}
};

%nodefaultctor Prs2d_Point;
class Prs2d_Point : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Prs2d_Point(const Handle_Graphic2d_GraphicObject &aGO, const gp_Pnt2d &aPnt, const Aspect_TypeOfMarker aTOM, const Quantity_Length aWSize=2.0e+0, const Quantity_Length aHSize=2.0e+0, const Quantity_PlaneAngle anAngle=0.0);
		%feature("autodoc", "1");
		void SetPoint(const gp_Pnt2d &aPnt);
		%feature("autodoc", "1");
		void SetMarker(const Aspect_TypeOfMarker aTOM);
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer anInd);
		%feature("autodoc", "1");
		gp_Pnt2d Point() const;
		%feature("autodoc", "1");
		Aspect_TypeOfMarker Marker() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Point {
	Handle_Prs2d_Point GetHandle() {
	return *(Handle_Prs2d_Point*) &$self;
	}
};
%extend Prs2d_Point {
	~Prs2d_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Point\n");}
	}
};

%nodefaultctor Prs2d_AspectHidingPoly;
class Prs2d_AspectHidingPoly : public Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Prs2d_AspectHidingPoly(const Quantity_NameOfColor HidingColorInd, const Quantity_NameOfColor FrameColorInd, const Aspect_TypeOfLine FrameTypeInd, const Aspect_WidthOfLine FrameWidthInd);
		%feature("autodoc", "1");
		void SetHidingColor(const Quantity_NameOfColor aColorInd);
		%feature("autodoc", "1");
		void SetFrameColor(const Quantity_NameOfColor aFrameColorInd);
		%feature("autodoc", "1");
		void SetFrameType(const Aspect_TypeOfLine aFrameTypeInd);
		%feature("autodoc", "1");
		void SetFrameWidth(const Aspect_WidthOfLine aFrameWidthInd);
		%feature("autodoc", "1");
		void Values(Quantity_NameOfColor & HidingColorInd, Quantity_NameOfColor & FrameColorInd, Aspect_TypeOfLine & FrameTypeInd, Aspect_WidthOfLine & FrameWidthInd) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_AspectHidingPoly {
	Handle_Prs2d_AspectHidingPoly GetHandle() {
	return *(Handle_Prs2d_AspectHidingPoly*) &$self;
	}
};
%extend Prs2d_AspectHidingPoly {
	~Prs2d_AspectHidingPoly() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_AspectHidingPoly\n");}
	}
};

%nodefaultctor Prs2d_Cylindric;
class Prs2d_Cylindric : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Cylindric(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Cylindric {
	Handle_Prs2d_Cylindric GetHandle() {
	return *(Handle_Prs2d_Cylindric*) &$self;
	}
};
%extend Prs2d_Cylindric {
	~Prs2d_Cylindric() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Cylindric\n");}
	}
};

%nodefaultctor Prs2d_Straightness;
class Prs2d_Straightness : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Straightness(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Straightness {
	Handle_Prs2d_Straightness GetHandle() {
	return *(Handle_Prs2d_Straightness*) &$self;
	}
};
%extend Prs2d_Straightness {
	~Prs2d_Straightness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Straightness\n");}
	}
};

%nodefaultctor Prs2d_Position;
class Prs2d_Position : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Position(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Position {
	Handle_Prs2d_Position GetHandle() {
	return *(Handle_Prs2d_Position*) &$self;
	}
};
%extend Prs2d_Position {
	~Prs2d_Position() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Position\n");}
	}
};

%nodefaultctor Prs2d_DataMapNodeOfDataMapOfAspectRoot;
class Prs2d_DataMapNodeOfDataMapOfAspectRoot : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Prs2d_DataMapNodeOfDataMapOfAspectRoot(const Standard_Integer &K, const Handle_Prs2d_AspectRoot &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_Prs2d_AspectRoot & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_DataMapNodeOfDataMapOfAspectRoot {
	Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot GetHandle() {
	return *(Handle_Prs2d_DataMapNodeOfDataMapOfAspectRoot*) &$self;
	}
};
%extend Prs2d_DataMapNodeOfDataMapOfAspectRoot {
	~Prs2d_DataMapNodeOfDataMapOfAspectRoot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_DataMapNodeOfDataMapOfAspectRoot\n");}
	}
};

%nodefaultctor Prs2d_RadiusIndep;
class Prs2d_RadiusIndep : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Prs2d_RadiusIndep(const Handle_Graphic2d_GraphicObject &aGO, const gp_Pnt2d &anAttachPnt, const gp_Pnt2d &aCenter, const Standard_Real aRad, const TCollection_ExtendedString &aText, const Standard_Real aLength=1.0e+1, const Prs2d_TypeOfRadius aTypeRad=Prs2d_TOR_STANDARD, const Standard_Real aTxtScale=1.0e+0);
		%feature("autodoc", "1");
		void Values(gp_Pnt2d & anAttPnt, gp_Pnt2d & aCenter, Standard_Real &OutValue, TCollection_ExtendedString & aText, Standard_Real &OutValue, Prs2d_TypeOfRadius & aTypeRad, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetText(const TCollection_ExtendedString &aTxt);
		%feature("autodoc", "1");
		void SetTextScale(const Standard_Real aTxtScale);
		%feature("autodoc", "1");
		void SetTextFont(const Standard_Integer aTF);
		%feature("autodoc", "1");
		void SetFontOfSymb(const Standard_Integer aFS);
		%feature("autodoc", "1");
		void DrawSymbol(const Standard_Boolean isDraw);
		%feature("autodoc", "1");
		void SetSymbolCode(const Standard_Integer aCode);
		%feature("autodoc", "1");
		Standard_Integer TextFont() const;
		%feature("autodoc", "1");
		Standard_Integer FontOfSymb() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDrawSymbol() const;
		%feature("autodoc", "1");
		Standard_Integer SymbolCode() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_RadiusIndep {
	Handle_Prs2d_RadiusIndep GetHandle() {
	return *(Handle_Prs2d_RadiusIndep*) &$self;
	}
};
%extend Prs2d_RadiusIndep {
	~Prs2d_RadiusIndep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_RadiusIndep\n");}
	}
};

%nodefaultctor Prs2d_Flatness;
class Prs2d_Flatness : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Flatness(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Flatness {
	Handle_Prs2d_Flatness GetHandle() {
	return *(Handle_Prs2d_Flatness*) &$self;
	}
};
%extend Prs2d_Flatness {
	~Prs2d_Flatness() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Flatness\n");}
	}
};

%nodefaultctor Prs2d_Circularity;
class Prs2d_Circularity : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Circularity(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Circularity {
	Handle_Prs2d_Circularity GetHandle() {
	return *(Handle_Prs2d_Circularity*) &$self;
	}
};
%extend Prs2d_Circularity {
	~Prs2d_Circularity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Circularity\n");}
	}
};

%nodefaultctor Prs2d_Parallelism;
class Prs2d_Parallelism : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Parallelism(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Parallelism {
	Handle_Prs2d_Parallelism GetHandle() {
	return *(Handle_Prs2d_Parallelism*) &$self;
	}
};
%extend Prs2d_Parallelism {
	~Prs2d_Parallelism() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Parallelism\n");}
	}
};

%nodefaultctor Prs2d_DrawSymbol;
class Prs2d_DrawSymbol : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Prs2d_DrawSymbol(const Handle_Graphic2d_GraphicObject &aGO, const Prs2d_TypeOfSymbol aSymbType, const Standard_Real aX, const Standard_Real aY, const Standard_Real aWidth=1.0e+1, const Standard_Real aHeight=1.0e+1, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_DrawSymbol {
	Handle_Prs2d_DrawSymbol GetHandle() {
	return *(Handle_Prs2d_DrawSymbol*) &$self;
	}
};
%extend Prs2d_DrawSymbol {
	~Prs2d_DrawSymbol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_DrawSymbol\n");}
	}
};

%nodefaultctor Prs2d_AspectText;
class Prs2d_AspectText : public Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Prs2d_AspectText(const Quantity_NameOfColor aColor=Quantity_NOC_YELLOW, const char * aFont="TABTXT03", const Quantity_Length anHeight=3.0e+0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Standard_Boolean isUnderlined=0);
		%feature("autodoc", "1");
		Prs2d_AspectText(const Quantity_Color &aColor, const Aspect_FontStyle &aFont, const Aspect_TypeOfText aType=Aspect_TOT_SOLID, const Standard_Boolean isUnderlined=0);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetFont(const Aspect_FontStyle &aFont);
		%feature("autodoc", "1");
		void SetFont(const Aspect_TypeOfFont aFont);
		%feature("autodoc", "1");
		void SetRelativeSlant(const Quantity_PlaneAngle aSlant);
		%feature("autodoc", "1");
		void SetHeight(const Quantity_Length anHeight, const Standard_Boolean isCapsHeight);
		%feature("autodoc", "1");
		void SetType(const Aspect_TypeOfText aType);
		%feature("autodoc", "1");
		void SetUnderlined(const Standard_Boolean anIsUnderline);
		%feature("autodoc", "1");
		void Values(Quantity_Color & aColor, Aspect_FontStyle & aFont, Quantity_PlaneAngle & aSlant, Aspect_TypeOfText & aType, Standard_Boolean & isUnderlined) const;
		%feature("autodoc", "1");
		Standard_Integer FontIndex() const;
		%feature("autodoc", "1");
		Standard_Integer ColorIndex() const;
		%feature("autodoc", "1");
		void SetFontIndex(const Standard_Integer anInd);
		%feature("autodoc", "1");
		void SetColorIndex(const Standard_Integer anInd);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_AspectText {
	Handle_Prs2d_AspectText GetHandle() {
	return *(Handle_Prs2d_AspectText*) &$self;
	}
};
%extend Prs2d_AspectText {
	~Prs2d_AspectText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_AspectText\n");}
	}
};

%nodefaultctor Prs2d_Symmetry;
class Prs2d_Symmetry : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Symmetry(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Symmetry {
	Handle_Prs2d_Symmetry GetHandle() {
	return *(Handle_Prs2d_Symmetry*) &$self;
	}
};
%extend Prs2d_Symmetry {
	~Prs2d_Symmetry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Symmetry\n");}
	}
};

%nodefaultctor Prs2d_AspectLine;
class Prs2d_AspectLine : public Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Prs2d_AspectLine();
		%feature("autodoc", "1");
		Prs2d_AspectLine(const Quantity_NameOfColor aColor, const Aspect_TypeOfLine aType, const Aspect_WidthOfLine aWidth, const Quantity_NameOfColor aInterColor=Quantity_NOC_YELLOW, const Graphic2d_TypeOfPolygonFilling aTypeFill=Graphic2d_TOPF_EMPTY, const Standard_Integer aTiled=0, const Standard_Boolean aDrawEdge=1);
		%feature("autodoc", "1");
		Prs2d_AspectLine(const Quantity_Color &aColor, const Aspect_TypeOfLine aType, const Aspect_WidthOfLine aWidth, const Quantity_Color &aInterColor, const Graphic2d_TypeOfPolygonFilling aTypeFill=Graphic2d_TOPF_EMPTY, const Standard_Integer aTileInd=0, const Standard_Boolean aDrawEdge=1);
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetType(const Aspect_TypeOfLine aType);
		%feature("autodoc", "1");
		void SetWidth(const Aspect_WidthOfLine aWidth);
		%feature("autodoc", "1");
		void SetInterColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void SetInterColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetTypeOfFill(const Graphic2d_TypeOfPolygonFilling aType);
		%feature("autodoc", "1");
		void SetTile(const Standard_Integer aTile);
		%feature("autodoc", "1");
		void SetDrawEdge(const Standard_Boolean aDrawEdge);
		%feature("autodoc", "1");
		void ValuesOfLine(Quantity_Color & aColor, Aspect_TypeOfLine & aType, Aspect_WidthOfLine & aWidth) const;
		%feature("autodoc", "1");
		void ValuesOfPoly(Quantity_Color & aColor, Graphic2d_TypeOfPolygonFilling & aTypeFill, Standard_Integer & aTile, Standard_Boolean & aDrawEdge) const;
		%feature("autodoc", "1");
		Standard_Integer ColorIndex() const;
		%feature("autodoc", "1");
		Standard_Integer TypeIndex() const;
		%feature("autodoc", "1");
		Standard_Integer WidthIndex() const;
		%feature("autodoc", "1");
		Standard_Integer InterColorIndex() const;
		%feature("autodoc", "1");
		void SetColorIndex(const Standard_Integer anInd);
		%feature("autodoc", "1");
		void SetTypeIndex(const Standard_Integer anInd);
		%feature("autodoc", "1");
		void SetWidthIndex(const Standard_Integer anInd);
		%feature("autodoc", "1");
		void SetIntColorInd(const Standard_Integer anInd);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_AspectLine {
	Handle_Prs2d_AspectLine GetHandle() {
	return *(Handle_Prs2d_AspectLine*) &$self;
	}
};
%extend Prs2d_AspectLine {
	~Prs2d_AspectLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_AspectLine\n");}
	}
};

%nodefaultctor Prs2d_Angle;
class Prs2d_Angle : public Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Prs2d_Angle(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Pnt2d &anAttachPnt1, const gp_Pnt2d &anAttachPnt2, const gp_Pnt2d &anAttachPnt3, const Quantity_Length aRadius, const TCollection_ExtendedString &aText, const Standard_Real aTxtScale=3.0e+0, const Standard_Real anArrAngle=1.5e+1, const Standard_Real anArrLength=1.0e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Prs2d_ArrowSide anArrow=Prs2d_AS_BOTHAR, const Standard_Boolean IsReverseArrow=0);
		%feature("autodoc", "1");
		void Values(gp_Pnt2d & aPnt1, gp_Pnt2d & aPnt2, gp_Pnt2d & aPnt3, Quantity_Length & aRad) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Angle {
	Handle_Prs2d_Angle GetHandle() {
	return *(Handle_Prs2d_Angle*) &$self;
	}
};
%extend Prs2d_Angle {
	~Prs2d_Angle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Angle\n");}
	}
};

%nodefaultctor Prs2d_Repere;
class Prs2d_Repere : public Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Prs2d_Repere(const Handle_Graphic2d_GraphicObject &aGO, const gp_Pnt2d &aPnt1, const gp_Pnt2d &aPnt2, const Standard_Real aLenBase, const TCollection_ExtendedString &aText, const Standard_Real aTxtScale=1.0e+0, const Standard_Boolean aDrawArrow=0, const Standard_Real anArrAngle=1.0e+1, const Standard_Real anArrLength=1.0e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Prs2d_ArrowSide anArrow=Prs2d_AS_BOTHAR, const Standard_Boolean IsRevArrow=0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Repere {
	Handle_Prs2d_Repere GetHandle() {
	return *(Handle_Prs2d_Repere*) &$self;
	}
};
%extend Prs2d_Repere {
	~Prs2d_Repere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Repere\n");}
	}
};

%nodefaultctor Prs2d_ToleranceFrame;
class Prs2d_ToleranceFrame : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Prs2d_ToleranceFrame(const Handle_Graphic2d_GraphicObject &aGO, const Quantity_Length aX, const Quantity_Length aY, const Quantity_Length aHeight, const Prs2d_TypeOfTolerance aTolType=Prs2d_TOT_NONE, const char * aTolTxt="", const char * aTxt1="", const char * aTxt2="", const Standard_Real anAngle=0.0, const Standard_Real aScale=1.0e+0);
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHSize);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d const ArrayOfPnt2d() const;
		%feature("autodoc", "1");
		void SetTolText(const char * aText);
		%feature("autodoc", "1");
		void SetText1(const char * aText);
		%feature("autodoc", "1");
		void SetText2(const char * aText);
		%feature("autodoc", "1");
		TCollection_ExtendedString TolText() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Text1() const;
		%feature("autodoc", "1");
		TCollection_ExtendedString Text2() const;
		%feature("autodoc", "1");
		Standard_Real TextScale() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_ToleranceFrame {
	Handle_Prs2d_ToleranceFrame GetHandle() {
	return *(Handle_Prs2d_ToleranceFrame*) &$self;
	}
};
%extend Prs2d_ToleranceFrame {
	~Prs2d_ToleranceFrame() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_ToleranceFrame\n");}
	}
};

%nodefaultctor Prs2d_Arrow;
class Prs2d_Arrow : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		Prs2d_Arrow(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Ax2d &Location, const Standard_Real OpenAngle=5.0e+0, const Standard_Real Length=5.0e+0, const Prs2d_TypeOfArrow theType=Prs2d_TOA_CLOSED);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d const ArrayOfPnt2d(const Standard_Boolean withTrsf=0) const;
		%feature("autodoc", "1");
		Prs2d_TypeOfArrow TypeOfArrow() const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Arrow {
	Handle_Prs2d_Arrow GetHandle() {
	return *(Handle_Prs2d_Arrow*) &$self;
	}
};
%extend Prs2d_Arrow {
	~Prs2d_Arrow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Arrow\n");}
	}
};

%nodefaultctor Prs2d_Taper;
class Prs2d_Taper : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Taper(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Taper {
	Handle_Prs2d_Taper GetHandle() {
	return *(Handle_Prs2d_Taper*) &$self;
	}
};
%extend Prs2d_Taper {
	~Prs2d_Taper() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Taper\n");}
	}
};

%nodefaultctor Prs2d_Drawer;
class Prs2d_Drawer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Prs2d_Drawer();
		%feature("autodoc", "1");
		virtual		Handle_Prs2d_AspectRoot FindAspect(const Prs2d_AspectName anAspectName) const;
		%feature("autodoc", "1");
		void SetAspect(const Handle_Prs2d_AspectRoot &anAspectRoot, const Prs2d_AspectName anAspectName);
		%feature("autodoc", "1");
		virtual		void SetMaxParameterValue(const Standard_Real Value);
		%feature("autodoc", "1");
		virtual		Standard_Real MaxParameterValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Drawer {
	Handle_Prs2d_Drawer GetHandle() {
	return *(Handle_Prs2d_Drawer*) &$self;
	}
};
%extend Prs2d_Drawer {
	~Prs2d_Drawer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Drawer\n");}
	}
};

%nodefaultctor Prs2d_AspectFramedText;
class Prs2d_AspectFramedText : public Prs2d_AspectRoot {
	public:
		%feature("autodoc", "1");
		Prs2d_AspectFramedText(const Quantity_NameOfColor ColorInd, const Quantity_NameOfColor FrameColorInd, const Aspect_WidthOfLine FrameWidthInd, const Aspect_TypeOfFont FontInd, const Standard_ShortReal aSlant, const Standard_ShortReal aHScale, const Standard_ShortReal aWScale, const Standard_Boolean isUnderlined);
		%feature("autodoc", "1");
		void SetColorOfText(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		void SetFrameColor(const Quantity_NameOfColor aFrameColor);
		%feature("autodoc", "1");
		void SetFrameWidth(const Aspect_WidthOfLine aFrameWidth);
		%feature("autodoc", "1");
		void SetFontOfText(const Aspect_TypeOfFont aFont);
		%feature("autodoc", "1");
		void SetSlant(const Standard_ShortReal aSlant);
		%feature("autodoc", "1");
		void SetHScale(const Standard_ShortReal aHScale);
		%feature("autodoc", "1");
		void SetWScale(const Standard_ShortReal aWScale);
		%feature("autodoc", "1");
		void SetUnderlined(const Standard_Boolean anIsUnderlined);
		%feature("autodoc", "1");
		void Values(Quantity_NameOfColor & aColorInd, Quantity_NameOfColor & aFrameColorInd, Aspect_WidthOfLine & aFrameWidthInd, Aspect_TypeOfFont & aFontInd, Standard_ShortReal & aSlant, Standard_ShortReal & aHScale, Standard_ShortReal & aWScale, Standard_Boolean & isUnderlined) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_AspectFramedText {
	Handle_Prs2d_AspectFramedText GetHandle() {
	return *(Handle_Prs2d_AspectFramedText*) &$self;
	}
};
%extend Prs2d_AspectFramedText {
	~Prs2d_AspectFramedText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_AspectFramedText\n");}
	}
};

%nodefaultctor Prs2d_SurfProfile;
class Prs2d_SurfProfile : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_SurfProfile(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_SurfProfile {
	Handle_Prs2d_SurfProfile GetHandle() {
	return *(Handle_Prs2d_SurfProfile*) &$self;
	}
};
%extend Prs2d_SurfProfile {
	~Prs2d_SurfProfile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_SurfProfile\n");}
	}
};

%nodefaultctor Prs2d_SymTotal;
class Prs2d_SymTotal : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_SymTotal(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_SymTotal {
	Handle_Prs2d_SymTotal GetHandle() {
	return *(Handle_Prs2d_SymTotal*) &$self;
	}
};
%extend Prs2d_SymTotal {
	~Prs2d_SymTotal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_SymTotal\n");}
	}
};

%nodefaultctor Prs2d_Length;
class Prs2d_Length : public Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Prs2d_Length(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Pnt2d &anAttachPnt1, const gp_Pnt2d &anAttachPnt2, const TCollection_ExtendedString &aText, const Standard_Real aTxtScale=5.0e+0, const Standard_Real aLength=0.0, const Prs2d_TypeOfDist aTypeDist=Prs2d_TOD_AUTOMATIC, const Standard_Real anArrAngle=2.0e+1, const Standard_Real anArrLength=2.5e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Prs2d_ArrowSide anArrow=Prs2d_AS_BOTHAR, const Standard_Boolean IsReverseArrow=0);
		%feature("autodoc", "1");
		Prs2d_Length(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Pnt2d &anAttachPnt, const gp_Lin2d &anAttachLin, const TCollection_ExtendedString &aText, const Standard_Real aTxtScale=1.0e+1, const Standard_Real aLenAttachLin=0.0, const Standard_Real anArrAngle=2.0e+1, const Standard_Real anArrLength=2.5e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Prs2d_ArrowSide anArrow=Prs2d_AS_BOTHAR, const Standard_Boolean IsReverseArrow=0);
		%feature("autodoc", "1");
		Prs2d_Length(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Lin2d &anAttachLin1, const gp_Lin2d &anAttachLin2, const TCollection_ExtendedString &aText, const Standard_Real aTxtScale=1.0e+1, const Standard_Real aLenAttachLin=0.0, const Standard_Real anArrAngle=2.0e+1, const Standard_Real anArrLength=2.5e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Prs2d_ArrowSide anArrow=Prs2d_AS_BOTHAR, const Standard_Boolean IsReverseArrow=0);
		%feature("autodoc", "1");
		void SetAttachLinLength(const Standard_Real aLength);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		void LineCoord(gp_Pnt2d & aFirstPnt, gp_Pnt2d & aSecondPnt) const;
		%feature("autodoc", "1");
		void CallOutCoord(gp_Pnt2d & aFirstPnt, gp_Pnt2d & aSecondPnt) const;
		%feature("autodoc", "1");
		Prs2d_TypeOfDist TypeOfDist() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Length {
	Handle_Prs2d_Length GetHandle() {
	return *(Handle_Prs2d_Length*) &$self;
	}
};
%extend Prs2d_Length {
	~Prs2d_Length() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Length\n");}
	}
};

%nodefaultctor Prs2d_SymbolDefinitionError;
class Prs2d_SymbolDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Prs2d_SymbolDefinitionError();
		%feature("autodoc", "1");
		Prs2d_SymbolDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Prs2d_SymbolDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_SymbolDefinitionError {
	Handle_Prs2d_SymbolDefinitionError GetHandle() {
	return *(Handle_Prs2d_SymbolDefinitionError*) &$self;
	}
};
%extend Prs2d_SymbolDefinitionError {
	~Prs2d_SymbolDefinitionError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_SymbolDefinitionError\n");}
	}
};

%nodefaultctor Prs2d_Perpendicular;
class Prs2d_Perpendicular : public Prs2d_Tolerance {
	public:
		%feature("autodoc", "1");
		Prs2d_Perpendicular(const Handle_Graphic2d_GraphicObject &aGO, const Standard_Real aX, const Standard_Real aY, const Standard_Real aLength=3.0e+0, const Standard_Real anAngle=0.0);
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Perpendicular {
	Handle_Prs2d_Perpendicular GetHandle() {
	return *(Handle_Prs2d_Perpendicular*) &$self;
	}
};
%extend Prs2d_Perpendicular {
	~Prs2d_Perpendicular() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Perpendicular\n");}
	}
};

%nodefaultctor Prs2d_Diameter;
class Prs2d_Diameter : public Prs2d_Dimension {
	public:
		%feature("autodoc", "1");
		Prs2d_Diameter(const Handle_Graphic2d_GraphicObject &aGraphicObject, const gp_Pnt2d &anAttachPnt, const gp_Circ2d &aCircle, const TCollection_ExtendedString &aText, const Standard_Real aTxtScale=1.0e+1, const Standard_Real anArrAngle=2.0e+1, const Standard_Real anArrLength=2.5e+1, const Prs2d_TypeOfArrow anArrType=Prs2d_TOA_OPENED, const Prs2d_ArrowSide anArrow=Prs2d_AS_BOTHAR, const Standard_Boolean IsReverseArrow=0);
		%feature("autodoc", "1");
		void Values(gp_Pnt2d & anAttPnt, gp_Circ2d & aCirc) const;
		%feature("autodoc", "1");
		virtual		void Save(Aspect_FStream & aFStream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Prs2d_Diameter {
	Handle_Prs2d_Diameter GetHandle() {
	return *(Handle_Prs2d_Diameter*) &$self;
	}
};
%extend Prs2d_Diameter {
	~Prs2d_Diameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Prs2d_Diameter\n");}
	}
};