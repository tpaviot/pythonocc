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

#include<Handle_IntAna_ListNodeOfListOfCurve.hxx>
#include<IntAna_Curve.hxx>
#include<IntAna_Int3Pln.hxx>
#include<IntAna_IntConicQuad.hxx>
#include<IntAna_IntLinTorus.hxx>
#include<IntAna_IntQuadQuad.hxx>
#include<IntAna_ListIteratorOfListOfCurve.hxx>
#include<IntAna_ListNodeOfListOfCurve.hxx>
#include<IntAna_ListOfCurve.hxx>
#include<IntAna_QuadQuadGeo.hxx>
#include<IntAna_Quadric.hxx>
#include<IntAna_ResultType.hxx>

// Additional headers necessary for compilation.

#include<IntAna2d_AnaIntersection.hxx>
#include<IntAna2d_Conic.hxx>
#include<IntAna2d_IntPoint.hxx>
#include<IntAna2d_Outils.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pln.hxx>
#include<gp_Sphere.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Ax3.hxx>
#include<gp_Pnt.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Parab.hxx>
#include<gp_Hypr.hxx>
#include<gp_Vec.hxx>
#include<gp_Torus.hxx>
%}
