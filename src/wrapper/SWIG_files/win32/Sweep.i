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

%module Sweep
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Sweep_renames.i


%include Sweep_required_python_modules.i


%include Sweep_dependencies.i


%include Sweep_headers.i




%nodefaultctor Sweep_NumShape;
class Sweep_NumShape {
	public:
		%feature("autodoc", "1");
		Sweep_NumShape();
		%feature("autodoc", "1");
		Sweep_NumShape(const Standard_Integer Index, const TopAbs_ShapeEnum Type, const Standard_Boolean Closed=0, const Standard_Boolean BegInf=0, const Standard_Boolean EndInf=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer Index, const TopAbs_ShapeEnum Type, const Standard_Boolean Closed=0, const Standard_Boolean BegInf=0, const Standard_Boolean EndInf=0);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type() const;
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		Standard_Boolean BegInfinite() const;
		%feature("autodoc", "1");
		Standard_Boolean EndInfinite() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;

};
%feature("shadow") Sweep_NumShape::~Sweep_NumShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sweep_NumShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sweep_NumShapeTool;
class Sweep_NumShapeTool {
	public:
		%feature("autodoc", "1");
		Sweep_NumShapeTool(const Sweep_NumShape &aShape);
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Sweep_NumShape &aShape) const;
		%feature("autodoc", "1");
		Sweep_NumShape Shape(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum Type(const Sweep_NumShape &aShape) const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const Sweep_NumShape &aShape) const;
		%feature("autodoc", "1");
		Standard_Boolean HasFirstVertex() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLastVertex() const;
		%feature("autodoc", "1");
		Sweep_NumShape FirstVertex() const;
		%feature("autodoc", "1");
		Sweep_NumShape LastVertex() const;

};
%feature("shadow") Sweep_NumShapeTool::~Sweep_NumShapeTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sweep_NumShapeTool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Sweep_NumShapeIterator;
class Sweep_NumShapeIterator {
	public:
		%feature("autodoc", "1");
		Sweep_NumShapeIterator();
		%feature("autodoc", "1");
		void Init(const Sweep_NumShape &aShape);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Sweep_NumShape & Value() const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;

};
%feature("shadow") Sweep_NumShapeIterator::~Sweep_NumShapeIterator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Sweep_NumShapeIterator {
	void _kill_pointed() {
		delete $self;
	}
};
