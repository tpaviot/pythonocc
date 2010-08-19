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

%module IntStart
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntStart_renames.i


%include IntStart_required_python_modules.i


%include IntStart_dependencies.i


%include IntStart_headers.i




%nodefaultctor Handle_IntStart_SITopolTool;
class Handle_IntStart_SITopolTool : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool();
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool(const Handle_IntStart_SITopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool(const IntStart_SITopolTool *anItem);
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool & operator=(const Handle_IntStart_SITopolTool &aHandle);
		%feature("autodoc", "1");
		Handle_IntStart_SITopolTool & operator=(const IntStart_SITopolTool *anItem);
		%feature("autodoc", "1");
		static		Handle_IntStart_SITopolTool const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IntStart_SITopolTool {
	IntStart_SITopolTool* GetObject() {
	return (IntStart_SITopolTool*)$self->Access();
	}
};
%feature("shadow") Handle_IntStart_SITopolTool::~Handle_IntStart_SITopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IntStart_SITopolTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IntStart_SITopolTool;
class IntStart_SITopolTool : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_State Classify(const gp_Pnt2d &P, const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IntStart_SITopolTool {
	Handle_IntStart_SITopolTool GetHandle() {
	return *(Handle_IntStart_SITopolTool*) &$self;
	}
};
%extend IntStart_SITopolTool {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") IntStart_SITopolTool::~IntStart_SITopolTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntStart_SITopolTool {
	void _kill_pointed() {
		delete $self;
	}
};
