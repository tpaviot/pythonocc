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

#include<Handle_ProjLib_HCompProjectedCurve.hxx>
#include<Handle_ProjLib_HProjectedCurve.hxx>
#include<Handle_ProjLib_HSequenceOfHSequenceOfPnt.hxx>
#include<Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib.hxx>
#include<ProjLib_CompProjectedCurve.hxx>
#include<ProjLib_ComputeApprox.hxx>
#include<ProjLib_ComputeApproxOnPolarSurface.hxx>
#include<ProjLib_Cone.hxx>
#include<ProjLib_Cylinder.hxx>
#include<ProjLib_HCompProjectedCurve.hxx>
#include<ProjLib_HProjectedCurve.hxx>
#include<ProjLib_HSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_Plane.hxx>
#include<ProjLib_PrjFunc.hxx>
#include<ProjLib_PrjResolve.hxx>
#include<ProjLib_ProjectOnPlane.hxx>
#include<ProjLib_ProjectOnSurface.hxx>
#include<ProjLib_ProjectedCurve.hxx>
#include<ProjLib_Projector.hxx>
#include<ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_SequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_Sphere.hxx>
#include<ProjLib_Torus.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TColgp_HSequenceOfPnt.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Parab.hxx>
#include<gp_Hypr.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<ProjLib.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Cone.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_Surface.hxx>
#include<gp_Ax3.hxx>
#include<gp_Dir.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
%}
