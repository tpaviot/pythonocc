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

%module TopAbs
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TopAbs_renames.i


%include TopAbs_required_python_modules.i


%include TopAbs_dependencies.i


%include TopAbs_headers.i


enum TopAbs_ShapeEnum {
	TopAbs_COMPOUND,
	TopAbs_COMPSOLID,
	TopAbs_SOLID,
	TopAbs_SHELL,
	TopAbs_FACE,
	TopAbs_WIRE,
	TopAbs_EDGE,
	TopAbs_VERTEX,
	TopAbs_SHAPE,
	};

enum TopAbs_Orientation {
	TopAbs_FORWARD,
	TopAbs_REVERSED,
	TopAbs_INTERNAL,
	TopAbs_EXTERNAL,
	};

enum TopAbs_State {
	TopAbs_IN,
	TopAbs_OUT,
	TopAbs_ON,
	TopAbs_UNKNOWN,
	};



%nodefaultctor TopAbs;
class TopAbs {
	public:
		%feature("autodoc", "1");
		TopAbs();
		%feature("autodoc", "1");
		static		TopAbs_Orientation Compose(const TopAbs_Orientation Or1, const TopAbs_Orientation Or2);
		%feature("autodoc", "1");
		static		TopAbs_Orientation Reverse(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		static		TopAbs_Orientation Complement(const TopAbs_Orientation Or);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TopAbs_ShapeEnum SE, Standard_OStream & S);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TopAbs_Orientation Or, Standard_OStream & S);
		%feature("autodoc", "1");
		static		Standard_OStream & Print(const TopAbs_State St, Standard_OStream & S);

};
%feature("shadow") TopAbs::~TopAbs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TopAbs {
	void _kill_pointed() {
		delete $self;
	}
};
