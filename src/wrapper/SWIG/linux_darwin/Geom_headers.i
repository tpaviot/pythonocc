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

// Additional headers necessary for compilation.

#include<BRepFill.hxx>
#include<BRepFill_ACRLaw.hxx>
#include<BRepFill_ApproxSeewing.hxx>
#include<BRepFill_CompatibleWires.hxx>
#include<BRepFill_ComputeCLine.hxx>
#include<BRepFill_CurveConstraint.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfNodeShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfNodeShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepFill_DataMapOfNodeDataMapOfShapeShape.hxx>
#include<BRepFill_DataMapOfNodeShape.hxx>
#include<BRepFill_DataMapOfOrientedShapeListOfShape.hxx>
#include<BRepFill_DataMapOfShapeDataMapOfShapeListOfShape.hxx>
#include<BRepFill_DataMapOfShapeSequenceOfPnt.hxx>
#include<BRepFill_DataMapOfShapeSequenceOfReal.hxx>
#include<BRepFill_DataMapOfShapeSequenceOfShape.hxx>
#include<BRepFill_Draft.hxx>
#include<BRepFill_DraftLaw.hxx>
#include<BRepFill_Edge3DLaw.hxx>
#include<BRepFill_EdgeFaceAndOrder.hxx>
#include<BRepFill_EdgeOnSurfLaw.hxx>
#include<BRepFill_Evolved.hxx>
#include<BRepFill_FaceAndOrder.hxx>
#include<BRepFill_Filling.hxx>
#include<BRepFill_Generator.hxx>
#include<BRepFill_ListIteratorOfListOfOffsetWire.hxx>
#include<BRepFill_ListNodeOfListOfOffsetWire.hxx>
#include<BRepFill_ListOfOffsetWire.hxx>
#include<BRepFill_LocationLaw.hxx>
#include<BRepFill_MultiLine.hxx>
#include<BRepFill_MultiLineTool.hxx>
#include<BRepFill_MyLeastSquareOfComputeCLine.hxx>
#include<BRepFill_NSections.hxx>
#include<BRepFill_OffsetAncestors.hxx>
#include<BRepFill_OffsetWire.hxx>
#include<BRepFill_Pipe.hxx>
#include<BRepFill_PipeShell.hxx>
#include<BRepFill_Section.hxx>
#include<BRepFill_SectionLaw.hxx>
#include<BRepFill_SectionPlacement.hxx>
#include<BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder.hxx>
#include<BRepFill_SequenceNodeOfSequenceOfFaceAndOrder.hxx>
#include<BRepFill_SequenceNodeOfSequenceOfSection.hxx>
#include<BRepFill_SequenceOfEdgeFaceAndOrder.hxx>
#include<BRepFill_SequenceOfFaceAndOrder.hxx>
#include<BRepFill_SequenceOfSection.hxx>
#include<BRepFill_ShapeLaw.hxx>
#include<BRepFill_Sweep.hxx>
#include<BRepFill_TransitionStyle.hxx>
#include<BRepFill_TrimEdgeTool.hxx>
#include<BRepFill_TrimShellCorner.hxx>
#include<BRepFill_TrimSurfaceTool.hxx>
#include<BRepFilletAPI_LocalOperation.hxx>
#include<BRepFilletAPI_MakeChamfer.hxx>
#include<BRepFilletAPI_MakeFillet.hxx>
#include<BRepFilletAPI_MakeFillet2d.hxx>
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

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Vec.hxx>
#include<gp_Trsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Dir.hxx>
#include<gp_Circ.hxx>
#include<Standard_SStream.hxx>
#include<gp_Lin.hxx>
#include<gp_Ax3.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Sphere.hxx>
#include<gp_Cone.hxx>
#include<gp_Elips.hxx>
#include<gp_Torus.hxx>
#include<gp_Pln.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<gp_Parab.hxx>
#include<gp_Hypr.hxx>
%}
