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

%module CGM
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include CGM_renames.i


%include CGM_required_python_modules.i


%include CGM_dependencies.i


%include CGM_headers.i




%nodefaultctor Handle_CGM_Driver;
class Handle_CGM_Driver : public Handle_PlotMgt_PlotterDriver {
	public:
		%feature("autodoc", "1");
		Handle_CGM_Driver();
		%feature("autodoc", "1");
		Handle_CGM_Driver(const Handle_CGM_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_CGM_Driver(const CGM_Driver *anItem);
		%feature("autodoc", "1");
		Handle_CGM_Driver & operator=(const Handle_CGM_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_CGM_Driver & operator=(const CGM_Driver *anItem);
		%feature("autodoc", "1");
		static		Handle_CGM_Driver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_CGM_Driver {
	CGM_Driver* GetObject() {
	return (CGM_Driver*)$self->Access();
	}
};
%feature("shadow") Handle_CGM_Driver::~Handle_CGM_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_CGM_Driver {
	void _kill_pointed() {
		delete $self;
	}
};
