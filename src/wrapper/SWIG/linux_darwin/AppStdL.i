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

%module AppStdL
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include AppStdL_renames.i


%include AppStdL_required_python_modules.i


%include AppStdL_dependencies.i


%include AppStdL_headers.i




%nodefaultctor Handle_AppStdL_Application;
class Handle_AppStdL_Application : public Handle_TDocStd_Application {
	public:
		%feature("autodoc", "1");
		Handle_AppStdL_Application();
		%feature("autodoc", "1");
		Handle_AppStdL_Application(const Handle_AppStdL_Application &aHandle);
		%feature("autodoc", "1");
		Handle_AppStdL_Application(const AppStdL_Application *anItem);
		%feature("autodoc", "1");
		Handle_AppStdL_Application & operator=(const Handle_AppStdL_Application &aHandle);
		%feature("autodoc", "1");
		Handle_AppStdL_Application & operator=(const AppStdL_Application *anItem);
		%feature("autodoc", "1");
		static		Handle_AppStdL_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AppStdL_Application {
	AppStdL_Application* GetObject() {
	return (AppStdL_Application*)$self->Access();
	}
};
%feature("shadow") Handle_AppStdL_Application::~Handle_AppStdL_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_AppStdL_Application {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor AppStdL_Application;
class AppStdL_Application : public TDocStd_Application {
	public:
		%feature("autodoc", "1");
		AppStdL_Application();
		%feature("autodoc", "1");
		virtual		Handle_CDM_MessageDriver MessageDriver();
		%feature("autodoc", "1");
		virtual		void Formats(TColStd_SequenceOfExtendedString & theFormats);
		%feature("autodoc", "1");
		virtual		char * ResourcesName();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AppStdL_Application {
	Handle_AppStdL_Application GetHandle() {
	return *(Handle_AppStdL_Application*) &$self;
	}
};
%extend AppStdL_Application {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") AppStdL_Application::~AppStdL_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend AppStdL_Application {
	void _kill_pointed() {
		delete $self;
	}
};
