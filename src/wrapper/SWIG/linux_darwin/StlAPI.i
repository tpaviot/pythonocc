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

%module StlAPI
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StlAPI_renames.i


%include StlAPI_required_python_modules.i


%include StlAPI_dependencies.i


%include StlAPI_headers.i




%nodefaultctor StlAPI_Writer;
class StlAPI_Writer {
	public:
		%feature("autodoc", "1");
		StlAPI_Writer();
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real aDeflection);
		%feature("autodoc", "1");
		void SetCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetRelativeMode() {
				return (Standard_Boolean) $self->RelativeMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetRelativeMode(Standard_Boolean value ) {
				$self->RelativeMode()=value;
				}
		};
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetASCIIMode() {
				return (Standard_Boolean) $self->ASCIIMode();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetASCIIMode(Standard_Boolean value ) {
				$self->ASCIIMode()=value;
				}
		};
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape aShape, const char * aFileName);

};
%feature("shadow") StlAPI_Writer::~StlAPI_Writer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StlAPI_Writer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StlAPI_Reader;
class StlAPI_Reader {
	public:
		%feature("autodoc", "1");
		StlAPI_Reader();
		%feature("autodoc", "1");
		void Read(TopoDS_Shape & aShape, const char * aFileName);

};
%feature("shadow") StlAPI_Reader::~StlAPI_Reader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StlAPI_Reader {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StlAPI;
class StlAPI {
	public:
		%feature("autodoc", "1");
		StlAPI();
		%feature("autodoc", "1");
		static		void Write(const TopoDS_Shape aShape, const char * aFile, const Standard_Boolean aAsciiMode=1);
		%feature("autodoc", "1");
		static		void Read(TopoDS_Shape & aShape, const char * aFile);

};
%feature("shadow") StlAPI::~StlAPI %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StlAPI {
	void _kill_pointed() {
		delete $self;
	}
};
