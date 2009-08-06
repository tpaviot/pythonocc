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
%module Precision

%include Precision_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Precision_dependencies.i


%include Precision_headers.i




%nodefaultctor Precision;
class Precision {
	public:
		%feature("autodoc", "1");
		Precision();
		%feature("autodoc", "1");
		Standard_Real Angular();
		%feature("autodoc", "1");
		Standard_Real Confusion();
		%feature("autodoc", "1");
		Standard_Real Intersection();
		%feature("autodoc", "1");
		Standard_Real Approximation();
		%feature("autodoc", "1");
		Standard_Real Parametric(const Standard_Real P, const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Real PConfusion(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Real PIntersection(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Real PApproximation(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Real Parametric(const Standard_Real P);
		%feature("autodoc", "1");
		Standard_Real PConfusion();
		%feature("autodoc", "1");
		Standard_Real PIntersection();
		%feature("autodoc", "1");
		Standard_Real PApproximation();
		%feature("autodoc", "1");
		Standard_Boolean IsInfinite(const Standard_Real R);
		%feature("autodoc", "1");
		Standard_Boolean IsPositiveInfinite(const Standard_Real R);
		%feature("autodoc", "1");
		Standard_Boolean IsNegativeInfinite(const Standard_Real R);
		%feature("autodoc", "1");
		Standard_Real Infinite();

};
%extend Precision {
	~Precision() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Precision\n");}
	}
};
