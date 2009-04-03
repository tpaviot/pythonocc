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

#include<GeomPlate_Aij.hxx>
#include<GeomPlate_Array1OfHCurveOnSurface.hxx>
#include<GeomPlate_Array1OfSequenceOfReal.hxx>
#include<GeomPlate_BuildAveragePlane.hxx>
#include<GeomPlate_BuildPlateSurface.hxx>
#include<GeomPlate_CurveConstraint.hxx>
#include<GeomPlate_HArray1OfHCurveOnSurface.hxx>
#include<GeomPlate_HArray1OfSequenceOfReal.hxx>
#include<GeomPlate_HSequenceOfCurveConstraint.hxx>
#include<GeomPlate_HSequenceOfPointConstraint.hxx>
#include<GeomPlate_MakeApprox.hxx>
#include<GeomPlate_PlateG0Criterion.hxx>
#include<GeomPlate_PlateG1Criterion.hxx>
#include<GeomPlate_PointConstraint.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfAij.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfCurveConstraint.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfPointConstraint.hxx>
#include<GeomPlate_SequenceOfAij.hxx>
#include<GeomPlate_SequenceOfCurveConstraint.hxx>
#include<GeomPlate_SequenceOfPointConstraint.hxx>
#include<GeomPlate_Surface.hxx>
#include<Handle_GeomPlate_CurveConstraint.hxx>
#include<Handle_GeomPlate_HArray1OfHCurveOnSurface.hxx>
#include<Handle_GeomPlate_HArray1OfSequenceOfReal.hxx>
#include<Handle_GeomPlate_HSequenceOfCurveConstraint.hxx>
#include<Handle_GeomPlate_HSequenceOfPointConstraint.hxx>
#include<Handle_GeomPlate_PointConstraint.hxx>
#include<Handle_GeomPlate_SequenceNodeOfSequenceOfAij.hxx>
#include<Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint.hxx>
#include<Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint.hxx>
#include<Handle_GeomPlate_Surface.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Adaptor3d_HCurveOnSurface.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Law_Function.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_Geom_Line.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Plate_Plate.hxx>
#include<gp_Trsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_Geometry.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<AdvApp2Var_Patch.hxx>
#include<AdvApp2Var_Context.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColGeom2d_HArray1OfCurve.hxx>
#include<gp_Pnt2d.hxx>
#include<AdvApp2Var_Criterion.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
%}
