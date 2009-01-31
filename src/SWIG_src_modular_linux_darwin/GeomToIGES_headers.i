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

#include<GeomToIGES_GeomEntity.hxx>
#include<GeomToIGES_GeomVector.hxx>
#include<GeomToIGES_GeomPoint.hxx>
#include<GeomToIGES_GeomCurve.hxx>
#include<GeomToIGES_GeomSurface.hxx>

// Additional headers necessary for compilation.

#include<GeomToIGES_GeomEntity.hxx>
#include<GeomToIGES_GeomVector.hxx>
#include<GeomToIGES_GeomPoint.hxx>
#include<GeomToIGES_GeomCurve.hxx>
#include<GeomToIGES_GeomSurface.hxx>

// Needed headers necessary for compilation.

#include<Handle_IGESData_IGESModel.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_RectangularTrimmedSurface.hxx>
#include<Handle_Geom_ElementarySurface.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_Geom_CylindricalSurface.hxx>
#include<Handle_Geom_ConicalSurface.hxx>
#include<Handle_Geom_SphericalSurface.hxx>
#include<Handle_Geom_ToroidalSurface.hxx>
#include<Handle_Geom_SweptSurface.hxx>
#include<Handle_Geom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_Geom_SurfaceOfRevolution.hxx>
#include<Handle_Geom_OffsetSurface.hxx>
#include<Handle_IGESGeom_Direction.hxx>
#include<Handle_Geom_Vector.hxx>
#include<Handle_Geom_VectorWithMagnitude.hxx>
#include<Handle_Geom_Direction.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_TrimmedCurve.hxx>
#include<Handle_Geom_Conic.hxx>
#include<Handle_Geom_Circle.hxx>
#include<Handle_Geom_Ellipse.hxx>
#include<Handle_Geom_Hyperbola.hxx>
#include<Handle_Geom_Line.hxx>
#include<Handle_Geom_Parabola.hxx>
#include<Handle_Geom_OffsetCurve.hxx>
#include<Handle_IGESGeom_Point.hxx>
#include<Handle_Geom_Point.hxx>
#include<Handle_Geom_CartesianPoint.hxx>
%}
