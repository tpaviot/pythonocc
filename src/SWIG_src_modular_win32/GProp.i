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
%module GProp

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


%include GProp_dependencies.i


%include GProp_headers.i


enum GProp_ValueType {
	GProp_Mass,
	GProp_CenterMassX,
	GProp_CenterMassY,
	GProp_CenterMassZ,
	GProp_InertiaXX,
	GProp_InertiaYY,
	GProp_InertiaZZ,
	GProp_InertiaXY,
	GProp_InertiaXZ,
	GProp_InertiaYZ,
	GProp_Unknown,
	};

enum GProp_EquaType {
	GProp_Plane,
	GProp_Line,
	GProp_Point,
	GProp_Space,
	GProp_None,
	};



%nodefaultctor Handle_GProp_UndefinedAxis;
class Handle_GProp_UndefinedAxis : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis();
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis(const Handle_GProp_UndefinedAxis &aHandle);
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis(const GProp_UndefinedAxis *anItem);
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GProp_UndefinedAxis {
	GProp_UndefinedAxis* GetObject() {
	return (GProp_UndefinedAxis*)$self->Access();
	}
};
%extend Handle_GProp_UndefinedAxis {
	~Handle_GProp_UndefinedAxis() {
	printf("Call custom destructor for instance of Handle_GProp_UndefinedAxis\n");
	}
};

%nodefaultctor GProp_GProps;
class GProp_GProps {
	public:
		%feature("autodoc", "1");
		~GProp_GProps();
		%feature("autodoc", "1");
		GProp_GProps();
		%feature("autodoc", "1");
		GProp_GProps(const gp_Pnt &SystemLocation);
		%feature("autodoc", "1");
		void Add(const GProp_GProps &Item, const Standard_Real Density=1.0e+0);
		%feature("autodoc", "1");
		Standard_Real Mass() const;
		%feature("autodoc", "1");
		gp_Pnt CentreOfMass() const;
		%feature("autodoc", "1");
		gp_Mat MatrixOfInertia() const;
		%feature("autodoc", "1");
		void StaticMoments(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real MomentOfInertia(const gp_Ax1 &A) const;
		%feature("autodoc", "1");
		GProp_PrincipalProps PrincipalProperties() const;
		%feature("autodoc", "1");
		Standard_Real RadiusOfGyration(const gp_Ax1 &A) const;

};

%nodefaultctor GProp_PGProps;
class GProp_PGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		~GProp_PGProps();
		%feature("autodoc", "1");
		GProp_PGProps();
		%feature("autodoc", "1");
		void AddPoint(const gp_Pnt &P);
		%feature("autodoc", "1");
		void AddPoint(const gp_Pnt &P, const Standard_Real Density);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array1OfPnt &Pnts);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array2OfPnt &Pnts);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array1OfPnt &Pnts, const TColStd_Array1OfReal &Density);
		%feature("autodoc", "1");
		GProp_PGProps(const TColgp_Array2OfPnt &Pnts, const TColStd_Array2OfReal &Density);
		%feature("autodoc", "1");
		gp_Pnt Barycentre(const TColgp_Array1OfPnt &Pnts);
		%feature("autodoc", "1");
		gp_Pnt Barycentre(const TColgp_Array2OfPnt &Pnts);
		%feature("autodoc", "1");
		void Barycentre(const TColgp_Array1OfPnt &Pnts, const TColStd_Array1OfReal &Density, Standard_Real &OutValue, gp_Pnt & G);
		%feature("autodoc", "1");
		void Barycentre(const TColgp_Array2OfPnt &Pnts, const TColStd_Array2OfReal &Density, Standard_Real &OutValue, gp_Pnt & G);

};

%nodefaultctor GProp_PrincipalProps;
class GProp_PrincipalProps {
	public:
		%feature("autodoc", "1");
		~GProp_PrincipalProps();
		%feature("autodoc", "1");
		GProp_PrincipalProps();
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryAxis() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryAxis(const Standard_Real aTol) const;
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSymmetryPoint(const Standard_Real aTol) const;
		%feature("autodoc", "1");
		void Moments(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const gp_Vec & FirstAxisOfInertia() const;
		%feature("autodoc", "1");
		const gp_Vec & SecondAxisOfInertia() const;
		%feature("autodoc", "1");
		const gp_Vec & ThirdAxisOfInertia() const;
		%feature("autodoc", "1");
		void RadiusOfGyration(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};

%nodefaultctor GProp_UndefinedAxis;
class GProp_UndefinedAxis : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		GProp_UndefinedAxis();
		%feature("autodoc", "1");
		GProp_UndefinedAxis(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_GProp_UndefinedAxis NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GProp_UndefinedAxis {
	Handle_GProp_UndefinedAxis GetHandle() {
	return *(Handle_GProp_UndefinedAxis*) &$self;
	}
};
%extend GProp_UndefinedAxis {
	~GProp_UndefinedAxis() {
	printf("Call custom destructor for instance of GProp_UndefinedAxis\n");
	}
};

%nodefaultctor GProp_SelGProps;
class GProp_SelGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		~GProp_SelGProps();
		%feature("autodoc", "1");
		GProp_SelGProps();
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Cylinder &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Cone &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Sphere &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		GProp_SelGProps(const gp_Torus &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &SLocation);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Cone &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);
		%feature("autodoc", "1");
		void Perform(const gp_Torus &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);

};

%nodefaultctor GProp_CelGProps;
class GProp_CelGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		~GProp_CelGProps();
		%feature("autodoc", "1");
		GProp_CelGProps();
		%feature("autodoc", "1");
		GProp_CelGProps(const gp_Circ &C, const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		GProp_CelGProps(const gp_Circ &C, const Standard_Real U1, const Standard_Real U2, const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		GProp_CelGProps(const gp_Lin &C, const Standard_Real U1, const Standard_Real U2, const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &CLocation);
		%feature("autodoc", "1");
		void Perform(const gp_Circ &C, const Standard_Real U1, const Standard_Real U2);
		%feature("autodoc", "1");
		void Perform(const gp_Lin &C, const Standard_Real U1, const Standard_Real U2);

};

%nodefaultctor GProp_VelGProps;
class GProp_VelGProps : public GProp_GProps {
	public:
		%feature("autodoc", "1");
		~GProp_VelGProps();
		%feature("autodoc", "1");
		GProp_VelGProps();
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Cylinder &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Cone &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Sphere &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		GProp_VelGProps(const gp_Torus &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2, const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		void SetLocation(const gp_Pnt &VLocation);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Cone &S, const Standard_Real Alpha1, const Standard_Real Alpha2, const Standard_Real Z1, const Standard_Real Z2);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);
		%feature("autodoc", "1");
		void Perform(const gp_Torus &S, const Standard_Real Teta1, const Standard_Real Teta2, const Standard_Real Alpha1, const Standard_Real Alpha2);

};

%nodefaultctor GProp;
class GProp {
	public:
		%feature("autodoc", "1");
		~GProp();
		%feature("autodoc", "1");
		GProp();
		%feature("autodoc", "1");
		void HOperator(const gp_Pnt &G, const gp_Pnt &Q, const Standard_Real Mass, gp_Mat & Operator);

};

%nodefaultctor GProp_PEquation;
class GProp_PEquation {
	public:
		%feature("autodoc", "1");
		~GProp_PEquation();
		%feature("autodoc", "1");
		GProp_PEquation(const TColgp_Array1OfPnt &Pnts, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar() const;
		%feature("autodoc", "1");
		Standard_Boolean IsLinear() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSpace() const;
		%feature("autodoc", "1");
		gp_Pln Plane() const;
		%feature("autodoc", "1");
		gp_Lin Line() const;
		%feature("autodoc", "1");
		gp_Pnt Point() const;
		%feature("autodoc", "1");
		void Box(gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;

};