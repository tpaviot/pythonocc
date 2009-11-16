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
%module BRepBndLib
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BRepBndLib_dependencies.i


%include BRepBndLib_headers.i




%nodefaultctor BRepBndLib;
class BRepBndLib {
	public:
		%feature("autodoc", "1");
		BRepBndLib();
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &S, Bnd_Box & B);
		%feature("autodoc", "1");
		void AddClose(const TopoDS_Shape &S, Bnd_Box & B);

};
%feature("shadow") BRepBndLib::~BRepBndLib %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRepBndLib {
	void _kill_pointed() {
		delete $self;
	}
};
