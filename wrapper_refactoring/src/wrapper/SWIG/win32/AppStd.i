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
%module AppStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include AppStd_dependencies.i


%include AppStd_headers.i




%nodefaultctor Handle_AppStd_Application;
class Handle_AppStd_Application : public Handle_TDocStd_Application {
	public:
		%feature("autodoc", "1");
		Handle_AppStd_Application();
		%feature("autodoc", "1");
		Handle_AppStd_Application(const Handle_AppStd_Application &aHandle);
		%feature("autodoc", "1");
		Handle_AppStd_Application(const AppStd_Application *anItem);
		%feature("autodoc", "1");
		Handle_AppStd_Application & operator=(const Handle_AppStd_Application &aHandle);
		%feature("autodoc", "1");
		Handle_AppStd_Application & operator=(const AppStd_Application *anItem);
		%feature("autodoc", "1");
		Handle_AppStd_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppStd_Application {
	AppStd_Application* GetObject() {
	return (AppStd_Application*)$self->Access();
	}
};
%feature("shadow") Handle_AppStd_Application::~Handle_AppStd_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AppStd_Application {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppStd_Application;
class AppStd_Application : public TDocStd_Application {
	public:
		%feature("autodoc", "1");
		AppStd_Application();
		%feature("autodoc", "1");
		virtual		Handle_CDM_MessageDriver MessageDriver();
		%feature("autodoc", "1");
		virtual		void Formats(TColStd_SequenceOfExtendedString & theFormats);
		%feature("autodoc", "1");
		virtual		char * ResourcesName();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppStd_Application {
	Handle_AppStd_Application GetHandle() {
	return *(Handle_AppStd_Application*) &$self;
	}
};
%extend AppStd_Application {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") AppStd_Application::~AppStd_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppStd_Application {
	void _kill_pointed() {
		delete $self;
	}
};
