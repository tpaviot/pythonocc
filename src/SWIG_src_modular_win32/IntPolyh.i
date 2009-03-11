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
%module IntPolyh

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


%include IntPolyh_dependencies.i


%include IntPolyh_headers.i

typedef IntPolyh_MaillageAffinage * IntPolyh_PMaillageAffinage;



%nodefaultctor Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints;
class Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints();
		%feature("autodoc", "1");
		Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints(const Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints &aHandle);
		%feature("autodoc", "1");
		Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints(const IntPolyh_SequenceNodeOfSeqOfStartPoints *anItem);
		%feature("autodoc", "1");
		Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints {
	IntPolyh_SequenceNodeOfSeqOfStartPoints* GetObject() {
	return (IntPolyh_SequenceNodeOfSeqOfStartPoints*)$self->Access();
	}
};
%extend Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints {
	~Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints() {
	printf("Call custom destructor for instance of Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints\n");
	}
};

%nodefaultctor IntPolyh_StartPoint;
class IntPolyh_StartPoint {
	public:
		%feature("autodoc", "1");
		~IntPolyh_StartPoint();
		%feature("autodoc", "1");
		IntPolyh_StartPoint();
		%feature("autodoc", "1");
		IntPolyh_StartPoint(const Standard_Real xx, const Standard_Real yy, const Standard_Real zz, const Standard_Real uu1, const Standard_Real vv1, const Standard_Real uu2, const Standard_Real vv2, const Standard_Integer T1, const Standard_Integer E1, const Standard_Real LAM1, const Standard_Integer T2, const Standard_Integer E2, const Standard_Real LAM2, const Standard_Integer List);
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		Standard_Real U1() const;
		%feature("autodoc", "1");
		Standard_Real V1() const;
		%feature("autodoc", "1");
		Standard_Real U2() const;
		%feature("autodoc", "1");
		Standard_Real V2() const;
		%feature("autodoc", "1");
		Standard_Integer T1() const;
		%feature("autodoc", "1");
		Standard_Integer E1() const;
		%feature("autodoc", "1");
		Standard_Real Lambda1() const;
		%feature("autodoc", "1");
		Standard_Integer T2() const;
		%feature("autodoc", "1");
		Standard_Integer E2() const;
		%feature("autodoc", "1");
		Standard_Real Lambda2() const;
		%feature("autodoc", "1");
		Standard_Real GetAngle() const;
		%feature("autodoc", "1");
		Standard_Integer ChainList() const;
		%feature("autodoc", "1");
		Standard_Integer GetEdgePoints(const IntPolyh_Triangle &Triangle, Standard_Integer & FirstEdgePoint, Standard_Integer & SecondEdgePoint, Standard_Integer & LastPoint) const;
		%feature("autodoc", "1");
		void Equal(const IntPolyh_StartPoint &StPt);
		%feature("autodoc", "1");
		void SetXYZ(const Standard_Real XX, const Standard_Real YY, const Standard_Real ZZ);
		%feature("autodoc", "1");
		void SetUV1(const Standard_Real UU1, const Standard_Real VV1);
		%feature("autodoc", "1");
		void SetUV2(const Standard_Real UU2, const Standard_Real VV2);
		%feature("autodoc", "1");
		void SetEdge1(const Standard_Integer IE1);
		%feature("autodoc", "1");
		void SetLambda1(const Standard_Real LAM1);
		%feature("autodoc", "1");
		void SetEdge2(const Standard_Integer IE2);
		%feature("autodoc", "1");
		void SetLambda2(const Standard_Real LAM2);
		%feature("autodoc", "1");
		void SetCoupleValue(const Standard_Integer IT1, const Standard_Integer IT2);
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real ang);
		%feature("autodoc", "1");
		void SetChainList(const Standard_Integer ChList);
		%feature("autodoc", "1");
		Standard_Integer CheckSameSP(const IntPolyh_StartPoint &SP) const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer i) const;

};

%nodefaultctor IntPolyh_Edge;
class IntPolyh_Edge {
	public:
		%feature("autodoc", "1");
		~IntPolyh_Edge();
		%feature("autodoc", "1");
		IntPolyh_Edge();
		%feature("autodoc", "1");
		IntPolyh_Edge(const Standard_Integer i1, const Standard_Integer i2, const Standard_Integer i3, const Standard_Integer i4);
		%feature("autodoc", "1");
		Standard_Integer FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Integer SecondPoint() const;
		%feature("autodoc", "1");
		Standard_Integer FirstTriangle() const;
		%feature("autodoc", "1");
		Standard_Integer SecondTriangle() const;
		%feature("autodoc", "1");
		Standard_Integer AnalysisFlag() const;
		%feature("autodoc", "1");
		void SetFirstPoint(const Standard_Integer v);
		%feature("autodoc", "1");
		void SetSecondPoint(const Standard_Integer v);
		%feature("autodoc", "1");
		void SetFirstTriangle(const Standard_Integer v);
		%feature("autodoc", "1");
		void SetSecondTriangle(const Standard_Integer v);
		%feature("autodoc", "1");
		void SetAnalysisFlag(const Standard_Integer v);
		%feature("autodoc", "1");
		void Dump(const Standard_Integer v) const;

};

%nodefaultctor IntPolyh_ArrayOfCouples;
class IntPolyh_ArrayOfCouples {
	public:
		%feature("autodoc", "1");
		IntPolyh_ArrayOfCouples();
		%feature("autodoc", "1");
		IntPolyh_ArrayOfCouples(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		Standard_Integer NbCouples() const;
		%feature("autodoc", "1");
		void SetNbCouples(const Standard_Integer fint);
		%feature("autodoc", "1");
		void IncNbCouples();
		%feature("autodoc", "1");
		const IntPolyh_Couple & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_Couple & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_Couple & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_Couple & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_ArrayOfCouples();
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntPolyh_SequenceNodeOfSeqOfStartPoints;
class IntPolyh_SequenceNodeOfSeqOfStartPoints : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		IntPolyh_SequenceNodeOfSeqOfStartPoints(const IntPolyh_StartPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		IntPolyh_StartPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntPolyh_SequenceNodeOfSeqOfStartPoints {
	Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints GetHandle() {
	return *(Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints*) &$self;
	}
};
%extend IntPolyh_SequenceNodeOfSeqOfStartPoints {
	~IntPolyh_SequenceNodeOfSeqOfStartPoints() {
	printf("Call custom destructor for instance of IntPolyh_SequenceNodeOfSeqOfStartPoints\n");
	}
};

%nodefaultctor IntPolyh_ArrayOfSectionLines;
class IntPolyh_ArrayOfSectionLines {
	public:
		%feature("autodoc", "1");
		IntPolyh_ArrayOfSectionLines();
		%feature("autodoc", "1");
		IntPolyh_ArrayOfSectionLines(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		const IntPolyh_SectionLine & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_SectionLine & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_SectionLine & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_SectionLine & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_ArrayOfSectionLines & Copy(const IntPolyh_ArrayOfSectionLines &Other);
		%feature("autodoc", "1");
		Standard_Integer GetN() const;
		%feature("autodoc", "1");
		Standard_Integer NbSectionLines() const;
		%feature("autodoc", "1");
		void IncrementNbSectionLines();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_ArrayOfSectionLines();
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntPolyh_SectionLine;
class IntPolyh_SectionLine {
	public:
		%feature("autodoc", "1");
		IntPolyh_SectionLine();
		%feature("autodoc", "1");
		IntPolyh_SectionLine(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_StartPoint & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_StartPoint & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_SectionLine & Copy(const IntPolyh_SectionLine &Other);
		%feature("autodoc", "1");
		Standard_Integer GetN() const;
		%feature("autodoc", "1");
		Standard_Integer NbStartPoints() const;
		%feature("autodoc", "1");
		void IncrementNbStartPoints();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_SectionLine();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void Prepend(const IntPolyh_StartPoint &SP);

};

%nodefaultctor IntPolyh_Couple;
class IntPolyh_Couple {
	public:
		%feature("autodoc", "1");
		~IntPolyh_Couple();
		%feature("autodoc", "1");
		IntPolyh_Couple();
		%feature("autodoc", "1");
		IntPolyh_Couple(const Standard_Integer i1, const Standard_Integer i2);
		%feature("autodoc", "1");
		Standard_Integer FirstValue() const;
		%feature("autodoc", "1");
		Standard_Integer SecondValue() const;
		%feature("autodoc", "1");
		Standard_Integer AnalyseFlagValue() const;
		%feature("autodoc", "1");
		Standard_Real AngleValue() const;
		%feature("autodoc", "1");
		void SetCoupleValue(const Standard_Integer v, const Standard_Integer w);
		%feature("autodoc", "1");
		void SetAnalyseFlag(const Standard_Integer v);
		%feature("autodoc", "1");
		void SetAngleValue(const Standard_Real ang);
		%feature("autodoc", "1");
		void Dump(const Standard_Integer v) const;

};

%nodefaultctor IntPolyh_ArrayOfEdges;
class IntPolyh_ArrayOfEdges {
	public:
		%feature("autodoc", "1");
		IntPolyh_ArrayOfEdges();
		%feature("autodoc", "1");
		IntPolyh_ArrayOfEdges(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		Standard_Integer const GetN() const;
		%feature("autodoc", "1");
		Standard_Integer const NbEdges() const;
		%feature("autodoc", "1");
		void SetNbEdges(const Standard_Integer endaof);
		%feature("autodoc", "1");
		void IncNbEdges();
		%feature("autodoc", "1");
		const IntPolyh_Edge & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_Edge & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_Edge & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_Edge & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_ArrayOfEdges & Copy(const IntPolyh_ArrayOfEdges &Other);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_ArrayOfEdges();
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntPolyh_ArrayOfTangentZones;
class IntPolyh_ArrayOfTangentZones {
	public:
		%feature("autodoc", "1");
		IntPolyh_ArrayOfTangentZones();
		%feature("autodoc", "1");
		IntPolyh_ArrayOfTangentZones(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_StartPoint & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_StartPoint & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_ArrayOfTangentZones & Copy(const IntPolyh_ArrayOfTangentZones &Other);
		%feature("autodoc", "1");
		Standard_Integer GetN() const;
		%feature("autodoc", "1");
		Standard_Integer NbTangentZones() const;
		%feature("autodoc", "1");
		void IncrementNbTangentZones();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_ArrayOfTangentZones();
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntPolyh_Point;
class IntPolyh_Point {
	public:
		%feature("autodoc", "1");
		~IntPolyh_Point();
		%feature("autodoc", "1");
		IntPolyh_Point();
		%feature("autodoc", "1");
		IntPolyh_Point(const Standard_Real xx, const Standard_Real yy, const Standard_Real zz, const Standard_Real uu, const Standard_Real vv);
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		Standard_Real U() const;
		%feature("autodoc", "1");
		Standard_Real V() const;
		%feature("autodoc", "1");
		Standard_Integer PartOfCommon() const;
		%feature("autodoc", "1");
		void Equal(const IntPolyh_Point &Pt);
		%feature("autodoc", "1");
		void Set(const Standard_Real v1, const Standard_Real v2, const Standard_Real v3, const Standard_Real v4, const Standard_Real v5, const Standard_Integer II=1);
		%feature("autodoc", "1");
		void SetX(const Standard_Real v);
		%feature("autodoc", "1");
		void SetY(const Standard_Real v);
		%feature("autodoc", "1");
		void SetZ(const Standard_Real v);
		%feature("autodoc", "1");
		void SetU(const Standard_Real v);
		%feature("autodoc", "1");
		void SetV(const Standard_Real v);
		%feature("autodoc", "1");
		void SetPartOfCommon(const Standard_Integer ii);
		%feature("autodoc", "1");
		void Middle(const Handle_Adaptor3d_HSurface &MySurface, const IntPolyh_Point &P1, const IntPolyh_Point &P2);
		%feature("autodoc", "1");
		IntPolyh_Point Add(const IntPolyh_Point &P1) const;
		%feature("autodoc", "1");
		IntPolyh_Point operator+(const IntPolyh_Point &P1) const;
		%feature("autodoc", "1");
		IntPolyh_Point Sub(const IntPolyh_Point &P1) const;
		%feature("autodoc", "1");
		IntPolyh_Point operator-(const IntPolyh_Point &P1) const;
		%feature("autodoc", "1");
		IntPolyh_Point Divide(const Standard_Real rr) const;
		%feature("autodoc", "1");
		IntPolyh_Point operator/(const Standard_Real rr) const;
		%feature("autodoc", "1");
		IntPolyh_Point Multiplication(const Standard_Real rr) const;
		%feature("autodoc", "1");
		IntPolyh_Point operator*(const Standard_Real rr) const;
		%feature("autodoc", "1");
		Standard_Real SquareModulus() const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const IntPolyh_Point &P2) const;
		%feature("autodoc", "1");
		Standard_Real Dot(const IntPolyh_Point &P2) const;
		%feature("autodoc", "1");
		void Cross(const IntPolyh_Point &P1, const IntPolyh_Point &P2);
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer i) const;

};

%nodefaultctor IntPolyh_ArrayOfStartPoints;
class IntPolyh_ArrayOfStartPoints {
	public:
		%feature("autodoc", "1");
		IntPolyh_ArrayOfStartPoints();
		%feature("autodoc", "1");
		IntPolyh_ArrayOfStartPoints(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_StartPoint & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_StartPoint & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_ArrayOfStartPoints & Copy(const IntPolyh_ArrayOfStartPoints &Other);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_ArrayOfStartPoints();
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntPolyh_Intersection;
class IntPolyh_Intersection {
	public:
		%feature("autodoc", "1");
		~IntPolyh_Intersection();
		%feature("autodoc", "1");
		IntPolyh_Intersection(const Handle_Adaptor3d_HSurface &S1, const Handle_Adaptor3d_HSurface &S2);
		%feature("autodoc", "1");
		IntPolyh_Intersection(const Handle_Adaptor3d_HSurface &S1, const Standard_Integer NbSU1, const Standard_Integer NbSV1, const Handle_Adaptor3d_HSurface &S2, const Standard_Integer NbSU2, const Standard_Integer NbSV2);
		%feature("autodoc", "1");
		IntPolyh_Intersection(const Handle_Adaptor3d_HSurface &S1, const TColStd_Array1OfReal &anUpars1, const TColStd_Array1OfReal &aVpars1, const Handle_Adaptor3d_HSurface &S2, const TColStd_Array1OfReal &anUpars2, const TColStd_Array1OfReal &aVpars2);
		%feature("autodoc", "1");
		void Perform();
		%feature("autodoc", "1");
		void Perform(const TColStd_Array1OfReal &Upars1, const TColStd_Array1OfReal &Vpars1, const TColStd_Array1OfReal &Upars2, const TColStd_Array1OfReal &Vpars2);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbSectionLines() const;
		%feature("autodoc", "1");
		Standard_Integer NbPointsInLine(const Standard_Integer IndexLine) const;
		%feature("autodoc", "1");
		void GetLinePoint(const Standard_Integer IndexLine, const Standard_Integer IndexPoint, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbTangentZones() const;
		%feature("autodoc", "1");
		Standard_Integer NbPointsInTangentZone(const Standard_Integer IndexLine) const;
		%feature("autodoc", "1");
		void GetTangentZonePoint(const Standard_Integer IndexLine, const Standard_Integer IndexPoint, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};

%nodefaultctor IntPolyh_SeqOfStartPoints;
class IntPolyh_SeqOfStartPoints : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		IntPolyh_SeqOfStartPoints();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~IntPolyh_SeqOfStartPoints();
		%feature("autodoc", "1");
		const IntPolyh_SeqOfStartPoints & Assign(const IntPolyh_SeqOfStartPoints &Other);
		%feature("autodoc", "1");
		void Append(const IntPolyh_StartPoint &T);
		%feature("autodoc", "1");
		void Append(IntPolyh_SeqOfStartPoints & S);
		%feature("autodoc", "1");
		void Prepend(const IntPolyh_StartPoint &T);
		%feature("autodoc", "1");
		void Prepend(IntPolyh_SeqOfStartPoints & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const IntPolyh_StartPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, IntPolyh_SeqOfStartPoints & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const IntPolyh_StartPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, IntPolyh_SeqOfStartPoints & S);
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & First() const;
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, IntPolyh_SeqOfStartPoints & S);
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntPolyh_StartPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const IntPolyh_StartPoint &I);
		%feature("autodoc", "1");
		IntPolyh_StartPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		IntPolyh_StartPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor IntPolyh_ArrayOfPoints;
class IntPolyh_ArrayOfPoints {
	public:
		%feature("autodoc", "1");
		IntPolyh_ArrayOfPoints();
		%feature("autodoc", "1");
		IntPolyh_ArrayOfPoints(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		const IntPolyh_Point & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_Point & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_Point & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_Point & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_ArrayOfPoints & Copy(const IntPolyh_ArrayOfPoints &Other);
		%feature("autodoc", "1");
		Standard_Integer GetN() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		void IncNbPoints();
		%feature("autodoc", "1");
		void SetNbPoints(const Standard_Integer END);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_ArrayOfPoints();
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor IntPolyh_ArrayOfTriangles;
class IntPolyh_ArrayOfTriangles {
	public:
		%feature("autodoc", "1");
		IntPolyh_ArrayOfTriangles();
		%feature("autodoc", "1");
		IntPolyh_ArrayOfTriangles(const Standard_Integer nn);
		%feature("autodoc", "1");
		void Init(const Standard_Integer nn);
		%feature("autodoc", "1");
		Standard_Integer const GetN() const;
		%feature("autodoc", "1");
		Standard_Integer const NbTriangles() const;
		%feature("autodoc", "1");
		void SetNbTriangles(const Standard_Integer endaot);
		%feature("autodoc", "1");
		void IncNbTriangles();
		%feature("autodoc", "1");
		const IntPolyh_Triangle & Value(const Standard_Integer nn) const;
		%feature("autodoc", "1");
		const IntPolyh_Triangle & operator[](const Standard_Integer nn) const;
		%feature("autodoc", "1");
		IntPolyh_Triangle & ChangeValue(const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_Triangle & operator[](const Standard_Integer nn);
		%feature("autodoc", "1");
		IntPolyh_ArrayOfTriangles & Copy(const IntPolyh_ArrayOfTriangles &Other);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IntPolyh_ArrayOfTriangles();
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void DumpFleches() const;

};