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

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<Geom2dGcc.hxx>
#include<Geom2dGcc_Circ2d2TanOn.hxx>
#include<Geom2dGcc_Circ2d2TanRad.hxx>
#include<Geom2dGcc_Circ2d3Tan.hxx>
#include<Geom2dGcc_Circ2dTanCen.hxx>
#include<Geom2dGcc_Circ2dTanOnRad.hxx>
#include<Geom2dGcc_CurveTool.hxx>
#include<Geom2dGcc_FuncTCirCuOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTCuCuCuOfMyC2d3Tan.hxx>
#include<Geom2dGcc_FuncTCuCuOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn.hxx>
#include<Geom2dGcc_FuncTCuPtOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTOblOfMyL2dTanObl.hxx>
#include<Geom2dGcc_Lin2d2Tan.hxx>
#include<Geom2dGcc_Lin2dTanObl.hxx>
#include<Geom2dGcc_MyC2d2TanOn.hxx>
#include<Geom2dGcc_MyC2d3Tan.hxx>
#include<Geom2dGcc_MyCirc2d2TanOn.hxx>
#include<Geom2dGcc_MyCirc2d2TanRad.hxx>
#include<Geom2dGcc_MyCirc2dTanCen.hxx>
#include<Geom2dGcc_MyCirc2dTanOnRad.hxx>
#include<Geom2dGcc_MyCurveTool.hxx>
#include<Geom2dGcc_MyL2d2Tan.hxx>
#include<Geom2dGcc_MyL2dTanObl.hxx>
#include<Geom2dGcc_MyQCurve.hxx>
#include<Geom2dGcc_QualifiedCurve.hxx>

// Additional headers necessary for compilation.

#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Geom2dAdaptor_Curve.hxx>
#include<Handle_Geom2d_Point.hxx>
#include<GccAna_Circ2d2TanOn.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Dir2d.hxx>
#include<math_Vector.hxx>
#include<gp_Vec2d.hxx>
#include<math_Matrix.hxx>
#include<GccAna_Circ2d3Tan.hxx>
#include<Adaptor3d_OffsetCurve.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr2d.hxx>
#include<GccEnt_QualifiedCirc.hxx>
#include<GccEnt_QualifiedLin.hxx>
#include<GccAna_Circ2d2TanRad.hxx>
#include<GccAna_Circ2dTanOnRad.hxx>
#include<Geom2dGcc.hxx>
%}
