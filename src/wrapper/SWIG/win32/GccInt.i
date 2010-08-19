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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module GccInt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GccInt_renames.i


%include GccInt_required_python_modules.i


%include GccInt_dependencies.i


%include GccInt_headers.i


enum GccInt_IType {
	GccInt_Lin,
	GccInt_Cir,
	GccInt_Ell,
	GccInt_Par,
	GccInt_Hpr,
	GccInt_Pnt,
	};



%nodefaultctor Handle_GccInt_Bisec;
class Handle_GccInt_Bisec : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GccInt_Bisec();
		%feature("autodoc", "1");
		Handle_GccInt_Bisec(const Handle_GccInt_Bisec &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_Bisec(const GccInt_Bisec *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_Bisec & operator=(const Handle_GccInt_Bisec &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_Bisec & operator=(const GccInt_Bisec *anItem);
		%feature("autodoc", "1");
		static		Handle_GccInt_Bisec const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_Bisec {
	GccInt_Bisec* GetObject() {
	return (GccInt_Bisec*)$self->Access();
	}
};
%feature("shadow") Handle_GccInt_Bisec::~Handle_GccInt_Bisec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccInt_Bisec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GccInt_BLine;
class Handle_GccInt_BLine : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		Handle_GccInt_BLine();
		%feature("autodoc", "1");
		Handle_GccInt_BLine(const Handle_GccInt_BLine &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BLine(const GccInt_BLine *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BLine & operator=(const Handle_GccInt_BLine &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BLine & operator=(const GccInt_BLine *anItem);
		%feature("autodoc", "1");
		static		Handle_GccInt_BLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BLine {
	GccInt_BLine* GetObject() {
	return (GccInt_BLine*)$self->Access();
	}
};
%feature("shadow") Handle_GccInt_BLine::~Handle_GccInt_BLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccInt_BLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GccInt_BParab;
class Handle_GccInt_BParab : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		Handle_GccInt_BParab();
		%feature("autodoc", "1");
		Handle_GccInt_BParab(const Handle_GccInt_BParab &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BParab(const GccInt_BParab *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BParab & operator=(const Handle_GccInt_BParab &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BParab & operator=(const GccInt_BParab *anItem);
		%feature("autodoc", "1");
		static		Handle_GccInt_BParab const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BParab {
	GccInt_BParab* GetObject() {
	return (GccInt_BParab*)$self->Access();
	}
};
%feature("shadow") Handle_GccInt_BParab::~Handle_GccInt_BParab %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccInt_BParab {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GccInt_BElips;
class Handle_GccInt_BElips : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		Handle_GccInt_BElips();
		%feature("autodoc", "1");
		Handle_GccInt_BElips(const Handle_GccInt_BElips &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BElips(const GccInt_BElips *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BElips & operator=(const Handle_GccInt_BElips &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BElips & operator=(const GccInt_BElips *anItem);
		%feature("autodoc", "1");
		static		Handle_GccInt_BElips const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BElips {
	GccInt_BElips* GetObject() {
	return (GccInt_BElips*)$self->Access();
	}
};
%feature("shadow") Handle_GccInt_BElips::~Handle_GccInt_BElips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccInt_BElips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GccInt_BHyper;
class Handle_GccInt_BHyper : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		Handle_GccInt_BHyper();
		%feature("autodoc", "1");
		Handle_GccInt_BHyper(const Handle_GccInt_BHyper &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BHyper(const GccInt_BHyper *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BHyper & operator=(const Handle_GccInt_BHyper &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BHyper & operator=(const GccInt_BHyper *anItem);
		%feature("autodoc", "1");
		static		Handle_GccInt_BHyper const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BHyper {
	GccInt_BHyper* GetObject() {
	return (GccInt_BHyper*)$self->Access();
	}
};
%feature("shadow") Handle_GccInt_BHyper::~Handle_GccInt_BHyper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccInt_BHyper {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GccInt_BPoint;
class Handle_GccInt_BPoint : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		Handle_GccInt_BPoint();
		%feature("autodoc", "1");
		Handle_GccInt_BPoint(const Handle_GccInt_BPoint &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BPoint(const GccInt_BPoint *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BPoint & operator=(const Handle_GccInt_BPoint &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BPoint & operator=(const GccInt_BPoint *anItem);
		%feature("autodoc", "1");
		static		Handle_GccInt_BPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BPoint {
	GccInt_BPoint* GetObject() {
	return (GccInt_BPoint*)$self->Access();
	}
};
%feature("shadow") Handle_GccInt_BPoint::~Handle_GccInt_BPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccInt_BPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GccInt_BCirc;
class Handle_GccInt_BCirc : public Handle_GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		Handle_GccInt_BCirc();
		%feature("autodoc", "1");
		Handle_GccInt_BCirc(const Handle_GccInt_BCirc &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BCirc(const GccInt_BCirc *anItem);
		%feature("autodoc", "1");
		Handle_GccInt_BCirc & operator=(const Handle_GccInt_BCirc &aHandle);
		%feature("autodoc", "1");
		Handle_GccInt_BCirc & operator=(const GccInt_BCirc *anItem);
		%feature("autodoc", "1");
		static		Handle_GccInt_BCirc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccInt_BCirc {
	GccInt_BCirc* GetObject() {
	return (GccInt_BCirc*)$self->Access();
	}
};
%feature("shadow") Handle_GccInt_BCirc::~Handle_GccInt_BCirc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccInt_BCirc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccInt_Bisec;
class GccInt_Bisec : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Point() const;
		%feature("autodoc", "1");
		virtual		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		virtual		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		virtual		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		virtual		gp_Parab2d Parabola() const;
		%feature("autodoc", "1");
		virtual		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccInt_Bisec {
	Handle_GccInt_Bisec GetHandle() {
	return *(Handle_GccInt_Bisec*) &$self;
	}
};
%extend GccInt_Bisec {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccInt_Bisec::~GccInt_Bisec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccInt_Bisec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccInt_BParab;
class GccInt_BParab : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BParab(const gp_Parab2d &Parab);

};
%extend GccInt_BParab {
	Handle_GccInt_BParab GetHandle() {
	return *(Handle_GccInt_BParab*) &$self;
	}
};
%extend GccInt_BParab {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccInt_BParab::~GccInt_BParab %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccInt_BParab {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccInt_BElips;
class GccInt_BElips : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BElips(const gp_Elips2d &Ellipse);
		%feature("autodoc", "1");
		virtual		gp_Elips2d Ellipse() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccInt_BElips {
	Handle_GccInt_BElips GetHandle() {
	return *(Handle_GccInt_BElips*) &$self;
	}
};
%extend GccInt_BElips {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccInt_BElips::~GccInt_BElips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccInt_BElips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccInt_BCirc;
class GccInt_BCirc : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BCirc(const gp_Circ2d &Circ);
		%feature("autodoc", "1");
		virtual		gp_Circ2d Circle() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccInt_BCirc {
	Handle_GccInt_BCirc GetHandle() {
	return *(Handle_GccInt_BCirc*) &$self;
	}
};
%extend GccInt_BCirc {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccInt_BCirc::~GccInt_BCirc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccInt_BCirc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccInt_BPoint;
class GccInt_BPoint : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BPoint(const gp_Pnt2d &Point);
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Point() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccInt_BPoint {
	Handle_GccInt_BPoint GetHandle() {
	return *(Handle_GccInt_BPoint*) &$self;
	}
};
%extend GccInt_BPoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccInt_BPoint::~GccInt_BPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccInt_BPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccInt_BLine;
class GccInt_BLine : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BLine(const gp_Lin2d &Line);
		%feature("autodoc", "1");
		virtual		gp_Lin2d Line() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccInt_BLine {
	Handle_GccInt_BLine GetHandle() {
	return *(Handle_GccInt_BLine*) &$self;
	}
};
%extend GccInt_BLine {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccInt_BLine::~GccInt_BLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccInt_BLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccInt_BHyper;
class GccInt_BHyper : public GccInt_Bisec {
	public:
		%feature("autodoc", "1");
		GccInt_BHyper(const gp_Hypr2d &Hyper);
		%feature("autodoc", "1");
		virtual		gp_Hypr2d Hyperbola() const;
		%feature("autodoc", "1");
		virtual		GccInt_IType ArcType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccInt_BHyper {
	Handle_GccInt_BHyper GetHandle() {
	return *(Handle_GccInt_BHyper*) &$self;
	}
};
%extend GccInt_BHyper {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GccInt_BHyper::~GccInt_BHyper %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccInt_BHyper {
	void _kill_pointed() {
		delete $self;
	}
};
