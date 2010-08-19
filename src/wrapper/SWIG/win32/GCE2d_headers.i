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

#include<GCE2d_MakeArcOfCircle.hxx>
#include<GCE2d_MakeArcOfEllipse.hxx>
#include<GCE2d_MakeArcOfHyperbola.hxx>
#include<GCE2d_MakeArcOfParabola.hxx>
#include<GCE2d_MakeCircle.hxx>
#include<GCE2d_MakeEllipse.hxx>
#include<GCE2d_MakeHyperbola.hxx>
#include<GCE2d_MakeLine.hxx>
#include<GCE2d_MakeMirror.hxx>
#include<GCE2d_MakeParabola.hxx>
#include<GCE2d_MakeRotation.hxx>
#include<GCE2d_MakeScale.hxx>
#include<GCE2d_MakeSegment.hxx>
#include<GCE2d_MakeTranslation.hxx>
#include<GCE2d_Root.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<gp_Ax2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Elips2d.hxx>
%}
