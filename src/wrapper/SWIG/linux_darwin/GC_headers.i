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

#include<GC_MakeArcOfCircle.hxx>
#include<GC_MakeArcOfEllipse.hxx>
#include<GC_MakeArcOfHyperbola.hxx>
#include<GC_MakeArcOfParabola.hxx>
#include<GC_MakeCircle.hxx>
#include<GC_MakeConicalSurface.hxx>
#include<GC_MakeCylindricalSurface.hxx>
#include<GC_MakeEllipse.hxx>
#include<GC_MakeHyperbola.hxx>
#include<GC_MakeLine.hxx>
#include<GC_MakeMirror.hxx>
#include<GC_MakePlane.hxx>
#include<GC_MakeRotation.hxx>
#include<GC_MakeScale.hxx>
#include<GC_MakeSegment.hxx>
#include<GC_MakeTranslation.hxx>
#include<GC_MakeTrimmedCone.hxx>
#include<GC_MakeTrimmedCylinder.hxx>
#include<GC_Root.hxx>

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
#include<GCPnts_AbscissaPoint.hxx>
#include<GCPnts_AbscissaType.hxx>
#include<GCPnts_DeflectionType.hxx>
#include<GCPnts_QuasiUniformAbscissa.hxx>
#include<GCPnts_QuasiUniformDeflection.hxx>
#include<GCPnts_TangentialDeflection.hxx>
#include<GCPnts_UniformAbscissa.hxx>
#include<GCPnts_UniformDeflection.hxx>

// Needed headers necessary for compilation.

#include<gp_Elips.hxx>
#include<gp_Ax2.hxx>
#include<gp_Pnt.hxx>
#include<gp_Cone.hxx>
#include<gp_Ax1.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Vec.hxx>
#include<gp_Hypr.hxx>
#include<gp_Dir.hxx>
#include<gp_Pln.hxx>
#include<gp_Parab.hxx>
#include<gp_Cylinder.hxx>
%}
