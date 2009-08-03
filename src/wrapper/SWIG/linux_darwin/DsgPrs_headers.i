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

#include<DsgPrs.hxx>
#include<DsgPrs_AnglePresentation.hxx>
#include<DsgPrs_ArrowSide.hxx>
#include<DsgPrs_Chamf2dPresentation.hxx>
#include<DsgPrs_ConcentricPresentation.hxx>
#include<DsgPrs_DatumPrs.hxx>
#include<DsgPrs_DatumTool.hxx>
#include<DsgPrs_DiameterPresentation.hxx>
#include<DsgPrs_EllipseRadiusPresentation.hxx>
#include<DsgPrs_EqualDistancePresentation.hxx>
#include<DsgPrs_EqualRadiusPresentation.hxx>
#include<DsgPrs_FilletRadiusPresentation.hxx>
#include<DsgPrs_FixPresentation.hxx>
#include<DsgPrs_IdenticPresentation.hxx>
#include<DsgPrs_LengthPresentation.hxx>
#include<DsgPrs_MidPointPresentation.hxx>
#include<DsgPrs_OffsetPresentation.hxx>
#include<DsgPrs_ParalPresentation.hxx>
#include<DsgPrs_PerpenPresentation.hxx>
#include<DsgPrs_RadiusPresentation.hxx>
#include<DsgPrs_ShadedPlanePresentation.hxx>
#include<DsgPrs_ShapeDirPresentation.hxx>
#include<DsgPrs_SymbPresentation.hxx>
#include<DsgPrs_SymmetricPresentation.hxx>
#include<DsgPrs_TangentPresentation.hxx>
#include<DsgPrs_XYZAxisPresentation.hxx>
#include<DsgPrs_XYZPlanePresentation.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Prs3d_Presentation.hxx>
#include<Handle_Prs3d_Drawer.hxx>
#include<TCollection_ExtendedString.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<Handle_Geom_TrimmedCurve.hxx>
#include<gp_Ax2.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<TopoDS_Shape.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_OffsetCurve.hxx>
#include<Handle_Geom_Plane.hxx>
#include<gp_Ax1.hxx>
#include<DsgPrs.hxx>
#include<Handle_Prs3d_AngleAspect.hxx>
#include<Handle_Prs3d_LengthAspect.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Prs3d_LineAspect.hxx>
#include<Handle_Prs3d_ArrowAspect.hxx>
#include<Handle_Prs3d_TextAspect.hxx>
#include<gp_Lin.hxx>
%}
