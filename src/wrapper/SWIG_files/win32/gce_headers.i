/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<gce_ErrorType.hxx>
#include<gce_MakeCirc.hxx>
#include<gce_MakeCirc2d.hxx>
#include<gce_MakeCone.hxx>
#include<gce_MakeCylinder.hxx>
#include<gce_MakeDir.hxx>
#include<gce_MakeDir2d.hxx>
#include<gce_MakeElips.hxx>
#include<gce_MakeElips2d.hxx>
#include<gce_MakeHypr.hxx>
#include<gce_MakeHypr2d.hxx>
#include<gce_MakeLin.hxx>
#include<gce_MakeLin2d.hxx>
#include<gce_MakeMirror.hxx>
#include<gce_MakeMirror2d.hxx>
#include<gce_MakeParab.hxx>
#include<gce_MakeParab2d.hxx>
#include<gce_MakePln.hxx>
#include<gce_MakeRotation.hxx>
#include<gce_MakeRotation2d.hxx>
#include<gce_MakeScale.hxx>
#include<gce_MakeScale2d.hxx>
#include<gce_MakeTranslation.hxx>
#include<gce_MakeTranslation2d.hxx>
#include<gce_Root.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<gp_Ax2d.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Ax1.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Ax2.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Circ.hxx>
#include<gp_Pln.hxx>
#include<gp_Vec.hxx>
#include<gp_XYZ.hxx>
#include<gp_Vec2d.hxx>
#include<gp_XY.hxx>
#include<gp_Cone.hxx>
%}
