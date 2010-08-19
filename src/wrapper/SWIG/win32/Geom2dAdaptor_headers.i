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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Geom2dAdaptor.hxx>
#include<Geom2dAdaptor_Curve.hxx>
#include<Geom2dAdaptor_GHCurve.hxx>
#include<Geom2dAdaptor_HCurve.hxx>
#include<Handle_Geom2dAdaptor_GHCurve.hxx>
#include<Handle_Geom2dAdaptor_HCurve.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Geom2dAdaptor.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Adaptor2d_Curve2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
%}
