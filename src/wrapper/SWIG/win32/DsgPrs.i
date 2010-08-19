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

%module DsgPrs
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include DsgPrs_renames.i


%include DsgPrs_required_python_modules.i


%include DsgPrs_dependencies.i


%include DsgPrs_headers.i


enum DsgPrs_ArrowSide {
	DsgPrs_AS_NONE,
	DsgPrs_AS_FIRSTAR,
	DsgPrs_AS_LASTAR,
	DsgPrs_AS_BOTHAR,
	DsgPrs_AS_FIRSTPT,
	DsgPrs_AS_LASTPT,
	DsgPrs_AS_BOTHPT,
	DsgPrs_AS_FIRSTAR_LASTPT,
	DsgPrs_AS_FIRSTPT_LASTAR,
	};



%nodefaultctor DsgPrs_SymbPresentation;
class DsgPrs_SymbPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_SymbPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &OffsetPoint);

};
%feature("shadow") DsgPrs_SymbPresentation::~DsgPrs_SymbPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_SymbPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_FilletRadiusPresentation;
class DsgPrs_FilletRadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_FilletRadiusPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real thevalue, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const gp_Dir &aNormalDir, const gp_Pnt &aBasePnt, const gp_Pnt &aFirstPoint, const gp_Pnt &aSecondPoint, const gp_Pnt &aCenter, const DsgPrs_ArrowSide ArrowPrs, const Standard_Boolean drawRevers, gp_Pnt & DrawPosition, gp_Pnt & EndOfArrow, Handle_Geom_TrimmedCurve & TrimCurve, Standard_Boolean & HasCircle);

};
%feature("shadow") DsgPrs_FilletRadiusPresentation::~DsgPrs_FilletRadiusPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_FilletRadiusPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_MidPointPresentation;
class DsgPrs_MidPointPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_MidPointPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Ax2 &theAxe, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const Standard_Boolean first);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Ax2 &theAxe, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Circ &aCircle, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Elips &anElips, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);

};
%feature("shadow") DsgPrs_MidPointPresentation::~DsgPrs_MidPointPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_MidPointPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_ShapeDirPresentation;
class DsgPrs_ShapeDirPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ShapeDirPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &prs, const Handle_Prs3d_Drawer &aDrawer, const TopoDS_Shape &shape, const Standard_Integer mode);

};
%feature("shadow") DsgPrs_ShapeDirPresentation::~DsgPrs_ShapeDirPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_ShapeDirPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_EqualRadiusPresentation;
class DsgPrs_EqualRadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_EqualRadiusPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &FirstCenter, const gp_Pnt &SecondCenter, const gp_Pnt &FirstPoint, const gp_Pnt &SecondPoint, const Handle_Geom_Plane &Plane);

};
%feature("shadow") DsgPrs_EqualRadiusPresentation::~DsgPrs_EqualRadiusPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_EqualRadiusPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_LengthPresentation;
class DsgPrs_LengthPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_LengthPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Pln &PlaneOfFaces, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const Handle_Geom_Surface &SecondSurf, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &Pt1, const gp_Pnt &Pt2, const DsgPrs_ArrowSide ArrowSide);

};
%feature("shadow") DsgPrs_LengthPresentation::~DsgPrs_LengthPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_LengthPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_IdenticPresentation;
class DsgPrs_IdenticPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_IdenticPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &aPntAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Ax2 &aAx2, const gp_Pnt &aCenter, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Ax2 &aAx2, const gp_Pnt &aCenter, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset, const gp_Pnt &aPntOnCirc);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Elips &anEllipse, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset, const gp_Pnt &aPntOnElli);

};
%feature("shadow") DsgPrs_IdenticPresentation::~DsgPrs_IdenticPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_IdenticPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_DiameterPresentation;
class DsgPrs_DiameterPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_DiameterPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Circ &aCircle, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean IsDiamSymbol);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Circ &aCircle, const Standard_Real uFirst, const Standard_Real uLast, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean IsDiamSymbol);

};
%feature("shadow") DsgPrs_DiameterPresentation::~DsgPrs_DiameterPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_DiameterPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_AnglePresentation;
class DsgPrs_AnglePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_AnglePresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Circ &aCircle, const gp_Pnt &aPosition, const gp_Pnt &Apex, const gp_Circ &VminCircle, const gp_Circ &VmaxCircle, const Standard_Real aArrowSize);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const Standard_Boolean isPlane, const gp_Ax1 &AxisOfSurf, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const gp_Pnt &theCenter, const gp_Pnt &AttachmentPoint1, const gp_Ax1 &theAxe, const DsgPrs_ArrowSide ArrowSide);

};
%feature("shadow") DsgPrs_AnglePresentation::~DsgPrs_AnglePresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_AnglePresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_FixPresentation;
class DsgPrs_FixPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_FixPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const gp_Dir &aNormPln, const Standard_Real aSymbSize);

};
%feature("shadow") DsgPrs_FixPresentation::~DsgPrs_FixPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_FixPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_RadiusPresentation;
class DsgPrs_RadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_RadiusPresentation();

};
%feature("shadow") DsgPrs_RadiusPresentation::~DsgPrs_RadiusPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_RadiusPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_XYZPlanePresentation;
class DsgPrs_XYZPlanePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_XYZPlanePresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPt1, const gp_Pnt &aPt2, const gp_Pnt &aPt3);

};
%feature("shadow") DsgPrs_XYZPlanePresentation::~DsgPrs_XYZPlanePresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_XYZPlanePresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_EllipseRadiusPresentation;
class DsgPrs_EllipseRadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_EllipseRadiusPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const gp_Elips &anEllipse, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Real uFirst, const Standard_Boolean IsInDomain, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const Handle_Geom_OffsetCurve &aCurve, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Real uFirst, const Standard_Boolean IsInDomain, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);

};
%feature("shadow") DsgPrs_EllipseRadiusPresentation::~DsgPrs_EllipseRadiusPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_EllipseRadiusPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_DatumPrs;
class DsgPrs_DatumPrs : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		DsgPrs_DatumPrs();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const gp_Ax2 &aDatum, const Handle_Prs3d_Drawer &aDrawer);

};
%feature("shadow") DsgPrs_DatumPrs::~DsgPrs_DatumPrs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_DatumPrs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_DatumTool;
class DsgPrs_DatumTool {
	public:
		%feature("autodoc", "1");
		DsgPrs_DatumTool();
		%feature("autodoc", "1");
		static		gp_Ax2 Ax2(const gp_Ax2 &aDatum);

};
%feature("shadow") DsgPrs_DatumTool::~DsgPrs_DatumTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_DatumTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_TangentPresentation;
class DsgPrs_TangentPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_TangentPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &OffsetPoint, const gp_Dir &aDirection, const Standard_Real aLength);

};
%feature("shadow") DsgPrs_TangentPresentation::~DsgPrs_TangentPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_TangentPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_ParalPresentation;
class DsgPrs_ParalPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ParalPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);

};
%feature("shadow") DsgPrs_ParalPresentation::~DsgPrs_ParalPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_ParalPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_Chamf2dPresentation;
class DsgPrs_Chamf2dPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_Chamf2dPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const TCollection_ExtendedString &aText, const DsgPrs_ArrowSide ArrowSide);

};
%feature("shadow") DsgPrs_Chamf2dPresentation::~DsgPrs_Chamf2dPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_Chamf2dPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_ShadedPlanePresentation;
class DsgPrs_ShadedPlanePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ShadedPlanePresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPt1, const gp_Pnt &aPt2, const gp_Pnt &aPt3);

};
%feature("shadow") DsgPrs_ShadedPlanePresentation::~DsgPrs_ShadedPlanePresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_ShadedPlanePresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_SymmetricPresentation;
class DsgPrs_SymmetricPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_SymmetricPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection1, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Circ &aCircle1, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);

};
%feature("shadow") DsgPrs_SymmetricPresentation::~DsgPrs_SymmetricPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_SymmetricPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_OffsetPresentation;
class DsgPrs_OffsetPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_OffsetPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Dir &aDirection2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		static		void AddAxes(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Dir &aDirection2, const gp_Pnt &OffsetPoint);

};
%feature("shadow") DsgPrs_OffsetPresentation::~DsgPrs_OffsetPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_OffsetPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_PerpenPresentation;
class DsgPrs_PerpenPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_PerpenPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &pAx1, const gp_Pnt &pAx2, const gp_Pnt &pnt1, const gp_Pnt &pnt2, const gp_Pnt &OffsetPoint, const Standard_Boolean intOut1, const Standard_Boolean intOut2);

};
%feature("shadow") DsgPrs_PerpenPresentation::~DsgPrs_PerpenPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_PerpenPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs;
class DsgPrs {
	public:
		%feature("autodoc", "1");
		DsgPrs();
		%feature("autodoc", "1");
		static		void ComputeSymbol(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_AngleAspect &anAspect, const gp_Pnt &pt1, const gp_Pnt &pt2, const gp_Dir &dir1, const gp_Dir &dir2, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		static		void ComputeSymbol(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LengthAspect &anAspect, const gp_Pnt &pt1, const gp_Pnt &pt2, const gp_Dir &dir1, const gp_Dir &dir2, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean drawFromCenter=1);
		%feature("autodoc", "1");
		static		void ComputePlanarFacesLengthPresentation(const Standard_Real FirstArrowLength, const Standard_Real SecondArrowLength, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &DirAttach, const gp_Pnt &OffsetPoint, const gp_Pln &PlaneOfFaces, gp_Pnt & EndOfArrow1, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1);
		%feature("autodoc","ComputeCurvilinearFacesLengthPresentation(Standard_Real FirstArrowLength, Standard_Real SecondArrowLength, const SecondSurf, const AttachmentPoint1, const AttachmentPoint2, const DirAttach) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		static		void ComputeCurvilinearFacesLengthPresentation(const Standard_Real FirstArrowLength, const Standard_Real SecondArrowLength, const Handle_Geom_Surface &SecondSurf, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &DirAttach, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1, Handle_Geom_Curve & VCurve, Handle_Geom_Curve & UCurve, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","ComputeFacesAnglePresentation(Standard_Real ArrowLength, Standard_Real Value, const CenterPoint, const AttachmentPoint1, const AttachmentPoint2, const dir1, const dir2, const axisdir, Standard_Boolean isPlane, const AxisOfSurf, const OffsetPoint) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		static		void ComputeFacesAnglePresentation(const Standard_Real ArrowLength, const Standard_Real Value, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const Standard_Boolean isPlane, const gp_Ax1 &AxisOfSurf, const gp_Pnt &OffsetPoint, gp_Circ & AngleCirc, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & EndOfArrow1, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1, gp_Dir & DirOfArrow2, gp_Pnt & ProjAttachPoint2, gp_Circ & AttachCirc, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		static		void ComputeRadiusLine(const gp_Pnt &aCenter, const gp_Pnt &anEndOfArrow, const gp_Pnt &aPosition, const Standard_Boolean drawFromCenter, gp_Pnt & aRadLineOrign, gp_Pnt & aRadLineEnd);
		%feature("autodoc","ComputeFilletRadiusPresentation(Standard_Real ArrowLength, Standard_Real Value, const Position, const NormalDir, const FirstPoint, const SecondPoint, const Center, const BasePnt, Standard_Boolean drawRevers) -> [Standard_Real, Standard_Real]");

		static		void ComputeFilletRadiusPresentation(const Standard_Real ArrowLength, const Standard_Real Value, const gp_Pnt &Position, const gp_Dir &NormalDir, const gp_Pnt &FirstPoint, const gp_Pnt &SecondPoint, const gp_Pnt &Center, const gp_Pnt &BasePnt, const Standard_Boolean drawRevers, Standard_Boolean & SpecCase, gp_Circ & FilletCirc, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & EndOfArrow, gp_Dir & DirOfArrow, gp_Pnt & DrawPosition);
		%feature("autodoc", "1");
		static		Standard_Real DistanceFromApex(const gp_Elips &elips, const gp_Pnt &Apex, const Standard_Real par);

};
%feature("shadow") DsgPrs::~DsgPrs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_EqualDistancePresentation;
class DsgPrs_EqualDistancePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_EqualDistancePresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &Point1, const gp_Pnt &Point2, const gp_Pnt &Point3, const gp_Pnt &Point4, const Handle_Geom_Plane &Plane);
		%feature("autodoc", "1");
		static		void AddInterval(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPoint1, const gp_Pnt &aPoint2, const gp_Dir &aDir, const gp_Pnt &aPosition, const DsgPrs_ArrowSide anArrowSide, gp_Pnt & anExtremePnt1, gp_Pnt & anExtremePnt2);
		%feature("autodoc", "1");
		static		void AddIntervalBetweenTwoArcs(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Circ &aCircle1, const gp_Circ &aCircle2, const gp_Pnt &aPoint1, const gp_Pnt &aPoint2, const gp_Pnt &aPoint3, const gp_Pnt &aPoint4, const DsgPrs_ArrowSide anArrowSide);

};
%feature("shadow") DsgPrs_EqualDistancePresentation::~DsgPrs_EqualDistancePresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_EqualDistancePresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_XYZAxisPresentation;
class DsgPrs_XYZAxisPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_XYZAxisPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LineAspect &anLineAspect, const gp_Dir &aDir, const Standard_Real aVal, const char * aText, const gp_Pnt &aPfirst, const gp_Pnt &aPlast);
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LineAspect &aLineAspect, const Handle_Prs3d_ArrowAspect &anArrowAspect, const Handle_Prs3d_TextAspect &aTextAspect, const gp_Dir &aDir, const Standard_Real aVal, const char * aText, const gp_Pnt &aPfirst, const gp_Pnt &aPlast);

};
%feature("shadow") DsgPrs_XYZAxisPresentation::~DsgPrs_XYZAxisPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_XYZAxisPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor DsgPrs_ConcentricPresentation;
class DsgPrs_ConcentricPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ConcentricPresentation();
		%feature("autodoc", "1");
		static		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aCenter, const Standard_Real aRadius, const gp_Dir &aNorm, const gp_Pnt &aPoint);

};
%feature("shadow") DsgPrs_ConcentricPresentation::~DsgPrs_ConcentricPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend DsgPrs_ConcentricPresentation {
	void _kill_pointed() {
		delete $self;
	}
};
