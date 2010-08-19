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

#include<BndLib.hxx>
#include<BndLib_Add2dCurve.hxx>
#include<BndLib_Add3dCurve.hxx>
#include<BndLib_AddSurface.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Adaptor3d_Surface.hxx>
#include<Bnd_Box.hxx>
#include<Adaptor3d_Curve.hxx>
#include<BndLib.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<Bnd_Box2d.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<Adaptor2d_Curve2d.hxx>
%}
