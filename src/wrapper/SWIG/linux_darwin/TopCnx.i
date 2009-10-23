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
%module TopCnx

%include TopCnx_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include TopCnx_dependencies.i


%include TopCnx_headers.i




%nodefaultctor TopCnx_EdgeFaceTransition;
class TopCnx_EdgeFaceTransition {
	public:
		%feature("autodoc", "1");
		TopCnx_EdgeFaceTransition();
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt, const gp_Dir &Norm, const Standard_Real Curv);
		%feature("autodoc", "1");
		void Reset(const gp_Dir &Tgt);
		%feature("autodoc", "1");
		void AddInterference(const Standard_Real Tole, const gp_Dir &Tang, const gp_Dir &Norm, const Standard_Real Curv, const TopAbs_Orientation Or, const TopAbs_Orientation Tr, const TopAbs_Orientation BTr);
		%feature("autodoc", "1");
		TopAbs_Orientation Transition() const;
		%feature("autodoc", "1");
		TopAbs_Orientation BoundaryTransition() const;

};
%feature("shadow") TopCnx_EdgeFaceTransition::~TopCnx_EdgeFaceTransition %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
