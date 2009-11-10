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
%module Viewer

%include Viewer_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Viewer_dependencies.i


%include Viewer_headers.i




%nodefaultctor Handle_Viewer_BadValue;
class Handle_Viewer_BadValue : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Viewer_BadValue();
		%feature("autodoc", "1");
		Handle_Viewer_BadValue(const Handle_Viewer_BadValue &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue(const Viewer_BadValue *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue & operator=(const Handle_Viewer_BadValue &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue & operator=(const Viewer_BadValue *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Viewer_BadValue {
	Viewer_BadValue* GetObject() {
	return (Viewer_BadValue*)$self->Access();
	}
};
%feature("shadow") Handle_Viewer_BadValue::~Handle_Viewer_BadValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Viewer_BadValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Viewer_Viewer;
class Handle_Viewer_Viewer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Viewer_Viewer();
		%feature("autodoc", "1");
		Handle_Viewer_Viewer(const Handle_Viewer_Viewer &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_Viewer(const Viewer_Viewer *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_Viewer & operator=(const Handle_Viewer_Viewer &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_Viewer & operator=(const Viewer_Viewer *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_Viewer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Viewer_Viewer {
	Viewer_Viewer* GetObject() {
	return (Viewer_Viewer*)$self->Access();
	}
};
%feature("shadow") Handle_Viewer_Viewer::~Handle_Viewer_Viewer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Viewer_Viewer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Viewer_View;
class Handle_Viewer_View : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Viewer_View();
		%feature("autodoc", "1");
		Handle_Viewer_View(const Handle_Viewer_View &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_View(const Viewer_View *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_View & operator=(const Handle_Viewer_View &aHandle);
		%feature("autodoc", "1");
		Handle_Viewer_View & operator=(const Viewer_View *anItem);
		%feature("autodoc", "1");
		Handle_Viewer_View const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Viewer_View {
	Viewer_View* GetObject() {
	return (Viewer_View*)$self->Access();
	}
};
%feature("shadow") Handle_Viewer_View::~Handle_Viewer_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Viewer_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Viewer_View;
class Viewer_View : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Update() const;
		%feature("autodoc", "1");
		Standard_Boolean SetImmediateUpdate(const Standard_Boolean onoff);
		%feature("autodoc", "1");
		virtual		void WindowFit(const Standard_Integer Xmin, const Standard_Integer Ymin, const Standard_Integer Xmax, const Standard_Integer Ymax);
		%feature("autodoc", "1");
		virtual		void Place(const Standard_Integer x, const Standard_Integer y, const Quantity_Factor aZoomFactor=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Viewer_View {
	Handle_Viewer_View GetHandle() {
	return *(Handle_Viewer_View*) &$self;
	}
};
%extend Viewer_View {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Viewer_View::~Viewer_View %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Viewer_View {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Viewer_Viewer;
class Viewer_Viewer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Update();
		%feature("autodoc", "1");
		Handle_Aspect_GraphicDevice Device() const;
		%feature("autodoc", "1");
		Standard_ExtString NextName() const;
		%feature("autodoc", "1");
		char * Domain() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Viewer_Viewer {
	Handle_Viewer_Viewer GetHandle() {
	return *(Handle_Viewer_Viewer*) &$self;
	}
};
%extend Viewer_Viewer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Viewer_Viewer::~Viewer_Viewer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Viewer_Viewer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Viewer_BadValue;
class Viewer_BadValue : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Viewer_BadValue();
		%feature("autodoc", "1");
		Viewer_BadValue(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Viewer_BadValue NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Viewer_BadValue {
	Handle_Viewer_BadValue GetHandle() {
	return *(Handle_Viewer_BadValue*) &$self;
	}
};
%extend Viewer_BadValue {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Viewer_BadValue::~Viewer_BadValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Viewer_BadValue {
	void _kill_pointed() {
		delete $self;
	}
};
