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

%module XCAFApp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XCAFApp_renames.i


%include XCAFApp_required_python_modules.i


%include XCAFApp_dependencies.i


%include XCAFApp_headers.i




%nodefaultctor Handle_XCAFApp_Application;
class Handle_XCAFApp_Application : public Handle_TDocStd_Application {
	public:
		%feature("autodoc", "1");
		Handle_XCAFApp_Application();
		%feature("autodoc", "1");
		Handle_XCAFApp_Application(const Handle_XCAFApp_Application &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFApp_Application(const XCAFApp_Application *anItem);
		%feature("autodoc", "1");
		Handle_XCAFApp_Application & operator=(const Handle_XCAFApp_Application &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFApp_Application & operator=(const XCAFApp_Application *anItem);
		%feature("autodoc", "1");
		static		Handle_XCAFApp_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFApp_Application {
	XCAFApp_Application* GetObject() {
	return (XCAFApp_Application*)$self->Access();
	}
};
%feature("shadow") Handle_XCAFApp_Application::~Handle_XCAFApp_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XCAFApp_Application {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XCAFApp_Application;
class XCAFApp_Application : public TDocStd_Application {
	public:
		%feature("autodoc", "1");
		virtual		void Formats(TColStd_SequenceOfExtendedString & Formats);
		%feature("autodoc", "1");
		virtual		char * ResourcesName();
		%feature("autodoc", "1");
		virtual		void InitDocument(const Handle_TDocStd_Document &aDoc) const;
		%feature("autodoc", "1");
		static		Handle_XCAFApp_Application GetApplication();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFApp_Application {
	Handle_XCAFApp_Application GetHandle() {
	return *(Handle_XCAFApp_Application*) &$self;
	}
};
%extend XCAFApp_Application {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XCAFApp_Application::~XCAFApp_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XCAFApp_Application {
	void _kill_pointed() {
		delete $self;
	}
};
%inline %{
Handle_XCAFApp_Application GetApplication()
{
return XCAFApp_Application::GetApplication();
}
%}
