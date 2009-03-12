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
along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

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
