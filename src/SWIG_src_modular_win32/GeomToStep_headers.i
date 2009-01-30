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

#include<GeomToStep_MakeAxis1Placement.hxx>
#include<GeomToStep_MakeAxis2Placement2d.hxx>
#include<GeomToStep_MakeAxis2Placement3d.hxx>
#include<GeomToStep_MakeBoundedCurve.hxx>
#include<GeomToStep_MakeBoundedSurface.hxx>
#include<GeomToStep_MakeBSplineCurveWithKnots.hxx>
#include<GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve.hxx>
#include<GeomToStep_MakeBSplineSurfaceWithKnots.hxx>
#include<GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx>
#include<GeomToStep_MakeCartesianPoint.hxx>
#include<GeomToStep_MakeCircle.hxx>
#include<GeomToStep_MakeConic.hxx>
#include<GeomToStep_MakeConicalSurface.hxx>
#include<GeomToStep_MakeCurve.hxx>
#include<GeomToStep_MakeCylindricalSurface.hxx>
#include<GeomToStep_MakeDirection.hxx>
#include<GeomToStep_MakeElementarySurface.hxx>
#include<GeomToStep_MakeEllipse.hxx>
#include<GeomToStep_MakeHyperbola.hxx>
#include<GeomToStep_MakeLine.hxx>
#include<GeomToStep_MakeParabola.hxx>
#include<GeomToStep_MakePlane.hxx>
#include<GeomToStep_MakePolyline.hxx>
#include<GeomToStep_MakeRectangularTrimmedSurface.hxx>
#include<GeomToStep_MakeSphericalSurface.hxx>
#include<GeomToStep_MakeSurface.hxx>
#include<GeomToStep_MakeSurfaceOfLinearExtrusion.hxx>
#include<GeomToStep_MakeSurfaceOfRevolution.hxx>
#include<GeomToStep_MakeSweptSurface.hxx>
#include<GeomToStep_MakeToroidalSurface.hxx>
#include<GeomToStep_MakeVector.hxx>
#include<GeomToStep_Root.hxx>

// Additional headers necessary for compilation.

#include<GeomToStep_MakeAxis1Placement.hxx>
#include<GeomToStep_MakeAxis2Placement2d.hxx>
#include<GeomToStep_MakeAxis2Placement3d.hxx>
#include<GeomToStep_MakeBoundedCurve.hxx>
#include<GeomToStep_MakeBoundedSurface.hxx>
#include<GeomToStep_MakeBSplineCurveWithKnots.hxx>
#include<GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve.hxx>
#include<GeomToStep_MakeBSplineSurfaceWithKnots.hxx>
#include<GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx>
#include<GeomToStep_MakeCartesianPoint.hxx>
#include<GeomToStep_MakeCircle.hxx>
#include<GeomToStep_MakeConic.hxx>
#include<GeomToStep_MakeConicalSurface.hxx>
#include<GeomToStep_MakeCurve.hxx>
#include<GeomToStep_MakeCylindricalSurface.hxx>
#include<GeomToStep_MakeDirection.hxx>
#include<GeomToStep_MakeElementarySurface.hxx>
#include<GeomToStep_MakeEllipse.hxx>
#include<GeomToStep_MakeHyperbola.hxx>
#include<GeomToStep_MakeLine.hxx>
#include<GeomToStep_MakeParabola.hxx>
#include<GeomToStep_MakePlane.hxx>
#include<GeomToStep_MakePolyline.hxx>
#include<GeomToStep_MakeRectangularTrimmedSurface.hxx>
#include<GeomToStep_MakeSphericalSurface.hxx>
#include<GeomToStep_MakeSurface.hxx>
#include<GeomToStep_MakeSurfaceOfLinearExtrusion.hxx>
#include<GeomToStep_MakeSurfaceOfRevolution.hxx>
#include<GeomToStep_MakeSweptSurface.hxx>
#include<GeomToStep_MakeToroidalSurface.hxx>
#include<GeomToStep_MakeVector.hxx>
#include<GeomToStep_Root.hxx>

// Needed headers necessary for compilation.

#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<Handle_Geom_Line.hxx>
#include<Handle_Geom2d_Line.hxx>
#include<Handle_Geom_SurfaceOfLinearExtrusion.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2d.hxx>
#include<Handle_Geom_Axis1Placement.hxx>
#include<Handle_Geom2d_AxisPlacement.hxx>
#include<Handle_Geom_ElementarySurface.hxx>
#include<Handle_Geom_CylindricalSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<Handle_Geom_Direction.hxx>
#include<Handle_Geom2d_Direction.hxx>
#include<Handle_Geom_SweptSurface.hxx>
#include<Handle_Geom_SurfaceOfRevolution.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_Geom_ConicalSurface.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<Handle_Geom2d_Hyperbola.hxx>
#include<Handle_Geom_Hyperbola.hxx>
#include<gp_Ax3.hxx>
#include<gp_Trsf.hxx>
#include<Handle_Geom_Axis2Placement.hxx>
#include<Handle_Geom2d_Parabola.hxx>
#include<Handle_Geom_Parabola.hxx>
#include<Handle_Geom_RectangularTrimmedSurface.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Geom_CartesianPoint.hxx>
#include<Handle_Geom2d_CartesianPoint.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_ToroidalSurface.hxx>
#include<Handle_Geom_SphericalSurface.hxx>
#include<gp_Circ.hxx>
#include<Handle_Geom_Circle.hxx>
#include<Handle_Geom2d_Circle.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<gp_Elips.hxx>
#include<Handle_Geom_Ellipse.hxx>
#include<Handle_Geom2d_Ellipse.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom2d_BoundedCurve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_Conic.hxx>
#include<Handle_Geom2d_Conic.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_Geom_Vector.hxx>
#include<Handle_Geom2d_Vector.hxx>
%}
