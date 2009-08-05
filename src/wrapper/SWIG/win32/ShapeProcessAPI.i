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
%module ShapeProcessAPI

%include ShapeProcessAPI_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include ShapeProcessAPI_dependencies.i


%include ShapeProcessAPI_headers.i




%nodefaultctor ShapeProcessAPI_ApplySequence;
class ShapeProcessAPI_ApplySequence {
	public:
		%feature("autodoc", "1");
		ShapeProcessAPI_ApplySequence(const char * rscName, const char * seqName="");
		%feature("autodoc", "1");
		Handle_ShapeProcess_ShapeContext & Context();
		%feature("autodoc", "1");
		TopoDS_Shape PrepareShape(const TopoDS_Shape &shape, const Standard_Boolean fillmap=0, const TopAbs_ShapeEnum until=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void ClearMap();
		%feature("autodoc", "1");
		const TopTools_DataMapOfShapeShape & Map() const;
		%feature("autodoc", "1");
		void PrintPreparationResult() const;

};
%extend ShapeProcessAPI_ApplySequence {
	~ShapeProcessAPI_ApplySequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShapeProcessAPI_ApplySequence\n");}
	}
};
