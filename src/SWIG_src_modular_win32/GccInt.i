/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module GccInt

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


%include GccInt_dependencies.i


%include GccInt_headers.i


enum GccInt_IType {
	GccInt_Lin,
	GccInt_Cir,
	GccInt_Ell,
	GccInt_Par,
	GccInt_Hpr,
	GccInt_Pnt,
	};



%nodefaultctor Handle_GccInt_Bisec;
class Handle_GccInt_Bisec : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_GccInt_Bisec();
		%feature("autodoc", "1");
		Handle_GccInt_Bisec();
		%feature("autodoc", "1");
		Handle_GccInt_Bisec(const Handle_GccInt_Bisec &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_Bisec(const GccInt_Bisec *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_Bisec const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_Bisec {
	GccInt_Bisec* GetObject() {
	return (GccInt_Bisec*)$self->Access();
	}
};

%nodefaultctor Handle_GccInt_BLine;
class Handle_GccInt_BLine : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		~Handle_GccInt_BLine();
		%feature("autodoc", "1");
		Handle_GccInt_BLine();
		%feature("autodoc", "1");
		Handle_GccInt_BLine(const Handle_GccInt_BLine &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BLine(const GccInt_BLine *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BLine {
	GccInt_BLine* GetObject() {
	return (GccInt_BLine*)$self->Access();
	}
};

%nodefaultctor Handle_GccInt_BParab;
class Handle_GccInt_BParab : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		~Handle_GccInt_BParab();
		%feature("autodoc", "1");
		Handle_GccInt_BParab();
		%feature("autodoc", "1");
		Handle_GccInt_BParab(const Handle_GccInt_BParab &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BParab(const GccInt_BParab *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BParab const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BParab {
	GccInt_BParab* GetObject() {
	return (GccInt_BParab*)$self->Access();
	}
};

%nodefaultctor Handle_GccInt_BElips;
class Handle_GccInt_BElips : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		~Handle_GccInt_BElips();
		%feature("autodoc", "1");
		Handle_GccInt_BElips();
		%feature("autodoc", "1");
		Handle_GccInt_BElips(const Handle_GccInt_BElips &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BElips(const GccInt_BElips *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BElips const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BElips {
	GccInt_BElips* GetObject() {
	return (GccInt_BElips*)$self->Access();
	}
};

%nodefaultctor Handle_GccInt_BHyper;
class Handle_GccInt_BHyper : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		~Handle_GccInt_BHyper();
		%feature("autodoc", "1");
		Handle_GccInt_BHyper();
		%feature("autodoc", "1");
		Handle_GccInt_BHyper(const Handle_GccInt_BHyper &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BHyper(const GccInt_BHyper *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BHyper const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BHyper {
	GccInt_BHyper* GetObject() {
	return (GccInt_BHyper*)$self->Access();
	}
};

%nodefaultctor Handle_GccInt_BPoint;
class Handle_GccInt_BPoint : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		~Handle_GccInt_BPoint();
		%feature("autodoc", "1");
		Handle_GccInt_BPoint();
		%feature("autodoc", "1");
		Handle_GccInt_BPoint(const Handle_GccInt_BPoint &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BPoint(const GccInt_BPoint *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BPoint {
	GccInt_BPoint* GetObject() {
	return (GccInt_BPoint*)$self->Access();
	}
};

%nodefaultctor Handle_GccInt_BCirc;
class Handle_GccInt_BCirc : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		~Handle_GccInt_BCirc();
		%feature("autodoc", "1");
		Handle_GccInt_BCirc();
		%feature("autodoc", "1");
		Handle_GccInt_BCirc(const Handle_GccInt_BCirc &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BCirc(const GccInt_BCirc *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BCirc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BCirc {
	GccInt_BCirc* GetObject() {
	return (GccInt_BCirc*)$self->Access();
	}
};

%nodefaultctor GccInt_Bisec;
class GccInt_Bisec : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Point() const;
		%feature("autodoc", "1");
		virtual		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab2d Parabola() const;
		%feature("autodoc", "1");
		virtual		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccInt_Bisec {
	Handle_GccInt_Bisec GetHandle() {
	return *(Handle_GccInt_Bisec*) &$self;
	}
};

%nodefaultctor GccInt_BParab;
class GccInt_BParab : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BParab(const gp_Parab2d &Parab);
		%feature("autodoc", "1");
		virtual		~GccInt_BParab();

};
%extend GccInt_BParab {
	Handle_GccInt_BParab GetHandle() {
	return *(Handle_GccInt_BParab*) &$self;
	}
};

%nodefaultctor GccInt_BElips;
class GccInt_BElips : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BElips(const gp_Elips2d &Ellipse);
		%feature("autodoc", "1");
		virtual		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GccInt_BElips();

};
%extend GccInt_BElips {
	Handle_GccInt_BElips GetHandle() {
	return *(Handle_GccInt_BElips*) &$self;
	}
};

%nodefaultctor GccInt_BCirc;
class GccInt_BCirc : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BCirc(const gp_Circ2d &Circ);
		%feature("autodoc", "1");
		virtual		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GccInt_BCirc();

};
%extend GccInt_BCirc {
	Handle_GccInt_BCirc GetHandle() {
	return *(Handle_GccInt_BCirc*) &$self;
	}
};

%nodefaultctor GccInt_BPoint;
class GccInt_BPoint : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BPoint(const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Point() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GccInt_BPoint();

};
%extend GccInt_BPoint {
	Handle_GccInt_BPoint GetHandle() {
	return *(Handle_GccInt_BPoint*) &$self;
	}
};

%nodefaultctor GccInt_BLine;
class GccInt_BLine : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BLine(const gp_Lin2d &Line);
		%feature("autodoc", "1");
		virtual		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GccInt_BLine();

};
%extend GccInt_BLine {
	Handle_GccInt_BLine GetHandle() {
	return *(Handle_GccInt_BLine*) &$self;
	}
};

%nodefaultctor GccInt_BHyper;
class GccInt_BHyper : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BHyper(const gp_Hypr2d &Hyper);
		%feature("autodoc", "1");
		virtual		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GccInt_BHyper();

};
%extend GccInt_BHyper {
	Handle_GccInt_BHyper GetHandle() {
	return *(Handle_GccInt_BHyper*) &$self;
	}
};