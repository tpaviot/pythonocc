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

%module GccIter
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GccIter_renames.i


%include GccIter_required_python_modules.i


%include GccIter_dependencies.i


%include GccIter_headers.i


enum GccIter_Type1 {
	GccIter_CuCuCu,
	GccIter_CiCuCu,
	GccIter_CiCiCu,
	GccIter_CiLiCu,
	GccIter_LiLiCu,
	GccIter_LiCuCu,
	};

enum GccIter_Type2 {
	GccIter_CuCuOnCu,
	GccIter_CiCuOnCu,
	GccIter_LiCuOnCu,
	GccIter_CuPtOnCu,
	GccIter_CuCuOnLi,
	GccIter_CiCuOnLi,
	GccIter_LiCuOnLi,
	GccIter_CuPtOnLi,
	GccIter_CuCuOnCi,
	GccIter_CiCuOnCi,
	GccIter_LiCuOnCi,
	GccIter_CuPtOnCi,
	};

enum GccIter_Type3 {
	GccIter_CuCu,
	GccIter_CiCu,
	};



%nodefaultctor Handle_GccIter_IsParallel;
class Handle_GccIter_IsParallel : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel();
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel(const Handle_GccIter_IsParallel &aHandle);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel(const GccIter_IsParallel *anItem);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel & operator=(const Handle_GccIter_IsParallel &aHandle);
		%feature("autodoc", "1");
		Handle_GccIter_IsParallel & operator=(const GccIter_IsParallel *anItem);
		%feature("autodoc", "1");
		static		Handle_GccIter_IsParallel DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccIter_IsParallel {
	GccIter_IsParallel* GetObject() {
	return (GccIter_IsParallel*)$self->Access();
	}
};
%feature("shadow") Handle_GccIter_IsParallel::~Handle_GccIter_IsParallel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GccIter_IsParallel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GccIter_IsParallel;
class GccIter_IsParallel : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		GccIter_IsParallel();
		%feature("autodoc", "1");
		GccIter_IsParallel(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_GccIter_IsParallel NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccIter_IsParallel {
	Handle_GccIter_IsParallel GetHandle() {
	return *(Handle_GccIter_IsParallel*) &$self;
	}
};
%extend GccIter_IsParallel {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GccIter_IsParallel::~GccIter_IsParallel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GccIter_IsParallel {
	void _kill_pointed() {
		delete $self;
	}
};
