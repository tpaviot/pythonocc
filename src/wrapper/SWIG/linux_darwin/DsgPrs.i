/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

*/
%module DsgPrs

%include DsgPrs_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

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



%nodefaultctor DsgPrs_ShadedPlanePresentation;
class DsgPrs_ShadedPlanePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ShadedPlanePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPt1, const gp_Pnt &aPt2, const gp_Pnt &aPt3);

};
%extend DsgPrs_ShadedPlanePresentation {
	~DsgPrs_ShadedPlanePresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_ShadedPlanePresentation\n");}
	}
};


%nodefaultctor DsgPrs_FilletRadiusPresentation;
class DsgPrs_FilletRadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_FilletRadiusPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real thevalue, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const gp_Dir &aNormalDir, const gp_Pnt &aBasePnt, const gp_Pnt &aFirstPoint, const gp_Pnt &aSecondPoint, const gp_Pnt &aCenter, const DsgPrs_ArrowSide ArrowPrs, const Standard_Boolean drawRevers, gp_Pnt & DrawPosition, gp_Pnt & EndOfArrow, Handle_Geom_TrimmedCurve & TrimCurve, Standard_Boolean & HasCircle);

};
%extend DsgPrs_FilletRadiusPresentation {
	~DsgPrs_FilletRadiusPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_FilletRadiusPresentation\n");}
	}
};


%nodefaultctor DsgPrs_MidPointPresentation;
class DsgPrs_MidPointPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_MidPointPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Ax2 &theAxe, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const Standard_Boolean first);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Ax2 &theAxe, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Circ &aCircle, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Elips &anElips, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);

};
%extend DsgPrs_MidPointPresentation {
	~DsgPrs_MidPointPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_MidPointPresentation\n");}
	}
};


%nodefaultctor DsgPrs_XYZAxisPresentation;
class DsgPrs_XYZAxisPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_XYZAxisPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LineAspect &anLineAspect, const gp_Dir &aDir, const Standard_Real aVal, const char * aText, const gp_Pnt &aPfirst, const gp_Pnt &aPlast);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LineAspect &aLineAspect, const Handle_Prs3d_ArrowAspect &anArrowAspect, const Handle_Prs3d_TextAspect &aTextAspect, const gp_Dir &aDir, const Standard_Real aVal, const char * aText, const gp_Pnt &aPfirst, const gp_Pnt &aPlast);

};
%extend DsgPrs_XYZAxisPresentation {
	~DsgPrs_XYZAxisPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_XYZAxisPresentation\n");}
	}
};


%nodefaultctor DsgPrs_ShapeDirPresentation;
class DsgPrs_ShapeDirPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ShapeDirPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &prs, const Handle_Prs3d_Drawer &aDrawer, const TopoDS_Shape &shape, const Standard_Integer mode);

};
%extend DsgPrs_ShapeDirPresentation {
	~DsgPrs_ShapeDirPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_ShapeDirPresentation\n");}
	}
};


%nodefaultctor DsgPrs_EqualRadiusPresentation;
class DsgPrs_EqualRadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_EqualRadiusPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &FirstCenter, const gp_Pnt &SecondCenter, const gp_Pnt &FirstPoint, const gp_Pnt &SecondPoint, const Handle_Geom_Plane &Plane);

};
%extend DsgPrs_EqualRadiusPresentation {
	~DsgPrs_EqualRadiusPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_EqualRadiusPresentation\n");}
	}
};


%nodefaultctor DsgPrs_XYZPlanePresentation;
class DsgPrs_XYZPlanePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_XYZPlanePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPt1, const gp_Pnt &aPt2, const gp_Pnt &aPt3);

};
%extend DsgPrs_XYZPlanePresentation {
	~DsgPrs_XYZPlanePresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_XYZPlanePresentation\n");}
	}
};


%nodefaultctor DsgPrs_LengthPresentation;
class DsgPrs_LengthPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_LengthPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Pln &PlaneOfFaces, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const Handle_Geom_Surface &SecondSurf, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &Pt1, const gp_Pnt &Pt2, const DsgPrs_ArrowSide ArrowSide);

};
%extend DsgPrs_LengthPresentation {
	~DsgPrs_LengthPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_LengthPresentation\n");}
	}
};


%nodefaultctor DsgPrs_SymbPresentation;
class DsgPrs_SymbPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_SymbPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &OffsetPoint);

};
%extend DsgPrs_SymbPresentation {
	~DsgPrs_SymbPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_SymbPresentation\n");}
	}
};


%nodefaultctor DsgPrs_IdenticPresentation;
class DsgPrs_IdenticPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_IdenticPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &aPntAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Ax2 &aAx2, const gp_Pnt &aCenter, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Ax2 &aAx2, const gp_Pnt &aCenter, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset, const gp_Pnt &aPntOnCirc);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Elips &anEllipse, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset, const gp_Pnt &aPntOnElli);

};
%extend DsgPrs_IdenticPresentation {
	~DsgPrs_IdenticPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_IdenticPresentation\n");}
	}
};


%nodefaultctor DsgPrs_DiameterPresentation;
class DsgPrs_DiameterPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_DiameterPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Circ &aCircle, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean IsDiamSymbol);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Circ &aCircle, const Standard_Real uFirst, const Standard_Real uLast, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean IsDiamSymbol);

};
%extend DsgPrs_DiameterPresentation {
	~DsgPrs_DiameterPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_DiameterPresentation\n");}
	}
};


%nodefaultctor DsgPrs_FixPresentation;
class DsgPrs_FixPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_FixPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const gp_Dir &aNormPln, const Standard_Real aSymbSize);

};
%extend DsgPrs_FixPresentation {
	~DsgPrs_FixPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_FixPresentation\n");}
	}
};


%nodefaultctor DsgPrs_RadiusPresentation;
class DsgPrs_RadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_RadiusPresentation();

};
%extend DsgPrs_RadiusPresentation {
	~DsgPrs_RadiusPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_RadiusPresentation\n");}
	}
};


%nodefaultctor DsgPrs_DatumTool;
class DsgPrs_DatumTool {
	public:
		%feature("autodoc", "1");
		DsgPrs_DatumTool();
		%feature("autodoc", "1");
		gp_Ax2 Ax2(const gp_Ax2 &aDatum);

};
%extend DsgPrs_DatumTool {
	~DsgPrs_DatumTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_DatumTool\n");}
	}
};


%nodefaultctor DsgPrs_EllipseRadiusPresentation;
class DsgPrs_EllipseRadiusPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_EllipseRadiusPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const gp_Elips &anEllipse, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Real uFirst, const Standard_Boolean IsInDomain, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const Handle_Geom_OffsetCurve &aCurve, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Real uFirst, const Standard_Boolean IsInDomain, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);

};
%extend DsgPrs_EllipseRadiusPresentation {
	~DsgPrs_EllipseRadiusPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_EllipseRadiusPresentation\n");}
	}
};


%nodefaultctor DsgPrs_DatumPrs;
class DsgPrs_DatumPrs : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		DsgPrs_DatumPrs();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const gp_Ax2 &aDatum, const Handle_Prs3d_Drawer &aDrawer);

};
%extend DsgPrs_DatumPrs {
	~DsgPrs_DatumPrs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_DatumPrs\n");}
	}
};


%nodefaultctor DsgPrs_AnglePresentation;
class DsgPrs_AnglePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_AnglePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Circ &aCircle, const gp_Pnt &aPosition, const gp_Pnt &Apex, const gp_Circ &VminCircle, const gp_Circ &VmaxCircle, const Standard_Real aArrowSize);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const Standard_Boolean isPlane, const gp_Ax1 &AxisOfSurf, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const gp_Pnt &theCenter, const gp_Pnt &AttachmentPoint1, const gp_Ax1 &theAxe, const DsgPrs_ArrowSide ArrowSide);

};
%extend DsgPrs_AnglePresentation {
	~DsgPrs_AnglePresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_AnglePresentation\n");}
	}
};


%nodefaultctor DsgPrs_TangentPresentation;
class DsgPrs_TangentPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_TangentPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &OffsetPoint, const gp_Dir &aDirection, const Standard_Real aLength);

};
%extend DsgPrs_TangentPresentation {
	~DsgPrs_TangentPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_TangentPresentation\n");}
	}
};


%nodefaultctor DsgPrs_Chamf2dPresentation;
class DsgPrs_Chamf2dPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_Chamf2dPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const TCollection_ExtendedString &aText, const DsgPrs_ArrowSide ArrowSide);

};
%extend DsgPrs_Chamf2dPresentation {
	~DsgPrs_Chamf2dPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_Chamf2dPresentation\n");}
	}
};


%nodefaultctor DsgPrs_EqualDistancePresentation;
class DsgPrs_EqualDistancePresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_EqualDistancePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &Point1, const gp_Pnt &Point2, const gp_Pnt &Point3, const gp_Pnt &Point4, const Handle_Geom_Plane &Plane);
		%feature("autodoc", "1");
		void AddInterval(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPoint1, const gp_Pnt &aPoint2, const gp_Dir &aDir, const gp_Pnt &aPosition, const DsgPrs_ArrowSide anArrowSide, gp_Pnt & anExtremePnt1, gp_Pnt & anExtremePnt2);
		%feature("autodoc", "1");
		void AddIntervalBetweenTwoArcs(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Circ &aCircle1, const gp_Circ &aCircle2, const gp_Pnt &aPoint1, const gp_Pnt &aPoint2, const gp_Pnt &aPoint3, const gp_Pnt &aPoint4, const DsgPrs_ArrowSide anArrowSide);

};
%extend DsgPrs_EqualDistancePresentation {
	~DsgPrs_EqualDistancePresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_EqualDistancePresentation\n");}
	}
};


%nodefaultctor DsgPrs_ParalPresentation;
class DsgPrs_ParalPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ParalPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);

};
%extend DsgPrs_ParalPresentation {
	~DsgPrs_ParalPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_ParalPresentation\n");}
	}
};


%nodefaultctor DsgPrs_OffsetPresentation;
class DsgPrs_OffsetPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_OffsetPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Dir &aDirection2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void AddAxes(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Dir &aDirection2, const gp_Pnt &OffsetPoint);

};
%extend DsgPrs_OffsetPresentation {
	~DsgPrs_OffsetPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_OffsetPresentation\n");}
	}
};


%nodefaultctor DsgPrs_PerpenPresentation;
class DsgPrs_PerpenPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_PerpenPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &pAx1, const gp_Pnt &pAx2, const gp_Pnt &pnt1, const gp_Pnt &pnt2, const gp_Pnt &OffsetPoint, const Standard_Boolean intOut1, const Standard_Boolean intOut2);

};
%extend DsgPrs_PerpenPresentation {
	~DsgPrs_PerpenPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_PerpenPresentation\n");}
	}
};


%nodefaultctor DsgPrs;
class DsgPrs {
	public:
		%feature("autodoc", "1");
		DsgPrs();
		%feature("autodoc", "1");
		void ComputeSymbol(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_AngleAspect &anAspect, const gp_Pnt &pt1, const gp_Pnt &pt2, const gp_Dir &dir1, const gp_Dir &dir2, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void ComputeSymbol(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LengthAspect &anAspect, const gp_Pnt &pt1, const gp_Pnt &pt2, const gp_Dir &dir1, const gp_Dir &dir2, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean drawFromCenter=1);
		%feature("autodoc", "1");
		void ComputePlanarFacesLengthPresentation(const Standard_Real FirstArrowLength, const Standard_Real SecondArrowLength, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &DirAttach, const gp_Pnt &OffsetPoint, const gp_Pln &PlaneOfFaces, gp_Pnt & EndOfArrow1, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1);
		%feature("autodoc","ComputeCurvilinearFacesLengthPresentation(Standard_Real FirstArrowLength, Standard_Real SecondArrowLength, const SecondSurf, const AttachmentPoint1, const AttachmentPoint2, const DirAttach)->[Standard_RealStandard_RealStandard_RealStandard_Real]");
		void ComputeCurvilinearFacesLengthPresentation(const Standard_Real FirstArrowLength, const Standard_Real SecondArrowLength, const Handle_Geom_Surface &SecondSurf, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &DirAttach, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1, Handle_Geom_Curve & VCurve, Handle_Geom_Curve & UCurve, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","ComputeFacesAnglePresentation(Standard_Real ArrowLength, Standard_Real Value, const CenterPoint, const AttachmentPoint1, const AttachmentPoint2, const dir1, const dir2, const axisdir, Standard_Boolean isPlane, const AxisOfSurf, const OffsetPoint)->[Standard_RealStandard_RealStandard_RealStandard_Real]");
		void ComputeFacesAnglePresentation(const Standard_Real ArrowLength, const Standard_Real Value, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const Standard_Boolean isPlane, const gp_Ax1 &AxisOfSurf, const gp_Pnt &OffsetPoint, gp_Circ & AngleCirc, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & EndOfArrow1, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1, gp_Dir & DirOfArrow2, gp_Pnt & ProjAttachPoint2, gp_Circ & AttachCirc, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void ComputeRadiusLine(const gp_Pnt &aCenter, const gp_Pnt &anEndOfArrow, const gp_Pnt &aPosition, const Standard_Boolean drawFromCenter, gp_Pnt & aRadLineOrign, gp_Pnt & aRadLineEnd);
		%feature("autodoc","ComputeFilletRadiusPresentation(Standard_Real ArrowLength, Standard_Real Value, const Position, const NormalDir, const FirstPoint, const SecondPoint, const Center, const BasePnt, Standard_Boolean drawRevers)->[Standard_RealStandard_Real]");
		void ComputeFilletRadiusPresentation(const Standard_Real ArrowLength, const Standard_Real Value, const gp_Pnt &Position, const gp_Dir &NormalDir, const gp_Pnt &FirstPoint, const gp_Pnt &SecondPoint, const gp_Pnt &Center, const gp_Pnt &BasePnt, const Standard_Boolean drawRevers, Standard_Boolean & SpecCase, gp_Circ & FilletCirc, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & EndOfArrow, gp_Dir & DirOfArrow, gp_Pnt & DrawPosition);
		%feature("autodoc", "1");
		Standard_Real DistanceFromApex(const gp_Elips &elips, const gp_Pnt &Apex, const Standard_Real par);

};
%extend DsgPrs {
	~DsgPrs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs\n");}
	}
};


%nodefaultctor DsgPrs_ConcentricPresentation;
class DsgPrs_ConcentricPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_ConcentricPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aCenter, const Standard_Real aRadius, const gp_Dir &aNorm, const gp_Pnt &aPoint);

};
%extend DsgPrs_ConcentricPresentation {
	~DsgPrs_ConcentricPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_ConcentricPresentation\n");}
	}
};


%nodefaultctor DsgPrs_SymmetricPresentation;
class DsgPrs_SymmetricPresentation {
	public:
		%feature("autodoc", "1");
		DsgPrs_SymmetricPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection1, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Circ &aCircle1, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);

};
%extend DsgPrs_SymmetricPresentation {
	~DsgPrs_SymmetricPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DsgPrs_SymmetricPresentation\n");}
	}
};
