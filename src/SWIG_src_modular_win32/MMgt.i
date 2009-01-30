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
%module MMgt

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


%include MMgt_dependencies.i


%include MMgt_headers.i




%nodefaultctor Handle_MMgt_TShared;
class Handle_MMgt_TShared : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_MMgt_TShared();
		%feature("autodoc", "1");
		Handle_MMgt_TShared();
		%feature("autodoc", "1");
		Handle_MMgt_TShared(const Handle_MMgt_TShared &aHandle);
		%feature("autodoc", "1");
		Handle_MMgt_TShared(const MMgt_TShared *anItem);
		%feature("autodoc", "1");
		Handle_MMgt_TShared const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MMgt_TShared {
	MMgt_TShared* GetObject() {
	return (MMgt_TShared*)$self->Access();
	}
};

%nodefaultctor MMgt_TShared;
class MMgt_TShared : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		MMgt_TShared();
		%feature("autodoc", "1");
		virtual		void Delete() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~MMgt_TShared();

};
%extend MMgt_TShared {
	Handle_MMgt_TShared GetHandle() {
	return *(Handle_MMgt_TShared*) &$self;
	}
};

%nodefaultctor MMgt_StackManager;
class MMgt_StackManager {
	public:
		%feature("autodoc", "1");
		MMgt_StackManager();
		%feature("autodoc", "1");
		Standard_Address Allocate(const Standard_Integer size);
		%feature("autodoc", "1");
		void Free(Standard_Address & aStack, const Standard_Integer aSize);
		%feature("autodoc", "1");
		MMgt_StackManager ShallowCopy() const;
		%feature("autodoc", "1");
		void ShallowDump(Standard_OStream & S) const;
		%feature("autodoc", "1");
		void Destructor();
		%feature("autodoc", "1");
		~MMgt_StackManager();

};