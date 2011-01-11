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

#include<GeomAbs_BSplKnotDistribution.hxx>
#include<GeomAbs_IsoType.hxx>
#include<GeomAbs_Shape.hxx>
#include<Geom_Axis1Placement.hxx>
#include<Geom_Axis2Placement.hxx>
#include<Geom_AxisPlacement.hxx>
#include<Geom_BSplineCurve.hxx>
#include<Geom_BSplineSurface.hxx>
#include<Geom_BezierCurve.hxx>
#include<Geom_BezierSurface.hxx>
#include<Geom_BoundedCurve.hxx>
#include<Geom_BoundedSurface.hxx>
#include<Geom_CartesianPoint.hxx>
#include<Geom_Circle.hxx>
#include<Geom_Conic.hxx>
#include<Geom_ConicalSurface.hxx>
#include<Geom_Curve.hxx>
#include<Geom_CylindricalSurface.hxx>
#include<Geom_Direction.hxx>
#include<Geom_ElementarySurface.hxx>
#include<Geom_Ellipse.hxx>
#include<Geom_Geometry.hxx>
#include<Geom_HSequenceOfBSplineSurface.hxx>
#include<Geom_HSequenceOfSurface.hxx>
#include<Geom_Hyperbola.hxx>
#include<Geom_Line.hxx>
#include<Geom_OffsetCurve.hxx>
#include<Geom_OffsetSurface.hxx>
#include<Geom_OsculatingSurface.hxx>
#include<Geom_Parabola.hxx>
#include<Geom_Plane.hxx>
#include<Geom_Point.hxx>
#include<Geom_RectangularTrimmedSurface.hxx>
#include<Geom_SequenceNodeOfSequenceOfBSplineSurface.hxx>
#include<Geom_SequenceNodeOfSequenceOfSurface.hxx>
#include<Geom_SequenceOfBSplineSurface.hxx>
#include<Geom_SequenceOfSurface.hxx>
#include<Geom_SphericalSurface.hxx>
#include<Geom_Surface.hxx>
#include<Geom_SurfaceOfLinearExtrusion.hxx>
#include<Geom_SurfaceOfRevolution.hxx>
#include<Geom_SweptSurface.hxx>
#include<Geom_ToroidalSurface.hxx>
#include<Geom_Transformation.hxx>
#include<Geom_TrimmedCurve.hxx>
#include<Geom_UndefinedDerivative.hxx>
#include<Geom_UndefinedValue.hxx>
#include<Geom_Vector.hxx>
#include<Geom_VectorWithMagnitude.hxx>
#include<Handle_Geom_Axis1Placement.hxx>
#include<Handle_Geom_Axis2Placement.hxx>
#include<Handle_Geom_AxisPlacement.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<Handle_Geom_CartesianPoint.hxx>
#include<Handle_Geom_Circle.hxx>
#include<Handle_Geom_Conic.hxx>
#include<Handle_Geom_ConicalSurface.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_CylindricalSurface.hxx>
#include<Handle_Geom_Direction.hxx>
#include<Handle_Geom_ElementarySurface.hxx>
#include<Handle_Geom_Ellipse.hxx>
#include<Handle_Geom_Geometry.hxx>
#include<Handle_Geom_HSequenceOfBSplineSurface.hxx>
#include<Handle_Geom_HSequenceOfSurface.hxx>
#include<Handle_Geom_Hyperbola.hxx>
#include<Handle_Geom_Line.hxx>
#include<Handle_Geom_OffsetCurve.hxx>
#include<Handle_Geom_OffsetSurface.hxx>
#include<Handle_Geom_Parabola.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_Geom_Point.hxx>
#include<Handle_Geom_RectangularTrimmedSurface.hxx>
#include<Handle_Geom_SequenceNodeOfSequenceOfBSplineSurface.hxx>
#include<Handle_Geom_SequenceNodeOfSequenceOfSurface.hxx>
#include<Handle_Geom_SphericalSurface.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_Geom_SurfaceOfRevolution.hxx>
#include<Handle_Geom_SweptSurface.hxx>
#include<Handle_Geom_ToroidalSurface.hxx>
#include<Handle_Geom_Transformation.hxx>
#include<Handle_Geom_TrimmedCurve.hxx>
#include<Handle_Geom_UndefinedDerivative.hxx>
#include<Handle_Geom_UndefinedValue.hxx>
#include<Handle_Geom_Vector.hxx>
#include<Handle_Geom_VectorWithMagnitude.hxx>
#include<Handle_MMgt_TShared.hxx>
#include<Handle_Standard_DomainError.hxx>
#include<Handle_Standard_Transient.hxx>
#include<Handle_Standard_Type.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_TColStd_HSequenceOfInteger.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<Handle_TColgp_HArray2OfPnt.hxx>
#include<Handle_TCollection_SeqNode.hxx>
#include<MMgt_TShared.hxx>
#include<Standard_Boolean.hxx>
#include<Standard_DomainError.hxx>
#include<Standard_Integer.hxx>
#include<Standard_Real.hxx>
#include<Standard_SStream.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Elips.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Lin.hxx>
#include<gp_Parab.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
%};