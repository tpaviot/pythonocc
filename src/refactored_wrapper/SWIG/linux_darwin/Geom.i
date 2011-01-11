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
 
%module Geom
       
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i


%pythoncode {
import GarbageCollector
};
%include Geom_dependencies.i



   
%nodefaultctor Handle_Geom_Geometry;

class Handle_Geom_Geometry : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Geometry();
        %feature("autodoc", "1");
        Handle_Geom_Geometry(Handle_Geom_Geometry const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Geometry(Geom_Geometry const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Geometry const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Geometry::~Handle_Geom_Geometry {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Geometry {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Geometry {
    Geom_Geometry* GetObject() {
        return (Geom_Geometry*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_AxisPlacement;

class Handle_Geom_AxisPlacement : public Handle_Geom_Geometry {
    public:

        %feature("autodoc", "1");
        Handle_Geom_AxisPlacement();
        %feature("autodoc", "1");
        Handle_Geom_AxisPlacement(Handle_Geom_AxisPlacement const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_AxisPlacement(Geom_AxisPlacement const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_AxisPlacement const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_AxisPlacement::~Handle_Geom_AxisPlacement {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_AxisPlacement {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_AxisPlacement {
    Geom_AxisPlacement* GetObject() {
        return (Geom_AxisPlacement*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Axis1Placement;

class Handle_Geom_Axis1Placement : public Handle_Geom_AxisPlacement {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Axis1Placement();
        %feature("autodoc", "1");
        Handle_Geom_Axis1Placement(Handle_Geom_Axis1Placement const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Axis1Placement(Geom_Axis1Placement const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Axis1Placement const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Axis1Placement::~Handle_Geom_Axis1Placement {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Axis1Placement {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Axis1Placement {
    Geom_Axis1Placement* GetObject() {
        return (Geom_Axis1Placement*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Axis2Placement;

class Handle_Geom_Axis2Placement : public Handle_Geom_AxisPlacement {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Axis2Placement();
        %feature("autodoc", "1");
        Handle_Geom_Axis2Placement(Handle_Geom_Axis2Placement const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Axis2Placement(Geom_Axis2Placement const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Axis2Placement const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Axis2Placement::~Handle_Geom_Axis2Placement {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Axis2Placement {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Axis2Placement {
    Geom_Axis2Placement* GetObject() {
        return (Geom_Axis2Placement*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Curve;

class Handle_Geom_Curve : public Handle_Geom_Geometry {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Curve();
        %feature("autodoc", "1");
        Handle_Geom_Curve(Handle_Geom_Curve const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Curve(Geom_Curve const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Curve const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Curve::~Handle_Geom_Curve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Curve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Curve {
    Geom_Curve* GetObject() {
        return (Geom_Curve*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_BoundedCurve;

class Handle_Geom_BoundedCurve : public Handle_Geom_Curve {
    public:

        %feature("autodoc", "1");
        Handle_Geom_BoundedCurve();
        %feature("autodoc", "1");
        Handle_Geom_BoundedCurve(Handle_Geom_BoundedCurve const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_BoundedCurve(Geom_BoundedCurve const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_BoundedCurve const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_BoundedCurve::~Handle_Geom_BoundedCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_BoundedCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_BoundedCurve {
    Geom_BoundedCurve* GetObject() {
        return (Geom_BoundedCurve*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_BSplineCurve;

class Handle_Geom_BSplineCurve : public Handle_Geom_BoundedCurve {
    public:

        %feature("autodoc", "1");
        Handle_Geom_BSplineCurve();
        %feature("autodoc", "1");
        Handle_Geom_BSplineCurve(Handle_Geom_BSplineCurve const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_BSplineCurve(Geom_BSplineCurve const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_BSplineCurve const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_BSplineCurve::~Handle_Geom_BSplineCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_BSplineCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_BSplineCurve {
    Geom_BSplineCurve* GetObject() {
        return (Geom_BSplineCurve*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_BezierCurve;

class Handle_Geom_BezierCurve : public Handle_Geom_BoundedCurve {
    public:

        %feature("autodoc", "1");
        Handle_Geom_BezierCurve();
        %feature("autodoc", "1");
        Handle_Geom_BezierCurve(Handle_Geom_BezierCurve const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_BezierCurve(Geom_BezierCurve const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_BezierCurve const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_BezierCurve::~Handle_Geom_BezierCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_BezierCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_BezierCurve {
    Geom_BezierCurve* GetObject() {
        return (Geom_BezierCurve*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_TrimmedCurve;

class Handle_Geom_TrimmedCurve : public Handle_Geom_BoundedCurve {
    public:

        %feature("autodoc", "1");
        Handle_Geom_TrimmedCurve();
        %feature("autodoc", "1");
        Handle_Geom_TrimmedCurve(Handle_Geom_TrimmedCurve const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_TrimmedCurve(Geom_TrimmedCurve const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_TrimmedCurve const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_TrimmedCurve::~Handle_Geom_TrimmedCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_TrimmedCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_TrimmedCurve {
    Geom_TrimmedCurve* GetObject() {
        return (Geom_TrimmedCurve*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Conic;

class Handle_Geom_Conic : public Handle_Geom_Curve {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Conic();
        %feature("autodoc", "1");
        Handle_Geom_Conic(Handle_Geom_Conic const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Conic(Geom_Conic const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Conic const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Conic::~Handle_Geom_Conic {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Conic {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Conic {
    Geom_Conic* GetObject() {
        return (Geom_Conic*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Circle;

class Handle_Geom_Circle : public Handle_Geom_Conic {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Circle();
        %feature("autodoc", "1");
        Handle_Geom_Circle(Handle_Geom_Circle const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Circle(Geom_Circle const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Circle const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Circle::~Handle_Geom_Circle {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Circle {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Circle {
    Geom_Circle* GetObject() {
        return (Geom_Circle*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Ellipse;

class Handle_Geom_Ellipse : public Handle_Geom_Conic {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Ellipse();
        %feature("autodoc", "1");
        Handle_Geom_Ellipse(Handle_Geom_Ellipse const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Ellipse(Geom_Ellipse const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Ellipse const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Ellipse::~Handle_Geom_Ellipse {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Ellipse {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Ellipse {
    Geom_Ellipse* GetObject() {
        return (Geom_Ellipse*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Hyperbola;

class Handle_Geom_Hyperbola : public Handle_Geom_Conic {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Hyperbola();
        %feature("autodoc", "1");
        Handle_Geom_Hyperbola(Handle_Geom_Hyperbola const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Hyperbola(Geom_Hyperbola const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Hyperbola const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Hyperbola::~Handle_Geom_Hyperbola {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Hyperbola {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Hyperbola {
    Geom_Hyperbola* GetObject() {
        return (Geom_Hyperbola*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Parabola;

class Handle_Geom_Parabola : public Handle_Geom_Conic {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Parabola();
        %feature("autodoc", "1");
        Handle_Geom_Parabola(Handle_Geom_Parabola const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Parabola(Geom_Parabola const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Parabola const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Parabola::~Handle_Geom_Parabola {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Parabola {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Parabola {
    Geom_Parabola* GetObject() {
        return (Geom_Parabola*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Line;

class Handle_Geom_Line : public Handle_Geom_Curve {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Line();
        %feature("autodoc", "1");
        Handle_Geom_Line(Handle_Geom_Line const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Line(Geom_Line const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Line const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Line::~Handle_Geom_Line {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Line {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Line {
    Geom_Line* GetObject() {
        return (Geom_Line*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_OffsetCurve;

class Handle_Geom_OffsetCurve : public Handle_Geom_Curve {
    public:

        %feature("autodoc", "1");
        Handle_Geom_OffsetCurve();
        %feature("autodoc", "1");
        Handle_Geom_OffsetCurve(Handle_Geom_OffsetCurve const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_OffsetCurve(Geom_OffsetCurve const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_OffsetCurve const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_OffsetCurve::~Handle_Geom_OffsetCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_OffsetCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_OffsetCurve {
    Geom_OffsetCurve* GetObject() {
        return (Geom_OffsetCurve*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Point;

class Handle_Geom_Point : public Handle_Geom_Geometry {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Point();
        %feature("autodoc", "1");
        Handle_Geom_Point(Handle_Geom_Point const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Point(Geom_Point const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Point const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Point::~Handle_Geom_Point {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Point {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Point {
    Geom_Point* GetObject() {
        return (Geom_Point*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_CartesianPoint;

class Handle_Geom_CartesianPoint : public Handle_Geom_Point {
    public:

        %feature("autodoc", "1");
        Handle_Geom_CartesianPoint();
        %feature("autodoc", "1");
        Handle_Geom_CartesianPoint(Handle_Geom_CartesianPoint const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_CartesianPoint(Geom_CartesianPoint const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_CartesianPoint const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_CartesianPoint::~Handle_Geom_CartesianPoint {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_CartesianPoint {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_CartesianPoint {
    Geom_CartesianPoint* GetObject() {
        return (Geom_CartesianPoint*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Surface;

class Handle_Geom_Surface : public Handle_Geom_Geometry {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Surface();
        %feature("autodoc", "1");
        Handle_Geom_Surface(Handle_Geom_Surface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Surface(Geom_Surface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Surface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Surface::~Handle_Geom_Surface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Surface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Surface {
    Geom_Surface* GetObject() {
        return (Geom_Surface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_BoundedSurface;

class Handle_Geom_BoundedSurface : public Handle_Geom_Surface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_BoundedSurface();
        %feature("autodoc", "1");
        Handle_Geom_BoundedSurface(Handle_Geom_BoundedSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_BoundedSurface(Geom_BoundedSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_BoundedSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_BoundedSurface::~Handle_Geom_BoundedSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_BoundedSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_BoundedSurface {
    Geom_BoundedSurface* GetObject() {
        return (Geom_BoundedSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_BSplineSurface;

class Handle_Geom_BSplineSurface : public Handle_Geom_BoundedSurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface();
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface(Handle_Geom_BSplineSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface(Geom_BSplineSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_BSplineSurface::~Handle_Geom_BSplineSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_BSplineSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_BSplineSurface {
    Geom_BSplineSurface* GetObject() {
        return (Geom_BSplineSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_BezierSurface;

class Handle_Geom_BezierSurface : public Handle_Geom_BoundedSurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_BezierSurface();
        %feature("autodoc", "1");
        Handle_Geom_BezierSurface(Handle_Geom_BezierSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_BezierSurface(Geom_BezierSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_BezierSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_BezierSurface::~Handle_Geom_BezierSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_BezierSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_BezierSurface {
    Geom_BezierSurface* GetObject() {
        return (Geom_BezierSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_RectangularTrimmedSurface;

class Handle_Geom_RectangularTrimmedSurface : public Handle_Geom_BoundedSurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_RectangularTrimmedSurface();
        %feature("autodoc", "1");
        Handle_Geom_RectangularTrimmedSurface(Handle_Geom_RectangularTrimmedSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_RectangularTrimmedSurface(Geom_RectangularTrimmedSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_RectangularTrimmedSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_RectangularTrimmedSurface::~Handle_Geom_RectangularTrimmedSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_RectangularTrimmedSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_RectangularTrimmedSurface {
    Geom_RectangularTrimmedSurface* GetObject() {
        return (Geom_RectangularTrimmedSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_ElementarySurface;

class Handle_Geom_ElementarySurface : public Handle_Geom_Surface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_ElementarySurface();
        %feature("autodoc", "1");
        Handle_Geom_ElementarySurface(Handle_Geom_ElementarySurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_ElementarySurface(Geom_ElementarySurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_ElementarySurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_ElementarySurface::~Handle_Geom_ElementarySurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_ElementarySurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_ElementarySurface {
    Geom_ElementarySurface* GetObject() {
        return (Geom_ElementarySurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_ConicalSurface;

class Handle_Geom_ConicalSurface : public Handle_Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_ConicalSurface();
        %feature("autodoc", "1");
        Handle_Geom_ConicalSurface(Handle_Geom_ConicalSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_ConicalSurface(Geom_ConicalSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_ConicalSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_ConicalSurface::~Handle_Geom_ConicalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_ConicalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_ConicalSurface {
    Geom_ConicalSurface* GetObject() {
        return (Geom_ConicalSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_CylindricalSurface;

class Handle_Geom_CylindricalSurface : public Handle_Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_CylindricalSurface();
        %feature("autodoc", "1");
        Handle_Geom_CylindricalSurface(Handle_Geom_CylindricalSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_CylindricalSurface(Geom_CylindricalSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_CylindricalSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_CylindricalSurface::~Handle_Geom_CylindricalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_CylindricalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_CylindricalSurface {
    Geom_CylindricalSurface* GetObject() {
        return (Geom_CylindricalSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Plane;

class Handle_Geom_Plane : public Handle_Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Plane();
        %feature("autodoc", "1");
        Handle_Geom_Plane(Handle_Geom_Plane const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Plane(Geom_Plane const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Plane const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Plane::~Handle_Geom_Plane {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Plane {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Plane {
    Geom_Plane* GetObject() {
        return (Geom_Plane*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_SphericalSurface;

class Handle_Geom_SphericalSurface : public Handle_Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_SphericalSurface();
        %feature("autodoc", "1");
        Handle_Geom_SphericalSurface(Handle_Geom_SphericalSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_SphericalSurface(Geom_SphericalSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_SphericalSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_SphericalSurface::~Handle_Geom_SphericalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_SphericalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_SphericalSurface {
    Geom_SphericalSurface* GetObject() {
        return (Geom_SphericalSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_ToroidalSurface;

class Handle_Geom_ToroidalSurface : public Handle_Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_ToroidalSurface();
        %feature("autodoc", "1");
        Handle_Geom_ToroidalSurface(Handle_Geom_ToroidalSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_ToroidalSurface(Geom_ToroidalSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_ToroidalSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_ToroidalSurface::~Handle_Geom_ToroidalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_ToroidalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_ToroidalSurface {
    Geom_ToroidalSurface* GetObject() {
        return (Geom_ToroidalSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_OffsetSurface;

class Handle_Geom_OffsetSurface : public Handle_Geom_Surface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_OffsetSurface();
        %feature("autodoc", "1");
        Handle_Geom_OffsetSurface(Handle_Geom_OffsetSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_OffsetSurface(Geom_OffsetSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_OffsetSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_OffsetSurface::~Handle_Geom_OffsetSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_OffsetSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_OffsetSurface {
    Geom_OffsetSurface* GetObject() {
        return (Geom_OffsetSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_SweptSurface;

class Handle_Geom_SweptSurface : public Handle_Geom_Surface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_SweptSurface();
        %feature("autodoc", "1");
        Handle_Geom_SweptSurface(Handle_Geom_SweptSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_SweptSurface(Geom_SweptSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_SweptSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_SweptSurface::~Handle_Geom_SweptSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_SweptSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_SweptSurface {
    Geom_SweptSurface* GetObject() {
        return (Geom_SweptSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_SurfaceOfLinearExtrusion;

class Handle_Geom_SurfaceOfLinearExtrusion : public Handle_Geom_SweptSurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfLinearExtrusion();
        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfLinearExtrusion(Handle_Geom_SurfaceOfLinearExtrusion const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfLinearExtrusion(Geom_SurfaceOfLinearExtrusion const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfLinearExtrusion const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_SurfaceOfLinearExtrusion::~Handle_Geom_SurfaceOfLinearExtrusion {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_SurfaceOfLinearExtrusion {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_SurfaceOfLinearExtrusion {
    Geom_SurfaceOfLinearExtrusion* GetObject() {
        return (Geom_SurfaceOfLinearExtrusion*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_SurfaceOfRevolution;

class Handle_Geom_SurfaceOfRevolution : public Handle_Geom_SweptSurface {
    public:

        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfRevolution();
        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfRevolution(Handle_Geom_SurfaceOfRevolution const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfRevolution(Geom_SurfaceOfRevolution const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_SurfaceOfRevolution const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_SurfaceOfRevolution::~Handle_Geom_SurfaceOfRevolution {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_SurfaceOfRevolution {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_SurfaceOfRevolution {
    Geom_SurfaceOfRevolution* GetObject() {
        return (Geom_SurfaceOfRevolution*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Vector;

class Handle_Geom_Vector : public Handle_Geom_Geometry {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Vector();
        %feature("autodoc", "1");
        Handle_Geom_Vector(Handle_Geom_Vector const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Vector(Geom_Vector const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Vector const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Vector::~Handle_Geom_Vector {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Vector {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Vector {
    Geom_Vector* GetObject() {
        return (Geom_Vector*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Direction;

class Handle_Geom_Direction : public Handle_Geom_Vector {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Direction();
        %feature("autodoc", "1");
        Handle_Geom_Direction(Handle_Geom_Direction const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Direction(Geom_Direction const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Direction const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Direction::~Handle_Geom_Direction {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Direction {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Direction {
    Geom_Direction* GetObject() {
        return (Geom_Direction*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_VectorWithMagnitude;

class Handle_Geom_VectorWithMagnitude : public Handle_Geom_Vector {
    public:

        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude();
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude(Handle_Geom_VectorWithMagnitude const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude(Geom_VectorWithMagnitude const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_VectorWithMagnitude::~Handle_Geom_VectorWithMagnitude {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_VectorWithMagnitude {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_VectorWithMagnitude {
    Geom_VectorWithMagnitude* GetObject() {
        return (Geom_VectorWithMagnitude*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_HSequenceOfBSplineSurface;

class Handle_Geom_HSequenceOfBSplineSurface : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfBSplineSurface();
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfBSplineSurface(Handle_Geom_HSequenceOfBSplineSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfBSplineSurface(Geom_HSequenceOfBSplineSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfBSplineSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_HSequenceOfBSplineSurface::~Handle_Geom_HSequenceOfBSplineSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_HSequenceOfBSplineSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_HSequenceOfBSplineSurface {
    Geom_HSequenceOfBSplineSurface* GetObject() {
        return (Geom_HSequenceOfBSplineSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_HSequenceOfSurface;

class Handle_Geom_HSequenceOfSurface : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfSurface();
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfSurface(Handle_Geom_HSequenceOfSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfSurface(Geom_HSequenceOfSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_HSequenceOfSurface::~Handle_Geom_HSequenceOfSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_HSequenceOfSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_HSequenceOfSurface {
    Geom_HSequenceOfSurface* GetObject() {
        return (Geom_HSequenceOfSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_Transformation;

class Handle_Geom_Transformation : public Handle_MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Handle_Geom_Transformation();
        %feature("autodoc", "1");
        Handle_Geom_Transformation(Handle_Geom_Transformation const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_Transformation(Geom_Transformation const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_Transformation const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_Transformation::~Handle_Geom_Transformation {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_Transformation {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_Transformation {
    Geom_Transformation* GetObject() {
        return (Geom_Transformation*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_UndefinedDerivative;

class Handle_Geom_UndefinedDerivative : public Handle_Standard_DomainError {
    public:

        %feature("autodoc", "1");
        Handle_Geom_UndefinedDerivative();
        %feature("autodoc", "1");
        Handle_Geom_UndefinedDerivative(Handle_Geom_UndefinedDerivative const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_UndefinedDerivative(Geom_UndefinedDerivative const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_UndefinedDerivative const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_UndefinedDerivative::~Handle_Geom_UndefinedDerivative {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_UndefinedDerivative {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_UndefinedDerivative {
    Geom_UndefinedDerivative* GetObject() {
        return (Geom_UndefinedDerivative*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_UndefinedValue;

class Handle_Geom_UndefinedValue : public Handle_Standard_DomainError {
    public:

        %feature("autodoc", "1");
        Handle_Geom_UndefinedValue();
        %feature("autodoc", "1");
        Handle_Geom_UndefinedValue(Handle_Geom_UndefinedValue const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_UndefinedValue(Geom_UndefinedValue const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_UndefinedValue const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_UndefinedValue::~Handle_Geom_UndefinedValue {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_UndefinedValue {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_UndefinedValue {
    Geom_UndefinedValue* GetObject() {
        return (Geom_UndefinedValue*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface;

class Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface();
        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface(Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface(Geom_SequenceNodeOfSequenceOfBSplineSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface::~Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface {
    Geom_SequenceNodeOfSequenceOfBSplineSurface* GetObject() {
        return (Geom_SequenceNodeOfSequenceOfBSplineSurface*)$self->Access();
    }
};
   
%nodefaultctor Handle_Geom_SequenceNodeOfSequenceOfSurface;

class Handle_Geom_SequenceNodeOfSequenceOfSurface : public Handle_TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfSurface();
        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfSurface(Handle_Geom_SequenceNodeOfSequenceOfSurface const & aHandle);
        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfSurface(Geom_SequenceNodeOfSequenceOfSurface const * anItem);
        %feature("autodoc", "1");
        Handle_Geom_SequenceNodeOfSequenceOfSurface const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_Geom_SequenceNodeOfSequenceOfSurface::~Handle_Geom_SequenceNodeOfSequenceOfSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_Geom_SequenceNodeOfSequenceOfSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_Geom_SequenceNodeOfSequenceOfSurface {
    Geom_SequenceNodeOfSequenceOfSurface* GetObject() {
        return (Geom_SequenceNodeOfSequenceOfSurface*)$self->Access();
    }
};
   
%nodefaultctor Geom_OsculatingSurface;

class Geom_OsculatingSurface  {
    public:

        %feature("autodoc", "1");
        Geom_OsculatingSurface();
        %feature("autodoc", "1");
        Geom_OsculatingSurface(Handle_Geom_Surface const & BS, Standard_Real const Tol);
        %feature("autodoc", "1");
        void Init(Handle_Geom_Surface const & BS, Standard_Real const Tol);
        %feature("autodoc", "1");
        Handle_Geom_Surface BasisSurface() const;
        %feature("autodoc", "1");
        Standard_Real Tolerance() const;
        %feature("autodoc", "1");
        Standard_Boolean UOscSurf(Standard_Real const U, Standard_Real const V, Standard_Boolean & t, Handle_Geom_BSplineSurface & L) const;
        %feature("autodoc", "1");
        Standard_Boolean VOscSurf(Standard_Real const U, Standard_Real const V, Standard_Boolean & t, Handle_Geom_BSplineSurface & L) const;
        %feature("autodoc", "1");
        Standard_Boolean BuildOsculatingSurface(Standard_Real const Param, Standard_Integer const UKnot, Standard_Integer const VKnot, Handle_Geom_BSplineSurface const & BS, Handle_Geom_BSplineSurface & L) const;
        %feature("autodoc", "1");
        Standard_Boolean IsQPunctual(Handle_Geom_Surface const & S, Standard_Real const Param, GeomAbs_IsoType const IT, Standard_Real const TolMin, Standard_Real const TolMax) const;
        %feature("autodoc", "1");
        Standard_Boolean HasOscSurf() const;
        %feature("autodoc", "1");
        Standard_Boolean IsAlongU() const;
        %feature("autodoc", "1");
        Standard_Boolean IsAlongV() const;
        %feature("autodoc", "1");
        void ClearOsculFlags();
        %feature("autodoc", "1");
        Geom_SequenceOfBSplineSurface const & GetSeqOfL1() const;
        %feature("autodoc", "1");
        Geom_SequenceOfBSplineSurface const & GetSeqOfL2() const; 
};
//Var: Handle_Geom_Surface myBasisSurf
//Get: None
//Set: None
//Var: Standard_Real myTol
//Get: None
//Set: None
//Var: Handle_Geom_HSequenceOfBSplineSurface myOsculSurf1
//Get: None
//Set: None
//Var: Handle_Geom_HSequenceOfBSplineSurface myOsculSurf2
//Get: None
//Set: None
//Var: Handle_TColStd_HSequenceOfInteger myKdeg
//Get: None
//Set: None
//Var: TColStd_Array1OfBoolean myAlong
//Get: None
//Set: None
%feature("shadow") Geom_OsculatingSurface::~Geom_OsculatingSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_OsculatingSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor Geom_Geometry;

class Geom_Geometry : public MMgt_TShared {
    public:


        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        Handle_Geom_Geometry Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        Handle_Geom_Geometry Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        Handle_Geom_Geometry Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        Handle_Geom_Geometry Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        Handle_Geom_Geometry Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        Handle_Geom_Geometry Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        Handle_Geom_Geometry Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        Handle_Geom_Geometry Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_Geometry::~Geom_Geometry {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Geometry {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Geometry {
    Handle_Geom_Geometry* GetHandle(){
        return (Handle_Geom_Geometry*)$self;
    }
};
   
%nodefaultctor Geom_AxisPlacement;

class Geom_AxisPlacement : public Geom_Geometry {
    public:


        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        virtual void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        Standard_Real Angle(Handle_Geom_AxisPlacement const & Other) const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        gp_Dir Direction() const;
        %feature("autodoc", "1");
        gp_Pnt Location() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Ax1 axis
//Get: None
//Set: None
%feature("shadow") Geom_AxisPlacement::~Geom_AxisPlacement {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_AxisPlacement {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_AxisPlacement {
    Handle_Geom_AxisPlacement* GetHandle(){
        return (Handle_Geom_AxisPlacement*)$self;
    }
};
   
%nodefaultctor Geom_Axis1Placement;

class Geom_Axis1Placement : public Geom_AxisPlacement {
    public:

        %feature("autodoc", "1");
        Geom_Axis1Placement(Geom_Axis1Placement const & arg0);
        %feature("autodoc", "1");
        Geom_Axis1Placement(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        Geom_Axis1Placement(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        gp_Ax1 const & Ax1() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        Handle_Geom_Axis1Placement Reversed() const;
        %feature("autodoc", "1");
        virtual void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_Axis1Placement::~Geom_Axis1Placement {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Axis1Placement {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Axis1Placement {
    Handle_Geom_Axis1Placement* GetHandle(){
        return (Handle_Geom_Axis1Placement*)$self;
    }
};
   
%nodefaultctor Geom_Axis2Placement;

class Geom_Axis2Placement : public Geom_AxisPlacement {
    public:

        %feature("autodoc", "1");
        Geom_Axis2Placement(Geom_Axis2Placement const & arg0);
        %feature("autodoc", "1");
        Geom_Axis2Placement(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        Geom_Axis2Placement(gp_Pnt const & P, gp_Dir const & N, gp_Dir const & Vx);
        %feature("autodoc", "1");
        Geom_Axis2Placement(gp_Pnt const & P, gp_Dir const & Vz, gp_Dir const & Vx, gp_Dir const & Vy);
        %feature("autodoc", "1");
        void SetAx2(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        virtual void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetXDirection(gp_Dir const & Vx);
        %feature("autodoc", "1");
        void SetYDirection(gp_Dir const & Vy);
        %feature("autodoc", "1");
        gp_Ax2 Ax2() const;
        %feature("autodoc", "1");
        gp_Dir const & XDirection() const;
        %feature("autodoc", "1");
        gp_Dir const & YDirection() const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Dir vxdir
//Get: None
//Set: None
//Var: gp_Dir vydir
//Get: None
//Set: None
%feature("shadow") Geom_Axis2Placement::~Geom_Axis2Placement {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Axis2Placement {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Axis2Placement {
    Handle_Geom_Axis2Placement* GetHandle(){
        return (Handle_Geom_Axis2Placement*)$self;
    }
};
   
%nodefaultctor Geom_Curve;

class Geom_Curve : public Geom_Geometry {
    public:


        %feature("autodoc", "1");
        virtual void Reverse();
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real TransformedParameter(Standard_Real const U, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Standard_Real ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        Handle_Geom_Curve Reversed() const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real Period() const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCN(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        gp_Pnt Value(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_Curve::~Geom_Curve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Curve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Curve {
    Handle_Geom_Curve* GetHandle(){
        return (Handle_Geom_Curve*)$self;
    }
};
   
%nodefaultctor Geom_BoundedCurve;

class Geom_BoundedCurve : public Geom_Curve {
    public:


        %feature("autodoc", "1");
        virtual gp_Pnt EndPoint() const;
        %feature("autodoc", "1");
        virtual gp_Pnt StartPoint() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_BoundedCurve::~Geom_BoundedCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_BoundedCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_BoundedCurve {
    Handle_Geom_BoundedCurve* GetHandle(){
        return (Handle_Geom_BoundedCurve*)$self;
    }
};
   
%nodefaultctor Geom_BSplineCurve;

class Geom_BSplineCurve : public Geom_BoundedCurve {
    public:

        %feature("autodoc", "1");
        Geom_BSplineCurve(Geom_BSplineCurve const & arg0);
        %feature("autodoc", "1");
        Geom_BSplineCurve(TColgp_Array1OfPnt const & Poles, TColStd_Array1OfReal const & Knots, TColStd_Array1OfInteger const & Multiplicities, Standard_Integer const Degree, Standard_Boolean const Periodic=0);
        %feature("autodoc", "1");
        Geom_BSplineCurve(TColgp_Array1OfPnt const & Poles, TColStd_Array1OfReal const & Weights, TColStd_Array1OfReal const & Knots, TColStd_Array1OfInteger const & Multiplicities, Standard_Integer const Degree, Standard_Boolean const Periodic=0, Standard_Boolean const CheckRational=1);
        %feature("autodoc", "1");
        void IncreaseDegree(Standard_Integer const Degree);
        %feature("autodoc", "1");
        void IncreaseMultiplicity(Standard_Integer const Index, Standard_Integer const M);
        %feature("autodoc", "1");
        void IncreaseMultiplicity(Standard_Integer const I1, Standard_Integer const I2, Standard_Integer const M);
        %feature("autodoc", "1");
        void IncrementMultiplicity(Standard_Integer const I1, Standard_Integer const I2, Standard_Integer const M);
        %feature("autodoc", "1");
        void InsertKnot(Standard_Real const U, Standard_Integer const M=1, Standard_Real const ParametricTolerance=0.0, Standard_Boolean const Add=1);
        %feature("autodoc", "1");
        void InsertKnots(TColStd_Array1OfReal const & Knots, TColStd_Array1OfInteger const & Mults, Standard_Real const ParametricTolerance=0.0, Standard_Boolean const Add=0);
        %feature("autodoc", "1");
        Standard_Boolean RemoveKnot(Standard_Integer const Index, Standard_Integer const M, Standard_Real const Tolerance);
        %feature("autodoc", "1");
        virtual void Reverse();
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        void Segment(Standard_Real const U1, Standard_Real const U2);
        %feature("autodoc", "1");
        void SetKnot(Standard_Integer const Index, Standard_Real const K);
        %feature("autodoc", "1");
        void SetKnots(TColStd_Array1OfReal const & K);
        %feature("autodoc", "1");
        void SetKnot(Standard_Integer const Index, Standard_Real const K, Standard_Integer const M);
        %feature("autodoc", "1");
        void PeriodicNormalization(Standard_Real & U) const;
        %feature("autodoc", "1");
        void SetPeriodic();
        %feature("autodoc", "1");
        void SetOrigin(Standard_Integer const Index);
        %feature("autodoc", "1");
        void SetOrigin(Standard_Real const U, Standard_Real const Tol);
        %feature("autodoc", "1");
        void SetNotPeriodic();
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const Index, gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const Index, gp_Pnt const & P, Standard_Real const Weight);
        %feature("autodoc", "1");
        void SetWeight(Standard_Integer const Index, Standard_Real const Weight);
        %feature("autodoc", "1");
        void MovePoint(Standard_Real const U, gp_Pnt const & P, Standard_Integer const Index1, Standard_Integer const Index2, Standard_Integer & FirstModifiedPole, Standard_Integer & LastModifiedPole);
        %feature("autodoc", "1");
        void MovePointAndTangent(Standard_Real const U, gp_Pnt const & P, gp_Vec const & Tangent, Standard_Real const Tolerance, Standard_Integer const StartingCondition, Standard_Integer const EndingCondition, Standard_Integer & ErrorStatus);
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCN(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        Standard_Boolean IsRational() const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        Standard_Integer Degree() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        gp_Pnt LocalValue(Standard_Real const U, Standard_Integer const FromK1, Standard_Integer const ToK2) const;
        %feature("autodoc", "1");
        void LocalD0(Standard_Real const U, Standard_Integer const FromK1, Standard_Integer const ToK2, gp_Pnt & P) const;
        %feature("autodoc", "1");
        void LocalD1(Standard_Real const U, Standard_Integer const FromK1, Standard_Integer const ToK2, gp_Pnt & P, gp_Vec & V1) const;
        %feature("autodoc", "1");
        void LocalD2(Standard_Real const U, Standard_Integer const FromK1, Standard_Integer const ToK2, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
        %feature("autodoc", "1");
        void LocalD3(Standard_Real const U, Standard_Integer const FromK1, Standard_Integer const ToK2, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3) const;
        %feature("autodoc", "1");
        gp_Vec LocalDN(Standard_Real const U, Standard_Integer const FromK1, Standard_Integer const ToK2, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual gp_Pnt EndPoint() const;
        %feature("autodoc", "1");
        Standard_Integer FirstUKnotIndex() const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        Standard_Real Knot(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Knots(TColStd_Array1OfReal & K) const;
        %feature("autodoc", "1");
        void KnotSequence(TColStd_Array1OfReal & K) const;
        %feature("autodoc", "1");
        GeomAbs_BSplKnotDistribution KnotDistribution() const;
        %feature("autodoc", "1");
        Standard_Integer LastUKnotIndex() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        void LocateU(Standard_Real const U, Standard_Real const ParametricTolerance, Standard_Integer & I1, Standard_Integer & I2, Standard_Boolean const WithKnotRepetition=0) const;
        %feature("autodoc", "1");
        Standard_Integer Multiplicity(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Multiplicities(TColStd_Array1OfInteger & M) const;
        %feature("autodoc", "1");
        Standard_Integer NbKnots() const;
        %feature("autodoc", "1");
        Standard_Integer NbPoles() const;
        %feature("autodoc", "1");
        gp_Pnt Pole(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Poles(TColgp_Array1OfPnt & P) const;
        %feature("autodoc", "1");
        virtual gp_Pnt StartPoint() const;
        %feature("autodoc", "1");
        Standard_Real Weight(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Weights(TColStd_Array1OfReal & W) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        Standard_Integer MaxDegree();
        %feature("autodoc", "1");
        void Resolution(Standard_Real const Tolerance3D, Standard_Real & UTolerance);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        Standard_Boolean IsCacheValid(Standard_Real const Parameter) const;
        %feature("autodoc", "1");
        void InvalidateCache();
        %feature("autodoc", "1");
        void UpdateKnots();
        %feature("autodoc", "1");
        void ValidateCache(Standard_Real const Parameter); 
};
//Var: Standard_Boolean rational
//Get: None
//Set: None
//Var: Standard_Boolean periodic
//Get: None
//Set: None
//Var: GeomAbs_BSplKnotDistribution knotSet
//Get: None
//Set: None
//Var: GeomAbs_Shape smooth
//Get: None
//Set: None
//Var: Standard_Integer deg
//Get: None
//Set: None
//Var: Handle_TColgp_HArray1OfPnt poles
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal weights
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal flatknots
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal knots
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfInteger mults
//Get: None
//Set: None
//Var: Handle_TColgp_HArray1OfPnt cachepoles
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal cacheweights
//Get: None
//Set: None
//Var: Standard_Integer validcache
//Get: None
//Set: None
//Var: Standard_Real parametercache
//Get: None
//Set: None
//Var: Standard_Real spanlenghtcache
//Get: None
//Set: None
//Var: Standard_Integer spanindexcache
//Get: None
//Set: None
//Var: Standard_Real maxderivinv
//Get: None
//Set: None
//Var: Standard_Boolean maxderivinvok
//Get: None
//Set: None
%feature("shadow") Geom_BSplineCurve::~Geom_BSplineCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_BSplineCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_BSplineCurve {
    Handle_Geom_BSplineCurve* GetHandle(){
        return (Handle_Geom_BSplineCurve*)$self;
    }
};
   
%nodefaultctor Geom_BezierCurve;

class Geom_BezierCurve : public Geom_BoundedCurve {
    public:

        %feature("autodoc", "1");
        Geom_BezierCurve(Geom_BezierCurve const & arg0);
        %feature("autodoc", "1");
        Geom_BezierCurve(TColgp_Array1OfPnt const & CurvePoles);
        %feature("autodoc", "1");
        Geom_BezierCurve(TColgp_Array1OfPnt const & CurvePoles, TColStd_Array1OfReal const & PoleWeights);
        %feature("autodoc", "1");
        void Increase(Standard_Integer const Degree);
        %feature("autodoc", "1");
        void InsertPoleAfter(Standard_Integer const Index, gp_Pnt const & P);
        %feature("autodoc", "1");
        void InsertPoleAfter(Standard_Integer const Index, gp_Pnt const & P, Standard_Real const Weight);
        %feature("autodoc", "1");
        void InsertPoleBefore(Standard_Integer const Index, gp_Pnt const & P);
        %feature("autodoc", "1");
        void InsertPoleBefore(Standard_Integer const Index, gp_Pnt const & P, Standard_Real const Weight);
        %feature("autodoc", "1");
        void RemovePole(Standard_Integer const Index);
        %feature("autodoc", "1");
        virtual void Reverse();
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        void Segment(Standard_Real const U1, Standard_Real const U2);
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const Index, gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const Index, gp_Pnt const & P, Standard_Real const Weight);
        %feature("autodoc", "1");
        void SetWeight(Standard_Integer const Index, Standard_Real const Weight);
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCN(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        Standard_Boolean IsRational() const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        Standard_Integer Degree() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual gp_Pnt StartPoint() const;
        %feature("autodoc", "1");
        virtual gp_Pnt EndPoint() const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        Standard_Integer NbPoles() const;
        %feature("autodoc", "1");
        gp_Pnt Pole(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Poles(TColgp_Array1OfPnt & P) const;
        %feature("autodoc", "1");
        Standard_Real Weight(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Weights(TColStd_Array1OfReal & W) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        Standard_Integer MaxDegree();
        %feature("autodoc", "1");
        void Resolution(Standard_Real const Tolerance3D, Standard_Real & UTolerance);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        void Init(Handle_TColgp_HArray1OfPnt const & Poles, Handle_TColStd_HArray1OfReal const & Weights);
        %feature("autodoc", "1");
        Standard_Boolean CoefficientsOK(Standard_Real const U) const;
        %feature("autodoc", "1");
        void UpdateCoefficients(Standard_Real const U=0.0); 
};
//Var: Standard_Boolean rational
//Get: None
//Set: None
//Var: Standard_Boolean closed
//Get: None
//Set: None
//Var: Handle_TColgp_HArray1OfPnt poles
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal weights
//Get: None
//Set: None
//Var: Handle_TColgp_HArray1OfPnt coeffs
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal wcoeffs
//Get: None
//Set: None
//Var: Standard_Integer validcache
//Get: None
//Set: None
//Var: Standard_Real parametercache
//Get: None
//Set: None
//Var: Standard_Real spanlenghtcache
//Get: None
//Set: None
//Var: Standard_Real maxderivinv
//Get: None
//Set: None
//Var: Standard_Boolean maxderivinvok
//Get: None
//Set: None
%feature("shadow") Geom_BezierCurve::~Geom_BezierCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_BezierCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_BezierCurve {
    Handle_Geom_BezierCurve* GetHandle(){
        return (Handle_Geom_BezierCurve*)$self;
    }
};
   
%nodefaultctor Geom_TrimmedCurve;

class Geom_TrimmedCurve : public Geom_BoundedCurve {
    public:

        %feature("autodoc", "1");
        Geom_TrimmedCurve(Geom_TrimmedCurve const & arg0);
        %feature("autodoc", "1");
        Geom_TrimmedCurve(Handle_Geom_Curve const & C, Standard_Real const U1, Standard_Real const U2, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        virtual void Reverse();
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        void SetTrim(Standard_Real const U1, Standard_Real const U2, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        Handle_Geom_Curve BasisCurve() const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCN(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual gp_Pnt EndPoint() const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real Period() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        virtual gp_Pnt StartPoint() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Standard_Real TransformedParameter(Standard_Real const U, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Standard_Real ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Geom_Curve basisCurve
//Get: None
//Set: None
//Var: Standard_Real uTrim1
//Get: None
//Set: None
//Var: Standard_Real uTrim2
//Get: None
//Set: None
%feature("shadow") Geom_TrimmedCurve::~Geom_TrimmedCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_TrimmedCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_TrimmedCurve {
    Handle_Geom_TrimmedCurve* GetHandle(){
        return (Handle_Geom_TrimmedCurve*)$self;
    }
};
   
%nodefaultctor Geom_Conic;

class Geom_Conic : public Geom_Curve {
    public:


        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Ax1 Axis() const;
        %feature("autodoc", "1");
        virtual Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        gp_Pnt Location() const;
        %feature("autodoc", "1");
        gp_Ax2 const & Position() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        virtual void Reverse();
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCN(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Ax2 pos
//Get: None
//Set: None
%feature("shadow") Geom_Conic::~Geom_Conic {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Conic {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Conic {
    Handle_Geom_Conic* GetHandle(){
        return (Handle_Geom_Conic*)$self;
    }
};
   
%nodefaultctor Geom_Circle;

class Geom_Circle : public Geom_Conic {
    public:

        %feature("autodoc", "1");
        Geom_Circle(Geom_Circle const & arg0);
        %feature("autodoc", "1");
        Geom_Circle(gp_Circ const & C);
        %feature("autodoc", "1");
        Geom_Circle(gp_Ax2 const & A2, Standard_Real const Radius);
        %feature("autodoc", "1");
        void SetCirc(gp_Circ const & C);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        gp_Circ Circ() const;
        %feature("autodoc", "1");
        Standard_Real Radius() const;
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real radius
//Get: None
//Set: None
%feature("shadow") Geom_Circle::~Geom_Circle {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Circle {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Circle {
    Handle_Geom_Circle* GetHandle(){
        return (Handle_Geom_Circle*)$self;
    }
};
   
%nodefaultctor Geom_Ellipse;

class Geom_Ellipse : public Geom_Conic {
    public:

        %feature("autodoc", "1");
        Geom_Ellipse(Geom_Ellipse const & arg0);
        %feature("autodoc", "1");
        Geom_Ellipse(gp_Elips const & E);
        %feature("autodoc", "1");
        Geom_Ellipse(gp_Ax2 const & A2, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetElips(gp_Elips const & E);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const MajorRadius);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        gp_Elips Elips() const;
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix1() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix2() const;
        %feature("autodoc", "1");
        virtual Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt Focus1() const;
        %feature("autodoc", "1");
        gp_Pnt Focus2() const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") Geom_Ellipse::~Geom_Ellipse {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Ellipse {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Ellipse {
    Handle_Geom_Ellipse* GetHandle(){
        return (Handle_Geom_Ellipse*)$self;
    }
};
   
%nodefaultctor Geom_Hyperbola;

class Geom_Hyperbola : public Geom_Conic {
    public:

        %feature("autodoc", "1");
        Geom_Hyperbola(Geom_Hyperbola const & arg0);
        %feature("autodoc", "1");
        Geom_Hyperbola(gp_Hypr const & H);
        %feature("autodoc", "1");
        Geom_Hyperbola(gp_Ax2 const & A2, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetHypr(gp_Hypr const & H);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const MajorRadius);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        gp_Hypr Hypr() const;
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        gp_Ax1 Asymptote1() const;
        %feature("autodoc", "1");
        gp_Ax1 Asymptote2() const;
        %feature("autodoc", "1");
        gp_Hypr ConjugateBranch1() const;
        %feature("autodoc", "1");
        gp_Hypr ConjugateBranch2() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix1() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix2() const;
        %feature("autodoc", "1");
        virtual Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt Focus1() const;
        %feature("autodoc", "1");
        gp_Pnt Focus2() const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        gp_Hypr OtherBranch() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") Geom_Hyperbola::~Geom_Hyperbola {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Hyperbola {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Hyperbola {
    Handle_Geom_Hyperbola* GetHandle(){
        return (Handle_Geom_Hyperbola*)$self;
    }
};
   
%nodefaultctor Geom_Parabola;

class Geom_Parabola : public Geom_Conic {
    public:

        %feature("autodoc", "1");
        Geom_Parabola(Geom_Parabola const & arg0);
        %feature("autodoc", "1");
        Geom_Parabola(gp_Parab const & Prb);
        %feature("autodoc", "1");
        Geom_Parabola(gp_Ax2 const & A2, Standard_Real const Focal);
        %feature("autodoc", "1");
        Geom_Parabola(gp_Ax1 const & D, gp_Pnt const & F);
        %feature("autodoc", "1");
        void SetFocal(Standard_Real const Focal);
        %feature("autodoc", "1");
        void SetParab(gp_Parab const & Prb);
        %feature("autodoc", "1");
        gp_Parab Parab() const;
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix() const;
        %feature("autodoc", "1");
        virtual Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        gp_Pnt Focus() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Standard_Real TransformedParameter(Standard_Real const U, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Standard_Real ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real focalLength
//Get: None
//Set: None
%feature("shadow") Geom_Parabola::~Geom_Parabola {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Parabola {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Parabola {
    Handle_Geom_Parabola* GetHandle(){
        return (Handle_Geom_Parabola*)$self;
    }
};
   
%nodefaultctor Geom_Line;

class Geom_Line : public Geom_Curve {
    public:

        %feature("autodoc", "1");
        Geom_Line(Geom_Line const & arg0);
        %feature("autodoc", "1");
        Geom_Line(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        Geom_Line(gp_Lin const & L);
        %feature("autodoc", "1");
        Geom_Line(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        void SetLin(gp_Lin const & L);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Lin Lin() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Position() const;
        %feature("autodoc", "1");
        virtual void Reverse();
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCN(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Standard_Real TransformedParameter(Standard_Real const U, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Standard_Real ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Ax1 pos
//Get: None
//Set: None
%feature("shadow") Geom_Line::~Geom_Line {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Line {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Line {
    Handle_Geom_Line* GetHandle(){
        return (Handle_Geom_Line*)$self;
    }
};
   
%nodefaultctor Geom_OffsetCurve;

class Geom_OffsetCurve : public Geom_Curve {
    public:

        %feature("autodoc", "1");
        Geom_OffsetCurve(Geom_OffsetCurve const & arg0);
        %feature("autodoc", "1");
        Geom_OffsetCurve(Handle_Geom_Curve const & C, Standard_Real const Offset, gp_Dir const & V);
        %feature("autodoc", "1");
        virtual void Reverse();
        %feature("autodoc", "1");
        virtual Standard_Real ReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        void SetBasisCurve(Handle_Geom_Curve const & C);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetOffsetValue(Standard_Real const D);
        %feature("autodoc", "1");
        Handle_Geom_Curve BasisCurve() const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        gp_Dir const & Direction() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Integer const N) const;
        %feature("autodoc", "1");
        void Value(Standard_Real const U, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & V1basis) const;
        %feature("autodoc", "1");
        void D0(Standard_Real const U, gp_Pnt & OutValue, gp_Pnt & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        void D1(Standard_Real const U, gp_Pnt & OutValue, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        void D2(Standard_Real const U, gp_Pnt & OutValue, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual Standard_Real FirstParameter() const;
        %feature("autodoc", "1");
        virtual Standard_Real LastParameter() const;
        %feature("autodoc", "1");
        Standard_Real Offset() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCN(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real Period() const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Standard_Real TransformedParameter(Standard_Real const U, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Standard_Real ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Geom_Curve basisCurve
//Get: None
//Set: None
//Var: gp_Dir direction
//Get: None
//Set: None
//Var: Standard_Real offsetValue
//Get: None
//Set: None
%feature("shadow") Geom_OffsetCurve::~Geom_OffsetCurve {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_OffsetCurve {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_OffsetCurve {
    Handle_Geom_OffsetCurve* GetHandle(){
        return (Handle_Geom_OffsetCurve*)$self;
    }
};
   
%nodefaultctor Geom_Point;

class Geom_Point : public Geom_Geometry {
    public:


        %feature("autodoc", "1");
        virtual void Coord(Standard_Real & X, Standard_Real & Y, Standard_Real & Z) const;
        %feature("autodoc", "1");
        virtual gp_Pnt Pnt() const;
        %feature("autodoc", "1");
        virtual Standard_Real X() const;
        %feature("autodoc", "1");
        virtual Standard_Real Y() const;
        %feature("autodoc", "1");
        virtual Standard_Real Z() const;
        %feature("autodoc", "1");
        Standard_Real Distance(Handle_Geom_Point const & Other) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(Handle_Geom_Point const & Other) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_Point::~Geom_Point {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Point {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Point {
    Handle_Geom_Point* GetHandle(){
        return (Handle_Geom_Point*)$self;
    }
};
   
%nodefaultctor Geom_CartesianPoint;

class Geom_CartesianPoint : public Geom_Point {
    public:

        %feature("autodoc", "1");
        Geom_CartesianPoint(Geom_CartesianPoint const & arg0);
        %feature("autodoc", "1");
        Geom_CartesianPoint(gp_Pnt const & P);
        %feature("autodoc", "1");
        Geom_CartesianPoint(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        void SetPnt(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetZ(Standard_Real const Z);
        %feature("autodoc", "1");
        virtual void Coord(Standard_Real & X, Standard_Real & Y, Standard_Real & Z) const;
        %feature("autodoc", "1");
        virtual gp_Pnt Pnt() const;
        %feature("autodoc", "1");
        virtual Standard_Real X() const;
        %feature("autodoc", "1");
        virtual Standard_Real Y() const;
        %feature("autodoc", "1");
        virtual Standard_Real Z() const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Pnt gpPnt
//Get: None
//Set: None
%feature("shadow") Geom_CartesianPoint::~Geom_CartesianPoint {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_CartesianPoint {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_CartesianPoint {
    Handle_Geom_CartesianPoint* GetHandle(){
        return (Handle_Geom_CartesianPoint*)$self;
    }
};
   
%nodefaultctor Geom_Surface;

class Geom_Surface : public Geom_Geometry {
    public:


        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        Handle_Geom_Surface UReversed() const;
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        Handle_Geom_Surface VReversed() const;
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real UPeriod() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real VPeriod() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        gp_Pnt Value(Standard_Real const U, Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_Surface::~Geom_Surface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Surface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Surface {
    Handle_Geom_Surface* GetHandle(){
        return (Handle_Geom_Surface*)$self;
    }
};
   
%nodefaultctor Geom_BoundedSurface;

class Geom_BoundedSurface : public Geom_Surface {
    public:


        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_BoundedSurface::~Geom_BoundedSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_BoundedSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_BoundedSurface {
    Handle_Geom_BoundedSurface* GetHandle(){
        return (Handle_Geom_BoundedSurface*)$self;
    }
};
   
%nodefaultctor Geom_BSplineSurface;

class Geom_BSplineSurface : public Geom_BoundedSurface {
    public:

        %feature("autodoc", "1");
        Geom_BSplineSurface(Geom_BSplineSurface const & arg0);
        %feature("autodoc", "1");
        Geom_BSplineSurface(TColgp_Array2OfPnt const & Poles, TColStd_Array1OfReal const & UKnots, TColStd_Array1OfReal const & VKnots, TColStd_Array1OfInteger const & UMults, TColStd_Array1OfInteger const & VMults, Standard_Integer const UDegree, Standard_Integer const VDegree, Standard_Boolean const UPeriodic=0, Standard_Boolean const VPeriodic=0);
        %feature("autodoc", "1");
        Geom_BSplineSurface(TColgp_Array2OfPnt const & Poles, TColStd_Array2OfReal const & Weights, TColStd_Array1OfReal const & UKnots, TColStd_Array1OfReal const & VKnots, TColStd_Array1OfInteger const & UMults, TColStd_Array1OfInteger const & VMults, Standard_Integer const UDegree, Standard_Integer const VDegree, Standard_Boolean const UPeriodic=0, Standard_Boolean const VPeriodic=0);
        %feature("autodoc", "1");
        void ExchangeUV();
        %feature("autodoc", "1");
        void SetUPeriodic();
        %feature("autodoc", "1");
        void SetVPeriodic();
        %feature("autodoc", "1");
        void PeriodicNormalization(Standard_Real & U, Standard_Real & V) const;
        %feature("autodoc", "1");
        void SetUOrigin(Standard_Integer const Index);
        %feature("autodoc", "1");
        void SetVOrigin(Standard_Integer const Index);
        %feature("autodoc", "1");
        void SetUNotPeriodic();
        %feature("autodoc", "1");
        void SetVNotPeriodic();
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        void IncreaseDegree(Standard_Integer const UDegree, Standard_Integer const VDegree);
        %feature("autodoc", "1");
        void InsertUKnots(TColStd_Array1OfReal const & Knots, TColStd_Array1OfInteger const & Mults, Standard_Real const ParametricTolerance=0.0, Standard_Boolean const Add=1);
        %feature("autodoc", "1");
        void InsertVKnots(TColStd_Array1OfReal const & Knots, TColStd_Array1OfInteger const & Mults, Standard_Real const ParametricTolerance=0.0, Standard_Boolean const Add=1);
        %feature("autodoc", "1");
        Standard_Boolean RemoveUKnot(Standard_Integer const Index, Standard_Integer const M, Standard_Real const Tolerance);
        %feature("autodoc", "1");
        Standard_Boolean RemoveVKnot(Standard_Integer const Index, Standard_Integer const M, Standard_Real const Tolerance);
        %feature("autodoc", "1");
        void IncreaseUMultiplicity(Standard_Integer const UIndex, Standard_Integer const M);
        %feature("autodoc", "1");
        void IncreaseUMultiplicity(Standard_Integer const FromI1, Standard_Integer const ToI2, Standard_Integer const M);
        %feature("autodoc", "1");
        void IncrementUMultiplicity(Standard_Integer const FromI1, Standard_Integer const ToI2, Standard_Integer const Step);
        %feature("autodoc", "1");
        void IncreaseVMultiplicity(Standard_Integer const VIndex, Standard_Integer const M);
        %feature("autodoc", "1");
        void IncreaseVMultiplicity(Standard_Integer const FromI1, Standard_Integer const ToI2, Standard_Integer const M);
        %feature("autodoc", "1");
        void IncrementVMultiplicity(Standard_Integer const FromI1, Standard_Integer const ToI2, Standard_Integer const Step);
        %feature("autodoc", "1");
        void InsertUKnot(Standard_Real const U, Standard_Integer const M, Standard_Real const ParametricTolerance, Standard_Boolean const Add=1);
        %feature("autodoc", "1");
        void InsertVKnot(Standard_Real const V, Standard_Integer const M, Standard_Real const ParametricTolerance, Standard_Boolean const Add=1);
        %feature("autodoc", "1");
        void Segment(Standard_Real const U1, Standard_Real const U2, Standard_Real const V1, Standard_Real const V2);
        %feature("autodoc", "1");
        void CheckAndSegment(Standard_Real const U1, Standard_Real const U2, Standard_Real const V1, Standard_Real const V2);
        %feature("autodoc", "1");
        void SetUKnot(Standard_Integer const UIndex, Standard_Real const K);
        %feature("autodoc", "1");
        void SetUKnots(TColStd_Array1OfReal const & UK);
        %feature("autodoc", "1");
        void SetUKnot(Standard_Integer const UIndex, Standard_Real const K, Standard_Integer const M);
        %feature("autodoc", "1");
        void SetVKnot(Standard_Integer const VIndex, Standard_Real const K);
        %feature("autodoc", "1");
        void SetVKnots(TColStd_Array1OfReal const & VK);
        %feature("autodoc", "1");
        void SetVKnot(Standard_Integer const VIndex, Standard_Real const K, Standard_Integer const M);
        %feature("autodoc", "1");
        void LocateU(Standard_Real const U, Standard_Real const ParametricTolerance, Standard_Integer & I1, Standard_Integer & I2, Standard_Boolean const WithKnotRepetition=0) const;
        %feature("autodoc", "1");
        void LocateV(Standard_Real const V, Standard_Real const ParametricTolerance, Standard_Integer & I1, Standard_Integer & I2, Standard_Boolean const WithKnotRepetition=0) const;
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const UIndex, Standard_Integer const VIndex, gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const UIndex, Standard_Integer const VIndex, gp_Pnt const & P, Standard_Real const Weight);
        %feature("autodoc", "1");
        void SetPoleCol(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void SetPoleCol(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void SetPoleRow(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void SetPoleRow(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void SetWeight(Standard_Integer const UIndex, Standard_Integer const VIndex, Standard_Real const Weight);
        %feature("autodoc", "1");
        void SetWeightCol(Standard_Integer const VIndex, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void SetWeightRow(Standard_Integer const UIndex, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void MovePoint(Standard_Real const U, Standard_Real const V, gp_Pnt const & P, Standard_Integer const UIndex1, Standard_Integer const UIndex2, Standard_Integer const VIndex1, Standard_Integer const VIndex2, Standard_Integer & UFirstIndex, Standard_Integer & ULastIndex, Standard_Integer & VFirstIndex, Standard_Integer & VLastIndex);
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        Standard_Boolean IsURational() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        Standard_Boolean IsVRational() const;
        %feature("autodoc", "1");
        Standard_Boolean IsCacheValid(Standard_Real const UParameter, Standard_Real const VParameter) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        Standard_Integer FirstUKnotIndex() const;
        %feature("autodoc", "1");
        Standard_Integer FirstVKnotIndex() const;
        %feature("autodoc", "1");
        Standard_Integer LastUKnotIndex() const;
        %feature("autodoc", "1");
        Standard_Integer LastVKnotIndex() const;
        %feature("autodoc", "1");
        Standard_Integer NbUKnots() const;
        %feature("autodoc", "1");
        Standard_Integer NbUPoles() const;
        %feature("autodoc", "1");
        Standard_Integer NbVKnots() const;
        %feature("autodoc", "1");
        Standard_Integer NbVPoles() const;
        %feature("autodoc", "1");
        gp_Pnt Pole(Standard_Integer const UIndex, Standard_Integer const VIndex) const;
        %feature("autodoc", "1");
        void Poles(TColgp_Array2OfPnt & P) const;
        %feature("autodoc", "1");
        Standard_Integer UDegree() const;
        %feature("autodoc", "1");
        Standard_Real UKnot(Standard_Integer const UIndex) const;
        %feature("autodoc", "1");
        GeomAbs_BSplKnotDistribution UKnotDistribution() const;
        %feature("autodoc", "1");
        void UKnots(TColStd_Array1OfReal & Ku) const;
        %feature("autodoc", "1");
        void UKnotSequence(TColStd_Array1OfReal & Ku) const;
        %feature("autodoc", "1");
        Standard_Integer UMultiplicity(Standard_Integer const UIndex) const;
        %feature("autodoc", "1");
        void UMultiplicities(TColStd_Array1OfInteger & Mu) const;
        %feature("autodoc", "1");
        Standard_Integer VDegree() const;
        %feature("autodoc", "1");
        Standard_Real VKnot(Standard_Integer const VIndex) const;
        %feature("autodoc", "1");
        GeomAbs_BSplKnotDistribution VKnotDistribution() const;
        %feature("autodoc", "1");
        void VKnots(TColStd_Array1OfReal & Kv) const;
        %feature("autodoc", "1");
        void VKnotSequence(TColStd_Array1OfReal & Kv) const;
        %feature("autodoc", "1");
        Standard_Integer VMultiplicity(Standard_Integer const VIndex) const;
        %feature("autodoc", "1");
        void VMultiplicities(TColStd_Array1OfInteger & Mv) const;
        %feature("autodoc", "1");
        Standard_Real Weight(Standard_Integer const UIndex, Standard_Integer const VIndex) const;
        %feature("autodoc", "1");
        void Weights(TColStd_Array2OfReal & W) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        void LocalD0(Standard_Real const U, Standard_Real const V, Standard_Integer const FromUK1, Standard_Integer const ToUK2, Standard_Integer const FromVK1, Standard_Integer const ToVK2, gp_Pnt & P) const;
        %feature("autodoc", "1");
        void LocalD1(Standard_Real const U, Standard_Real const V, Standard_Integer const FromUK1, Standard_Integer const ToUK2, Standard_Integer const FromVK1, Standard_Integer const ToVK2, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
        %feature("autodoc", "1");
        void LocalD2(Standard_Real const U, Standard_Real const V, Standard_Integer const FromUK1, Standard_Integer const ToUK2, Standard_Integer const FromVK1, Standard_Integer const ToVK2, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
        %feature("autodoc", "1");
        void LocalD3(Standard_Real const U, Standard_Real const V, Standard_Integer const FromUK1, Standard_Integer const ToUK2, Standard_Integer const FromVK1, Standard_Integer const ToVK2, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
        %feature("autodoc", "1");
        gp_Vec LocalDN(Standard_Real const U, Standard_Real const V, Standard_Integer const FromUK1, Standard_Integer const ToUK2, Standard_Integer const FromVK1, Standard_Integer const ToVK2, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        gp_Pnt LocalValue(Standard_Real const U, Standard_Real const V, Standard_Integer const FromUK1, Standard_Integer const ToUK2, Standard_Integer const FromVK1, Standard_Integer const ToVK2) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        Handle_Geom_Curve UIso(Standard_Real const U, Standard_Boolean const CheckRational) const;
        %feature("autodoc", "1");
        Handle_Geom_Curve VIso(Standard_Real const V, Standard_Boolean const CheckRational) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        Standard_Integer MaxDegree();
        %feature("autodoc", "1");
        void Resolution(Standard_Real const Tolerance3D, Standard_Real & UTolerance, Standard_Real & VTolerance);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        void UpdateUKnots();
        %feature("autodoc", "1");
        void UpdateVKnots();
        %feature("autodoc", "1");
        void InvalidateCache();
        %feature("autodoc", "1");
        void ValidateCache(Standard_Real const UParameter, Standard_Real const VParameter); 
};
//Var: Standard_Boolean urational
//Get: None
//Set: None
//Var: Standard_Boolean vrational
//Get: None
//Set: None
//Var: Standard_Boolean uperiodic
//Get: None
//Set: None
//Var: Standard_Boolean vperiodic
//Get: None
//Set: None
//Var: GeomAbs_BSplKnotDistribution uknotSet
//Get: None
//Set: None
//Var: GeomAbs_BSplKnotDistribution vknotSet
//Get: None
//Set: None
//Var: GeomAbs_Shape Usmooth
//Get: None
//Set: None
//Var: GeomAbs_Shape Vsmooth
//Get: None
//Set: None
//Var: Standard_Integer udeg
//Get: None
//Set: None
//Var: Standard_Integer vdeg
//Get: None
//Set: None
//Var: Handle_TColgp_HArray2OfPnt poles
//Get: None
//Set: None
//Var: Handle_TColStd_HArray2OfReal weights
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal ufknots
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal vfknots
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal uknots
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfReal vknots
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfInteger umults
//Get: None
//Set: None
//Var: Handle_TColStd_HArray1OfInteger vmults
//Get: None
//Set: None
//Var: Handle_TColgp_HArray2OfPnt cachepoles
//Get: None
//Set: None
//Var: Handle_TColStd_HArray2OfReal cacheweights
//Get: None
//Set: None
//Var: Standard_Real ucacheparameter
//Get: None
//Set: None
//Var: Standard_Real vcacheparameter
//Get: None
//Set: None
//Var: Standard_Real ucachespanlenght
//Get: None
//Set: None
//Var: Standard_Real vcachespanlenght
//Get: None
//Set: None
//Var: Standard_Integer ucachespanindex
//Get: None
//Set: None
//Var: Standard_Integer vcachespanindex
//Get: None
//Set: None
//Var: Standard_Integer validcache
//Get: None
//Set: None
//Var: Standard_Real umaxderivinv
//Get: None
//Set: None
//Var: Standard_Real vmaxderivinv
//Get: None
//Set: None
//Var: Standard_Boolean maxderivinvok
//Get: None
//Set: None
%feature("shadow") Geom_BSplineSurface::~Geom_BSplineSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_BSplineSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_BSplineSurface {
    Handle_Geom_BSplineSurface* GetHandle(){
        return (Handle_Geom_BSplineSurface*)$self;
    }
};
   
%nodefaultctor Geom_BezierSurface;

class Geom_BezierSurface : public Geom_BoundedSurface {
    public:

        %feature("autodoc", "1");
        Geom_BezierSurface(Geom_BezierSurface const & arg0);
        %feature("autodoc", "1");
        Geom_BezierSurface(TColgp_Array2OfPnt const & SurfacePoles);
        %feature("autodoc", "1");
        Geom_BezierSurface(TColgp_Array2OfPnt const & SurfacePoles, TColStd_Array2OfReal const & PoleWeights);
        %feature("autodoc", "1");
        Geom_BezierSurface(Handle_TColgp_HArray2OfPnt const & SurfacePoles, Handle_TColgp_HArray2OfPnt const & SurfaceCoefficients, Handle_TColStd_HArray2OfReal const & PoleWeights, Handle_TColStd_HArray2OfReal const & CoefficientWeights, Standard_Boolean const IsURational, Standard_Boolean const IsVRational);
        %feature("autodoc", "1");
        void ExchangeUV();
        %feature("autodoc", "1");
        void Increase(Standard_Integer const UDeg, Standard_Integer const VDeg);
        %feature("autodoc", "1");
        void InsertPoleColAfter(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void InsertPoleColAfter(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void InsertPoleColBefore(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void InsertPoleColBefore(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void InsertPoleRowAfter(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void InsertPoleRowAfter(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void InsertPoleRowBefore(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void InsertPoleRowBefore(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void RemovePoleCol(Standard_Integer const VIndex);
        %feature("autodoc", "1");
        void RemovePoleRow(Standard_Integer const UIndex);
        %feature("autodoc", "1");
        void Segment(Standard_Real const U1, Standard_Real const U2, Standard_Real const V1, Standard_Real const V2);
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const UIndex, Standard_Integer const VIndex, gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPole(Standard_Integer const UIndex, Standard_Integer const VIndex, gp_Pnt const & P, Standard_Real const Weight);
        %feature("autodoc", "1");
        void SetPoleCol(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void SetPoleCol(Standard_Integer const VIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void SetPoleRow(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles);
        %feature("autodoc", "1");
        void SetPoleRow(Standard_Integer const UIndex, TColgp_Array1OfPnt const & CPoles, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void SetWeight(Standard_Integer const UIndex, Standard_Integer const VIndex, Standard_Real const Weight);
        %feature("autodoc", "1");
        void SetWeightCol(Standard_Integer const VIndex, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        void SetWeightRow(Standard_Integer const UIndex, TColStd_Array1OfReal const & CPoleWeights);
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        Standard_Integer NbUPoles() const;
        %feature("autodoc", "1");
        Standard_Integer NbVPoles() const;
        %feature("autodoc", "1");
        gp_Pnt Pole(Standard_Integer const UIndex, Standard_Integer const VIndex) const;
        %feature("autodoc", "1");
        void Poles(TColgp_Array2OfPnt & P) const;
        %feature("autodoc", "1");
        Standard_Integer UDegree() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        Standard_Integer VDegree() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        Standard_Real Weight(Standard_Integer const UIndex, Standard_Integer const VIndex) const;
        %feature("autodoc", "1");
        void Weights(TColStd_Array2OfReal & W) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        Standard_Boolean IsURational() const;
        %feature("autodoc", "1");
        Standard_Boolean IsVRational() const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        Standard_Integer MaxDegree();
        %feature("autodoc", "1");
        void Resolution(Standard_Real const Tolerance3D, Standard_Real & UTolerance, Standard_Real & VTolerance);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        void Init(Handle_TColgp_HArray2OfPnt const & Poles, Handle_TColStd_HArray2OfReal const & Weights);
        %feature("autodoc", "1");
        void UpdateCoefficients(Standard_Real const U=0.0, Standard_Real const V=0.0); 
};
//Var: Standard_Boolean urational
//Get: None
//Set: None
//Var: Standard_Boolean vrational
//Get: None
//Set: None
//Var: Handle_TColgp_HArray2OfPnt poles
//Get: None
//Set: None
//Var: Handle_TColStd_HArray2OfReal weights
//Get: None
//Set: None
//Var: Handle_TColgp_HArray2OfPnt coeffs
//Get: None
//Set: None
//Var: Handle_TColStd_HArray2OfReal wcoeffs
//Get: None
//Set: None
//Var: Standard_Real ucacheparameter
//Get: None
//Set: None
//Var: Standard_Real vcacheparameter
//Get: None
//Set: None
//Var: Standard_Real ucachespanlenght
//Get: None
//Set: None
//Var: Standard_Real vcachespanlenght
//Get: None
//Set: None
//Var: Standard_Integer ucachespanindex
//Get: None
//Set: None
//Var: Standard_Integer vcachespanindex
//Get: None
//Set: None
//Var: Standard_Integer validcache
//Get: None
//Set: None
//Var: Standard_Real umaxderivinv
//Get: None
//Set: None
//Var: Standard_Real vmaxderivinv
//Get: None
//Set: None
//Var: Standard_Boolean maxderivinvok
//Get: None
//Set: None
%feature("shadow") Geom_BezierSurface::~Geom_BezierSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_BezierSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_BezierSurface {
    Handle_Geom_BezierSurface* GetHandle(){
        return (Handle_Geom_BezierSurface*)$self;
    }
};
   
%nodefaultctor Geom_RectangularTrimmedSurface;

class Geom_RectangularTrimmedSurface : public Geom_BoundedSurface {
    public:

        %feature("autodoc", "1");
        Geom_RectangularTrimmedSurface(Geom_RectangularTrimmedSurface const & arg0);
        %feature("autodoc", "1");
        Geom_RectangularTrimmedSurface(Handle_Geom_Surface const & S, Standard_Real const U1, Standard_Real const U2, Standard_Real const V1, Standard_Real const V2, Standard_Boolean const USense=1, Standard_Boolean const VSense=1);
        %feature("autodoc", "1");
        Geom_RectangularTrimmedSurface(Handle_Geom_Surface const & S, Standard_Real const Param1, Standard_Real const Param2, Standard_Boolean const UTrim, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        void SetTrim(Standard_Real const U1, Standard_Real const U2, Standard_Real const V1, Standard_Real const V2, Standard_Boolean const USense=1, Standard_Boolean const VSense=1);
        %feature("autodoc", "1");
        void SetTrim(Standard_Real const Param1, Standard_Real const Param2, Standard_Boolean const UTrim, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        Handle_Geom_Surface BasisSurface() const;
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real UPeriod() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real VPeriod() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        void SetTrim(Standard_Real const U1, Standard_Real const U2, Standard_Real const V1, Standard_Real const V2, Standard_Boolean const UTrim, Standard_Boolean const VTrim, Standard_Boolean const USense, Standard_Boolean const VSense); 
};
//Var: Handle_Geom_Surface basisSurf
//Get: None
//Set: None
//Var: Standard_Real utrim1
//Get: None
//Set: None
//Var: Standard_Real vtrim1
//Get: None
//Set: None
//Var: Standard_Real utrim2
//Get: None
//Set: None
//Var: Standard_Real vtrim2
//Get: None
//Set: None
//Var: Standard_Boolean isutrimmed
//Get: None
//Set: None
//Var: Standard_Boolean isvtrimmed
//Get: None
//Set: None
%feature("shadow") Geom_RectangularTrimmedSurface::~Geom_RectangularTrimmedSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_RectangularTrimmedSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_RectangularTrimmedSurface {
    Handle_Geom_RectangularTrimmedSurface* GetHandle(){
        return (Handle_Geom_RectangularTrimmedSurface*)$self;
    }
};
   
%nodefaultctor Geom_ElementarySurface;

class Geom_ElementarySurface : public Geom_Surface {
    public:


        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & Loc);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        gp_Ax1 Axis() const;
        %feature("autodoc", "1");
        gp_Pnt Location() const;
        %feature("autodoc", "1");
        gp_Ax3 const & Position() const;
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Ax3 pos
//Get: None
//Set: None
%feature("shadow") Geom_ElementarySurface::~Geom_ElementarySurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_ElementarySurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_ElementarySurface {
    Handle_Geom_ElementarySurface* GetHandle(){
        return (Handle_Geom_ElementarySurface*)$self;
    }
};
   
%nodefaultctor Geom_ConicalSurface;

class Geom_ConicalSurface : public Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Geom_ConicalSurface(Geom_ConicalSurface const & arg0);
        %feature("autodoc", "1");
        Geom_ConicalSurface(gp_Ax3 const & A3, Standard_Real const Ang, Standard_Real const Radius);
        %feature("autodoc", "1");
        Geom_ConicalSurface(gp_Cone const & C);
        %feature("autodoc", "1");
        void SetCone(gp_Cone const & C);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void SetSemiAngle(Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Cone Cone() const;
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        gp_Pnt Apex() const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A1, Standard_Real & A2, Standard_Real & A3, Standard_Real & B1, Standard_Real & B2, Standard_Real & B3, Standard_Real & C1, Standard_Real & C2, Standard_Real & C3, Standard_Real & D) const;
        %feature("autodoc", "1");
        Standard_Real RefRadius() const;
        %feature("autodoc", "1");
        Standard_Real SemiAngle() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real radius
//Get: None
//Set: None
//Var: Standard_Real semiAngle
//Get: None
//Set: None
%feature("shadow") Geom_ConicalSurface::~Geom_ConicalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_ConicalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_ConicalSurface {
    Handle_Geom_ConicalSurface* GetHandle(){
        return (Handle_Geom_ConicalSurface*)$self;
    }
};
   
%nodefaultctor Geom_CylindricalSurface;

class Geom_CylindricalSurface : public Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Geom_CylindricalSurface(Geom_CylindricalSurface const & arg0);
        %feature("autodoc", "1");
        Geom_CylindricalSurface(gp_Ax3 const & A3, Standard_Real const Radius);
        %feature("autodoc", "1");
        Geom_CylindricalSurface(gp_Cylinder const & C);
        %feature("autodoc", "1");
        void SetCylinder(gp_Cylinder const & C);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        gp_Cylinder Cylinder() const;
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A1, Standard_Real & A2, Standard_Real & A3, Standard_Real & B1, Standard_Real & B2, Standard_Real & B3, Standard_Real & C1, Standard_Real & C2, Standard_Real & C3, Standard_Real & D) const;
        %feature("autodoc", "1");
        Standard_Real Radius() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real radius
//Get: None
//Set: None
%feature("shadow") Geom_CylindricalSurface::~Geom_CylindricalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_CylindricalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_CylindricalSurface {
    Handle_Geom_CylindricalSurface* GetHandle(){
        return (Handle_Geom_CylindricalSurface*)$self;
    }
};
   
%nodefaultctor Geom_Plane;

class Geom_Plane : public Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Geom_Plane(Geom_Plane const & arg0);
        %feature("autodoc", "1");
        Geom_Plane(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        Geom_Plane(gp_Pln const & Pl);
        %feature("autodoc", "1");
        Geom_Plane(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        Geom_Plane(Standard_Real const A, Standard_Real const B, Standard_Real const C, Standard_Real const D);
        %feature("autodoc", "1");
        void SetPln(gp_Pln const & Pl);
        %feature("autodoc", "1");
        gp_Pln Pln() const;
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A, Standard_Real & B, Standard_Real & C, Standard_Real & D) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_Plane::~Geom_Plane {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Plane {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Plane {
    Handle_Geom_Plane* GetHandle(){
        return (Handle_Geom_Plane*)$self;
    }
};
   
%nodefaultctor Geom_SphericalSurface;

class Geom_SphericalSurface : public Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Geom_SphericalSurface(Geom_SphericalSurface const & arg0);
        %feature("autodoc", "1");
        Geom_SphericalSurface(gp_Ax3 const & A3, Standard_Real const Radius);
        %feature("autodoc", "1");
        Geom_SphericalSurface(gp_Sphere const & S);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void SetSphere(gp_Sphere const & S);
        %feature("autodoc", "1");
        gp_Sphere Sphere() const;
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A1, Standard_Real & A2, Standard_Real & A3, Standard_Real & B1, Standard_Real & B2, Standard_Real & B3, Standard_Real & C1, Standard_Real & C2, Standard_Real & C3, Standard_Real & D) const;
        %feature("autodoc", "1");
        Standard_Real Radius() const;
        %feature("autodoc", "1");
        Standard_Real Volume() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real radius
//Get: None
//Set: None
%feature("shadow") Geom_SphericalSurface::~Geom_SphericalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SphericalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_SphericalSurface {
    Handle_Geom_SphericalSurface* GetHandle(){
        return (Handle_Geom_SphericalSurface*)$self;
    }
};
   
%nodefaultctor Geom_ToroidalSurface;

class Geom_ToroidalSurface : public Geom_ElementarySurface {
    public:

        %feature("autodoc", "1");
        Geom_ToroidalSurface(Geom_ToroidalSurface const & arg0);
        %feature("autodoc", "1");
        Geom_ToroidalSurface(gp_Ax3 const & A3, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        Geom_ToroidalSurface(gp_Torus const & T);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const MajorRadius);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetTorus(gp_Torus const & T);
        %feature("autodoc", "1");
        gp_Torus Torus() const;
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        void Coefficients(TColStd_Array1OfReal & Coef) const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        Standard_Real Volume() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") Geom_ToroidalSurface::~Geom_ToroidalSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_ToroidalSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_ToroidalSurface {
    Handle_Geom_ToroidalSurface* GetHandle(){
        return (Handle_Geom_ToroidalSurface*)$self;
    }
};
   
%nodefaultctor Geom_OffsetSurface;

class Geom_OffsetSurface : public Geom_Surface {
    public:

        %feature("autodoc", "1");
        Geom_OffsetSurface(Handle_Geom_Surface const & S, Standard_Real const Offset);
        %feature("autodoc", "1");
        void SetBasisSurface(Handle_Geom_Surface const & S);
        %feature("autodoc", "1");
        void SetOffsetValue(Standard_Real const D);
        %feature("autodoc", "1");
        Standard_Real Offset() const;
        %feature("autodoc", "1");
        Handle_Geom_Surface BasisSurface() const;
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real UPeriod() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Real VPeriod() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        void Value(Standard_Real const U, Standard_Real const V, gp_Pnt & P, gp_Pnt & Pbasis, gp_Vec & D1Ubasis, gp_Vec & D1Vbasis) const;
        %feature("autodoc", "1");
        void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        void LocalD0(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const VSide, gp_Pnt & P) const;
        %feature("autodoc", "1");
        void LocalD1(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const VSide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
        %feature("autodoc", "1");
        void LocalD2(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const VSide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
        %feature("autodoc", "1");
        void LocalD3(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const VSide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
        %feature("autodoc", "1");
        gp_Vec LocalDN(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const VSide, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        Handle_Geom_Surface Surface() const;
        %feature("autodoc", "1");
        Standard_Boolean UOsculatingSurface(Standard_Real const U, Standard_Real const V, Standard_Boolean & IsOpposite, Handle_Geom_BSplineSurface & UOsculSurf) const;
        %feature("autodoc", "1");
        Standard_Boolean VOsculatingSurface(Standard_Real const U, Standard_Real const V, Standard_Boolean & IsOpposite, Handle_Geom_BSplineSurface & VOsculSurf) const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        void SetD0(Standard_Real const U, Standard_Real const V, gp_Pnt & P, gp_Vec const & D1U, gp_Vec const & D1V) const;
        %feature("autodoc", "1");
        void SetD1(Standard_Real const U, Standard_Real const V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec const & d2u, gp_Vec const & d2v, gp_Vec const & d2uv) const;
        %feature("autodoc", "1");
        void SetD2(Standard_Real const U, Standard_Real const V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec const & d3u, gp_Vec const & d3v, gp_Vec const & d3uuv, gp_Vec const & d3uvv) const;
        %feature("autodoc", "1");
        void SetD3(Standard_Real const U, Standard_Real const V, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
        %feature("autodoc", "1");
        gp_Vec SetDN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv, gp_Vec const & D1U, gp_Vec const & D1V) const;
        %feature("autodoc", "1");
        void LocateSides(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const VSide, Handle_Geom_BSplineSurface const & BSplS, Standard_Integer const NDir, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const; 
};
//Var: Handle_Geom_Surface basisSurf
//Get: None
//Set: None
//Var: Handle_Geom_Surface equivSurf
//Get: None
//Set: None
//Var: Standard_Real offsetValue
//Get: None
//Set: None
//Var: Geom_OsculatingSurface myOscSurf
//Get: None
//Set: None
%feature("shadow") Geom_OffsetSurface::~Geom_OffsetSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_OffsetSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_OffsetSurface {
    Handle_Geom_OffsetSurface* GetHandle(){
        return (Handle_Geom_OffsetSurface*)$self;
    }
};
   
%nodefaultctor Geom_SweptSurface;

class Geom_SweptSurface : public Geom_Surface {
    public:


        %feature("autodoc", "1");
        virtual GeomAbs_Shape Continuity() const;
        %feature("autodoc", "1");
        gp_Dir const & Direction() const;
        %feature("autodoc", "1");
        Handle_Geom_Curve BasisCurve() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Geom_Curve basisCurve
//Get: None
//Set: None
//Var: gp_Dir direction
//Get: None
//Set: None
//Var: GeomAbs_Shape smooth
//Get: None
//Set: None
%feature("shadow") Geom_SweptSurface::~Geom_SweptSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SweptSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_SweptSurface {
    Handle_Geom_SweptSurface* GetHandle(){
        return (Handle_Geom_SweptSurface*)$self;
    }
};
   
%nodefaultctor Geom_SurfaceOfLinearExtrusion;

class Geom_SurfaceOfLinearExtrusion : public Geom_SweptSurface {
    public:

        %feature("autodoc", "1");
        Geom_SurfaceOfLinearExtrusion(Geom_SurfaceOfLinearExtrusion const & arg0);
        %feature("autodoc", "1");
        Geom_SurfaceOfLinearExtrusion(Handle_Geom_Curve const & C, gp_Dir const & V);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetBasisCurve(Handle_Geom_Curve const & C);
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        void LocalD0(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P) const;
        %feature("autodoc", "1");
        void LocalD1(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
        %feature("autodoc", "1");
        void LocalD2(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
        %feature("autodoc", "1");
        void LocalD3(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
        %feature("autodoc", "1");
        gp_Vec LocalDN(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_SurfaceOfLinearExtrusion::~Geom_SurfaceOfLinearExtrusion {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SurfaceOfLinearExtrusion {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_SurfaceOfLinearExtrusion {
    Handle_Geom_SurfaceOfLinearExtrusion* GetHandle(){
        return (Handle_Geom_SurfaceOfLinearExtrusion*)$self;
    }
};
   
%nodefaultctor Geom_SurfaceOfRevolution;

class Geom_SurfaceOfRevolution : public Geom_SweptSurface {
    public:

        %feature("autodoc", "1");
        Geom_SurfaceOfRevolution(Geom_SurfaceOfRevolution const & arg0);
        %feature("autodoc", "1");
        Geom_SurfaceOfRevolution(Handle_Geom_Curve const & C, gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetBasisCurve(Handle_Geom_Curve const & C);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Ax1 Axis() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax2 ReferencePlane() const;
        %feature("autodoc", "1");
        virtual void UReverse();
        %feature("autodoc", "1");
        virtual Standard_Real UReversedParameter(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual void VReverse();
        %feature("autodoc", "1");
        virtual Standard_Real VReversedParameter(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void TransformParameters(Standard_Real & U, Standard_Real & V, gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual gp_GTrsf2d ParametricTransformation(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        virtual void Bounds(Standard_Real & U1, Standard_Real & U2, Standard_Real & V1, Standard_Real & V2) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVClosed() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNu(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsCNv(Standard_Integer const N) const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsUPeriodic() const;
        %feature("autodoc", "1");
        virtual Standard_Boolean IsVPeriodic() const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve UIso(Standard_Real const U) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Curve VIso(Standard_Real const V) const;
        %feature("autodoc", "1");
        virtual void D0(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue) const;
        %feature("autodoc", "1");
        virtual void D1(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D2(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual void D3(Standard_Real const U, Standard_Real const V, gp_Pnt & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue, gp_Vec & OutValue) const;
        %feature("autodoc", "1");
        virtual gp_Vec DN(Standard_Real const U, Standard_Real const V, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        void LocalD0(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P) const;
        %feature("autodoc", "1");
        void LocalD1(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V) const;
        %feature("autodoc", "1");
        void LocalD2(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV) const;
        %feature("autodoc", "1");
        void LocalD3(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, gp_Pnt & P, gp_Vec & D1U, gp_Vec & D1V, gp_Vec & D2U, gp_Vec & D2V, gp_Vec & D2UV, gp_Vec & D3U, gp_Vec & D3V, gp_Vec & D3UUV, gp_Vec & D3UVV) const;
        %feature("autodoc", "1");
        gp_Vec LocalDN(Standard_Real const U, Standard_Real const V, Standard_Integer const USide, Standard_Integer const Nu, Standard_Integer const Nv) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Pnt loc
//Get: None
//Set: None
%feature("shadow") Geom_SurfaceOfRevolution::~Geom_SurfaceOfRevolution {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SurfaceOfRevolution {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_SurfaceOfRevolution {
    Handle_Geom_SurfaceOfRevolution* GetHandle(){
        return (Handle_Geom_SurfaceOfRevolution*)$self;
    }
};
   
%nodefaultctor Geom_Vector;

class Geom_Vector : public Geom_Geometry {
    public:


        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        Handle_Geom_Vector Reversed() const;
        %feature("autodoc", "1");
        Standard_Real Angle(Handle_Geom_Vector const & Other) const;
        %feature("autodoc", "1");
        Standard_Real AngleWithRef(Handle_Geom_Vector const & Other, Handle_Geom_Vector const & VRef) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & X, Standard_Real & Y, Standard_Real & Z) const;
        %feature("autodoc", "1");
        virtual Standard_Real Magnitude() const;
        %feature("autodoc", "1");
        virtual Standard_Real SquareMagnitude() const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        Standard_Real Z() const;
        %feature("autodoc", "1");
        virtual void Cross(Handle_Geom_Vector const & Other);
        %feature("autodoc", "1");
        virtual Handle_Geom_Vector Crossed(Handle_Geom_Vector const & Other) const;
        %feature("autodoc", "1");
        virtual void CrossCross(Handle_Geom_Vector const & V1, Handle_Geom_Vector const & V2);
        %feature("autodoc", "1");
        virtual Handle_Geom_Vector CrossCrossed(Handle_Geom_Vector const & V1, Handle_Geom_Vector const & V2) const;
        %feature("autodoc", "1");
        Standard_Real Dot(Handle_Geom_Vector const & Other) const;
        %feature("autodoc", "1");
        Standard_Real DotCross(Handle_Geom_Vector const & V1, Handle_Geom_Vector const & V2) const;
        %feature("autodoc", "1");
        gp_Vec const & Vec() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Vec gpVec
//Get: None
//Set: None
%feature("shadow") Geom_Vector::~Geom_Vector {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Vector {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Vector {
    Handle_Geom_Vector* GetHandle(){
        return (Handle_Geom_Vector*)$self;
    }
};
   
%nodefaultctor Geom_Direction;

class Geom_Direction : public Geom_Vector {
    public:

        %feature("autodoc", "1");
        Geom_Direction(Geom_Direction const & arg0);
        %feature("autodoc", "1");
        Geom_Direction(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        Geom_Direction(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        void SetDir(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetZ(Standard_Real const Z);
        %feature("autodoc", "1");
        gp_Dir Dir() const;
        %feature("autodoc", "1");
        virtual Standard_Real Magnitude() const;
        %feature("autodoc", "1");
        virtual Standard_Real SquareMagnitude() const;
        %feature("autodoc", "1");
        virtual void Cross(Handle_Geom_Vector const & Other);
        %feature("autodoc", "1");
        virtual void CrossCross(Handle_Geom_Vector const & V1, Handle_Geom_Vector const & V2);
        %feature("autodoc", "1");
        virtual Handle_Geom_Vector Crossed(Handle_Geom_Vector const & Other) const;
        %feature("autodoc", "1");
        virtual Handle_Geom_Vector CrossCrossed(Handle_Geom_Vector const & V1, Handle_Geom_Vector const & V2) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_Direction::~Geom_Direction {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Direction {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Direction {
    Handle_Geom_Direction* GetHandle(){
        return (Handle_Geom_Direction*)$self;
    }
};
   
%nodefaultctor Geom_VectorWithMagnitude;

class Geom_VectorWithMagnitude : public Geom_Vector {
    public:

        %feature("autodoc", "1");
        Geom_VectorWithMagnitude(Geom_VectorWithMagnitude const & arg0);
        %feature("autodoc", "1");
        Geom_VectorWithMagnitude(gp_Vec const & V);
        %feature("autodoc", "1");
        Geom_VectorWithMagnitude(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        Geom_VectorWithMagnitude(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        void SetVec(gp_Vec const & V);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetZ(Standard_Real const Z);
        %feature("autodoc", "1");
        virtual Standard_Real Magnitude() const;
        %feature("autodoc", "1");
        virtual Standard_Real SquareMagnitude() const;
        %feature("autodoc", "1");
        void Add(Handle_Geom_Vector const & Other);
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude Added(Handle_Geom_Vector const & Other) const;
        %feature("autodoc", "1");
        virtual void Cross(Handle_Geom_Vector const & Other);
        %feature("autodoc", "1");
        virtual Handle_Geom_Vector Crossed(Handle_Geom_Vector const & Other) const;
        %feature("autodoc", "1");
        virtual void CrossCross(Handle_Geom_Vector const & V1, Handle_Geom_Vector const & V2);
        %feature("autodoc", "1");
        virtual Handle_Geom_Vector CrossCrossed(Handle_Geom_Vector const & V1, Handle_Geom_Vector const & V2) const;
        %feature("autodoc", "1");
        void Divide(Standard_Real const Scalar);
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude Divided(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude Multiplied(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Multiply(Standard_Real const Scalar);
        %feature("autodoc", "1");
        void Normalize();
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude Normalized() const;
        %feature("autodoc", "1");
        void Subtract(Handle_Geom_Vector const & Other);
        %feature("autodoc", "1");
        Handle_Geom_VectorWithMagnitude Subtracted(Handle_Geom_Vector const & Other) const;
        %feature("autodoc", "1");
        virtual void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        virtual Handle_Geom_Geometry Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};

%feature("shadow") Geom_VectorWithMagnitude::~Geom_VectorWithMagnitude {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_VectorWithMagnitude {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_VectorWithMagnitude {
    Handle_Geom_VectorWithMagnitude* GetHandle(){
        return (Handle_Geom_VectorWithMagnitude*)$self;
    }
};
   
%nodefaultctor Geom_HSequenceOfBSplineSurface;

class Geom_HSequenceOfBSplineSurface : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Geom_HSequenceOfBSplineSurface();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(Handle_Geom_BSplineSurface const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_Geom_HSequenceOfBSplineSurface const & aSequence);
        %feature("autodoc", "1");
        void Prepend(Handle_Geom_BSplineSurface const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_Geom_HSequenceOfBSplineSurface const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_Geom_BSplineSurface const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_Geom_HSequenceOfBSplineSurface const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_Geom_BSplineSurface const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_Geom_HSequenceOfBSplineSurface const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfBSplineSurface Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, Handle_Geom_BSplineSurface const & anItem);
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        Geom_SequenceOfBSplineSurface const & Sequence() const;
        %feature("autodoc", "1");
        Geom_SequenceOfBSplineSurface & ChangeSequence();
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfBSplineSurface ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Geom_SequenceOfBSplineSurface mySequence
//Get: None
//Set: None
%feature("shadow") Geom_HSequenceOfBSplineSurface::~Geom_HSequenceOfBSplineSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_HSequenceOfBSplineSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_HSequenceOfBSplineSurface {
    Handle_Geom_HSequenceOfBSplineSurface* GetHandle(){
        return (Handle_Geom_HSequenceOfBSplineSurface*)$self;
    }
};
   
%nodefaultctor Geom_HSequenceOfSurface;

class Geom_HSequenceOfSurface : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Geom_HSequenceOfSurface();
        %feature("autodoc", "1");
        Standard_Boolean IsEmpty() const;
        %feature("autodoc", "1");
        Standard_Integer Length() const;
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        void Append(Handle_Geom_Surface const & anItem);
        %feature("autodoc", "1");
        void Append(Handle_Geom_HSequenceOfSurface const & aSequence);
        %feature("autodoc", "1");
        void Prepend(Handle_Geom_Surface const & anItem);
        %feature("autodoc", "1");
        void Prepend(Handle_Geom_HSequenceOfSurface const & aSequence);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_Geom_Surface const & anItem);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const anIndex, Handle_Geom_HSequenceOfSurface const & aSequence);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_Geom_Surface const & anItem);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const anIndex, Handle_Geom_HSequenceOfSurface const & aSequence);
        %feature("autodoc", "1");
        void Exchange(Standard_Integer const anIndex, Standard_Integer const anOtherIndex);
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfSurface Split(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const anIndex, Handle_Geom_Surface const & anItem);
        %feature("autodoc", "1");
        Handle_Geom_Surface const & Value(Standard_Integer const anIndex) const;
        %feature("autodoc", "1");
        Handle_Geom_Surface & ChangeValue(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const anIndex);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const fromIndex, Standard_Integer const toIndex);
        %feature("autodoc", "1");
        Geom_SequenceOfSurface const & Sequence() const;
        %feature("autodoc", "1");
        Geom_SequenceOfSurface & ChangeSequence();
        %feature("autodoc", "1");
        Handle_Geom_HSequenceOfSurface ShallowCopy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Geom_SequenceOfSurface mySequence
//Get: None
//Set: None
%feature("shadow") Geom_HSequenceOfSurface::~Geom_HSequenceOfSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_HSequenceOfSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_HSequenceOfSurface {
    Handle_Geom_HSequenceOfSurface* GetHandle(){
        return (Handle_Geom_HSequenceOfSurface*)$self;
    }
};
   
%nodefaultctor Geom_Transformation;

class Geom_Transformation : public MMgt_TShared {
    public:

        %feature("autodoc", "1");
        Geom_Transformation(Geom_Transformation const & arg0);
        %feature("autodoc", "1");
        Geom_Transformation();
        %feature("autodoc", "1");
        Geom_Transformation(gp_Trsf const & T);
        %feature("autodoc", "1");
        void SetMirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetMirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetMirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        void SetRotation(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        void SetScale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        void SetTransformation(gp_Ax3 const & FromSystem1, gp_Ax3 const & ToSystem2);
        %feature("autodoc", "1");
        void SetTransformation(gp_Ax3 const & ToSystem);
        %feature("autodoc", "1");
        void SetTranslation(gp_Vec const & V);
        %feature("autodoc", "1");
        void SetTranslation(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        void SetTrsf(gp_Trsf const & T);
        %feature("autodoc", "1");
        Standard_Boolean IsNegative() const;
        %feature("autodoc", "1");
        gp_TrsfForm Form() const;
        %feature("autodoc", "1");
        Standard_Real ScaleFactor() const;
        %feature("autodoc", "1");
        gp_Trsf const & Trsf() const;
        %feature("autodoc", "1");
        Standard_Real Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        void Invert();
        %feature("autodoc", "1");
        Handle_Geom_Transformation Inverted() const;
        %feature("autodoc", "1");
        Handle_Geom_Transformation Multiplied(Handle_Geom_Transformation const & Other) const;
        %feature("autodoc", "1");
        void Multiply(Handle_Geom_Transformation const & Other);
        %feature("autodoc", "1");
        void Power(Standard_Integer const N);
        %feature("autodoc", "1");
        Handle_Geom_Transformation Powered(Standard_Integer const N) const;
        %feature("autodoc", "1");
        void PreMultiply(Handle_Geom_Transformation const & Other);
        %feature("autodoc", "1");
        void Transforms(Standard_Real & X, Standard_Real & Y, Standard_Real & Z) const;
        %feature("autodoc", "1");
        Handle_Geom_Transformation Copy() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: gp_Trsf gpTrsf
//Get: None
//Set: None
%feature("shadow") Geom_Transformation::~Geom_Transformation {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_Transformation {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_Transformation {
    Handle_Geom_Transformation* GetHandle(){
        return (Handle_Geom_Transformation*)$self;
    }
};
   
%nodefaultctor Geom_UndefinedDerivative;

class Geom_UndefinedDerivative : public Standard_DomainError {
    public:

        %feature("autodoc", "1");
        Geom_UndefinedDerivative(Geom_UndefinedDerivative const & arg0);
        %feature("autodoc", "1");
        Geom_UndefinedDerivative();
        %feature("autodoc", "1");
        Geom_UndefinedDerivative(char const * AString);
        %feature("autodoc", "1");
        void Raise(char const * aMessage="");
        %feature("autodoc", "1");
        void Raise(Standard_SStream & aReason);
        %feature("autodoc", "1");
        Handle_Geom_UndefinedDerivative NewInstance(char const * aMessage);
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        virtual void Throw() const; 
};

%feature("shadow") Geom_UndefinedDerivative::~Geom_UndefinedDerivative {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_UndefinedDerivative {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_UndefinedDerivative {
    Handle_Geom_UndefinedDerivative* GetHandle(){
        return (Handle_Geom_UndefinedDerivative*)$self;
    }
};
   
%nodefaultctor Geom_UndefinedValue;

class Geom_UndefinedValue : public Standard_DomainError {
    public:

        %feature("autodoc", "1");
        Geom_UndefinedValue(Geom_UndefinedValue const & arg0);
        %feature("autodoc", "1");
        Geom_UndefinedValue();
        %feature("autodoc", "1");
        Geom_UndefinedValue(char const * AString);
        %feature("autodoc", "1");
        void Raise(char const * aMessage="");
        %feature("autodoc", "1");
        void Raise(Standard_SStream & aReason);
        %feature("autodoc", "1");
        Handle_Geom_UndefinedValue NewInstance(char const * aMessage);
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        virtual void Throw() const; 
};

%feature("shadow") Geom_UndefinedValue::~Geom_UndefinedValue {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_UndefinedValue {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_UndefinedValue {
    Handle_Geom_UndefinedValue* GetHandle(){
        return (Handle_Geom_UndefinedValue*)$self;
    }
};
   
%nodefaultctor Geom_SequenceOfBSplineSurface;

class Geom_SequenceOfBSplineSurface : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        Geom_SequenceOfBSplineSurface();
        %feature("autodoc", "1");
        Geom_SequenceOfBSplineSurface(Geom_SequenceOfBSplineSurface const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Geom_SequenceOfBSplineSurface const & Assign(Geom_SequenceOfBSplineSurface const & Other);
        %feature("autodoc", "1");
        void Append(Handle_Geom_BSplineSurface const & T);
        %feature("autodoc", "1");
        void Append(Geom_SequenceOfBSplineSurface & S);
        %feature("autodoc", "1");
        void Prepend(Handle_Geom_BSplineSurface const & T);
        %feature("autodoc", "1");
        void Prepend(Geom_SequenceOfBSplineSurface & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Handle_Geom_BSplineSurface const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Geom_SequenceOfBSplineSurface & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Handle_Geom_BSplineSurface const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Geom_SequenceOfBSplineSurface & S);
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface const & First() const;
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, Geom_SequenceOfBSplineSurface & S);
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Handle_Geom_BSplineSurface const & I);
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") Geom_SequenceOfBSplineSurface::~Geom_SequenceOfBSplineSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SequenceOfBSplineSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor Geom_SequenceOfSurface;

class Geom_SequenceOfSurface : public TCollection_BaseSequence {
    public:

        %feature("autodoc", "1");
        Geom_SequenceOfSurface();
        %feature("autodoc", "1");
        Geom_SequenceOfSurface(Geom_SequenceOfSurface const & Other);
        %feature("autodoc", "1");
        void Clear();
        %feature("autodoc", "1");
        Geom_SequenceOfSurface const & Assign(Geom_SequenceOfSurface const & Other);
        %feature("autodoc", "1");
        void Append(Handle_Geom_Surface const & T);
        %feature("autodoc", "1");
        void Append(Geom_SequenceOfSurface & S);
        %feature("autodoc", "1");
        void Prepend(Handle_Geom_Surface const & T);
        %feature("autodoc", "1");
        void Prepend(Geom_SequenceOfSurface & S);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Handle_Geom_Surface const & I);
        %feature("autodoc", "1");
        void InsertBefore(Standard_Integer const Index, Geom_SequenceOfSurface & S);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Handle_Geom_Surface const & T);
        %feature("autodoc", "1");
        void InsertAfter(Standard_Integer const Index, Geom_SequenceOfSurface & S);
        %feature("autodoc", "1");
        Handle_Geom_Surface const & First() const;
        %feature("autodoc", "1");
        Handle_Geom_Surface const & Last() const;
        %feature("autodoc", "1");
        void Split(Standard_Integer const Index, Geom_SequenceOfSurface & S);
        %feature("autodoc", "1");
        Handle_Geom_Surface const & Value(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Index, Handle_Geom_Surface const & I);
        %feature("autodoc", "1");
        Handle_Geom_Surface & ChangeValue(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const Index);
        %feature("autodoc", "1");
        void Remove(Standard_Integer const FromIndex, Standard_Integer const ToIndex); 
};

%feature("shadow") Geom_SequenceOfSurface::~Geom_SequenceOfSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SequenceOfSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor Geom_SequenceNodeOfSequenceOfBSplineSurface;

class Geom_SequenceNodeOfSequenceOfBSplineSurface : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Geom_SequenceNodeOfSequenceOfBSplineSurface(Geom_SequenceNodeOfSequenceOfBSplineSurface const & arg0);
        %feature("autodoc", "1");
        Geom_SequenceNodeOfSequenceOfBSplineSurface(Handle_Geom_BSplineSurface const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        Handle_Geom_BSplineSurface & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Geom_BSplineSurface myValue
//Get: None
//Set: None
%feature("shadow") Geom_SequenceNodeOfSequenceOfBSplineSurface::~Geom_SequenceNodeOfSequenceOfBSplineSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SequenceNodeOfSequenceOfBSplineSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_SequenceNodeOfSequenceOfBSplineSurface {
    Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface* GetHandle(){
        return (Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface*)$self;
    }
};
   
%nodefaultctor Geom_SequenceNodeOfSequenceOfSurface;

class Geom_SequenceNodeOfSequenceOfSurface : public TCollection_SeqNode {
    public:

        %feature("autodoc", "1");
        Geom_SequenceNodeOfSequenceOfSurface(Geom_SequenceNodeOfSequenceOfSurface const & arg0);
        %feature("autodoc", "1");
        Geom_SequenceNodeOfSequenceOfSurface(Handle_Geom_Surface const & I, TCollection_SeqNodePtr const & n, TCollection_SeqNodePtr const & p);
        %feature("autodoc", "1");
        Handle_Geom_Surface & Value() const;
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const; 
};
//Var: Handle_Geom_Surface myValue
//Get: None
//Set: None
%feature("shadow") Geom_SequenceNodeOfSequenceOfSurface::~Geom_SequenceNodeOfSequenceOfSurface {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Geom_SequenceNodeOfSequenceOfSurface {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Geom_SequenceNodeOfSequenceOfSurface {
    Handle_Geom_SequenceNodeOfSequenceOfSurface* GetHandle(){
        return (Handle_Geom_SequenceNodeOfSequenceOfSurface*)$self;
    }
};