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

%module MeshAlgo
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MeshAlgo_renames.i


%include MeshAlgo_required_python_modules.i


%include MeshAlgo_dependencies.i


%include MeshAlgo_headers.i

typedef NCollection_CellFilter<MeshAlgo_CircleInspector> MeshAlgo_CellFilter;



%nodefaultctor MeshAlgo_Circ;
class MeshAlgo_Circ {
	public:
		%feature("autodoc", "1");
		MeshAlgo_Circ();
		%feature("autodoc", "1");
		MeshAlgo_Circ(const gp_XY loc, const Standard_Real rad);
		%feature("autodoc", "1");
		void SetLocation(const gp_XY loc);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real rad);
		%feature("autodoc", "1");
		const gp_XY  Location() const;
		%feature("autodoc", "1");
		const Standard_Real & Radius() const;

};
%feature("shadow") MeshAlgo_Circ::~MeshAlgo_Circ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshAlgo_Circ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshAlgo_CircleTool;
class MeshAlgo_CircleTool {
	public:
		%feature("autodoc", "1");
		MeshAlgo_CircleTool(const MeshDS_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		MeshAlgo_CircleTool(const Standard_Integer numberOfComponents, const MeshDS_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer numberOfComponents);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theSize);
		%feature("autodoc", "1");
		void SetCellSize(const Standard_Real theXSize, const Standard_Real theYSize);
		%feature("autodoc", "1");
		void SetMinMaxSize(const gp_XY theMin, const gp_XY theMax);
		%feature("autodoc", "1");
		void Add(const gp_Circ2d theCirc, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		Standard_Boolean Add(const gp_XY p1, const gp_XY p2, const gp_XY p3, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void MocAdd(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void Delete(const Standard_Integer theIndex);
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & Select(const gp_XY thePnt);

};
%feature("shadow") MeshAlgo_CircleTool::~MeshAlgo_CircleTool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshAlgo_CircleTool {
	void _kill_pointed() {
		delete $self;
	}
};
