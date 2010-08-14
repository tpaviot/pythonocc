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
%module PFunction
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include PFunction_dependencies.i


%include PFunction_headers.i




%nodefaultctor Handle_PFunction_Function;
class Handle_PFunction_Function : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PFunction_Function();
		%feature("autodoc", "1");
		Handle_PFunction_Function(const Handle_PFunction_Function &aHandle);
		%feature("autodoc", "1");
		Handle_PFunction_Function(const PFunction_Function *anItem);
		%feature("autodoc", "1");
		Handle_PFunction_Function & operator=(const Handle_PFunction_Function &aHandle);
		%feature("autodoc", "1");
		Handle_PFunction_Function & operator=(const PFunction_Function *anItem);
		%feature("autodoc", "1");
		static		Handle_PFunction_Function const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PFunction_Function {
	PFunction_Function* GetObject() {
	return (PFunction_Function*)$self->Access();
	}
};
%feature("shadow") Handle_PFunction_Function::~Handle_PFunction_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PFunction_Function {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PFunction_Function;
class PFunction_Function : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PFunction_Function();
		%feature("autodoc", "1");
		void SetDriverGUID(const Standard_GUID &driverGUID);
		%feature("autodoc", "1");
		Standard_GUID GetDriverGUID() const;
		%feature("autodoc", "1");
		Standard_Integer GetFailure() const;
		%feature("autodoc", "1");
		void SetFailure(const Standard_Integer mode);
		%feature("autodoc", "1");
		PFunction_Function(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const Standard_GUID & _CSFDB_GetPFunction_FunctionmyDriverGUID() const;
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPFunction_FunctionmyFailure() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPFunction_FunctionmyFailure(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PFunction_Function {
	Handle_PFunction_Function GetHandle() {
	return *(Handle_PFunction_Function*) &$self;
	}
};
%extend PFunction_Function {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PFunction_Function::~PFunction_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PFunction_Function {
	void _kill_pointed() {
		delete $self;
	}
};
