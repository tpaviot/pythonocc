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
%module Voxel

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


%include Voxel_dependencies.i


%include Voxel_headers.i


enum Voxel_VoxelDisplayMode {
	Voxel_VDM_POINTS,
	Voxel_VDM_NEARESTPOINTS,
	Voxel_VDM_BOXES,
	Voxel_VDM_NEARESTBOXES,
	};



%nodefaultctor Handle_Voxel_Prs;
class Handle_Voxel_Prs : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_Voxel_Prs();
		%feature("autodoc", "1");
		Handle_Voxel_Prs(const Handle_Voxel_Prs &aHandle);
		%feature("autodoc", "1");
		Handle_Voxel_Prs(const Voxel_Prs *anItem);
		%feature("autodoc", "1");
		Handle_Voxel_Prs const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Voxel_Prs {
	Voxel_Prs* GetObject() {
	return (Voxel_Prs*)$self->Access();
	}
};
%extend Handle_Voxel_Prs {
	~Handle_Voxel_Prs() {
	printf("Call custom destructor for instance of Handle_Voxel_Prs\n");
	}
};

%nodefaultctor Voxel_DS;
class Voxel_DS {
	public:
		%feature("autodoc", "1");
		~Voxel_DS();
		%feature("autodoc", "1");
		Voxel_DS();
		%feature("autodoc", "1");
		Voxel_DS(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real x_len, const Standard_Real y_len, const Standard_Real z_len, const Standard_Integer nb_x, const Standard_Integer nb_y, const Standard_Integer nb_z);
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real x_len, const Standard_Real y_len, const Standard_Real z_len, const Standard_Integer nb_x, const Standard_Integer nb_y, const Standard_Integer nb_z);
		%feature("autodoc", "1");
		Standard_Real GetX() const;
		%feature("autodoc", "1");
		Standard_Real GetY() const;
		%feature("autodoc", "1");
		Standard_Real GetZ() const;
		%feature("autodoc", "1");
		Standard_Real GetXLen() const;
		%feature("autodoc", "1");
		Standard_Real GetYLen() const;
		%feature("autodoc", "1");
		Standard_Real GetZLen() const;
		%feature("autodoc", "1");
		Standard_Integer GetNbX() const;
		%feature("autodoc", "1");
		Standard_Integer GetNbY() const;
		%feature("autodoc", "1");
		Standard_Integer GetNbZ() const;
		%feature("autodoc", "1");
		void GetCenter(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean GetVoxel(const Standard_Real x, const Standard_Real y, const Standard_Real z, Standard_Integer & ix, Standard_Integer & iy, Standard_Integer & iz) const;
		%feature("autodoc", "1");
		Standard_Boolean GetVoxelX(const Standard_Real x, Standard_Integer & ix) const;
		%feature("autodoc", "1");
		Standard_Boolean GetVoxelY(const Standard_Real y, Standard_Integer & iy) const;
		%feature("autodoc", "1");
		Standard_Boolean GetVoxelZ(const Standard_Real z, Standard_Integer & iz) const;

};

%nodefaultctor Voxel_BoolDS;
class Voxel_BoolDS : public Voxel_DS {
	public:
		%feature("autodoc", "1");
		Voxel_BoolDS();
		%feature("autodoc", "1");
		Voxel_BoolDS(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real x_len, const Standard_Real y_len, const Standard_Real z_len, const Standard_Integer nb_x, const Standard_Integer nb_y, const Standard_Integer nb_z);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Voxel_BoolDS();
		%feature("autodoc", "1");
		void SetZero();
		%feature("autodoc", "1");
		void Set(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, const Standard_Boolean data=1);
		%feature("autodoc", "1");
		Standard_Boolean Get(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz) const;

};

%nodefaultctor Voxel_FloatDS;
class Voxel_FloatDS : public Voxel_DS {
	public:
		%feature("autodoc", "1");
		Voxel_FloatDS();
		%feature("autodoc", "1");
		Voxel_FloatDS(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real x_len, const Standard_Real y_len, const Standard_Real z_len, const Standard_Integer nb_x, const Standard_Integer nb_y, const Standard_Integer nb_z);
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real x_len, const Standard_Real y_len, const Standard_Real z_len, const Standard_Integer nb_x, const Standard_Integer nb_y, const Standard_Integer nb_z);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Voxel_FloatDS();
		%feature("autodoc", "1");
		void SetZero();
		%feature("autodoc", "1");
		void Set(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, const Standard_ShortReal data);
		%feature("autodoc", "1");
		Standard_ShortReal Get(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz) const;

};

%nodefaultctor Voxel_Selector;
class Voxel_Selector {
	public:
		%feature("autodoc", "1");
		~Voxel_Selector();
		%feature("autodoc", "1");
		Voxel_Selector();
		%feature("autodoc", "1");
		Voxel_Selector(const Handle_V3d_View &view);
		%feature("autodoc", "1");
		void Init(const Handle_V3d_View &view);
		%feature("autodoc", "1");
		void SetVoxels(const Voxel_BoolDS &voxels);
		%feature("autodoc", "1");
		void SetVoxels(const Voxel_ColorDS &voxels);
		%feature("autodoc", "1");
		Standard_Boolean Detect(const Standard_Integer winx, const Standard_Integer winy, Standard_Integer & ix, Standard_Integer & iy, Standard_Integer & iz);

};

%nodefaultctor Voxel_Prs;
class Voxel_Prs : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Voxel_Prs();
		%feature("autodoc", "1");
		void SetBoolVoxels(const Standard_Address theVoxels);
		%feature("autodoc", "1");
		void SetColorVoxels(const Standard_Address theVoxels);
		%feature("autodoc", "1");
		void SetTriangulation(const Handle_Poly_Triangulation &theTriangulation);
		%feature("autodoc", "1");
		void SetDisplayMode(const Voxel_VoxelDisplayMode theMode);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &theColor);
		%feature("autodoc", "1");
		void SetColors(const Handle_Quantity_HArray1OfColor &theColors);
		%feature("autodoc", "1");
		void SetPointSize(const Standard_Real theSize);
		%feature("autodoc", "1");
		void SetQuadrangleSize(const Standard_Integer theSize);
		%feature("autodoc", "1");
		virtual		void SetTransparency(const Standard_Real theTransparency);
		%feature("autodoc", "1");
		void Highlight(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void SetDegenerateMode(const Standard_Boolean theDegenerate);
		%feature("autodoc", "1");
		void SetUsageOfGLlists(const Standard_Boolean theUsage);
		%feature("autodoc", "1");
		void SetSmoothPoints(const Standard_Boolean theSmooth);
		%feature("autodoc", "1");
		void SetColorRange(const Standard_Byte theMinValue, const Standard_Byte theMaxValue);
		%feature("autodoc", "1");
		void SetSizeRange(const Standard_Real theDisplayedXMin, const Standard_Real theDisplayedXMax, const Standard_Real theDisplayedYMin, const Standard_Real theDisplayedYMax, const Standard_Real theDisplayedZMin, const Standard_Real theDisplayedZMax);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Voxel_Prs {
	Handle_Voxel_Prs GetHandle() {
	return *(Handle_Voxel_Prs*) &$self;
	}
};
%extend Voxel_Prs {
	~Voxel_Prs() {
	printf("Call custom destructor for instance of Voxel_Prs\n");
	}
};

%nodefaultctor Voxel_BooleanOperation;
class Voxel_BooleanOperation {
	public:
		%feature("autodoc", "1");
		~Voxel_BooleanOperation();
		%feature("autodoc", "1");
		Voxel_BooleanOperation();
		%feature("autodoc", "1");
		Standard_Boolean Fuse(Voxel_BoolDS & theVoxels1, const Voxel_BoolDS &theVoxels2) const;
		%feature("autodoc", "1");
		Standard_Boolean Fuse(Voxel_ColorDS & theVoxels1, const Voxel_ColorDS &theVoxels2) const;
		%feature("autodoc", "1");
		Standard_Boolean Fuse(Voxel_FloatDS & theVoxels1, const Voxel_FloatDS &theVoxels2) const;
		%feature("autodoc", "1");
		Standard_Boolean Cut(Voxel_BoolDS & theVoxels1, const Voxel_BoolDS &theVoxels2) const;
		%feature("autodoc", "1");
		Standard_Boolean Cut(Voxel_ColorDS & theVoxels1, const Voxel_ColorDS &theVoxels2) const;
		%feature("autodoc", "1");
		Standard_Boolean Cut(Voxel_FloatDS & theVoxels1, const Voxel_FloatDS &theVoxels2) const;

};

%nodefaultctor Voxel_FastConverter;
class Voxel_FastConverter {
	public:
		%feature("autodoc", "1");
		Voxel_FastConverter(const TopoDS_Shape &shape, Voxel_BoolDS & voxels, const Standard_Real delfection=1.00000000000000005551115123125782702118158340454e-1, const Standard_Integer nbx=10, const Standard_Integer nby=10, const Standard_Integer nbz=10, const Standard_Integer nbthreads=1);
		%feature("autodoc", "1");
		Voxel_FastConverter(const TopoDS_Shape &shape, Voxel_ColorDS & voxels, const Standard_Real delfection=1.00000000000000005551115123125782702118158340454e-1, const Standard_Integer nbx=10, const Standard_Integer nby=10, const Standard_Integer nbz=10, const Standard_Integer nbthreads=1);
		%feature("autodoc", "1");
		Standard_Boolean Convert(Standard_Integer & progress, const Standard_Integer ithread=1);
		%feature("autodoc", "1");
		Standard_Boolean FillInVolume(const Standard_Byte inner, const Standard_Integer ithread=1);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Voxel_FastConverter();

};

%nodefaultctor Voxel_ColorDS;
class Voxel_ColorDS : public Voxel_DS {
	public:
		%feature("autodoc", "1");
		Voxel_ColorDS();
		%feature("autodoc", "1");
		Voxel_ColorDS(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real x_len, const Standard_Real y_len, const Standard_Real z_len, const Standard_Integer nb_x, const Standard_Integer nb_y, const Standard_Integer nb_z);
		%feature("autodoc", "1");
		virtual		void Init(const Standard_Real x, const Standard_Real y, const Standard_Real z, const Standard_Real x_len, const Standard_Real y_len, const Standard_Real z_len, const Standard_Integer nb_x, const Standard_Integer nb_y, const Standard_Integer nb_z);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Voxel_ColorDS();
		%feature("autodoc", "1");
		void SetZero();
		%feature("autodoc", "1");
		void Set(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, const Standard_Byte data);
		%feature("autodoc", "1");
		Standard_Byte Get(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz) const;

};

%nodefaultctor Voxel_CollisionDetection;
class Voxel_CollisionDetection {
	public:
		%feature("autodoc", "1");
		Voxel_CollisionDetection();
		%feature("autodoc", "1");
		Voxel_CollisionDetection(const Standard_Real deflection, const Standard_Integer nbx, const Standard_Integer nby, const Standard_Integer nbz);
		%feature("autodoc", "1");
		Standard_Integer AddShape(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Standard_Boolean ReplaceShape(const Standard_Integer ishape, const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real deflection);
		%feature("autodoc", "1");
		void SetNbVoxels(const Standard_Integer nbx, const Standard_Integer nby, const Standard_Integer nbz);
		%feature("autodoc", "1");
		void SetBoundaryBox(const Bnd_Box &box);
		%feature("autodoc", "1");
		void SetUsageOfVolume(const Standard_Boolean usage);
		%feature("autodoc", "1");
		void KeepCollisions(const Standard_Boolean keep);
		%feature("autodoc", "1");
		Standard_Boolean Voxelize(const Standard_Integer ishape=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean Compute();
		%feature("autodoc", "1");
		Standard_Boolean HasCollisions() const;
		%feature("autodoc", "1");
		const Voxel_BoolDS & GetCollisions() const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Voxel_CollisionDetection();

};