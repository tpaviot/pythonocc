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

%module MeshDS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MeshDS_renames.i


%include MeshDS_required_python_modules.i


%include MeshDS_dependencies.i


%include MeshDS_headers.i

typedef Handle_NCollection_IncAllocator MeshDS_BaseAllocator;
typedef NCollection_List<int> MeshDS_ListOfInteger;
typedef NCollection_Map<int> MeshDS_MapOfInteger;
typedef NCollection_DataMap<int,int> MeshDS_MapOfIntegerInteger;

enum MeshDS_DegreeOfFreedom {
	MeshDS_Free,
	MeshDS_InVolume,
	MeshDS_OnSurface,
	MeshDS_OnCurve,
	MeshDS_Fixed,
	MeshDS_Frontier,
	MeshDS_Deleted,
	};



%nodefaultctor MeshDS_PairOfIndex;
class MeshDS_PairOfIndex {
	public:
		%feature("autodoc", "1");
		MeshDS_PairOfIndex();
		%feature("autodoc", "1");
		MeshDS_PairOfIndex(const MeshDS_PairOfIndex &theOther);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_Integer theIndx);
		%feature("autodoc", "1");
		void Prepend(const Standard_Integer theIndx);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Integer FirstIndex() const;
		%feature("autodoc", "1");
		Standard_Integer LastIndex() const;
		%feature("autodoc", "1");
		Standard_Integer Index(const Standard_Integer theNum) const;
		%feature("autodoc", "1");
		void SetIndex(const Standard_Integer theNum, const Standard_Integer theIndex);
		%feature("autodoc", "1");
		void RemoveIndex(const Standard_Integer theNum);

};
%feature("shadow") MeshDS_PairOfIndex::~MeshDS_PairOfIndex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshDS_PairOfIndex {
	void _kill_pointed() {
		delete $self;
	}
};
