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
%module GGraphic2d

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


%include GGraphic2d_dependencies.i


%include GGraphic2d_headers.i




%nodefaultctor Handle_GGraphic2d_Curve;
class Handle_GGraphic2d_Curve : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		~Handle_GGraphic2d_Curve();
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve();
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve(const Handle_GGraphic2d_Curve &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve(const GGraphic2d_Curve *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_Curve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_Curve {
	GGraphic2d_Curve* GetObject() {
	return (GGraphic2d_Curve*)$self->Access();
	}
};

%nodefaultctor Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve;
class Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve();
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve();
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve(const Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve(const GGraphic2d_SequenceNodeOfSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve {
	GGraphic2d_SequenceNodeOfSequenceOfCurve* GetObject() {
	return (GGraphic2d_SequenceNodeOfSequenceOfCurve*)$self->Access();
	}
};

%nodefaultctor Handle_GGraphic2d_CurveDefinitionError;
class Handle_GGraphic2d_CurveDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		~Handle_GGraphic2d_CurveDefinitionError();
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError();
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError(const Handle_GGraphic2d_CurveDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError(const GGraphic2d_CurveDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_CurveDefinitionError {
	GGraphic2d_CurveDefinitionError* GetObject() {
	return (GGraphic2d_CurveDefinitionError*)$self->Access();
	}
};

%nodefaultctor Handle_GGraphic2d_SetOfCurves;
class Handle_GGraphic2d_SetOfCurves : public Handle_Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		~Handle_GGraphic2d_SetOfCurves();
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves();
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves(const Handle_GGraphic2d_SetOfCurves &aHandle);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves(const GGraphic2d_SetOfCurves *anItem);
		%feature("autodoc", "1");
		Handle_GGraphic2d_SetOfCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GGraphic2d_SetOfCurves {
	GGraphic2d_SetOfCurves* GetObject() {
	return (GGraphic2d_SetOfCurves*)$self->Access();
	}
};

%nodefaultctor GGraphic2d_SequenceNodeOfSequenceOfCurve;
class GGraphic2d_SequenceNodeOfSequenceOfCurve : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		GGraphic2d_SequenceNodeOfSequenceOfCurve(const Handle_Geom2d_Curve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GGraphic2d_SequenceNodeOfSequenceOfCurve();

};
%extend GGraphic2d_SequenceNodeOfSequenceOfCurve {
	Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve GetHandle() {
	return *(Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve*) &$self;
	}
};

%nodefaultctor GGraphic2d_SetOfCurves;
class GGraphic2d_SetOfCurves : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		GGraphic2d_SetOfCurves(const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		void Add(const Handle_Geom2d_Curve &aCurve);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Values(const Standard_Integer aRank) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GGraphic2d_SetOfCurves();

};
%extend GGraphic2d_SetOfCurves {
	Handle_GGraphic2d_SetOfCurves GetHandle() {
	return *(Handle_GGraphic2d_SetOfCurves*) &$self;
	}
};

%nodefaultctor GGraphic2d_SequenceOfCurve;
class GGraphic2d_SequenceOfCurve : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		GGraphic2d_SequenceOfCurve();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~GGraphic2d_SequenceOfCurve();
		%feature("autodoc", "1");
		const GGraphic2d_SequenceOfCurve & Assign(const GGraphic2d_SequenceOfCurve &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void Append(GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void Prepend(GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Geom2d_Curve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Geom2d_Curve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & First() const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, GGraphic2d_SequenceOfCurve & S);
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Geom2d_Curve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Geom2d_Curve &I);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor GGraphic2d_Curve;
class GGraphic2d_Curve : public Graphic2d_Line {
	public:
		%feature("autodoc", "1");
		GGraphic2d_Curve(const Handle_Graphic2d_GraphicObject &aGraphicObject, const Handle_Geom2d_Curve &aCurve);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve GeomCurve() const;
		%feature("autodoc", "1");
		void Retrieve(Aspect_IFStream & anIFStream, const Handle_Graphic2d_GraphicObject &aGraphicObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GGraphic2d_Curve();

};
%extend GGraphic2d_Curve {
	Handle_GGraphic2d_Curve GetHandle() {
	return *(Handle_GGraphic2d_Curve*) &$self;
	}
};

%nodefaultctor GGraphic2d_CurveDefinitionError;
class GGraphic2d_CurveDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		GGraphic2d_CurveDefinitionError();
		%feature("autodoc", "1");
		GGraphic2d_CurveDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_GGraphic2d_CurveDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~GGraphic2d_CurveDefinitionError();

};
%extend GGraphic2d_CurveDefinitionError {
	Handle_GGraphic2d_CurveDefinitionError GetHandle() {
	return *(Handle_GGraphic2d_CurveDefinitionError*) &$self;
	}
};