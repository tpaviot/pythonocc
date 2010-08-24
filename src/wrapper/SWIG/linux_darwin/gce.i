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

%module gce
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include gce_renames.i


%include gce_required_python_modules.i


%include gce_dependencies.i


%include gce_headers.i


enum gce_ErrorType {
	gce_Done,
	gce_ConfusedPoints,
	gce_NegativeRadius,
	gce_ColinearPoints,
	gce_IntersectionError,
	gce_NullAxis,
	gce_NullAngle,
	gce_NullRadius,
	gce_InvertAxis,
	gce_BadAngle,
	gce_InvertRadius,
	gce_NullFocusLength,
	gce_NullVector,
	gce_BadEquation,
	};



%nodefaultctor gce_Root;
class gce_Root {
	public:
		%feature("autodoc", "1");
		gce_Root();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		gce_ErrorType Status() const;

};
%feature("shadow") gce_Root::~gce_Root %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_Root {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeParab2d;
class gce_MakeParab2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax2d MirrorAxis, const Standard_Real Focal, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax22d A, const Standard_Real Focal);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax2d D, const gp_Pnt2d F, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Ax22d D, const gp_Pnt2d F);
		%feature("autodoc", "1");
		gce_MakeParab2d(const gp_Pnt2d S1, const gp_Pnt2d Center, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const gp_Parab2d  Value() const;
		%feature("autodoc", "1");
		const gp_Parab2d  Operator() const;

};
%feature("shadow") gce_MakeParab2d::~gce_MakeParab2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeParab2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeScale2d;
class gce_MakeScale2d {
	public:
		%feature("autodoc", "1");
		gce_MakeScale2d(const gp_Pnt2d Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const gp_Trsf2d  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d  Operator() const;

};
%feature("shadow") gce_MakeScale2d::~gce_MakeScale2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeScale2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeLin2d;
class gce_MakeLin2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Ax2d A);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Pnt2d P, const gp_Dir2d V);
		%feature("autodoc", "1");
		gce_MakeLin2d(const Standard_Real A, const Standard_Real B, const Standard_Real C);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Lin2d Lin, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Lin2d Lin, const gp_Pnt2d Point);
		%feature("autodoc", "1");
		gce_MakeLin2d(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		gp_Lin2d Value() const;
		%feature("autodoc", "1");
		gp_Lin2d Operator() const;

};
%feature("shadow") gce_MakeLin2d::~gce_MakeLin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeLin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeMirror2d;
class gce_MakeMirror2d {
	public:
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Pnt2d Point);
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Ax2d Axis);
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Lin2d Line);
		%feature("autodoc", "1");
		gce_MakeMirror2d(const gp_Pnt2d Point, const gp_Dir2d Direc);
		%feature("autodoc", "1");
		const gp_Trsf2d  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d  Operator() const;

};
%feature("shadow") gce_MakeMirror2d::~gce_MakeMirror2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeMirror2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeRotation;
class gce_MakeRotation {
	public:
		%feature("autodoc", "1");
		gce_MakeRotation(const gp_Lin Line, const Standard_Real Angle);
		%feature("autodoc", "1");
		gce_MakeRotation(const gp_Ax1 Axis, const Standard_Real Angle);
		%feature("autodoc", "1");
		gce_MakeRotation(const gp_Pnt Point, const gp_Dir Direc, const Standard_Real Angle);
		%feature("autodoc", "1");
		const gp_Trsf  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf  Operator() const;

};
%feature("shadow") gce_MakeRotation::~gce_MakeRotation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeRotation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeHypr2d;
class gce_MakeHypr2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeHypr2d(const gp_Pnt2d S1, const gp_Pnt2d S2, const gp_Pnt2d Center);
		%feature("autodoc", "1");
		gce_MakeHypr2d(const gp_Ax2d MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		gce_MakeHypr2d(const gp_Ax22d A, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		const gp_Hypr2d  Value() const;
		%feature("autodoc", "1");
		const gp_Hypr2d  Operator() const;

};
%feature("shadow") gce_MakeHypr2d::~gce_MakeHypr2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeHypr2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeElips2d;
class gce_MakeElips2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeElips2d(const gp_Ax2d MajorAxis, const Standard_Real MajorRadius, const Standard_Real MinorRadius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeElips2d(const gp_Ax22d A, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeElips2d(const gp_Pnt2d S1, const gp_Pnt2d S2, const gp_Pnt2d Center);
		%feature("autodoc", "1");
		const gp_Elips2d  Value() const;
		%feature("autodoc", "1");
		const gp_Elips2d  Operator() const;

};
%feature("shadow") gce_MakeElips2d::~gce_MakeElips2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeElips2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeCirc;
class gce_MakeCirc : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Ax2 A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Circ Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Circ Circ, const gp_Pnt Point);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt Center, const gp_Dir Norm, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt Center, const gp_Pln Plane, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Pnt Center, const gp_Pnt Ptaxis, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc(const gp_Ax1 Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		const gp_Circ  Value() const;
		%feature("autodoc", "1");
		const gp_Circ  Operator() const;

};
%feature("shadow") gce_MakeCirc::~gce_MakeCirc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeCirc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeTranslation;
class gce_MakeTranslation {
	public:
		%feature("autodoc", "1");
		gce_MakeTranslation(const gp_Vec Vect);
		%feature("autodoc", "1");
		gce_MakeTranslation(const gp_Pnt Point1, const gp_Pnt Point2);
		%feature("autodoc", "1");
		const gp_Trsf  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf  Operator() const;

};
%feature("shadow") gce_MakeTranslation::~gce_MakeTranslation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeTranslation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeParab;
class gce_MakeParab : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeParab(const gp_Ax2 A2, const Standard_Real Focal);
		%feature("autodoc", "1");
		gce_MakeParab(const gp_Ax1 D, const gp_Pnt F);
		%feature("autodoc", "1");
		const gp_Parab  Value() const;
		%feature("autodoc", "1");
		const gp_Parab  Operator() const;

};
%feature("shadow") gce_MakeParab::~gce_MakeParab %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeParab {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeHypr;
class gce_MakeHypr : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeHypr(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeHypr(const gp_Pnt S1, const gp_Pnt S2, const gp_Pnt Center);
		%feature("autodoc", "1");
		const gp_Hypr  Value() const;
		%feature("autodoc", "1");
		const gp_Hypr  Operator() const;

};
%feature("shadow") gce_MakeHypr::~gce_MakeHypr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeHypr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeScale;
class gce_MakeScale {
	public:
		%feature("autodoc", "1");
		gce_MakeScale(const gp_Pnt Point, const Standard_Real Scale);
		%feature("autodoc", "1");
		const gp_Trsf  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf  Operator() const;

};
%feature("shadow") gce_MakeScale::~gce_MakeScale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeScale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeCirc2d;
class gce_MakeCirc2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Ax2d XAxis, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Ax22d Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Circ2d Circ, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Circ2d Circ, const gp_Pnt2d Point);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Pnt2d P1, const gp_Pnt2d P2, const gp_Pnt2d P3);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Pnt2d Center, const Standard_Real Radius, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		gce_MakeCirc2d(const gp_Pnt2d Center, const gp_Pnt2d Point, const Standard_Boolean Sense=1);
		%feature("autodoc", "1");
		const gp_Circ2d  Value() const;
		%feature("autodoc", "1");
		const gp_Circ2d  Operator() const;

};
%feature("shadow") gce_MakeCirc2d::~gce_MakeCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeDir;
class gce_MakeDir : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeDir(const gp_Vec V);
		%feature("autodoc", "1");
		gce_MakeDir(const gp_XYZ Coord);
		%feature("autodoc", "1");
		gce_MakeDir(const Standard_Real Xv, const Standard_Real Yv, const Standard_Real Zv);
		%feature("autodoc", "1");
		gce_MakeDir(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		const gp_Dir  Value() const;
		%feature("autodoc", "1");
		const gp_Dir  Operator() const;

};
%feature("shadow") gce_MakeDir::~gce_MakeDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeRotation2d;
class gce_MakeRotation2d {
	public:
		%feature("autodoc", "1");
		gce_MakeRotation2d(const gp_Pnt2d Point, const Standard_Real Angle);
		%feature("autodoc", "1");
		const gp_Trsf2d  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d  Operator() const;

};
%feature("shadow") gce_MakeRotation2d::~gce_MakeRotation2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeRotation2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeTranslation2d;
class gce_MakeTranslation2d {
	public:
		%feature("autodoc", "1");
		gce_MakeTranslation2d(const gp_Vec2d Vect);
		%feature("autodoc", "1");
		gce_MakeTranslation2d(const gp_Pnt2d Point1, const gp_Pnt2d Point2);
		%feature("autodoc", "1");
		const gp_Trsf2d  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf2d  Operator() const;

};
%feature("shadow") gce_MakeTranslation2d::~gce_MakeTranslation2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeTranslation2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeDir2d;
class gce_MakeDir2d : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeDir2d(const gp_Vec2d V);
		%feature("autodoc", "1");
		gce_MakeDir2d(const gp_XY Coord);
		%feature("autodoc", "1");
		gce_MakeDir2d(const Standard_Real Xv, const Standard_Real Yv);
		%feature("autodoc", "1");
		gce_MakeDir2d(const gp_Pnt2d P1, const gp_Pnt2d P2);
		%feature("autodoc", "1");
		const gp_Dir2d  Value() const;
		%feature("autodoc", "1");
		const gp_Dir2d  Operator() const;

};
%feature("shadow") gce_MakeDir2d::~gce_MakeDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeElips;
class gce_MakeElips : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeElips(const gp_Ax2 A2, const Standard_Real MajorRadius, const Standard_Real MinorRadius);
		%feature("autodoc", "1");
		gce_MakeElips(const gp_Pnt S1, const gp_Pnt S2, const gp_Pnt Center);
		%feature("autodoc", "1");
		const gp_Elips  Value() const;
		%feature("autodoc", "1");
		const gp_Elips  Operator() const;

};
%feature("shadow") gce_MakeElips::~gce_MakeElips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeElips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeMirror;
class gce_MakeMirror {
	public:
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Pnt Point);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Ax1 Axis);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Lin Line);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Pnt Point, const gp_Dir Direc);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Pln Plane);
		%feature("autodoc", "1");
		gce_MakeMirror(const gp_Ax2 Plane);
		%feature("autodoc", "1");
		const gp_Trsf  Value() const;
		%feature("autodoc", "1");
		const gp_Trsf  Operator() const;

};
%feature("shadow") gce_MakeMirror::~gce_MakeMirror %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeMirror {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakePln;
class gce_MakePln : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakePln(const gp_Ax2 A2);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		gce_MakePln(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pln Pln, const gp_Pnt Point);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pln Pln, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gce_MakePln(const gp_Ax1 Axis);
		%feature("autodoc", "1");
		const gp_Pln  Value() const;
		%feature("autodoc", "1");
		const gp_Pln  Operator() const;

};
%feature("shadow") gce_MakePln::~gce_MakePln %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakePln {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeLin;
class gce_MakeLin : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Ax1 A1);
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Pnt P, const gp_Dir V);
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Lin Lin, const gp_Pnt Point);
		%feature("autodoc", "1");
		gce_MakeLin(const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		const gp_Lin  Value() const;
		%feature("autodoc", "1");
		const gp_Lin  Operator() const;

};
%feature("shadow") gce_MakeLin::~gce_MakeLin %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeLin {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeCylinder;
class gce_MakeCylinder : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Ax2 A2, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Cylinder Cyl, const gp_Pnt Point);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Cylinder Cyl, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Ax1 Axis, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCylinder(const gp_Circ Circ);
		%feature("autodoc", "1");
		const gp_Cylinder  Value() const;
		%feature("autodoc", "1");
		const gp_Cylinder  Operator() const;

};
%feature("shadow") gce_MakeCylinder::~gce_MakeCylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeCylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor gce_MakeCone;
class gce_MakeCone : public gce_Root {
	public:
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Ax2 A2, const Standard_Real Ang, const Standard_Real Radius);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Cone Cone, const gp_Pnt Point);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Cone Cone, const Standard_Real Dist);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Pnt P1, const gp_Pnt P2, const gp_Pnt P3, const gp_Pnt P4);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Ax1 Axis, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Lin Axis, const gp_Pnt P1, const gp_Pnt P2);
		%feature("autodoc", "1");
		gce_MakeCone(const gp_Pnt P1, const gp_Pnt P2, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		const gp_Cone  Value() const;
		%feature("autodoc", "1");
		const gp_Cone  Operator() const;

};
%feature("shadow") gce_MakeCone::~gce_MakeCone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend gce_MakeCone {
	void _kill_pointed() {
		delete $self;
	}
};
