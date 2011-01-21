/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Voxel
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Voxel_renames.i


%include Voxel_required_python_modules.i


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
		Handle_Voxel_Prs & operator=(const Handle_Voxel_Prs &aHandle);
		%feature("autodoc", "1");
		Handle_Voxel_Prs & operator=(const Voxel_Prs *anItem);
		%feature("autodoc", "1");
		static		Handle_Voxel_Prs const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Voxel_Prs {
	Voxel_Prs* GetObject() {
	return (Voxel_Prs*)$self->Access();
	}
};
%feature("shadow") Handle_Voxel_Prs::~Handle_Voxel_Prs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Voxel_Prs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Voxel_DS;
class Voxel_DS {
	public:
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
		%feature("autodoc","GetCenter(Standard_Integer ix, Standard_Integer iy, Standard_Integer iz) -> [Standard_Real, Standard_Real, Standard_Real]");

		void GetCenter(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetVoxel(Standard_Real x, Standard_Real y, Standard_Real z) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		Standard_Boolean GetVoxel(const Standard_Real x, const Standard_Real y, const Standard_Real z, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","GetVoxelX(Standard_Real x) -> Standard_Integer");

		Standard_Boolean GetVoxelX(const Standard_Real x, Standard_Integer &OutValue) const;
		%feature("autodoc","GetVoxelY(Standard_Real y) -> Standard_Integer");

		Standard_Boolean GetVoxelY(const Standard_Real y, Standard_Integer &OutValue) const;
		%feature("autodoc","GetVoxelZ(Standard_Real z) -> Standard_Integer");

		Standard_Boolean GetVoxelZ(const Standard_Real z, Standard_Integer &OutValue) const;

};
%feature("shadow") Voxel_DS::~Voxel_DS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_DS {
	void _kill_pointed() {
		delete $self;
	}
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
		void SetZero();
		%feature("autodoc", "1");
		void Set(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, const Standard_Boolean data=1);
		%feature("autodoc", "1");
		Standard_Boolean Get(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz) const;

};
%feature("shadow") Voxel_BoolDS::~Voxel_BoolDS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_BoolDS {
	void _kill_pointed() {
		delete $self;
	}
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
		void SetZero();
		%feature("autodoc", "1");
		void Set(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, const Standard_ShortReal data);
		%feature("autodoc", "1");
		Standard_ShortReal Get(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz) const;

};
%feature("shadow") Voxel_FloatDS::~Voxel_FloatDS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_FloatDS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Voxel_CollisionDetection;
class Voxel_CollisionDetection {
	public:
		%feature("autodoc", "1");
		Voxel_CollisionDetection();
		%feature("autodoc", "1");
		Voxel_CollisionDetection(const Standard_Real deflection, const Standard_Integer nbx, const Standard_Integer nby, const Standard_Integer nbz);
		%feature("autodoc", "1");
		Standard_Integer AddShape(const TopoDS_Shape shape);
		%feature("autodoc", "1");
		Standard_Boolean ReplaceShape(const Standard_Integer ishape, const TopoDS_Shape shape);
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

};
%feature("shadow") Voxel_CollisionDetection::~Voxel_CollisionDetection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_CollisionDetection {
	void _kill_pointed() {
		delete $self;
	}
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Voxel_Prs::~Voxel_Prs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_Prs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Voxel_FastConverter;
class Voxel_FastConverter {
	public:
		%feature("autodoc", "1");
		Voxel_FastConverter(const TopoDS_Shape shape, Voxel_BoolDS & voxels, const Standard_Real delfection=1.00000000000000005551115123125782702118158340454e-1, const Standard_Integer nbx=10, const Standard_Integer nby=10, const Standard_Integer nbz=10, const Standard_Integer nbthreads=1);
		%feature("autodoc", "1");
		Voxel_FastConverter(const TopoDS_Shape shape, Voxel_ColorDS & voxels, const Standard_Real delfection=1.00000000000000005551115123125782702118158340454e-1, const Standard_Integer nbx=10, const Standard_Integer nby=10, const Standard_Integer nbz=10, const Standard_Integer nbthreads=1);
		%feature("autodoc","Convert(Standard_Integer ithread=1) -> Standard_Integer");

		Standard_Boolean Convert(Standard_Integer &OutValue, const Standard_Integer ithread=1);
		%feature("autodoc", "1");
		Standard_Boolean FillInVolume(const Standard_Byte inner, const Standard_Integer ithread=1);
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") Voxel_FastConverter::~Voxel_FastConverter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_FastConverter {
	void _kill_pointed() {
		delete $self;
	}
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
		void SetZero();
		%feature("autodoc", "1");
		void Set(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz, const Standard_Byte data);
		%feature("autodoc", "1");
		Standard_Byte Get(const Standard_Integer ix, const Standard_Integer iy, const Standard_Integer iz) const;

};
%feature("shadow") Voxel_ColorDS::~Voxel_ColorDS %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_ColorDS {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Voxel_BooleanOperation;
class Voxel_BooleanOperation {
	public:
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
%feature("shadow") Voxel_BooleanOperation::~Voxel_BooleanOperation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_BooleanOperation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Voxel_Selector;
class Voxel_Selector {
	public:
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
		%feature("autodoc","Detect(Standard_Integer winx, Standard_Integer winy) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		Standard_Boolean Detect(const Standard_Integer winx, const Standard_Integer winy, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);

};
%feature("shadow") Voxel_Selector::~Voxel_Selector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Voxel_Selector {
	void _kill_pointed() {
		delete $self;
	}
};
