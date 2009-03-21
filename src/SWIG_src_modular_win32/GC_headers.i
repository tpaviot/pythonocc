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
#include<GccAna_Circ2d2TanOn.hxx>
#include<GccAna_Circ2d2TanRad.hxx>
#include<GccAna_Circ2d3Tan.hxx>
#include<GccAna_Circ2dBisec.hxx>
#include<GccAna_Circ2dTanCen.hxx>
#include<GccAna_Circ2dTanOnRad.hxx>
#include<GccAna_CircLin2dBisec.hxx>
#include<GccAna_CircPnt2dBisec.hxx>
#include<GccAna_Lin2d2Tan.hxx>
#include<GccAna_Lin2dBisec.hxx>
#include<GccAna_Lin2dTanObl.hxx>
#include<GccAna_Lin2dTanPar.hxx>
#include<GccAna_Lin2dTanPer.hxx>
#include<GccAna_LinPnt2dBisec.hxx>
#include<GccAna_NoSolution.hxx>
#include<GccAna_Pnt2dBisec.hxx>
#include<GccEnt.hxx>
#include<GccEnt_Array1OfPosition.hxx>
#include<GccEnt_BadQualifier.hxx>
#include<GccEnt_Position.hxx>
#include<GccEnt_QualifiedCirc.hxx>
#include<GccEnt_QualifiedLin.hxx>
#include<GccInt_BCirc.hxx>
#include<GccInt_BElips.hxx>
#include<GccInt_BHyper.hxx>
#include<GccInt_BLine.hxx>
#include<GccInt_BParab.hxx>
#include<GccInt_BPoint.hxx>
#include<GccInt_Bisec.hxx>
#include<GccInt_IType.hxx>
#include<GccIter_IsParallel.hxx>
#include<GccIter_Type1.hxx>
#include<GccIter_Type2.hxx>
#include<GccIter_Type3.hxx>
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

#include<gp_Elips.hxx>
#include<gp_Ax2.hxx>
#include<gp_Pnt.hxx>
#include<gp_Cone.hxx>
#include<gp_Ax1.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir.hxx>
#include<gp_Hypr.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Parab.hxx>
%}
