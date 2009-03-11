/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

#include<IntAna2d_AnaIntersection.hxx>
#include<IntAna2d_Conic.hxx>
#include<IntAna2d_IntPoint.hxx>
#include<IntAna2d_Outils.hxx>

// Additional headers necessary for compilation.

#include<IntAna2d_AnaIntersection.hxx>
#include<IntAna2d_Conic.hxx>
#include<IntAna2d_IntPoint.hxx>
#include<IntAna2d_Outils.hxx>

// Needed headers necessary for compilation.

#include<gp_Circ2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_XY.hxx>
#include<gp_Ax2d.hxx>
%}
