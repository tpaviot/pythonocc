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

%module PStandard
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PStandard_renames.i


%include PStandard_required_python_modules.i


%include PStandard_dependencies.i


%include PStandard_headers.i




%nodefaultctor Handle_PStandard_ArrayNode;
class Handle_PStandard_ArrayNode : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PStandard_ArrayNode();
		%feature("autodoc", "1");
		Handle_PStandard_ArrayNode(const Handle_PStandard_ArrayNode &aHandle);
		%feature("autodoc", "1");
		Handle_PStandard_ArrayNode(const PStandard_ArrayNode *anItem);
		%feature("autodoc", "1");
		Handle_PStandard_ArrayNode & operator=(const Handle_PStandard_ArrayNode &aHandle);
		%feature("autodoc", "1");
		Handle_PStandard_ArrayNode & operator=(const PStandard_ArrayNode *anItem);
		%feature("autodoc", "1");
		static		Handle_PStandard_ArrayNode DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PStandard_ArrayNode {
	PStandard_ArrayNode* GetObject() {
	return (PStandard_ArrayNode*)$self->Access();
	}
};
%feature("shadow") Handle_PStandard_ArrayNode::~Handle_PStandard_ArrayNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PStandard_ArrayNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PStandard_ArrayNode;
class PStandard_ArrayNode : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PStandard_ArrayNode();
		%feature("autodoc", "1");
		PStandard_ArrayNode(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PStandard_ArrayNode {
	Handle_PStandard_ArrayNode GetHandle() {
	return *(Handle_PStandard_ArrayNode*) &$self;
	}
};
%extend PStandard_ArrayNode {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") PStandard_ArrayNode::~PStandard_ArrayNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PStandard_ArrayNode {
	void _kill_pointed() {
		delete $self;
	}
};
