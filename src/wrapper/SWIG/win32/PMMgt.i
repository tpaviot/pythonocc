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
%module PMMgt

%include PMMgt_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include PMMgt_dependencies.i


%include PMMgt_headers.i




%nodefaultctor Handle_PMMgt_PManaged;
class Handle_PMMgt_PManaged : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PMMgt_PManaged();
		%feature("autodoc", "1");
		Handle_PMMgt_PManaged(const Handle_PMMgt_PManaged &aHandle);
		%feature("autodoc", "1");
		Handle_PMMgt_PManaged(const PMMgt_PManaged *anItem);
		%feature("autodoc", "1");
		Handle_PMMgt_PManaged & operator=(const Handle_PMMgt_PManaged &aHandle);
		%feature("autodoc", "1");
		Handle_PMMgt_PManaged & operator=(const PMMgt_PManaged *anItem);
		%feature("autodoc", "1");
		Handle_PMMgt_PManaged const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PMMgt_PManaged {
	PMMgt_PManaged* GetObject() {
	return (PMMgt_PManaged*)$self->Access();
	}
};
%feature("shadow") Handle_PMMgt_PManaged::~Handle_PMMgt_PManaged %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PMMgt_PManaged {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PMMgt_PManaged;
class PMMgt_PManaged : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PMMgt_PManaged(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PMMgt_PManaged {
	Handle_PMMgt_PManaged GetHandle() {
	return *(Handle_PMMgt_PManaged*) &$self;
	}
};
%extend PMMgt_PManaged {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PMMgt_PManaged::~PMMgt_PManaged %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PMMgt_PManaged {
	void _kill_pointed() {
		delete $self;
	}
};
