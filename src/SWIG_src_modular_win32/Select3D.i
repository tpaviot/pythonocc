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
%module Select3D

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


%include Select3D_dependencies.i


%include Select3D_headers.i


enum Select3D_TypeOfSensitivity {
	Select3D_TOS_INTERIOR,
	Select3D_TOS_BOUNDARY,
	Select3D_TOS_EXTERIOR,
	};



%nodefaultctor Handle_Select3D_SensitiveEntity;
class Handle_Select3D_SensitiveEntity : public Handle_SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity(const Handle_Select3D_SensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity(const Select3D_SensitiveEntity *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveEntity {
	Select3D_SensitiveEntity* GetObject() {
	return (Select3D_SensitiveEntity*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveEntity {
	~Handle_Select3D_SensitiveEntity() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveEntity\n");
	}
};

%nodefaultctor Handle_Select3D_SensitivePoly;
class Handle_Select3D_SensitivePoly : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly();
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly(const Handle_Select3D_SensitivePoly &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly(const Select3D_SensitivePoly *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoly const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitivePoly {
	Select3D_SensitivePoly* GetObject() {
	return (Select3D_SensitivePoly*)$self->Access();
	}
};
%extend Handle_Select3D_SensitivePoly {
	~Handle_Select3D_SensitivePoly() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitivePoly\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveCurve;
class Handle_Select3D_SensitiveCurve : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve(const Handle_Select3D_SensitiveCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve(const Select3D_SensitiveCurve *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveCurve {
	Select3D_SensitiveCurve* GetObject() {
	return (Select3D_SensitiveCurve*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveCurve {
	~Handle_Select3D_SensitiveCurve() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveCurve\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveCircle;
class Handle_Select3D_SensitiveCircle : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle(const Handle_Select3D_SensitiveCircle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle(const Select3D_SensitiveCircle *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveCircle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveCircle {
	Select3D_SensitiveCircle* GetObject() {
	return (Select3D_SensitiveCircle*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveCircle {
	~Handle_Select3D_SensitiveCircle() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveCircle\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveBox;
class Handle_Select3D_SensitiveBox : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox(const Handle_Select3D_SensitiveBox &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox(const Select3D_SensitiveBox *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveBox const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveBox {
	Select3D_SensitiveBox* GetObject() {
	return (Select3D_SensitiveBox*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveBox {
	~Handle_Select3D_SensitiveBox() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveBox\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveTriangle;
class Handle_Select3D_SensitiveTriangle : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle(const Handle_Select3D_SensitiveTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle(const Select3D_SensitiveTriangle *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveTriangle {
	Select3D_SensitiveTriangle* GetObject() {
	return (Select3D_SensitiveTriangle*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveTriangle {
	~Handle_Select3D_SensitiveTriangle() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveTriangle\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveWire;
class Handle_Select3D_SensitiveWire : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire(const Handle_Select3D_SensitiveWire &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire(const Select3D_SensitiveWire *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveWire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveWire {
	Select3D_SensitiveWire* GetObject() {
	return (Select3D_SensitiveWire*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveWire {
	~Handle_Select3D_SensitiveWire() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveWire\n");
	}
};

%nodefaultctor Handle_Select3D_SensitivePoint;
class Handle_Select3D_SensitivePoint : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint();
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint(const Handle_Select3D_SensitivePoint &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint(const Select3D_SensitivePoint *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitivePoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitivePoint {
	Select3D_SensitivePoint* GetObject() {
	return (Select3D_SensitivePoint*)$self->Access();
	}
};
%extend Handle_Select3D_SensitivePoint {
	~Handle_Select3D_SensitivePoint() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitivePoint\n");
	}
};

%nodefaultctor Handle_Select3D_ListNodeOfListOfSensitiveTriangle;
class Handle_Select3D_ListNodeOfListOfSensitiveTriangle : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle();
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle(const Handle_Select3D_ListNodeOfListOfSensitiveTriangle &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle(const Select3D_ListNodeOfListOfSensitiveTriangle *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitiveTriangle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_ListNodeOfListOfSensitiveTriangle {
	Select3D_ListNodeOfListOfSensitiveTriangle* GetObject() {
	return (Select3D_ListNodeOfListOfSensitiveTriangle*)$self->Access();
	}
};
%extend Handle_Select3D_ListNodeOfListOfSensitiveTriangle {
	~Handle_Select3D_ListNodeOfListOfSensitiveTriangle() {
	printf("Call custom destructor for instance of Handle_Select3D_ListNodeOfListOfSensitiveTriangle\n");
	}
};

%nodefaultctor Handle_Select3D_ListNodeOfListOfSensitive;
class Handle_Select3D_ListNodeOfListOfSensitive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive();
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive(const Handle_Select3D_ListNodeOfListOfSensitive &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive(const Select3D_ListNodeOfListOfSensitive *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_ListNodeOfListOfSensitive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_ListNodeOfListOfSensitive {
	Select3D_ListNodeOfListOfSensitive* GetObject() {
	return (Select3D_ListNodeOfListOfSensitive*)$self->Access();
	}
};
%extend Handle_Select3D_ListNodeOfListOfSensitive {
	~Handle_Select3D_ListNodeOfListOfSensitive() {
	printf("Call custom destructor for instance of Handle_Select3D_ListNodeOfListOfSensitive\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveTriangulation;
class Handle_Select3D_SensitiveTriangulation : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation(const Handle_Select3D_SensitiveTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation(const Select3D_SensitiveTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangulation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveTriangulation {
	Select3D_SensitiveTriangulation* GetObject() {
	return (Select3D_SensitiveTriangulation*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveTriangulation {
	~Handle_Select3D_SensitiveTriangulation() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveTriangulation\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveFace;
class Handle_Select3D_SensitiveFace : public Handle_Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace(const Handle_Select3D_SensitiveFace &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace(const Select3D_SensitiveFace *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveFace {
	Select3D_SensitiveFace* GetObject() {
	return (Select3D_SensitiveFace*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveFace {
	~Handle_Select3D_SensitiveFace() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveFace\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveGroup;
class Handle_Select3D_SensitiveGroup : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup(const Handle_Select3D_SensitiveGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup(const Select3D_SensitiveGroup *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveGroup {
	Select3D_SensitiveGroup* GetObject() {
	return (Select3D_SensitiveGroup*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveGroup {
	~Handle_Select3D_SensitiveGroup() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveGroup\n");
	}
};

%nodefaultctor Handle_Select3D_SensitiveSegment;
class Handle_Select3D_SensitiveSegment : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment(const Handle_Select3D_SensitiveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment(const Select3D_SensitiveSegment *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveSegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SensitiveSegment {
	Select3D_SensitiveSegment* GetObject() {
	return (Select3D_SensitiveSegment*)$self->Access();
	}
};
%extend Handle_Select3D_SensitiveSegment {
	~Handle_Select3D_SensitiveSegment() {
	printf("Call custom destructor for instance of Handle_Select3D_SensitiveSegment\n");
	}
};

%nodefaultctor Handle_Select3D_SequenceNodeOfSensitiveEntitySequence;
class Handle_Select3D_SequenceNodeOfSensitiveEntitySequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence();
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence(const Handle_Select3D_SequenceNodeOfSensitiveEntitySequence &aHandle);
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence(const Select3D_SequenceNodeOfSensitiveEntitySequence *anItem);
		%feature("autodoc", "1");
		Handle_Select3D_SequenceNodeOfSensitiveEntitySequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Select3D_SequenceNodeOfSensitiveEntitySequence {
	Select3D_SequenceNodeOfSensitiveEntitySequence* GetObject() {
	return (Select3D_SequenceNodeOfSensitiveEntitySequence*)$self->Access();
	}
};
%extend Handle_Select3D_SequenceNodeOfSensitiveEntitySequence {
	~Handle_Select3D_SequenceNodeOfSensitiveEntitySequence() {
	printf("Call custom destructor for instance of Handle_Select3D_SequenceNodeOfSensitiveEntitySequence\n");
	}
};

%nodefaultctor Select3D_SensitiveEntity;
class Select3D_SensitiveEntity : public SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean NeedsConversion() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		virtual		void Project(const Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		gp_Lin GetEyeLine(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Depth() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasLocation() const;
		%feature("autodoc", "1");
		virtual		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		void DumpBox(Standard_OStream & S, const Bnd_Box2d &abox);
		%feature("autodoc", "1");
		void UpdateLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void SetLastPrj(const Select3D_Projector &aPrj);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveEntity {
	Handle_Select3D_SensitiveEntity GetHandle() {
	return *(Handle_Select3D_SensitiveEntity*) &$self;
	}
};
%extend Select3D_SensitiveEntity {
	~Select3D_SensitiveEntity() {
	printf("Call custom destructor for instance of Select3D_SensitiveEntity\n");
	}
};

%nodefaultctor Select3D_SensitiveBox;
class Select3D_SensitiveBox : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveBox(const Handle_SelectBasics_EntityOwner &OwnerId, const Bnd_Box &BoundingBox);
		%feature("autodoc", "1");
		Select3D_SensitiveBox(const Handle_SelectBasics_EntityOwner &OwnerId, const Standard_Real XMin, const Standard_Real YMin, const Standard_Real ZMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real ZMax);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		const Bnd_Box & Box() const;

};
%extend Select3D_SensitiveBox {
	Handle_Select3D_SensitiveBox GetHandle() {
	return *(Handle_Select3D_SensitiveBox*) &$self;
	}
};
%extend Select3D_SensitiveBox {
	~Select3D_SensitiveBox() {
	printf("Call custom destructor for instance of Select3D_SensitiveBox\n");
	}
};

%nodefaultctor Select3D_SensitivePoint;
class Select3D_SensitivePoint : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitivePoint(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt &Point);
		%feature("autodoc", "1");
		virtual		void Project(const Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresult);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitivePoint {
	Handle_Select3D_SensitivePoint GetHandle() {
	return *(Handle_Select3D_SensitivePoint*) &$self;
	}
};
%extend Select3D_SensitivePoint {
	~Select3D_SensitivePoint() {
	printf("Call custom destructor for instance of Select3D_SensitivePoint\n");
	}
};

%nodefaultctor Select3D_SensitiveEntitySequence;
class Select3D_SensitiveEntitySequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveEntitySequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Select3D_SensitiveEntitySequence();
		%feature("autodoc", "1");
		const Select3D_SensitiveEntitySequence & Assign(const Select3D_SensitiveEntitySequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveEntity &T);
		%feature("autodoc", "1");
		void Append(Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveEntity &T);
		%feature("autodoc", "1");
		void Prepend(Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Select3D_SensitiveEntity &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & First() const;
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Select3D_SensitiveEntitySequence & S);
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Select3D_SensitiveEntity & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Select3D_Projector;
class Select3D_Projector {
	public:
		%feature("autodoc", "1");
		Select3D_Projector(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		Select3D_Projector();
		%feature("autodoc", "1");
		Select3D_Projector(const gp_Ax2 &CS);
		%feature("autodoc", "1");
		Select3D_Projector(const gp_Ax2 &CS, const Standard_Real Focus);
		%feature("autodoc", "1");
		Select3D_Projector(const gp_Trsf &T, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		Select3D_Projector(const gp_Trsf &T, const Standard_Boolean Persp, const Standard_Real Focus, const gp_Vec2d &v1, const gp_Vec2d &v2, const gp_Vec2d &v3);
		%feature("autodoc", "1");
		Select3D_Projector(const gp_GTrsf &GT, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		~Select3D_Projector();
		%feature("autodoc", "1");
		void Set(const gp_Trsf &T, const Standard_Boolean Persp, const Standard_Real Focus);
		%feature("autodoc", "1");
		void SetView(const Handle_V3d_View &V);
		%feature("autodoc", "1");
		const Handle_V3d_View & View() const;
		%feature("autodoc", "1");
		virtual		void Directions(gp_Vec2d & D1, gp_Vec2d & D2, gp_Vec2d & D3) const;
		%feature("autodoc", "1");
		virtual		void Scaled(const Standard_Boolean On=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Perspective() const;
		%feature("autodoc", "1");
		virtual		const gp_GTrsf & Transformation() const;
		%feature("autodoc", "1");
		virtual		const gp_GTrsf & InvertedTransformation() const;
		%feature("autodoc", "1");
		virtual		const gp_Trsf & FullTransformation() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Focus() const;
		%feature("autodoc", "1");
		virtual		void Transform(gp_Vec & D) const;
		%feature("autodoc", "1");
		virtual		void Transform(gp_Pnt & Pnt) const;
		%feature("autodoc", "1");
		virtual		void Project(const gp_Pnt &P, gp_Pnt2d & Pout) const;
		%feature("autodoc", "1");
		void Project(const gp_Pnt &P, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Project(const gp_Pnt &P, const gp_Vec &D1, gp_Pnt2d & Pout, gp_Vec2d & D1out) const;
		%feature("autodoc", "1");
		virtual		void BoxAdd(const gp_Pnt2d &P, Bnd_Box & B) const;
		%feature("autodoc", "1");
		virtual		gp_Lin Shoot(const Standard_Real X, const Standard_Real Y) const;
		%feature("autodoc", "1");
		virtual		void Transform(gp_Pnt & Pnt, const gp_GTrsf &T) const;
		%feature("autodoc", "1");
		virtual		void Transform(gp_Lin & Lin, const gp_GTrsf &T) const;

};

%nodefaultctor Select3D_ListIteratorOfListOfSensitive;
class Select3D_ListIteratorOfListOfSensitive {
	public:
		%feature("autodoc", "1");
		~Select3D_ListIteratorOfListOfSensitive();
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitive();
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitive(const Select3D_ListOfSensitive &L);
		%feature("autodoc", "1");
		void Initialize(const Select3D_ListOfSensitive &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Value() const;

};

%nodefaultctor Select3D_Pnt;
class Select3D_Pnt {
	public:
		%feature("autodoc", "1");
		~Select3D_Pnt();
		%feature("autodoc", "1");
		Select3D_Pnt();

};

%nodefaultctor Select3D_SensitiveGroup;
class Select3D_SensitiveGroup : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveGroup(const Handle_SelectBasics_EntityOwner &OwnerId, const Standard_Boolean MatchAll=1);
		%feature("autodoc", "1");
		Select3D_SensitiveGroup(const Handle_SelectBasics_EntityOwner &OwnerId, Select3D_ListOfSensitive & TheList, const Standard_Boolean MatchAll=1);
		%feature("autodoc", "1");
		void Add(Select3D_ListOfSensitive & LL);
		%feature("autodoc", "1");
		void Add(const Handle_Select3D_SensitiveEntity &aSensitive);
		%feature("autodoc", "1");
		void Remove(const Handle_Select3D_SensitiveEntity &aSensitive);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_Select3D_SensitiveEntity &aSensitive) const;
		%feature("autodoc", "1");
		void Set(const Standard_Boolean MustMatchAllEntities);
		%feature("autodoc", "1");
		Standard_Boolean MustMatchAll() const;
		%feature("autodoc", "1");
		virtual		void Project(const Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		virtual		void SetLastPrj(const Select3D_Projector &aPrj);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveGroup {
	Handle_Select3D_SensitiveGroup GetHandle() {
	return *(Handle_Select3D_SensitiveGroup*) &$self;
	}
};
%extend Select3D_SensitiveGroup {
	~Select3D_SensitiveGroup() {
	printf("Call custom destructor for instance of Select3D_SensitiveGroup\n");
	}
};

%nodefaultctor Select3D_SensitivePoly;
class Select3D_SensitivePoly : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		virtual		void Project(const Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		void Points3D(Handle_TColgp_HArray1OfPnt & theHArrayOfPnt);
		%feature("autodoc", "1");
		void Points2D(TColgp_Array1OfPnt2d & aArrayOf2dPnt);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitivePoly {
	Handle_Select3D_SensitivePoly GetHandle() {
	return *(Handle_Select3D_SensitivePoly*) &$self;
	}
};
%extend Select3D_SensitivePoly {
	~Select3D_SensitivePoly() {
	printf("Call custom destructor for instance of Select3D_SensitivePoly\n");
	}
};

%nodefaultctor Select3D_SensitiveFace;
class Select3D_SensitiveFace : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveFace(const Handle_SelectBasics_EntityOwner &OwnerId, const TColgp_Array1OfPnt &ThePoints, const Select3D_TypeOfSensitivity Sensitivity=Select3D_TOS_INTERIOR);
		%feature("autodoc", "1");
		Select3D_SensitiveFace(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_TColgp_HArray1OfPnt &ThePoints, const Select3D_TypeOfSensitivity Sensitivity=Select3D_TOS_INTERIOR);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;

};
%extend Select3D_SensitiveFace {
	Handle_Select3D_SensitiveFace GetHandle() {
	return *(Handle_Select3D_SensitiveFace*) &$self;
	}
};
%extend Select3D_SensitiveFace {
	~Select3D_SensitiveFace() {
	printf("Call custom destructor for instance of Select3D_SensitiveFace\n");
	}
};

%nodefaultctor Select3D_SensitiveTriangle;
class Select3D_SensitiveTriangle : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveTriangle(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const Select3D_TypeOfSensitivity Sensitivity=Select3D_TOS_INTERIOR);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		void Points3D(gp_Pnt & P1, gp_Pnt & P2, gp_Pnt & P3) const;
		%feature("autodoc", "1");
		gp_Pnt Center3D() const;
		%feature("autodoc", "1");
		gp_XY Center2D() const;
		%feature("autodoc", "1");
		Standard_Integer Status(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer Status(const gp_XY &p0, const gp_XY &p1, const gp_XY &p2, const gp_XY &aPoint, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveTriangle {
	Handle_Select3D_SensitiveTriangle GetHandle() {
	return *(Handle_Select3D_SensitiveTriangle*) &$self;
	}
};
%extend Select3D_SensitiveTriangle {
	~Select3D_SensitiveTriangle() {
	printf("Call custom destructor for instance of Select3D_SensitiveTriangle\n");
	}
};

%nodefaultctor Select3D_ListOfSensitive;
class Select3D_ListOfSensitive {
	public:
		%feature("autodoc", "1");
		Select3D_ListOfSensitive();
		%feature("autodoc", "1");
		void Assign(const Select3D_ListOfSensitive &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Select3D_ListOfSensitive();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & theIt);
		%feature("autodoc", "1");
		void Prepend(Select3D_ListOfSensitive & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveEntity &I);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & theIt);
		%feature("autodoc", "1");
		void Append(Select3D_ListOfSensitive & Other);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & First() const;
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertBefore(Select3D_ListOfSensitive & Other, Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Select3D_SensitiveEntity &I, Select3D_ListIteratorOfListOfSensitive & It);
		%feature("autodoc", "1");
		void InsertAfter(Select3D_ListOfSensitive & Other, Select3D_ListIteratorOfListOfSensitive & It);

};

%nodefaultctor Select3D_ListIteratorOfListOfSensitiveTriangle;
class Select3D_ListIteratorOfListOfSensitiveTriangle {
	public:
		%feature("autodoc", "1");
		~Select3D_ListIteratorOfListOfSensitiveTriangle();
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitiveTriangle();
		%feature("autodoc", "1");
		Select3D_ListIteratorOfListOfSensitiveTriangle(const Select3D_ListOfSensitiveTriangle &L);
		%feature("autodoc", "1");
		void Initialize(const Select3D_ListOfSensitiveTriangle &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & Value() const;

};

%nodefaultctor Select3D_Pnt2d;
class Select3D_Pnt2d {
	public:
		%feature("autodoc", "1");
		~Select3D_Pnt2d();
		%feature("autodoc", "1");
		Select3D_Pnt2d();

};

%nodefaultctor Select3D_ListNodeOfListOfSensitiveTriangle;
class Select3D_ListNodeOfListOfSensitiveTriangle : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Select3D_ListNodeOfListOfSensitiveTriangle(const Handle_Select3D_SensitiveTriangle &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_ListNodeOfListOfSensitiveTriangle {
	Handle_Select3D_ListNodeOfListOfSensitiveTriangle GetHandle() {
	return *(Handle_Select3D_ListNodeOfListOfSensitiveTriangle*) &$self;
	}
};
%extend Select3D_ListNodeOfListOfSensitiveTriangle {
	~Select3D_ListNodeOfListOfSensitiveTriangle() {
	printf("Call custom destructor for instance of Select3D_ListNodeOfListOfSensitiveTriangle\n");
	}
};

%nodefaultctor Select3D_SensitiveSegment;
class Select3D_SensitiveSegment : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveSegment(const Handle_SelectBasics_EntityOwner &OwnerId, const gp_Pnt &FirstP, const gp_Pnt &LastP, const Standard_Integer MaxRect=1);
		%feature("autodoc", "1");
		void Set(const Standard_Integer MaxRect);
		%feature("autodoc", "1");
		void StartPoint(const gp_Pnt &start);
		%feature("autodoc", "1");
		void EndPoint(const gp_Pnt &end);
		%feature("autodoc", "1");
		gp_Pnt StartPoint() const;
		%feature("autodoc", "1");
		gp_Pnt EndPoint() const;
		%feature("autodoc", "1");
		virtual		void Project(const Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveSegment {
	Handle_Select3D_SensitiveSegment GetHandle() {
	return *(Handle_Select3D_SensitiveSegment*) &$self;
	}
};
%extend Select3D_SensitiveSegment {
	~Select3D_SensitiveSegment() {
	printf("Call custom destructor for instance of Select3D_SensitiveSegment\n");
	}
};

%nodefaultctor Select3D_SequenceNodeOfSensitiveEntitySequence;
class Select3D_SequenceNodeOfSensitiveEntitySequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Select3D_SequenceNodeOfSensitiveEntitySequence(const Handle_Select3D_SensitiveEntity &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SequenceNodeOfSensitiveEntitySequence {
	Handle_Select3D_SequenceNodeOfSensitiveEntitySequence GetHandle() {
	return *(Handle_Select3D_SequenceNodeOfSensitiveEntitySequence*) &$self;
	}
};
%extend Select3D_SequenceNodeOfSensitiveEntitySequence {
	~Select3D_SequenceNodeOfSensitiveEntitySequence() {
	printf("Call custom destructor for instance of Select3D_SequenceNodeOfSensitiveEntitySequence\n");
	}
};

%nodefaultctor Select3D_SensitiveCircle;
class Select3D_SensitiveCircle : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Geom_Circle &TheCircle, const Standard_Boolean FilledCircle=0, const Standard_Integer NbOfPoints=6);
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Geom_Circle &TheCircle, const Standard_Real u1, const Standard_Real u2, const Standard_Boolean FilledCircle=0, const Standard_Integer NbOfPoints=6);
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_TColgp_HArray1OfPnt &apolyg3d, const Standard_Boolean FilledCircle=0);
		%feature("autodoc", "1");
		Select3D_SensitiveCircle(const Handle_SelectBasics_EntityOwner &OwnerId, const TColgp_Array1OfPnt &apolyg3d, const Standard_Boolean FilledCircle=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		void ArrayBounds(Standard_Integer & Low, Standard_Integer & Up) const;
		%feature("autodoc", "1");
		gp_Pnt GetPoint3d(const Standard_Integer rank) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveCircle {
	Handle_Select3D_SensitiveCircle GetHandle() {
	return *(Handle_Select3D_SensitiveCircle*) &$self;
	}
};
%extend Select3D_SensitiveCircle {
	~Select3D_SensitiveCircle() {
	printf("Call custom destructor for instance of Select3D_SensitiveCircle\n");
	}
};

%nodefaultctor Select3D_SensitiveTriangulation;
class Select3D_SensitiveTriangulation : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveTriangulation(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Poly_Triangulation &aTriangulation, const TopLoc_Location &aLoc, const Standard_Boolean InteriorFlag=1);
		%feature("autodoc", "1");
		Select3D_SensitiveTriangulation(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Poly_Triangulation &aTriangulation, const TopLoc_Location &aLoc, const Handle_TColStd_HArray1OfInteger &thefreeedges, const gp_Pnt &theCDG, const Standard_Boolean InteriorFlag);
		%feature("autodoc", "1");
		virtual		void Project(const Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		const Handle_Poly_Triangulation & Triangulation() const;
		%feature("autodoc", "1");
		const gp_Pnt & CDG3D() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & CDG2D() const;
		%feature("autodoc", "1");
		Standard_Integer Status(const gp_XY &p0, const gp_XY &p1, const gp_XY &p2, const gp_XY &aPoint, const Standard_Real aTol, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasInitLocation() const;
		%feature("autodoc", "1");
		const TopLoc_Location & GetInitLocation() const;
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveTriangulation {
	Handle_Select3D_SensitiveTriangulation GetHandle() {
	return *(Handle_Select3D_SensitiveTriangulation*) &$self;
	}
};
%extend Select3D_SensitiveTriangulation {
	~Select3D_SensitiveTriangulation() {
	printf("Call custom destructor for instance of Select3D_SensitiveTriangulation\n");
	}
};

%nodefaultctor Select3D_ListOfSensitiveTriangle;
class Select3D_ListOfSensitiveTriangle {
	public:
		%feature("autodoc", "1");
		Select3D_ListOfSensitiveTriangle();
		%feature("autodoc", "1");
		void Assign(const Select3D_ListOfSensitiveTriangle &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Select3D_ListOfSensitiveTriangle();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveTriangle &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & theIt);
		%feature("autodoc", "1");
		void Prepend(Select3D_ListOfSensitiveTriangle & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveTriangle &I);
		%feature("autodoc", "1");
		void Append(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & theIt);
		%feature("autodoc", "1");
		void Append(Select3D_ListOfSensitiveTriangle & Other);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & First() const;
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveTriangle & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertBefore(Select3D_ListOfSensitiveTriangle & Other, Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Select3D_SensitiveTriangle &I, Select3D_ListIteratorOfListOfSensitiveTriangle & It);
		%feature("autodoc", "1");
		void InsertAfter(Select3D_ListOfSensitiveTriangle & Other, Select3D_ListIteratorOfListOfSensitiveTriangle & It);

};

%nodefaultctor Select3D_SensitiveWire;
class Select3D_SensitiveWire : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveWire(const Handle_SelectBasics_EntityOwner &OwnerId, const Standard_Integer MaxRect=1);
		%feature("autodoc", "1");
		void Add(const Handle_Select3D_SensitiveEntity &aSensitive);
		%feature("autodoc", "1");
		virtual		void Project(const Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		void SetLastPrj(const Select3D_Projector &aPrj);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveWire {
	Handle_Select3D_SensitiveWire GetHandle() {
	return *(Handle_Select3D_SensitiveWire*) &$self;
	}
};
%extend Select3D_SensitiveWire {
	~Select3D_SensitiveWire() {
	printf("Call custom destructor for instance of Select3D_SensitiveWire\n");
	}
};

%nodefaultctor Select3D_SensitiveCurve;
class Select3D_SensitiveCurve : public Select3D_SensitivePoly {
	public:
		%feature("autodoc", "1");
		Select3D_SensitiveCurve(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_Geom_Curve &TheCurve, const Standard_Integer MaxPoints=17);
		%feature("autodoc", "1");
		Select3D_SensitiveCurve(const Handle_SelectBasics_EntityOwner &OwnerId, const Handle_TColgp_HArray1OfPnt &ThePoints);
		%feature("autodoc", "1");
		Select3D_SensitiveCurve(const Handle_SelectBasics_EntityOwner &OwnerId, const TColgp_Array1OfPnt &ThePoints);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin &EyeLine) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & S, const Standard_Boolean FullDump=1) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_SensitiveCurve {
	Handle_Select3D_SensitiveCurve GetHandle() {
	return *(Handle_Select3D_SensitiveCurve*) &$self;
	}
};
%extend Select3D_SensitiveCurve {
	~Select3D_SensitiveCurve() {
	printf("Call custom destructor for instance of Select3D_SensitiveCurve\n");
	}
};

%nodefaultctor Select3D_ListNodeOfListOfSensitive;
class Select3D_ListNodeOfListOfSensitive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Select3D_ListNodeOfListOfSensitive(const Handle_Select3D_SensitiveEntity &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Select3D_SensitiveEntity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Select3D_ListNodeOfListOfSensitive {
	Handle_Select3D_ListNodeOfListOfSensitive GetHandle() {
	return *(Handle_Select3D_ListNodeOfListOfSensitive*) &$self;
	}
};
%extend Select3D_ListNodeOfListOfSensitive {
	~Select3D_ListNodeOfListOfSensitive() {
	printf("Call custom destructor for instance of Select3D_ListNodeOfListOfSensitive\n");
	}
};

%nodefaultctor Select3D_Box2d;
class Select3D_Box2d {
	public:
		%feature("autodoc", "1");
		~Select3D_Box2d();
		%feature("autodoc", "1");
		Select3D_Box2d();
		%feature("autodoc", "1");
		Select3D_Box2d(const Bnd_Box2d &theBox);
		%feature("autodoc", "1");
		void Update(const gp_Pnt2d &thePnt);
		%feature("autodoc", "1");
		void SetVoid();
		%feature("autodoc", "1");
		Standard_Boolean IsVoid() const;

};