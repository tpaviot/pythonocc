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

%module IntImpParGen
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IntImpParGen_renames.i


%include IntImpParGen_required_python_modules.i


%include IntImpParGen_dependencies.i


%include IntImpParGen_headers.i




%nodefaultctor IntImpParGen;
class IntImpParGen {
	public:
		%feature("autodoc", "1");
		IntImpParGen();
		%feature("autodoc", "1");
		static		void DetermineTransition(const IntRes2d_Position Pos1, gp_Vec2d & Tan1, const gp_Vec2d &Norm1, IntRes2d_Transition & Trans1, const IntRes2d_Position Pos2, gp_Vec2d & Tan2, const gp_Vec2d &Norm2, IntRes2d_Transition & Trans2, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		Standard_Boolean DetermineTransition(const IntRes2d_Position Pos1, gp_Vec2d & Tan1, IntRes2d_Transition & Trans1, const IntRes2d_Position Pos2, gp_Vec2d & Tan2, IntRes2d_Transition & Trans2, const Standard_Real Tol);
		%feature("autodoc", "1");
		static		void DeterminePosition(IntRes2d_Position & Pos1, const IntRes2d_Domain &Dom1, const gp_Pnt2d &P1, const Standard_Real Tol);
		%feature("autodoc","NormalizeOnDomain(const Dom1) -> Standard_Real");

		static		Standard_Real NormalizeOnDomain(Standard_Real &OutValue, const IntRes2d_Domain &Dom1);

};
%feature("shadow") IntImpParGen::~IntImpParGen %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IntImpParGen {
	void _kill_pointed() {
		delete $self;
	}
};
