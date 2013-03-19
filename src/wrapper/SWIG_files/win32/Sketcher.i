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

%module Sketcher
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Sketcher_renames.i


%include Sketcher_required_python_modules.i


%include Sketcher_dependencies.i


%include Sketcher_headers.i


enum Sketcher_ObjectType {
	MainSketcherType,
	AuxiliarySketcherType,
	};

enum Sketcher_TangentType {
	NothingTangent,
	Line_FirstPnt,
	Line_SecondPnt,
	Circle_CenterPnt,
	};

enum Sketcher_SnapType {
	SnapNothing,
	SnapEnd,
	SnapMiddle,
	SnapCenter,
	SnapNearest,
	SnapIntersection,
	SnapTangent,
	SnapParallel,
	SnapPerpendicular,
	SnapAnalyse,
	};

enum Sketcher_ObjectTypeOfMethod {
	Nothing_Method,
	Point_Method,
	Line2P_Method,
	CircleCenterRadius_Method,
	Circle3P_Method,
	Circle2PTan_Method,
	CircleP2Tan_Method,
	Circle3Tan_Method,
	Arc3P_Method,
	ArcCenter2P_Method,
	BezierCurve_Method,
	Trim_Method,
	};

enum Sketcher_ObjectGeometryType {
	PointSketcherObject,
	LineSketcherObject,
	CircleSketcherObject,
	ArcSketcherObject,
	CurveSketcherObject,
	};



%nodefaultctor Handle_Sketcher_Command;
class Handle_Sketcher_Command : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_Command();
		%feature("autodoc", "1");
		Handle_Sketcher_Command(const Handle_Sketcher_Command &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Command(const Sketcher_Command *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_Command & operator=(const Handle_Sketcher_Command &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Command & operator=(const Sketcher_Command *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_Command DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_Command {
	Sketcher_Command* GetObject() {
	return (Sketcher_Command*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_Command::~Handle_Sketcher_Command %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_Command {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandArc3P;
class Handle_Sketcher_CommandArc3P : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArc3P();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArc3P(const Handle_Sketcher_CommandArc3P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArc3P(const Sketcher_CommandArc3P *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArc3P & operator=(const Handle_Sketcher_CommandArc3P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArc3P & operator=(const Sketcher_CommandArc3P *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandArc3P DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandArc3P {
	Sketcher_CommandArc3P* GetObject() {
	return (Sketcher_CommandArc3P*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandArc3P::~Handle_Sketcher_CommandArc3P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandArc3P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_Edge;
class Handle_Sketcher_Edge : public Handle_Geom2d_Line {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_Edge();
		%feature("autodoc", "1");
		Handle_Sketcher_Edge(const Handle_Sketcher_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Edge(const Sketcher_Edge *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_Edge & operator=(const Handle_Sketcher_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Edge & operator=(const Sketcher_Edge *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_Edge DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_Edge {
	Sketcher_Edge* GetObject() {
	return (Sketcher_Edge*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_Edge::~Handle_Sketcher_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_Snap;
class Handle_Sketcher_Snap : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_Snap();
		%feature("autodoc", "1");
		Handle_Sketcher_Snap(const Handle_Sketcher_Snap &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Snap(const Sketcher_Snap *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_Snap & operator=(const Handle_Sketcher_Snap &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Snap & operator=(const Sketcher_Snap *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_Snap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_Snap {
	Sketcher_Snap* GetObject() {
	return (Sketcher_Snap*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_Snap::~Handle_Sketcher_Snap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_Snap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapLine;
class Handle_Sketcher_SnapLine : public Handle_Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLine();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLine(const Handle_Sketcher_SnapLine &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLine(const Sketcher_SnapLine *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLine & operator=(const Handle_Sketcher_SnapLine &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLine & operator=(const Sketcher_SnapLine *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapLine DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapLine {
	Sketcher_SnapLine* GetObject() {
	return (Sketcher_SnapLine*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapLine::~Handle_Sketcher_SnapLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapLinePerpendicular;
class Handle_Sketcher_SnapLinePerpendicular : public Handle_Sketcher_SnapLine {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLinePerpendicular();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLinePerpendicular(const Handle_Sketcher_SnapLinePerpendicular &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLinePerpendicular(const Sketcher_SnapLinePerpendicular *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLinePerpendicular & operator=(const Handle_Sketcher_SnapLinePerpendicular &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLinePerpendicular & operator=(const Sketcher_SnapLinePerpendicular *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapLinePerpendicular DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapLinePerpendicular {
	Sketcher_SnapLinePerpendicular* GetObject() {
	return (Sketcher_SnapLinePerpendicular*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapLinePerpendicular::~Handle_Sketcher_SnapLinePerpendicular %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapLinePerpendicular {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_AnalyserSnap;
class Handle_Sketcher_AnalyserSnap : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_AnalyserSnap();
		%feature("autodoc", "1");
		Handle_Sketcher_AnalyserSnap(const Handle_Sketcher_AnalyserSnap &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_AnalyserSnap(const Sketcher_AnalyserSnap *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_AnalyserSnap & operator=(const Handle_Sketcher_AnalyserSnap &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_AnalyserSnap & operator=(const Sketcher_AnalyserSnap *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_AnalyserSnap DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_AnalyserSnap {
	Sketcher_AnalyserSnap* GetObject() {
	return (Sketcher_AnalyserSnap*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_AnalyserSnap::~Handle_Sketcher_AnalyserSnap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_AnalyserSnap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapCenter;
class Handle_Sketcher_SnapCenter : public Handle_Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapCenter();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapCenter(const Handle_Sketcher_SnapCenter &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapCenter(const Sketcher_SnapCenter *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapCenter & operator=(const Handle_Sketcher_SnapCenter &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapCenter & operator=(const Sketcher_SnapCenter *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapCenter DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapCenter {
	Sketcher_SnapCenter* GetObject() {
	return (Sketcher_SnapCenter*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapCenter::~Handle_Sketcher_SnapCenter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapCenter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_Arc;
class Handle_Sketcher_Arc : public Handle_Geom2d_Circle {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_Arc();
		%feature("autodoc", "1");
		Handle_Sketcher_Arc(const Handle_Sketcher_Arc &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Arc(const Sketcher_Arc *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_Arc & operator=(const Handle_Sketcher_Arc &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Arc & operator=(const Sketcher_Arc *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_Arc DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_Arc {
	Sketcher_Arc* GetObject() {
	return (Sketcher_Arc*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_Arc::~Handle_Sketcher_Arc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_Arc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapTangent;
class Handle_Sketcher_SnapTangent : public Handle_Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapTangent();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapTangent(const Handle_Sketcher_SnapTangent &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapTangent(const Sketcher_SnapTangent *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapTangent & operator=(const Handle_Sketcher_SnapTangent &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapTangent & operator=(const Sketcher_SnapTangent *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapTangent DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapTangent {
	Sketcher_SnapTangent* GetObject() {
	return (Sketcher_SnapTangent*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapTangent::~Handle_Sketcher_SnapTangent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapTangent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapEnd;
class Handle_Sketcher_SnapEnd : public Handle_Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapEnd();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapEnd(const Handle_Sketcher_SnapEnd &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapEnd(const Sketcher_SnapEnd *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapEnd & operator=(const Handle_Sketcher_SnapEnd &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapEnd & operator=(const Sketcher_SnapEnd *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapEnd DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapEnd {
	Sketcher_SnapEnd* GetObject() {
	return (Sketcher_SnapEnd*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapEnd::~Handle_Sketcher_SnapEnd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapEnd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandCircle2PTan;
class Handle_Sketcher_CommandCircle2PTan : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle2PTan();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle2PTan(const Handle_Sketcher_CommandCircle2PTan &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle2PTan(const Sketcher_CommandCircle2PTan *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle2PTan & operator=(const Handle_Sketcher_CommandCircle2PTan &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle2PTan & operator=(const Sketcher_CommandCircle2PTan *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandCircle2PTan DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandCircle2PTan {
	Sketcher_CommandCircle2PTan* GetObject() {
	return (Sketcher_CommandCircle2PTan*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandCircle2PTan::~Handle_Sketcher_CommandCircle2PTan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandCircle2PTan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapNearest;
class Handle_Sketcher_SnapNearest : public Handle_Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapNearest();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapNearest(const Handle_Sketcher_SnapNearest &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapNearest(const Sketcher_SnapNearest *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapNearest & operator=(const Handle_Sketcher_SnapNearest &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapNearest & operator=(const Sketcher_SnapNearest *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapNearest DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapNearest {
	Sketcher_SnapNearest* GetObject() {
	return (Sketcher_SnapNearest*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapNearest::~Handle_Sketcher_SnapNearest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapNearest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandBezierCurve;
class Handle_Sketcher_CommandBezierCurve : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandBezierCurve();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandBezierCurve(const Handle_Sketcher_CommandBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandBezierCurve(const Sketcher_CommandBezierCurve *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandBezierCurve & operator=(const Handle_Sketcher_CommandBezierCurve &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandBezierCurve & operator=(const Sketcher_CommandBezierCurve *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandBezierCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandBezierCurve {
	Sketcher_CommandBezierCurve* GetObject() {
	return (Sketcher_CommandBezierCurve*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandBezierCurve::~Handle_Sketcher_CommandBezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandBezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapIntersection;
class Handle_Sketcher_SnapIntersection : public Handle_Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapIntersection();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapIntersection(const Handle_Sketcher_SnapIntersection &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapIntersection(const Sketcher_SnapIntersection *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapIntersection & operator=(const Handle_Sketcher_SnapIntersection &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapIntersection & operator=(const Sketcher_SnapIntersection *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapIntersection DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapIntersection {
	Sketcher_SnapIntersection* GetObject() {
	return (Sketcher_SnapIntersection*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapIntersection::~Handle_Sketcher_SnapIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapIntersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandCircle3Tan;
class Handle_Sketcher_CommandCircle3Tan : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3Tan();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3Tan(const Handle_Sketcher_CommandCircle3Tan &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3Tan(const Sketcher_CommandCircle3Tan *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3Tan & operator=(const Handle_Sketcher_CommandCircle3Tan &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3Tan & operator=(const Sketcher_CommandCircle3Tan *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandCircle3Tan DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandCircle3Tan {
	Sketcher_CommandCircle3Tan* GetObject() {
	return (Sketcher_CommandCircle3Tan*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandCircle3Tan::~Handle_Sketcher_CommandCircle3Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandCircle3Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandLine2P;
class Handle_Sketcher_CommandLine2P : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandLine2P();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandLine2P(const Handle_Sketcher_CommandLine2P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandLine2P(const Sketcher_CommandLine2P *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandLine2P & operator=(const Handle_Sketcher_CommandLine2P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandLine2P & operator=(const Sketcher_CommandLine2P *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandLine2P DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandLine2P {
	Sketcher_CommandLine2P* GetObject() {
	return (Sketcher_CommandLine2P*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandLine2P::~Handle_Sketcher_CommandLine2P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandLine2P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_Object;
class Handle_Sketcher_Object : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_Object();
		%feature("autodoc", "1");
		Handle_Sketcher_Object(const Handle_Sketcher_Object &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Object(const Sketcher_Object *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_Object & operator=(const Handle_Sketcher_Object &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_Object & operator=(const Sketcher_Object *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_Object DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_Object {
	Sketcher_Object* GetObject() {
	return (Sketcher_Object*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_Object::~Handle_Sketcher_Object %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_Object {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandCircleCenterRadius;
class Handle_Sketcher_CommandCircleCenterRadius : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleCenterRadius();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleCenterRadius(const Handle_Sketcher_CommandCircleCenterRadius &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleCenterRadius(const Sketcher_CommandCircleCenterRadius *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleCenterRadius & operator=(const Handle_Sketcher_CommandCircleCenterRadius &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleCenterRadius & operator=(const Sketcher_CommandCircleCenterRadius *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandCircleCenterRadius DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandCircleCenterRadius {
	Sketcher_CommandCircleCenterRadius* GetObject() {
	return (Sketcher_CommandCircleCenterRadius*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandCircleCenterRadius::~Handle_Sketcher_CommandCircleCenterRadius %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandCircleCenterRadius {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapMiddle;
class Handle_Sketcher_SnapMiddle : public Handle_Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapMiddle();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapMiddle(const Handle_Sketcher_SnapMiddle &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapMiddle(const Sketcher_SnapMiddle *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapMiddle & operator=(const Handle_Sketcher_SnapMiddle &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapMiddle & operator=(const Sketcher_SnapMiddle *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapMiddle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapMiddle {
	Sketcher_SnapMiddle* GetObject() {
	return (Sketcher_SnapMiddle*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapMiddle::~Handle_Sketcher_SnapMiddle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapMiddle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_SnapLineParallel;
class Handle_Sketcher_SnapLineParallel : public Handle_Sketcher_SnapLine {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLineParallel();
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLineParallel(const Handle_Sketcher_SnapLineParallel &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLineParallel(const Sketcher_SnapLineParallel *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLineParallel & operator=(const Handle_Sketcher_SnapLineParallel &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_SnapLineParallel & operator=(const Sketcher_SnapLineParallel *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_SnapLineParallel DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_SnapLineParallel {
	Sketcher_SnapLineParallel* GetObject() {
	return (Sketcher_SnapLineParallel*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_SnapLineParallel::~Handle_Sketcher_SnapLineParallel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_SnapLineParallel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandCircle3P;
class Handle_Sketcher_CommandCircle3P : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3P();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3P(const Handle_Sketcher_CommandCircle3P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3P(const Sketcher_CommandCircle3P *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3P & operator=(const Handle_Sketcher_CommandCircle3P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircle3P & operator=(const Sketcher_CommandCircle3P *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandCircle3P DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandCircle3P {
	Sketcher_CommandCircle3P* GetObject() {
	return (Sketcher_CommandCircle3P*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandCircle3P::~Handle_Sketcher_CommandCircle3P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandCircle3P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandCircleP2Tan;
class Handle_Sketcher_CommandCircleP2Tan : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleP2Tan();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleP2Tan(const Handle_Sketcher_CommandCircleP2Tan &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleP2Tan(const Sketcher_CommandCircleP2Tan *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleP2Tan & operator=(const Handle_Sketcher_CommandCircleP2Tan &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandCircleP2Tan & operator=(const Sketcher_CommandCircleP2Tan *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandCircleP2Tan DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandCircleP2Tan {
	Sketcher_CommandCircleP2Tan* GetObject() {
	return (Sketcher_CommandCircleP2Tan*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandCircleP2Tan::~Handle_Sketcher_CommandCircleP2Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandCircleP2Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandArcCenter2P;
class Handle_Sketcher_CommandArcCenter2P : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArcCenter2P();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArcCenter2P(const Handle_Sketcher_CommandArcCenter2P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArcCenter2P(const Sketcher_CommandArcCenter2P *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArcCenter2P & operator=(const Handle_Sketcher_CommandArcCenter2P &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandArcCenter2P & operator=(const Sketcher_CommandArcCenter2P *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandArcCenter2P DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandArcCenter2P {
	Sketcher_CommandArcCenter2P* GetObject() {
	return (Sketcher_CommandArcCenter2P*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandArcCenter2P::~Handle_Sketcher_CommandArcCenter2P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandArcCenter2P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandTrim;
class Handle_Sketcher_CommandTrim : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandTrim();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandTrim(const Handle_Sketcher_CommandTrim &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandTrim(const Sketcher_CommandTrim *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandTrim & operator=(const Handle_Sketcher_CommandTrim &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandTrim & operator=(const Sketcher_CommandTrim *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandTrim DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandTrim {
	Sketcher_CommandTrim* GetObject() {
	return (Sketcher_CommandTrim*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandTrim::~Handle_Sketcher_CommandTrim %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandTrim {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Sketcher_CommandPoint;
class Handle_Sketcher_CommandPoint : public Handle_Sketcher_Command {
	public:
		%feature("autodoc", "1");
		Handle_Sketcher_CommandPoint();
		%feature("autodoc", "1");
		Handle_Sketcher_CommandPoint(const Handle_Sketcher_CommandPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandPoint(const Sketcher_CommandPoint *anItem);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandPoint & operator=(const Handle_Sketcher_CommandPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Sketcher_CommandPoint & operator=(const Sketcher_CommandPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_Sketcher_CommandPoint DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Sketcher_CommandPoint {
	Sketcher_CommandPoint* GetObject() {
	return (Sketcher_CommandPoint*)$self->Access();
	}
};
%feature("shadow") Handle_Sketcher_CommandPoint::~Handle_Sketcher_CommandPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Sketcher_CommandPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_Command;
class Sketcher_Command : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		void SetContext(Handle_AIS_InteractiveContext & theContext);
		%feature("autodoc", "1");
		void SetData(Handle_TColStd_HSequenceOfTransient & thedata);
		%feature("autodoc", "1");
		void SetAx3(const gp_Ax3 theAx3);
		%feature("autodoc", "1");
		void SetAnalyserSnap(Handle_Sketcher_AnalyserSnap & theAnalyserSnap);
		%feature("autodoc", "1");
		void SetType(const Sketcher_ObjectType theType);
		%feature("autodoc", "1");
		void AddObject(const Handle_Geom2d_Geometry &theGeom2d_Geometry, const Sketcher_ObjectGeometryType theGeometryType);
		%feature("autodoc", "1");
		void SetLabel(const TDF_Label &theLabel);
		%feature("autodoc", "1");
		void DisplayRubberLine();
		%feature("autodoc", "1");
		void RemoveRubberLine();
		%feature("autodoc", "1");
		void DisplayRubberCircle();
		%feature("autodoc", "1");
		void RemoveRubberCircle();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();
		%feature("autodoc", "1");
		virtual		void SetPolylineMode(Standard_Boolean );
		%feature("autodoc", "1");
		virtual		void ClosePolyline();

};
%extend Sketcher_Command {
	Handle_Sketcher_Command GetHandle() {
	return *(Handle_Sketcher_Command*) &$self;
	}
};
%extend Sketcher_Command {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_Command::~Sketcher_Command %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_Command {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandLine2P;
class Sketcher_CommandLine2P : public Sketcher_Command {
	public:
		enum Line2PAction {
			Nothing,
			Input_FirstPointLine,
			Input_SecondPointLine,
		};
		%feature("autodoc", "1");
		Sketcher_CommandLine2P();

};
%extend Sketcher_CommandLine2P {
	Handle_Sketcher_CommandLine2P GetHandle() {
	return *(Handle_Sketcher_CommandLine2P*) &$self;
	}
};
%extend Sketcher_CommandLine2P {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandLine2P::~Sketcher_CommandLine2P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandLine2P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandArcCenter2P;
class Sketcher_CommandArcCenter2P : public Sketcher_Command {
	public:
		enum ArcCenter2PAction {
			Nothing,
			Input_CenterArc,
			Input_1ArcPoint,
			Input_MidPoint,
			Input_2ArcPoint,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandArcCenter2P();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandArcCenter2P {
	Handle_Sketcher_CommandArcCenter2P GetHandle() {
	return *(Handle_Sketcher_CommandArcCenter2P*) &$self;
	}
};
%extend Sketcher_CommandArcCenter2P {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandArcCenter2P::~Sketcher_CommandArcCenter2P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandArcCenter2P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_Snap;
class Sketcher_Snap : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		void SetContext(Handle_AIS_InteractiveContext & theContext);
		%feature("autodoc", "1");
		void SetData(Handle_TColStd_HSequenceOfTransient & thedata);
		%feature("autodoc", "1");
		void SetAx3(const gp_Ax3 theAx3);
		%feature("autodoc", "1");
		void SetMinDistance(const Standard_Real &aPrecise);
		%feature("autodoc", "1");
		virtual		gp_Pnt2d MouseInputEvent(const gp_Pnt2d tempPnt2d);
		%feature("autodoc", "1");
		gp_Pnt2d MouseMoveEvent(const gp_Pnt2d tempPnt2d);
		%feature("autodoc", "1");
		virtual		void EraseSnap();
		%feature("autodoc","AnalyserEvent(const tempPnt2d) -> [Standard_Real, Standard_Integer]");

		Standard_Boolean AnalyserEvent(const gp_Pnt2d tempPnt2d, gp_Pnt2d & newPnt2d, Standard_Real &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();
		%feature("autodoc", "1");
		virtual		void DrawRelation();
		%feature("autodoc", "1");
		virtual		void EraseRelation();
		%feature("autodoc", "1");
		virtual		void setFirstPnt(const gp_Pnt2d p);
		%feature("autodoc", "1");
		virtual		void setFirstPnt(const gp_Pnt2d p, Sketcher_TangentType );

};
%extend Sketcher_Snap {
	Handle_Sketcher_Snap GetHandle() {
	return *(Handle_Sketcher_Snap*) &$self;
	}
};
%extend Sketcher_Snap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_Snap::~Sketcher_Snap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_Snap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapLine;
class Sketcher_SnapLine : public Sketcher_Snap {
	public:

};
%extend Sketcher_SnapLine {
	Handle_Sketcher_SnapLine GetHandle() {
	return *(Handle_Sketcher_SnapLine*) &$self;
	}
};
%extend Sketcher_SnapLine {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapLine::~Sketcher_SnapLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapLineParallel;
class Sketcher_SnapLineParallel : public Sketcher_SnapLine {
	public:
		%feature("autodoc", "1");
		Sketcher_SnapLineParallel();

};
%extend Sketcher_SnapLineParallel {
	Handle_Sketcher_SnapLineParallel GetHandle() {
	return *(Handle_Sketcher_SnapLineParallel*) &$self;
	}
};
%extend Sketcher_SnapLineParallel {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapLineParallel::~Sketcher_SnapLineParallel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapLineParallel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandCircleP2Tan;
class Sketcher_CommandCircleP2Tan : public Sketcher_Command {
	public:
		enum CircleP2TanAction {
			Nothing,
			Input_1CirclePoint,
			Input_2CircleTan,
			Input_3CircleTan,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandCircleP2Tan();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandCircleP2Tan {
	Handle_Sketcher_CommandCircleP2Tan GetHandle() {
	return *(Handle_Sketcher_CommandCircleP2Tan*) &$self;
	}
};
%extend Sketcher_CommandCircleP2Tan {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandCircleP2Tan::~Sketcher_CommandCircleP2Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandCircleP2Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandArc3P;
class Sketcher_CommandArc3P : public Sketcher_Command {
	public:
		enum Arc3PAction {
			Nothing,
			Input_1ArcPoint,
			Input_2ArcPoint,
			Input_3ArcPoint,
			Input_PolylineArc,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandArc3P();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();
		%feature("autodoc", "1");
		virtual		void SetPolylineMode(Standard_Boolean );

};
%extend Sketcher_CommandArc3P {
	Handle_Sketcher_CommandArc3P GetHandle() {
	return *(Handle_Sketcher_CommandArc3P*) &$self;
	}
};
%extend Sketcher_CommandArc3P {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandArc3P::~Sketcher_CommandArc3P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandArc3P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapEnd;
class Sketcher_SnapEnd : public Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_SnapEnd();
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();

};
%extend Sketcher_SnapEnd {
	Handle_Sketcher_SnapEnd GetHandle() {
	return *(Handle_Sketcher_SnapEnd*) &$self;
	}
};
%extend Sketcher_SnapEnd {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapEnd::~Sketcher_SnapEnd %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapEnd {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapLinePerpendicular;
class Sketcher_SnapLinePerpendicular : public Sketcher_SnapLine {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_SnapLinePerpendicular();
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();
		%feature("autodoc", "1");
		virtual		void DrawRelation();
		%feature("autodoc", "1");
		virtual		void EraseRelation();

};
%extend Sketcher_SnapLinePerpendicular {
	Handle_Sketcher_SnapLinePerpendicular GetHandle() {
	return *(Handle_Sketcher_SnapLinePerpendicular*) &$self;
	}
};
%extend Sketcher_SnapLinePerpendicular {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapLinePerpendicular::~Sketcher_SnapLinePerpendicular %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapLinePerpendicular {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_Object;
class Sketcher_Object : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		static		const Standard_GUID & GetObjectID();
		%feature("autodoc", "1");
		static		Handle_Sketcher_Object GetObject(TDF_Label & theLabel);
		%feature("autodoc", "1");
		Sketcher_Object(const TDF_Label &theEntry);
		%feature("autodoc", "1");
		Sketcher_Object(const TDF_Label &theEntry, const Handle_Geom2d_Geometry &theGeom2d_Geometry, const Sketcher_ObjectGeometryType theGeometryType, const Sketcher_ObjectTypeOfMethod theTypeOfMethod);
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void SetGeometry(const Handle_Geom2d_Geometry &theGeom2d_Geometry);
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry GetGeometry();
		%feature("autodoc", "1");
		TopoDS_Shape GetShape();
		%feature("autodoc", "1");
		void SetPlane(const gp_Ax3 theAx3);
		%feature("autodoc", "1");
		gp_Ax3 const GetPlane();
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject GetAIS_Object();
		%feature("autodoc", "1");
		void DisplayPrs();
		%feature("autodoc", "1");
		void ErasePrs(Standard_Boolean =1);
		%feature("autodoc", "1");
		void SetGeometryType(const Sketcher_ObjectGeometryType theGeometryType);
		%feature("autodoc", "1");
		Sketcher_ObjectGeometryType GetGeometryType();
		%feature("autodoc", "1");
		void SetTypeOfMethod(const Sketcher_ObjectTypeOfMethod theTypeOfMethod);
		%feature("autodoc", "1");
		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();
		%feature("autodoc", "1");
		void SetType(const Sketcher_ObjectType theType);
		%feature("autodoc", "1");
		Sketcher_ObjectType GetType();

};
%extend Sketcher_Object {
	Handle_Sketcher_Object GetHandle() {
	return *(Handle_Sketcher_Object*) &$self;
	}
};
%extend Sketcher_Object {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_Object::~Sketcher_Object %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_Object {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_Edge;
class Sketcher_Edge : public Geom2d_Line {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_Edge();
		%feature("autodoc", "1");
		Standard_Boolean SetPoints(const gp_Pnt2d p1, const gp_Pnt2d p2);
		%feature("autodoc", "1");
		gp_Pnt2d GetStart_Pnt() const;
		%feature("autodoc", "1");
		gp_Pnt2d GetEnd_Pnt() const;
		%feature("autodoc", "1");
		gp_Pnt2d MiddlePnt() const;
		%feature("autodoc", "1");
		Standard_Real StartParameter() const;
		%feature("autodoc", "1");
		Standard_Real EndParameter() const;

};
%extend Sketcher_Edge {
	Handle_Sketcher_Edge GetHandle() {
	return *(Handle_Sketcher_Edge*) &$self;
	}
};
%extend Sketcher_Edge {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_Edge::~Sketcher_Edge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_Edge {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandCircle2PTan;
class Sketcher_CommandCircle2PTan : public Sketcher_Command {
	public:
		enum Circle2PTanAction {
			Nothing,
			Input_1CirclePoint,
			Input_2CirclePoint,
			Input_3CircleTan,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandCircle2PTan();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandCircle2PTan {
	Handle_Sketcher_CommandCircle2PTan GetHandle() {
	return *(Handle_Sketcher_CommandCircle2PTan*) &$self;
	}
};
%extend Sketcher_CommandCircle2PTan {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandCircle2PTan::~Sketcher_CommandCircle2PTan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandCircle2PTan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_Arc;
class Sketcher_Arc : public Geom2d_Circle {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_Arc(const gp_Circ2d C);
		%feature("autodoc", "1");
		Sketcher_Arc(const gp_Ax2d Ax2d, const Standard_Real R);
		%feature("autodoc", "1");
		void SetParam(const gp_Pnt2d start, const gp_Pnt2d mid, const gp_Pnt2d end);
		%feature("autodoc", "1");
		void SetFirstParam(const Standard_Real u1);
		%feature("autodoc", "1");
		void SetFirstParam(const gp_Pnt2d p1);
		%feature("autodoc", "1");
		void SetLastParam(const Standard_Real u2);
		%feature("autodoc", "1");
		void SetLastParam(const gp_Pnt2d p2);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		gp_Pnt2d FirstPnt() const;
		%feature("autodoc", "1");
		gp_Pnt2d LastPnt() const;
		%feature("autodoc", "1");
		gp_Pnt2d MiddlePnt() const;

};
%extend Sketcher_Arc {
	Handle_Sketcher_Arc GetHandle() {
	return *(Handle_Sketcher_Arc*) &$self;
	}
};
%extend Sketcher_Arc {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_Arc::~Sketcher_Arc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_Arc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapTangent;
class Sketcher_SnapTangent : public Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_SnapTangent();
		%feature("autodoc", "1");
		virtual		gp_Pnt2d MouseInputEvent(const gp_Pnt2d tempPnt2d);
		%feature("autodoc", "1");
		virtual		void EraseSnap();
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();
		%feature("autodoc", "1");
		virtual		void DrawRelation();
		%feature("autodoc", "1");
		virtual		void EraseRelation();
		%feature("autodoc", "1");
		virtual		void setFirstPnt(const gp_Pnt2d p, Sketcher_TangentType );

};
%extend Sketcher_SnapTangent {
	Handle_Sketcher_SnapTangent GetHandle() {
	return *(Handle_Sketcher_SnapTangent*) &$self;
	}
};
%extend Sketcher_SnapTangent {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapTangent::~Sketcher_SnapTangent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapTangent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher;
class Sketcher {
	public:
		%feature("autodoc", "1");
		Sketcher(const TDF_Label &theRootLabel, Sketcher_GUI* sg=0);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetData();
		%feature("autodoc", "1");
		void SetCoordinateSystem(const gp_Ax3 theCS);
		%feature("autodoc", "1");
		gp_Ax3 GetCoordinateSystem();
		%feature("autodoc", "1");
		void SetSnap(Sketcher_SnapType );
		%feature("autodoc", "1");
		Sketcher_SnapType GetSnap();
		%feature("autodoc", "1");
		void SetSnapPrecision(const Standard_Real &aPrecise);
		%feature("autodoc", "1");
		void SetType(const Sketcher_ObjectType theType);
		%feature("autodoc", "1");
		Sketcher_ObjectTypeOfMethod GetStatus();
		%feature("autodoc", "1");
		void ObjectAction(const Sketcher_ObjectTypeOfMethod theMethod);
		%feature("autodoc", "1");
		void OnCartesianCoordsEnter(Standard_Real , Standard_Real );
		%feature("autodoc", "1");
		void OnPolarCoordsEnter(Standard_Real , Standard_Real );
		%feature("autodoc", "1");
		void OnLocalCartesianCoordsEnter(Standard_Real , Standard_Real );
		%feature("autodoc", "1");
		void OnLocalPolarCoordsEnter(Standard_Real , Standard_Real );
		%feature("autodoc", "1");
		void OnMouseInputEvent(const V3d_Coordinate &v3dX, const V3d_Coordinate &v3dY, const V3d_Coordinate &v3dZ, const Quantity_Parameter &projVx, const Quantity_Parameter &projVy, const Quantity_Parameter &projVz);
		%feature("autodoc", "1");
		void OnMouseMoveEvent(const V3d_Coordinate &v3dX, const V3d_Coordinate &v3dY, const V3d_Coordinate &v3dZ, const Quantity_Parameter &projVx, const Quantity_Parameter &projVy, const Quantity_Parameter &projVz);
		%feature("autodoc", "1");
		void OnCancel();
		%feature("autodoc", "1");
		void ViewProperties();
		%feature("autodoc", "1");
		void SetPolylineMode(Standard_Boolean );
		%feature("autodoc", "1");
		void ClosePolyline();
		%feature("autodoc", "1");
		void DeleteSelectedObjects();
		%feature("autodoc", "1");
		void DrawAll();
		%feature("autodoc", "1");
		void EraseAll(Standard_Boolean );
		%feature("autodoc", "1");
		const gp_Pnt2d  GetCurrent2DPnt();
		%feature("autodoc", "1");
		TDF_Label GetLabel();
		%feature("autodoc", "1");
		Standard_Boolean Undo();
		%feature("autodoc", "1");
		Standard_Boolean Redo();

};
%feature("shadow") Sketcher::~Sketcher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_Profile;
class Sketcher_Profile {
	public:
		%feature("autodoc", "1");
		Sketcher_Profile();
		%feature("autodoc", "1");
		Sketcher_Profile(const char *aCmd);
		%feature("autodoc", "1");
		gp_Pnt GetLastPoint();
		%feature("autodoc", "1");
		gp_Dir GetLastDir();
		%feature("autodoc", "1");
		const TopoDS_Shape  GetShape();
		%feature("autodoc", "1");
		bool IsDone();
		%feature("autodoc", "1");
		std::string ErrMsg();
		%feature("autodoc", "1");
		double Error();

};
%feature("shadow") Sketcher_Profile::~Sketcher_Profile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_Profile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapNearest;
class Sketcher_SnapNearest : public Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_SnapNearest();
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();

};
%extend Sketcher_SnapNearest {
	Handle_Sketcher_SnapNearest GetHandle() {
	return *(Handle_Sketcher_SnapNearest*) &$self;
	}
};
%extend Sketcher_SnapNearest {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapNearest::~Sketcher_SnapNearest %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapNearest {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapMiddle;
class Sketcher_SnapMiddle : public Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_SnapMiddle();
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();

};
%extend Sketcher_SnapMiddle {
	Handle_Sketcher_SnapMiddle GetHandle() {
	return *(Handle_Sketcher_SnapMiddle*) &$self;
	}
};
%extend Sketcher_SnapMiddle {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapMiddle::~Sketcher_SnapMiddle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapMiddle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandPoint;
class Sketcher_CommandPoint : public Sketcher_Command {
	public:
		enum PointAction {
			Nothing,
			Input_Point,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandPoint();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandPoint {
	Handle_Sketcher_CommandPoint GetHandle() {
	return *(Handle_Sketcher_CommandPoint*) &$self;
	}
};
%extend Sketcher_CommandPoint {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandPoint::~Sketcher_CommandPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_AnalyserSnap;
class Sketcher_AnalyserSnap : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_AnalyserSnap(Handle_AIS_InteractiveContext & theContext, Handle_TColStd_HSequenceOfTransient & thedata, gp_Ax3 & theAx3);
		%feature("autodoc", "1");
		void SetContext(Handle_AIS_InteractiveContext & theContext);
		%feature("autodoc", "1");
		void SetData(Handle_TColStd_HSequenceOfTransient & thedata);
		%feature("autodoc", "1");
		void SetAx3(const gp_Ax3 theAx3);
		%feature("autodoc", "1");
		void SetMinDistance(const Standard_Real &aPrecise);
		%feature("autodoc", "1");
		void SetSnapType(Sketcher_SnapType );
		%feature("autodoc", "1");
		Sketcher_SnapType GetSnapType();
		%feature("autodoc", "1");
		gp_Pnt2d MouseInput(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		gp_Pnt2d MouseMove(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		void Cancel();
		%feature("autodoc", "1");
		gp_Pnt2d MouseInputException(const gp_Pnt2d p1, const gp_Pnt2d thePnt2d, Sketcher_TangentType , Standard_Boolean );
		%feature("autodoc", "1");
		gp_Pnt2d MouseMoveException(const gp_Pnt2d p1, const gp_Pnt2d thePnt2d, Sketcher_TangentType , Standard_Boolean );
		%feature("autodoc", "1");
		const gp_Pnt2d  GetCurrentBestPnt2D();

};
%extend Sketcher_AnalyserSnap {
	Handle_Sketcher_AnalyserSnap GetHandle() {
	return *(Handle_Sketcher_AnalyserSnap*) &$self;
	}
};
%extend Sketcher_AnalyserSnap {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_AnalyserSnap::~Sketcher_AnalyserSnap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_AnalyserSnap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_GUI;
class Sketcher_GUI {
	public:
		%feature("autodoc", "1");
		virtual		void SetContext(Handle_AIS_InteractiveContext & theContext);
		%feature("autodoc", "1");
		virtual		void SetAx3(const gp_Ax3 theAx3);
		%feature("autodoc", "1");
		virtual		void SetSketcher_Object(Handle_Sketcher_Object & CurObject);

};
%feature("shadow") Sketcher_GUI::~Sketcher_GUI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_GUI {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandBezierCurve;
class Sketcher_CommandBezierCurve : public Sketcher_Command {
	public:
		enum BezierCurveAction {
			Nothing,
			Input_1Point,
			Input_2Point,
			Input_OtherPoints,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandBezierCurve();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandBezierCurve {
	Handle_Sketcher_CommandBezierCurve GetHandle() {
	return *(Handle_Sketcher_CommandBezierCurve*) &$self;
	}
};
%extend Sketcher_CommandBezierCurve {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandBezierCurve::~Sketcher_CommandBezierCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandBezierCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandCircle3P;
class Sketcher_CommandCircle3P : public Sketcher_Command {
	public:
		enum Circle3PAction {
			Nothing,
			Input_1CirclePoint,
			Input_2CirclePoint,
			Input_3CirclePoint,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandCircle3P();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandCircle3P {
	Handle_Sketcher_CommandCircle3P GetHandle() {
	return *(Handle_Sketcher_CommandCircle3P*) &$self;
	}
};
%extend Sketcher_CommandCircle3P {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandCircle3P::~Sketcher_CommandCircle3P %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandCircle3P {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandCircle3Tan;
class Sketcher_CommandCircle3Tan : public Sketcher_Command {
	public:
		enum Circle3TanAction {
			Nothing,
			Input_1CircleTan,
			Input_2CircleTan,
			Input_3CircleTan,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandCircle3Tan();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandCircle3Tan {
	Handle_Sketcher_CommandCircle3Tan GetHandle() {
	return *(Handle_Sketcher_CommandCircle3Tan*) &$self;
	}
};
%extend Sketcher_CommandCircle3Tan {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandCircle3Tan::~Sketcher_CommandCircle3Tan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandCircle3Tan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandCircleCenterRadius;
class Sketcher_CommandCircleCenterRadius : public Sketcher_Command {
	public:
		enum CircleCenterRadiusAction {
			Nothing,
			Input_CenterPoint,
			Input_RadiusPoint,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandCircleCenterRadius();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandCircleCenterRadius {
	Handle_Sketcher_CommandCircleCenterRadius GetHandle() {
	return *(Handle_Sketcher_CommandCircleCenterRadius*) &$self;
	}
};
%extend Sketcher_CommandCircleCenterRadius {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandCircleCenterRadius::~Sketcher_CommandCircleCenterRadius %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandCircleCenterRadius {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapIntersection;
class Sketcher_SnapIntersection : public Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_SnapIntersection();
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();
		%feature("autodoc", "1");
		virtual		void DrawRelation();

};
%extend Sketcher_SnapIntersection {
	Handle_Sketcher_SnapIntersection GetHandle() {
	return *(Handle_Sketcher_SnapIntersection*) &$self;
	}
};
%extend Sketcher_SnapIntersection {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapIntersection::~Sketcher_SnapIntersection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapIntersection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_CommandTrim;
class Sketcher_CommandTrim : public Sketcher_Command {
	public:
		enum TrimAction {
			NothingAction,
			TrimObject,
		};
		enum RedrawState {
			NothingRedraw,
			RedrawTrimmedObject,
			OneObjectRemove,
			TwoObjectRemove,
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_CommandTrim();
		%feature("autodoc", "1");
		virtual		void Action();
		%feature("autodoc", "1");
		virtual		Standard_Boolean MouseInputEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void MouseMoveEvent(const gp_Pnt2d thePnt2d);
		%feature("autodoc", "1");
		virtual		void CancelEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_ObjectTypeOfMethod GetTypeOfMethod();

};
%extend Sketcher_CommandTrim {
	Handle_Sketcher_CommandTrim GetHandle() {
	return *(Handle_Sketcher_CommandTrim*) &$self;
	}
};
%extend Sketcher_CommandTrim {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_CommandTrim::~Sketcher_CommandTrim %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_CommandTrim {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sketcher_SnapCenter;
class Sketcher_SnapCenter : public Sketcher_Snap {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Sketcher_SnapCenter();
		%feature("autodoc", "1");
		virtual		void SelectEvent();
		%feature("autodoc", "1");
		virtual		Sketcher_SnapType GetSnapType();

};
%extend Sketcher_SnapCenter {
	Handle_Sketcher_SnapCenter GetHandle() {
	return *(Handle_Sketcher_SnapCenter*) &$self;
	}
};
%extend Sketcher_SnapCenter {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Sketcher_SnapCenter::~Sketcher_SnapCenter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sketcher_SnapCenter {
	void _kill_pointed() {
		delete $self;
	}
};
