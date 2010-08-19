/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

%module Contap
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Contap_renames.i


%include Contap_required_python_modules.i


%include Contap_dependencies.i


%include Contap_headers.i


enum Contap_TFunction {
	Contap_ContourStd,
	Contap_ContourPrs,
	Contap_DraftStd,
	Contap_DraftPrs,
	};

enum Contap_IType {
	Contap_Lin,
	Contap_Circle,
	Contap_Walking,
	Contap_Restriction,
	};



%nodefaultctor Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour;
class Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour();
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour(const Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour(const Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour *anItem);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour & operator=(const Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour & operator=(const Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour *anItem);
		%feature("autodoc", "1");
		static		Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour {
	Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour* GetObject() {
	return (Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour*)$self->Access();
	}
};
%feature("shadow") Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour::~Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour;
class Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour();
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour(const Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour(const Contap_SequenceNodeOfTheSequenceOfLineOfContour *anItem);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour & operator=(const Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour & operator=(const Contap_SequenceNodeOfTheSequenceOfLineOfContour *anItem);
		%feature("autodoc", "1");
		static		Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour {
	Contap_SequenceNodeOfTheSequenceOfLineOfContour* GetObject() {
	return (Contap_SequenceNodeOfTheSequenceOfLineOfContour*)$self->Access();
	}
};
%feature("shadow") Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour::~Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour;
class Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour();
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour(const Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour(const Contap_SequenceNodeOfTheSequenceOfPointOfContour *anItem);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour & operator=(const Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour & operator=(const Contap_SequenceNodeOfTheSequenceOfPointOfContour *anItem);
		%feature("autodoc", "1");
		static		Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour {
	Contap_SequenceNodeOfTheSequenceOfPointOfContour* GetObject() {
	return (Contap_SequenceNodeOfTheSequenceOfPointOfContour*)$self->Access();
	}
};
%feature("shadow") Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour::~Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour;
class Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour();
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour(const Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour(const Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour *anItem);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour & operator=(const Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour & operator=(const Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour *anItem);
		%feature("autodoc", "1");
		static		Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour {
	Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour* GetObject() {
	return (Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour*)$self->Access();
	}
};
%feature("shadow") Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour::~Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour;
class Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour();
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour(const Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour(const Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour *anItem);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour & operator=(const Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour & operator=(const Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour *anItem);
		%feature("autodoc", "1");
		static		Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour {
	Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour* GetObject() {
	return (Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour*)$self->Access();
	}
};
%feature("shadow") Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour::~Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Contap_TheIWLineOfTheIWalkingOfContour;
class Handle_Contap_TheIWLineOfTheIWalkingOfContour : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour();
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour(const Handle_Contap_TheIWLineOfTheIWalkingOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour(const Contap_TheIWLineOfTheIWalkingOfContour *anItem);
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour & operator=(const Handle_Contap_TheIWLineOfTheIWalkingOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour & operator=(const Contap_TheIWLineOfTheIWalkingOfContour *anItem);
		%feature("autodoc", "1");
		static		Handle_Contap_TheIWLineOfTheIWalkingOfContour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Contap_TheIWLineOfTheIWalkingOfContour {
	Contap_TheIWLineOfTheIWalkingOfContour* GetObject() {
	return (Contap_TheIWLineOfTheIWalkingOfContour*)$self->Access();
	}
};
%feature("shadow") Handle_Contap_TheIWLineOfTheIWalkingOfContour::~Handle_Contap_TheIWLineOfTheIWalkingOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Contap_TheIWLineOfTheIWalkingOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Contap_TheHSequenceOfPointOfContour;
class Handle_Contap_TheHSequenceOfPointOfContour : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Contap_TheHSequenceOfPointOfContour();
		%feature("autodoc", "1");
		Handle_Contap_TheHSequenceOfPointOfContour(const Handle_Contap_TheHSequenceOfPointOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_TheHSequenceOfPointOfContour(const Contap_TheHSequenceOfPointOfContour *anItem);
		%feature("autodoc", "1");
		Handle_Contap_TheHSequenceOfPointOfContour & operator=(const Handle_Contap_TheHSequenceOfPointOfContour &aHandle);
		%feature("autodoc", "1");
		Handle_Contap_TheHSequenceOfPointOfContour & operator=(const Contap_TheHSequenceOfPointOfContour *anItem);
		%feature("autodoc", "1");
		static		Handle_Contap_TheHSequenceOfPointOfContour const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Contap_TheHSequenceOfPointOfContour {
	Contap_TheHSequenceOfPointOfContour* GetObject() {
	return (Contap_TheHSequenceOfPointOfContour*)$self->Access();
	}
};
%feature("shadow") Handle_Contap_TheHSequenceOfPointOfContour::~Handle_Contap_TheHSequenceOfPointOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Contap_TheHSequenceOfPointOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour;
class Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour(const Contap_ThePathPointOfTheSearchOfContour &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Contap_ThePathPointOfTheSearchOfContour & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour {
	Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour GetHandle() {
	return *(Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour*) &$self;
	}
};
%extend Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour::~Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheSurfFunctionOfContour;
class Contap_TheSurfFunctionOfContour : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		Contap_TheSurfFunctionOfContour();
		%feature("autodoc", "1");
		void Set(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		void Set(const gp_Pnt &Eye);
		%feature("autodoc", "1");
		void Set(const gp_Dir &Direction);
		%feature("autodoc", "1");
		void Set(const gp_Dir &Direction, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Set(const gp_Pnt &Eye, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Set(const Standard_Real Tolerance);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		Standard_Real Root() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		const gp_Pnt & Point() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangent();
		%feature("autodoc", "1");
		const gp_Vec & Direction3d();
		%feature("autodoc", "1");
		const gp_Dir2d & Direction2d();
		%feature("autodoc", "1");
		Contap_TFunction FunctionType() const;
		%feature("autodoc", "1");
		const gp_Pnt & Eye() const;
		%feature("autodoc", "1");
		const gp_Dir & Direction() const;
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HSurface & Surface() const;

};
%feature("shadow") Contap_TheSurfFunctionOfContour::~Contap_TheSurfFunctionOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheSurfFunctionOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheSequenceOfPointOfContour;
class Contap_TheSequenceOfPointOfContour : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Contap_TheSequenceOfPointOfContour();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Contap_TheSequenceOfPointOfContour & Assign(const Contap_TheSequenceOfPointOfContour &Other);
		%feature("autodoc", "1");
		const Contap_TheSequenceOfPointOfContour & operator=(const Contap_TheSequenceOfPointOfContour &Other);
		%feature("autodoc", "1");
		void Append(const Contap_ThePointOfContour &T);
		%feature("autodoc", "1");
		void Append(Contap_TheSequenceOfPointOfContour & S);
		%feature("autodoc", "1");
		void Prepend(const Contap_ThePointOfContour &T);
		%feature("autodoc", "1");
		void Prepend(Contap_TheSequenceOfPointOfContour & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Contap_ThePointOfContour &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Contap_TheSequenceOfPointOfContour & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Contap_ThePointOfContour &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Contap_TheSequenceOfPointOfContour & S);
		%feature("autodoc", "1");
		const Contap_ThePointOfContour & First() const;
		%feature("autodoc", "1");
		const Contap_ThePointOfContour & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Contap_TheSequenceOfPointOfContour & S);
		%feature("autodoc", "1");
		const Contap_ThePointOfContour & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Contap_ThePointOfContour & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Contap_ThePointOfContour &I);
		%feature("autodoc", "1");
		Contap_ThePointOfContour & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Contap_ThePointOfContour & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Contap_TheSequenceOfPointOfContour::~Contap_TheSequenceOfPointOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheSequenceOfPointOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_HSurfaceTool;
class Contap_HSurfaceTool {
	public:
		%feature("autodoc", "1");
		Contap_HSurfaceTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real FirstVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastUParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Real LastVParameter(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		static		Standard_Integer NbUIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Standard_Integer NbVIntervals(const Handle_Adaptor3d_HSurface &Surf, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void UIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		void VIntervals(const Handle_Adaptor3d_HSurface &Surf, TColStd_Array1OfReal & Tab, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface UTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HSurface VTrim(const Handle_Adaptor3d_HSurface &Surf, const Standard_Real F, const Standard_Real L, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVClosed(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsUPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Real UPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVPeriodic(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Real VPeriod(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Pnt Value(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		static		void D0(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		static		void D1(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V);
		%feature("autodoc", "1");
		static		void D2(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV);
		%feature("autodoc", "1");
		static		void D3(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV);
		%feature("autodoc", "1");
		static		gp_Vec DN(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, const Standard_Integer Nu, const Standard_Integer Nv);
		%feature("autodoc", "1");
		static		Standard_Real UResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		Standard_Real VResolution(const Handle_Adaptor3d_HSurface &S, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_SurfaceType GetType(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Pln Plane(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Cylinder Cylinder(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Cone Cone(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Torus Torus(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Sphere Sphere(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Handle_Geom_BezierSurface Bezier(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Handle_Geom_BSplineSurface BSpline(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Ax1 AxeOfRevolution(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		gp_Dir Direction(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Handle_Adaptor3d_HCurve BasisCurve(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S, const Standard_Real v1, const Standard_Real v2);

};
%feature("shadow") Contap_HSurfaceTool::~Contap_HSurfaceTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_HSurfaceTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceOfSegmentOfTheSearchOfContour;
class Contap_SequenceOfSegmentOfTheSearchOfContour : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Contap_SequenceOfSegmentOfTheSearchOfContour();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Contap_SequenceOfSegmentOfTheSearchOfContour & Assign(const Contap_SequenceOfSegmentOfTheSearchOfContour &Other);
		%feature("autodoc", "1");
		const Contap_SequenceOfSegmentOfTheSearchOfContour & operator=(const Contap_SequenceOfSegmentOfTheSearchOfContour &Other);
		%feature("autodoc", "1");
		void Append(const Contap_TheSegmentOfTheSearchOfContour &T);
		%feature("autodoc", "1");
		void Append(Contap_SequenceOfSegmentOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		void Prepend(const Contap_TheSegmentOfTheSearchOfContour &T);
		%feature("autodoc", "1");
		void Prepend(Contap_SequenceOfSegmentOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Contap_TheSegmentOfTheSearchOfContour &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Contap_SequenceOfSegmentOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Contap_TheSegmentOfTheSearchOfContour &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Contap_SequenceOfSegmentOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		const Contap_TheSegmentOfTheSearchOfContour & First() const;
		%feature("autodoc", "1");
		const Contap_TheSegmentOfTheSearchOfContour & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Contap_SequenceOfSegmentOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		const Contap_TheSegmentOfTheSearchOfContour & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Contap_TheSegmentOfTheSearchOfContour & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Contap_TheSegmentOfTheSearchOfContour &I);
		%feature("autodoc", "1");
		Contap_TheSegmentOfTheSearchOfContour & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Contap_TheSegmentOfTheSearchOfContour & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Contap_SequenceOfSegmentOfTheSearchOfContour::~Contap_SequenceOfSegmentOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceOfSegmentOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheSegmentOfTheSearchOfContour;
class Contap_TheSegmentOfTheSearchOfContour {
	public:
		%feature("autodoc", "1");
		Contap_TheSegmentOfTheSearchOfContour();
		%feature("autodoc", "1");
		void SetValue(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc", "1");
		void SetLimitPoint(const Contap_ThePathPointOfTheSearchOfContour &V, const Standard_Boolean First);
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Curve() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		const Contap_ThePathPointOfTheSearchOfContour & FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const Contap_ThePathPointOfTheSearchOfContour & LastPoint() const;

};
%feature("shadow") Contap_TheSegmentOfTheSearchOfContour::~Contap_TheSegmentOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheSegmentOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheSearchOfContour;
class Contap_TheSearchOfContour {
	public:
		%feature("autodoc", "1");
		Contap_TheSearchOfContour();
		%feature("autodoc", "1");
		void Perform(Contap_TheArcFunctionOfContour & F, const Handle_Adaptor3d_TopolTool &Domain, const Standard_Real TolBoundary, const Standard_Real TolTangency);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean AllArcSolution() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const Contap_ThePathPointOfTheSearchOfContour & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		const Contap_TheSegmentOfTheSearchOfContour & Segment(const Standard_Integer Index) const;

};
%feature("shadow") Contap_TheSearchOfContour::~Contap_TheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheSurfPropsOfContour;
class Contap_TheSurfPropsOfContour {
	public:
		%feature("autodoc", "1");
		Contap_TheSurfPropsOfContour();
		%feature("autodoc", "1");
		static		void Normale(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & N);
		%feature("autodoc", "1");
		static		void DerivAndNorm(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & d1u, gp_Vec & d1v, gp_Vec & N);
		%feature("autodoc", "1");
		static		void NormAndDn(const Handle_Adaptor3d_HSurface &S, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Vec & N, gp_Vec & Dnu, gp_Vec & Dnv);

};
%feature("shadow") Contap_TheSurfPropsOfContour::~Contap_TheSurfPropsOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheSurfPropsOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheHSequenceOfPointOfContour;
class Contap_TheHSequenceOfPointOfContour : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Contap_TheHSequenceOfPointOfContour();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Contap_ThePointOfContour &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Contap_TheHSequenceOfPointOfContour &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Contap_ThePointOfContour &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Contap_TheHSequenceOfPointOfContour &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Contap_ThePointOfContour &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Contap_TheHSequenceOfPointOfContour &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Contap_ThePointOfContour &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Contap_TheHSequenceOfPointOfContour &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Contap_TheHSequenceOfPointOfContour Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Contap_ThePointOfContour &anItem);
		%feature("autodoc", "1");
		const Contap_ThePointOfContour & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Contap_ThePointOfContour & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Contap_TheSequenceOfPointOfContour & Sequence() const;
		%feature("autodoc", "1");
		Contap_TheSequenceOfPointOfContour & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Contap_TheHSequenceOfPointOfContour ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Contap_TheHSequenceOfPointOfContour {
	Handle_Contap_TheHSequenceOfPointOfContour GetHandle() {
	return *(Handle_Contap_TheHSequenceOfPointOfContour*) &$self;
	}
};
%extend Contap_TheHSequenceOfPointOfContour {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Contap_TheHSequenceOfPointOfContour::~Contap_TheHSequenceOfPointOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheHSequenceOfPointOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_Contour;
class Contap_Contour {
	public:
		%feature("autodoc", "1");
		Contap_Contour();
		%feature("autodoc", "1");
		Contap_Contour(const gp_Vec &Direction);
		%feature("autodoc", "1");
		Contap_Contour(const gp_Vec &Direction, const Standard_Real Angle);
		%feature("autodoc", "1");
		Contap_Contour(const gp_Pnt &Eye);
		%feature("autodoc", "1");
		Contap_Contour(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain, const gp_Vec &Direction);
		%feature("autodoc", "1");
		Contap_Contour(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain, const gp_Vec &Direction, const Standard_Real Angle);
		%feature("autodoc", "1");
		Contap_Contour(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain, const gp_Pnt &Eye);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain, const gp_Vec &Direction);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain, const gp_Vec &Direction, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &Domain, const gp_Pnt &Eye);
		%feature("autodoc", "1");
		void Init(const gp_Vec &Direction);
		%feature("autodoc", "1");
		void Init(const gp_Vec &Direction, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Init(const gp_Pnt &Eye);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const Contap_TheLineOfContour & Line(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Contap_TheSurfFunctionOfContour & SurfaceFunction();

};
%feature("shadow") Contap_Contour::~Contap_Contour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_Contour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheLineOfContour;
class Contap_TheLineOfContour {
	public:
		%feature("autodoc", "1");
		Contap_TheLineOfContour();
		%feature("autodoc", "1");
		void SetLineOn2S(const Handle_IntSurf_LineOn2S &L);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Handle_IntSurf_LineOn2S & LineOn2S() const;
		%feature("autodoc", "1");
		void ResetSeqOfVertex();
		%feature("autodoc", "1");
		void Add(const IntSurf_PntOn2S &POn2S);
		%feature("autodoc", "1");
		void SetValue(const gp_Lin &L);
		%feature("autodoc", "1");
		void SetValue(const gp_Circ &C);
		%feature("autodoc", "1");
		void SetValue(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc", "1");
		void Add(const Contap_ThePointOfContour &P);
		%feature("autodoc", "1");
		Standard_Integer NbVertex() const;
		%feature("autodoc", "1");
		Contap_ThePointOfContour & Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Contap_IType TypeContour() const;
		%feature("autodoc", "1");
		Standard_Integer NbPnts() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Lin Line() const;
		%feature("autodoc", "1");
		gp_Circ Circle() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Arc() const;
		%feature("autodoc", "1");
		void SetTransitionOnS(const IntSurf_TypeTrans T);
		%feature("autodoc", "1");
		IntSurf_TypeTrans TransitionOnS() const;

};
%feature("shadow") Contap_TheLineOfContour::~Contap_TheLineOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheLineOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceOfPathPointOfTheSearchOfContour;
class Contap_SequenceOfPathPointOfTheSearchOfContour : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Contap_SequenceOfPathPointOfTheSearchOfContour();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Contap_SequenceOfPathPointOfTheSearchOfContour & Assign(const Contap_SequenceOfPathPointOfTheSearchOfContour &Other);
		%feature("autodoc", "1");
		const Contap_SequenceOfPathPointOfTheSearchOfContour & operator=(const Contap_SequenceOfPathPointOfTheSearchOfContour &Other);
		%feature("autodoc", "1");
		void Append(const Contap_ThePathPointOfTheSearchOfContour &T);
		%feature("autodoc", "1");
		void Append(Contap_SequenceOfPathPointOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		void Prepend(const Contap_ThePathPointOfTheSearchOfContour &T);
		%feature("autodoc", "1");
		void Prepend(Contap_SequenceOfPathPointOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Contap_ThePathPointOfTheSearchOfContour &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Contap_SequenceOfPathPointOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Contap_ThePathPointOfTheSearchOfContour &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Contap_SequenceOfPathPointOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		const Contap_ThePathPointOfTheSearchOfContour & First() const;
		%feature("autodoc", "1");
		const Contap_ThePathPointOfTheSearchOfContour & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Contap_SequenceOfPathPointOfTheSearchOfContour & S);
		%feature("autodoc", "1");
		const Contap_ThePathPointOfTheSearchOfContour & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Contap_ThePathPointOfTheSearchOfContour & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Contap_ThePathPointOfTheSearchOfContour &I);
		%feature("autodoc", "1");
		Contap_ThePathPointOfTheSearchOfContour & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Contap_ThePathPointOfTheSearchOfContour & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Contap_SequenceOfPathPointOfTheSearchOfContour::~Contap_SequenceOfPathPointOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceOfPathPointOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour;
class Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour(const Handle_Contap_TheIWLineOfTheIWalkingOfContour &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour {
	Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour GetHandle() {
	return *(Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour*) &$self;
	}
};
%extend Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour::~Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceNodeOfTheSequenceOfLineOfContour;
class Contap_SequenceNodeOfTheSequenceOfLineOfContour : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Contap_SequenceNodeOfTheSequenceOfLineOfContour(const Contap_TheLineOfContour &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Contap_TheLineOfContour & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Contap_SequenceNodeOfTheSequenceOfLineOfContour {
	Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour GetHandle() {
	return *(Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour*) &$self;
	}
};
%extend Contap_SequenceNodeOfTheSequenceOfLineOfContour {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Contap_SequenceNodeOfTheSequenceOfLineOfContour::~Contap_SequenceNodeOfTheSequenceOfLineOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceNodeOfTheSequenceOfLineOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheIWLineOfTheIWalkingOfContour;
class Contap_TheIWLineOfTheIWalkingOfContour : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Contap_TheIWLineOfTheIWalkingOfContour();
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void Cut(const Standard_Integer Index);
		%feature("autodoc", "1");
		void AddPoint(const IntSurf_PntOn2S &P);
		%feature("autodoc", "1");
		void AddStatusFirst(const Standard_Boolean Closed, const Standard_Boolean HasFirst);
		%feature("autodoc", "1");
		void AddStatusFirst(const Standard_Boolean Closed, const Standard_Boolean HasFirst, const Standard_Integer Index, const IntSurf_PathPoint &P);
		%feature("autodoc", "1");
		void AddStatusFirstLast(const Standard_Boolean Closed, const Standard_Boolean HasFirst, const Standard_Boolean HasLast);
		%feature("autodoc", "1");
		void AddStatusLast(const Standard_Boolean HasLast);
		%feature("autodoc", "1");
		void AddStatusLast(const Standard_Boolean HasLast, const Standard_Integer Index, const IntSurf_PathPoint &P);
		%feature("autodoc", "1");
		void AddIndexPassing(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetTangentVector(const gp_Vec &V, const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetTangencyAtBegining(const Standard_Boolean IsTangent);
		%feature("autodoc", "1");
		void SetTangencyAtEnd(const Standard_Boolean IsTangent);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntSurf_PntOn2S & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IntSurf_LineOn2S & Line() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastPoint() const;
		%feature("autodoc", "1");
		const IntSurf_PathPoint & FirstPoint() const;
		%feature("autodoc", "1");
		Standard_Integer FirstPointIndex() const;
		%feature("autodoc", "1");
		const IntSurf_PathPoint & LastPoint() const;
		%feature("autodoc", "1");
		Standard_Integer LastPointIndex() const;
		%feature("autodoc", "1");
		Standard_Integer NbPassingPoint() const;
		%feature("autodoc","PassingPoint(Standard_Integer Index) -> [Standard_Integer, Standard_Integer]");

		void PassingPoint(const Standard_Integer Index, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","TangentVector() -> Standard_Integer");

		const gp_Vec & TangentVector(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangentAtBegining() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTangentAtEnd() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Contap_TheIWLineOfTheIWalkingOfContour {
	Handle_Contap_TheIWLineOfTheIWalkingOfContour GetHandle() {
	return *(Handle_Contap_TheIWLineOfTheIWalkingOfContour*) &$self;
	}
};
%extend Contap_TheIWLineOfTheIWalkingOfContour {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Contap_TheIWLineOfTheIWalkingOfContour::~Contap_TheIWLineOfTheIWalkingOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheIWLineOfTheIWalkingOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_ContAna;
class Contap_ContAna {
	public:
		%feature("autodoc", "1");
		Contap_ContAna();
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S, const gp_Dir &D);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S, const gp_Dir &D, const Standard_Real Ang);
		%feature("autodoc", "1");
		void Perform(const gp_Sphere &S, const gp_Pnt &Eye);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &C, const gp_Dir &D);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &C, const gp_Dir &D, const Standard_Real Ang);
		%feature("autodoc", "1");
		void Perform(const gp_Cylinder &C, const gp_Pnt &Eye);
		%feature("autodoc", "1");
		void Perform(const gp_Cone &C, const gp_Dir &D);
		%feature("autodoc", "1");
		void Perform(const gp_Cone &C, const gp_Dir &D, const Standard_Real Ang);
		%feature("autodoc", "1");
		void Perform(const gp_Cone &C, const gp_Pnt &Eye);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbContours() const;
		%feature("autodoc", "1");
		GeomAbs_CurveType TypeContour() const;
		%feature("autodoc", "1");
		gp_Circ Circle() const;
		%feature("autodoc", "1");
		gp_Lin Line(const Standard_Integer Index) const;

};
%feature("shadow") Contap_ContAna::~Contap_ContAna %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_ContAna {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_HContTool;
class Contap_HContTool {
	public:
		%feature("autodoc", "1");
		Contap_HContTool();
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesU(const Handle_Adaptor3d_HSurface &S, const Standard_Real u1, const Standard_Real u2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesV(const Handle_Adaptor3d_HSurface &S, const Standard_Real v1, const Standard_Real v2);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplePoints(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc","SamplePoint(const S, Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		static		void SamplePoint(const Handle_Adaptor3d_HSurface &S, const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean HasBeenSeen(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamplesOnArc(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc","Bounds(const C) -> [Standard_Real, Standard_Real]");

		static		void Bounds(const Handle_Adaptor2d_HCurve2d &C, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Project(const C, const P) -> Standard_Real");

		static		Standard_Boolean Project(const Handle_Adaptor2d_HCurve2d &C, const gp_Pnt2d &P, Standard_Real &OutValue, gp_Pnt2d & Ptproj);
		%feature("autodoc", "1");
		static		Standard_Real Tolerance(const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real Parameter(const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbPoints(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc","Value(const C, Standard_Integer Index) -> [Standard_Real, Standard_Real]");

		static		void Value(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, gp_Pnt & Pt, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsVertex(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index);
		%feature("autodoc", "1");
		static		void Vertex(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, Handle_Adaptor3d_HVertex & V);
		%feature("autodoc", "1");
		static		Standard_Integer NbSegments(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc","HasFirstPoint(const C, Standard_Integer Index) -> Standard_Integer");

		static		Standard_Boolean HasFirstPoint(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, Standard_Integer &OutValue);
		%feature("autodoc","HasLastPoint(const C, Standard_Integer Index) -> Standard_Integer");

		static		Standard_Boolean HasLastPoint(const Handle_Adaptor2d_HCurve2d &C, const Standard_Integer Index, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		static		Standard_Boolean IsAllSolution(const Handle_Adaptor2d_HCurve2d &C);

};
%feature("shadow") Contap_HContTool::~Contap_HContTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_HContTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceOfIWLineOfTheIWalkingOfContour;
class Contap_SequenceOfIWLineOfTheIWalkingOfContour : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Contap_SequenceOfIWLineOfTheIWalkingOfContour();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Contap_SequenceOfIWLineOfTheIWalkingOfContour & Assign(const Contap_SequenceOfIWLineOfTheIWalkingOfContour &Other);
		%feature("autodoc", "1");
		const Contap_SequenceOfIWLineOfTheIWalkingOfContour & operator=(const Contap_SequenceOfIWLineOfTheIWalkingOfContour &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Contap_TheIWLineOfTheIWalkingOfContour &T);
		%feature("autodoc", "1");
		void Append(Contap_SequenceOfIWLineOfTheIWalkingOfContour & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Contap_TheIWLineOfTheIWalkingOfContour &T);
		%feature("autodoc", "1");
		void Prepend(Contap_SequenceOfIWLineOfTheIWalkingOfContour & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Contap_TheIWLineOfTheIWalkingOfContour &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Contap_SequenceOfIWLineOfTheIWalkingOfContour & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Contap_TheIWLineOfTheIWalkingOfContour &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Contap_SequenceOfIWLineOfTheIWalkingOfContour & S);
		%feature("autodoc", "1");
		const Handle_Contap_TheIWLineOfTheIWalkingOfContour & First() const;
		%feature("autodoc", "1");
		const Handle_Contap_TheIWLineOfTheIWalkingOfContour & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Contap_SequenceOfIWLineOfTheIWalkingOfContour & S);
		%feature("autodoc", "1");
		const Handle_Contap_TheIWLineOfTheIWalkingOfContour & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Contap_TheIWLineOfTheIWalkingOfContour & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Contap_TheIWLineOfTheIWalkingOfContour &I);
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Contap_TheIWLineOfTheIWalkingOfContour & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Contap_SequenceOfIWLineOfTheIWalkingOfContour::~Contap_SequenceOfIWLineOfTheIWalkingOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceOfIWLineOfTheIWalkingOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_ThePathPointOfTheSearchOfContour;
class Contap_ThePathPointOfTheSearchOfContour {
	public:
		%feature("autodoc", "1");
		Contap_ThePathPointOfTheSearchOfContour();
		%feature("autodoc", "1");
		Contap_ThePathPointOfTheSearchOfContour(const gp_Pnt &P, const Standard_Real Tol, const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		Contap_ThePathPointOfTheSearchOfContour(const gp_Pnt &P, const Standard_Real Tol, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &P, const Standard_Real Tol, const Handle_Adaptor3d_HVertex &V, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &P, const Standard_Real Tol, const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Parameter);
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean IsNew() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HVertex & Vertex() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Arc() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;

};
%feature("shadow") Contap_ThePathPointOfTheSearchOfContour::~Contap_ThePathPointOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_ThePathPointOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheSearchInsideOfContour;
class Contap_TheSearchInsideOfContour {
	public:
		%feature("autodoc", "1");
		Contap_TheSearchInsideOfContour();
		%feature("autodoc", "1");
		Contap_TheSearchInsideOfContour(Contap_TheSurfFunctionOfContour & F, const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &T, const Standard_Real Epsilon);
		%feature("autodoc", "1");
		void Perform(Contap_TheSurfFunctionOfContour & F, const Handle_Adaptor3d_HSurface &Surf, const Handle_Adaptor3d_TopolTool &T, const Standard_Real Epsilon);
		%feature("autodoc", "1");
		void Perform(Contap_TheSurfFunctionOfContour & F, const Handle_Adaptor3d_HSurface &Surf, const Standard_Real UStart, const Standard_Real VStart);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		const IntSurf_InteriorPoint & Value(const Standard_Integer Index) const;

};
%feature("shadow") Contap_TheSearchInsideOfContour::~Contap_TheSearchInsideOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheSearchInsideOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheSequenceOfLineOfContour;
class Contap_TheSequenceOfLineOfContour : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Contap_TheSequenceOfLineOfContour();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Contap_TheSequenceOfLineOfContour & Assign(const Contap_TheSequenceOfLineOfContour &Other);
		%feature("autodoc", "1");
		const Contap_TheSequenceOfLineOfContour & operator=(const Contap_TheSequenceOfLineOfContour &Other);
		%feature("autodoc", "1");
		void Append(const Contap_TheLineOfContour &T);
		%feature("autodoc", "1");
		void Append(Contap_TheSequenceOfLineOfContour & S);
		%feature("autodoc", "1");
		void Prepend(const Contap_TheLineOfContour &T);
		%feature("autodoc", "1");
		void Prepend(Contap_TheSequenceOfLineOfContour & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Contap_TheLineOfContour &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Contap_TheSequenceOfLineOfContour & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Contap_TheLineOfContour &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Contap_TheSequenceOfLineOfContour & S);
		%feature("autodoc", "1");
		const Contap_TheLineOfContour & First() const;
		%feature("autodoc", "1");
		const Contap_TheLineOfContour & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Contap_TheSequenceOfLineOfContour & S);
		%feature("autodoc", "1");
		const Contap_TheLineOfContour & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Contap_TheLineOfContour & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Contap_TheLineOfContour &I);
		%feature("autodoc", "1");
		Contap_TheLineOfContour & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Contap_TheLineOfContour & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Contap_TheSequenceOfLineOfContour::~Contap_TheSequenceOfLineOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheSequenceOfLineOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_ThePointOfContour;
class Contap_ThePointOfContour {
	public:
		%feature("autodoc", "1");
		Contap_ThePointOfContour();
		%feature("autodoc", "1");
		Contap_ThePointOfContour(const gp_Pnt &Pt, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &Pt, const Standard_Real U, const Standard_Real V);
		%feature("autodoc", "1");
		void SetParameter(const Standard_Real Para);
		%feature("autodoc", "1");
		void SetVertex(const Handle_Adaptor3d_HVertex &V);
		%feature("autodoc", "1");
		void SetArc(const Handle_Adaptor2d_HCurve2d &A, const Standard_Real Param, const IntSurf_Transition &TLine, const IntSurf_Transition &TArc);
		%feature("autodoc", "1");
		void SetMultiple();
		%feature("autodoc", "1");
		void SetInternal();
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnLine() const;
		%feature("autodoc","Parameters() -> [Standard_Real, Standard_Real]");

		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnArc() const;
		%feature("autodoc", "1");
		const Handle_Adaptor2d_HCurve2d & Arc() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnArc() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionOnLine() const;
		%feature("autodoc", "1");
		const IntSurf_Transition & TransitionOnArc() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVertex() const;
		%feature("autodoc", "1");
		const Handle_Adaptor3d_HVertex & Vertex() const;
		%feature("autodoc", "1");
		Standard_Boolean IsMultiple() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInternal() const;

};
%feature("shadow") Contap_ThePointOfContour::~Contap_ThePointOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_ThePointOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour;
class Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour(const Contap_TheSegmentOfTheSearchOfContour &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Contap_TheSegmentOfTheSearchOfContour & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour {
	Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour GetHandle() {
	return *(Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour*) &$self;
	}
};
%extend Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour::~Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_SequenceNodeOfTheSequenceOfPointOfContour;
class Contap_SequenceNodeOfTheSequenceOfPointOfContour : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Contap_SequenceNodeOfTheSequenceOfPointOfContour(const Contap_ThePointOfContour &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Contap_ThePointOfContour & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Contap_SequenceNodeOfTheSequenceOfPointOfContour {
	Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour GetHandle() {
	return *(Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour*) &$self;
	}
};
%extend Contap_SequenceNodeOfTheSequenceOfPointOfContour {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Contap_SequenceNodeOfTheSequenceOfPointOfContour::~Contap_SequenceNodeOfTheSequenceOfPointOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_SequenceNodeOfTheSequenceOfPointOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_TheArcFunctionOfContour;
class Contap_TheArcFunctionOfContour : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		Contap_TheArcFunctionOfContour();
		%feature("autodoc", "1");
		void Set(const Handle_Adaptor3d_HSurface &S);
		%feature("autodoc", "1");
		void Set(const gp_Dir &Direction);
		%feature("autodoc", "1");
		void Set(const gp_Dir &Direction, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Set(const gp_Pnt &Eye);
		%feature("autodoc", "1");
		void Set(const gp_Pnt &Eye, const Standard_Real Angle);
		%feature("autodoc", "1");
		void Set(const Handle_Adaptor2d_HCurve2d &A);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer NbSamples() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer GetStateNumber();
		%feature("autodoc", "1");
		const gp_Pnt & Valpoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const IntSurf_Quadric & Quadric() const;

};
%feature("shadow") Contap_TheArcFunctionOfContour::~Contap_TheArcFunctionOfContour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_TheArcFunctionOfContour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Contap_HCurve2dTool;
class Contap_HCurve2dTool {
	public:
		%feature("autodoc", "1");
		Contap_HCurve2dTool();
		%feature("autodoc", "1");
		static		Standard_Real FirstParameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real LastParameter(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		GeomAbs_Shape Continuity(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbIntervals(const Handle_Adaptor2d_HCurve2d &C, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		void Intervals(const Handle_Adaptor2d_HCurve2d &C, TColStd_Array1OfReal & Tab, const GeomAbs_Shape Sh);
		%feature("autodoc", "1");
		static		Standard_Boolean IsClosed(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Boolean IsPeriodic(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Real Period(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Pnt2d Value(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U);
		%feature("autodoc", "1");
		static		void D0(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P);
		%feature("autodoc", "1");
		static		void D1(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T);
		%feature("autodoc", "1");
		static		void D2(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & T, gp_Vec2d & N);
		%feature("autodoc", "1");
		static		void D3(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		static		gp_Vec2d DN(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U, const Standard_Integer N);
		%feature("autodoc", "1");
		static		Standard_Real Resolution(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real R3d);
		%feature("autodoc", "1");
		static		GeomAbs_CurveType GetType(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Lin2d Line(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Circ2d Circle(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Elips2d Ellipse(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Hypr2d Hyperbola(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		gp_Parab2d Parabola(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Handle_Geom2d_BezierCurve Bezier(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Handle_Geom2d_BSplineCurve BSpline(const Handle_Adaptor2d_HCurve2d &C);
		%feature("autodoc", "1");
		static		Standard_Integer NbSamples(const Handle_Adaptor2d_HCurve2d &C, const Standard_Real U0, const Standard_Real U1);

};
%feature("shadow") Contap_HCurve2dTool::~Contap_HCurve2dTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Contap_HCurve2dTool {
	void _kill_pointed() {
		delete $self;
	}
};
