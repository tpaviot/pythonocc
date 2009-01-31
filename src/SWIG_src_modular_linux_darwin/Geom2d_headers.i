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

#include<Geom2d_BezierCurve.hxx>
#include<Geom2d_Transformation.hxx>
#include<Geom2d_UndefinedDerivative.hxx>
#include<Geom2d_Hyperbola.hxx>
#include<Geom2d_Parabola.hxx>
#include<Geom2d_Point.hxx>
#include<Geom2d_Conic.hxx>
#include<Geom2d_Ellipse.hxx>
#include<Geom2d_CartesianPoint.hxx>
#include<Geom2d_UndefinedValue.hxx>
#include<Geom2d_OffsetCurve.hxx>
#include<Geom2d_Circle.hxx>
#include<Geom2d_Curve.hxx>
#include<Geom2d_Line.hxx>
#include<Geom2d_TrimmedCurve.hxx>
#include<Geom2d_Direction.hxx>
#include<Geom2d_Geometry.hxx>
#include<Geom2d_BoundedCurve.hxx>
#include<Geom2d_VectorWithMagnitude.hxx>
#include<Geom2d_Vector.hxx>
#include<Geom2d_BSplineCurve.hxx>
#include<Geom2d_AxisPlacement.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_Parabola.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom2d_VectorWithMagnitude.hxx>
#include<Handle_Geom2d_Ellipse.hxx>
#include<Handle_Geom2d_Direction.hxx>
#include<Handle_Geom2d_CartesianPoint.hxx>
#include<Handle_Geom2d_Vector.hxx>
#include<Handle_Geom2d_Line.hxx>
#include<Handle_Geom2d_BoundedCurve.hxx>
#include<Handle_Geom2d_UndefinedValue.hxx>
#include<Handle_Geom2d_Conic.hxx>
#include<Handle_Geom2d_Transformation.hxx>
#include<Handle_Geom2d_OffsetCurve.hxx>
#include<Handle_Geom2d_Point.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_Geom2d_UndefinedDerivative.hxx>
#include<Handle_Geom2d_TrimmedCurve.hxx>
#include<Handle_Geom2d_Geometry.hxx>
#include<Handle_Geom2d_Hyperbola.hxx>
#include<Handle_Geom2d_AxisPlacement.hxx>
#include<Handle_Geom2d_Circle.hxx>

// Additional headers necessary for compilation.

#include<gp_Cone.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Parab2d.hxx>
#include<gp_XY.hxx>
#include<gp_Dir.hxx>
#include<gp_XYZ.hxx>
#include<gp_Sphere.hxx>
#include<gp_Parab.hxx>
#include<gp_Ax3.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp.hxx>
#include<gp_Ax22d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Ax1.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Mat.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Pnt.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Hypr.hxx>
#include<gp_Circ.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Ax2.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Vec.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Pln.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Dir2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Standard_SStream.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
%}
