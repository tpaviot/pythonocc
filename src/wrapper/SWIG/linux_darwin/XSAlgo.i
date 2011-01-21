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

%module XSAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XSAlgo_renames.i


%include XSAlgo_required_python_modules.i


%include XSAlgo_dependencies.i


%include XSAlgo_headers.i


enum XSAlgo_Caller {
	XSAlgo_DEFAULT,
	XSAlgo_IGES,
	XSAlgo_STEP,
	};



%nodefaultctor Handle_XSAlgo_ToolContainer;
class Handle_XSAlgo_ToolContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer();
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer(const Handle_XSAlgo_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer(const XSAlgo_ToolContainer *anItem);
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer & operator=(const Handle_XSAlgo_ToolContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_ToolContainer & operator=(const XSAlgo_ToolContainer *anItem);
		%feature("autodoc", "1");
		static		Handle_XSAlgo_ToolContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSAlgo_ToolContainer {
	XSAlgo_ToolContainer* GetObject() {
	return (XSAlgo_ToolContainer*)$self->Access();
	}
};
%feature("shadow") Handle_XSAlgo_ToolContainer::~Handle_XSAlgo_ToolContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSAlgo_ToolContainer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSAlgo_AlgoContainer;
class Handle_XSAlgo_AlgoContainer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer();
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer(const Handle_XSAlgo_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer(const XSAlgo_AlgoContainer *anItem);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer & operator=(const Handle_XSAlgo_AlgoContainer &aHandle);
		%feature("autodoc", "1");
		Handle_XSAlgo_AlgoContainer & operator=(const XSAlgo_AlgoContainer *anItem);
		%feature("autodoc", "1");
		static		Handle_XSAlgo_AlgoContainer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XSAlgo_AlgoContainer {
	XSAlgo_AlgoContainer* GetObject() {
	return (XSAlgo_AlgoContainer*)$self->Access();
	}
};
%feature("shadow") Handle_XSAlgo_AlgoContainer::~Handle_XSAlgo_AlgoContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSAlgo_AlgoContainer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSAlgo;
class XSAlgo {
	public:
		%feature("autodoc", "1");
		XSAlgo();
		%feature("autodoc", "1");
		static		void Init();
		%feature("autodoc", "1");
		static		void SetAlgoContainer(const Handle_XSAlgo_AlgoContainer &aContainer);
		%feature("autodoc", "1");
		static		Handle_XSAlgo_AlgoContainer AlgoContainer();

};
%feature("shadow") XSAlgo::~XSAlgo %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSAlgo {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSAlgo_ToolContainer;
class XSAlgo_ToolContainer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XSAlgo_ToolContainer();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSAlgo_ToolContainer {
	Handle_XSAlgo_ToolContainer GetHandle() {
	return *(Handle_XSAlgo_ToolContainer*) &$self;
	}
};
%extend XSAlgo_ToolContainer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSAlgo_ToolContainer::~XSAlgo_ToolContainer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSAlgo_ToolContainer {
	void _kill_pointed() {
		delete $self;
	}
};
