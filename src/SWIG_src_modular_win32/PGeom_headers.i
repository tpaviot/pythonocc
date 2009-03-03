/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_PGeom_Axis1Placement.hxx>
#include<Handle_PGeom_Axis2Placement.hxx>
#include<Handle_PGeom_AxisPlacement.hxx>
#include<Handle_PGeom_BSplineCurve.hxx>
#include<Handle_PGeom_BSplineSurface.hxx>
#include<Handle_PGeom_BezierCurve.hxx>
#include<Handle_PGeom_BezierSurface.hxx>
#include<Handle_PGeom_BoundedCurve.hxx>
#include<Handle_PGeom_BoundedSurface.hxx>
#include<Handle_PGeom_CartesianPoint.hxx>
#include<Handle_PGeom_Circle.hxx>
#include<Handle_PGeom_Conic.hxx>
#include<Handle_PGeom_ConicalSurface.hxx>
#include<Handle_PGeom_Curve.hxx>
#include<Handle_PGeom_CylindricalSurface.hxx>
#include<Handle_PGeom_Direction.hxx>
#include<Handle_PGeom_ElementarySurface.hxx>
#include<Handle_PGeom_Ellipse.hxx>
#include<Handle_PGeom_Geometry.hxx>
#include<Handle_PGeom_Hyperbola.hxx>
#include<Handle_PGeom_Line.hxx>
#include<Handle_PGeom_OffsetCurve.hxx>
#include<Handle_PGeom_OffsetSurface.hxx>
#include<Handle_PGeom_Parabola.hxx>
#include<Handle_PGeom_Plane.hxx>
#include<Handle_PGeom_Point.hxx>
#include<Handle_PGeom_RectangularTrimmedSurface.hxx>
#include<Handle_PGeom_SphericalSurface.hxx>
#include<Handle_PGeom_Surface.hxx>
#include<Handle_PGeom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_PGeom_SurfaceOfRevolution.hxx>
#include<Handle_PGeom_SweptSurface.hxx>
#include<Handle_PGeom_ToroidalSurface.hxx>
#include<Handle_PGeom_Transformation.hxx>
#include<Handle_PGeom_TrimmedCurve.hxx>
#include<Handle_PGeom_Vector.hxx>
#include<Handle_PGeom_VectorWithMagnitude.hxx>
#include<PGeom_Axis1Placement.hxx>
#include<PGeom_Axis2Placement.hxx>
#include<PGeom_AxisPlacement.hxx>
#include<PGeom_BSplineCurve.hxx>
#include<PGeom_BSplineSurface.hxx>
#include<PGeom_BezierCurve.hxx>
#include<PGeom_BezierSurface.hxx>
#include<PGeom_BoundedCurve.hxx>
#include<PGeom_BoundedSurface.hxx>
#include<PGeom_CartesianPoint.hxx>
#include<PGeom_Circle.hxx>
#include<PGeom_Conic.hxx>
#include<PGeom_ConicalSurface.hxx>
#include<PGeom_Curve.hxx>
#include<PGeom_CylindricalSurface.hxx>
#include<PGeom_Direction.hxx>
#include<PGeom_ElementarySurface.hxx>
#include<PGeom_Ellipse.hxx>
#include<PGeom_Geometry.hxx>
#include<PGeom_Hyperbola.hxx>
#include<PGeom_Line.hxx>
#include<PGeom_OffsetCurve.hxx>
#include<PGeom_OffsetSurface.hxx>
#include<PGeom_Parabola.hxx>
#include<PGeom_Plane.hxx>
#include<PGeom_Point.hxx>
#include<PGeom_RectangularTrimmedSurface.hxx>
#include<PGeom_SphericalSurface.hxx>
#include<PGeom_Surface.hxx>
#include<PGeom_SurfaceOfLinearExtrusion.hxx>
#include<PGeom_SurfaceOfRevolution.hxx>
#include<PGeom_SweptSurface.hxx>
#include<PGeom_ToroidalSurface.hxx>
#include<PGeom_Transformation.hxx>
#include<PGeom_TrimmedCurve.hxx>
#include<PGeom_Vector.hxx>
#include<PGeom_VectorWithMagnitude.hxx>

// Additional headers necessary for compilation.

#include<PGeom2d_AxisPlacement.hxx>
#include<PGeom2d_BSplineCurve.hxx>
#include<PGeom2d_BezierCurve.hxx>
#include<PGeom2d_BoundedCurve.hxx>
#include<PGeom2d_CartesianPoint.hxx>
#include<PGeom2d_Circle.hxx>
#include<PGeom2d_Conic.hxx>
#include<PGeom2d_Curve.hxx>
#include<PGeom2d_Direction.hxx>
#include<PGeom2d_Ellipse.hxx>
#include<PGeom2d_Geometry.hxx>
#include<PGeom2d_Hyperbola.hxx>
#include<PGeom2d_Line.hxx>
#include<PGeom2d_OffsetCurve.hxx>
#include<PGeom2d_Parabola.hxx>
#include<PGeom2d_Point.hxx>
#include<PGeom2d_Transformation.hxx>
#include<PGeom2d_TrimmedCurve.hxx>
#include<PGeom2d_Vector.hxx>
#include<PGeom2d_VectorWithMagnitude.hxx>
#include<PGeom_Axis1Placement.hxx>
#include<PGeom_Axis2Placement.hxx>
#include<PGeom_AxisPlacement.hxx>
#include<PGeom_BSplineCurve.hxx>
#include<PGeom_BSplineSurface.hxx>
#include<PGeom_BezierCurve.hxx>
#include<PGeom_BezierSurface.hxx>
#include<PGeom_BoundedCurve.hxx>
#include<PGeom_BoundedSurface.hxx>
#include<PGeom_CartesianPoint.hxx>
#include<PGeom_Circle.hxx>
#include<PGeom_Conic.hxx>
#include<PGeom_ConicalSurface.hxx>
#include<PGeom_Curve.hxx>
#include<PGeom_CylindricalSurface.hxx>
#include<PGeom_Direction.hxx>
#include<PGeom_ElementarySurface.hxx>
#include<PGeom_Ellipse.hxx>
#include<PGeom_Geometry.hxx>
#include<PGeom_Hyperbola.hxx>
#include<PGeom_Line.hxx>
#include<PGeom_OffsetCurve.hxx>
#include<PGeom_OffsetSurface.hxx>
#include<PGeom_Parabola.hxx>
#include<PGeom_Plane.hxx>
#include<PGeom_Point.hxx>
#include<PGeom_RectangularTrimmedSurface.hxx>
#include<PGeom_SphericalSurface.hxx>
#include<PGeom_Surface.hxx>
#include<PGeom_SurfaceOfLinearExtrusion.hxx>
#include<PGeom_SurfaceOfRevolution.hxx>
#include<PGeom_SweptSurface.hxx>
#include<PGeom_ToroidalSurface.hxx>
#include<PGeom_Transformation.hxx>
#include<PGeom_TrimmedCurve.hxx>
#include<PGeom_Vector.hxx>
#include<PGeom_VectorWithMagnitude.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<gp_Ax1.hxx>
#include<gp_Dir.hxx>
#include<gp_Trsf.hxx>
#include<gp_Pnt.hxx>
#include<Handle_PColgp_HArray1OfPnt.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
#include<Handle_PColgp_HArray2OfPnt.hxx>
#include<Handle_PColStd_HArray2OfReal.hxx>
#include<gp_Vec.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax3.hxx>
%}
