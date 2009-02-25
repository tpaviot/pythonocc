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

#include<PGeom2d_AxisPlacement.hxx>
#include<PGeom2d_BezierCurve.hxx>
#include<PGeom2d_BoundedCurve.hxx>
#include<PGeom2d_BSplineCurve.hxx>
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
#include<Handle_PGeom2d_AxisPlacement.hxx>
#include<Handle_PGeom2d_BezierCurve.hxx>
#include<Handle_PGeom2d_BoundedCurve.hxx>
#include<Handle_PGeom2d_BSplineCurve.hxx>
#include<Handle_PGeom2d_CartesianPoint.hxx>
#include<Handle_PGeom2d_Circle.hxx>
#include<Handle_PGeom2d_Conic.hxx>
#include<Handle_PGeom2d_Curve.hxx>
#include<Handle_PGeom2d_Direction.hxx>
#include<Handle_PGeom2d_Ellipse.hxx>
#include<Handle_PGeom2d_Geometry.hxx>
#include<Handle_PGeom2d_Hyperbola.hxx>
#include<Handle_PGeom2d_Line.hxx>
#include<Handle_PGeom2d_OffsetCurve.hxx>
#include<Handle_PGeom2d_Parabola.hxx>
#include<Handle_PGeom2d_Point.hxx>
#include<Handle_PGeom2d_Transformation.hxx>
#include<Handle_PGeom2d_TrimmedCurve.hxx>
#include<Handle_PGeom2d_Vector.hxx>
#include<Handle_PGeom2d_VectorWithMagnitude.hxx>

// Additional headers necessary for compilation.

#include<PGeom2d_AxisPlacement.hxx>
#include<PGeom2d_BezierCurve.hxx>
#include<PGeom2d_BoundedCurve.hxx>
#include<PGeom2d_BSplineCurve.hxx>
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

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Trsf2d.hxx>
#include<Handle_PColgp_HArray1OfPnt2d.hxx>
#include<Handle_PColStd_HArray1OfReal.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_PColStd_HArray1OfInteger.hxx>
%}
