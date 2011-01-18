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
%{

// Headers necessary to define wrapped classes.

#include<GCPnts_AbscissaPoint.hxx>
#include<GCPnts_AbscissaType.hxx>
#include<GCPnts_DeflectionType.hxx>
#include<GCPnts_QuasiUniformAbscissa.hxx>
#include<GCPnts_QuasiUniformDeflection.hxx>
#include<GCPnts_TangentialDeflection.hxx>
#include<GCPnts_UniformAbscissa.hxx>
#include<GCPnts_UniformDeflection.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Adaptor3d_Curve.hxx>
#include<Adaptor2d_Curve2d.hxx>
#include<gp_Pnt.hxx>
%}
