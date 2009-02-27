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

#include<PColPGeom_HArray2OfBoundedSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_HArray1OfBezierCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_FieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom_HArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom_HArray1OfBoundedSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_FieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfCurve.hxx>
#include<PColPGeom_HArray1OfBSplineCurve.hxx>
#include<PColPGeom_FieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_HArray1OfCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface.hxx>
#include<PColPGeom_HArray2OfBezierSurface.hxx>
#include<PColPGeom_HArray2OfSurface.hxx>
#include<PColPGeom_HArray1OfSurface.hxx>
#include<PColPGeom_HArray2OfBSplineSurface.hxx>
#include<PColPGeom_FieldOfHArray2OfSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfBezierCurve.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<Handle_PColPGeom_HArray2OfBezierSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface.hxx>
#include<Handle_PColPGeom_HArray1OfBoundedCurve.hxx>
#include<Handle_PColPGeom_HArray2OfBSplineSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<Handle_PColPGeom_HArray2OfBoundedSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
#include<Handle_PColPGeom_HArray1OfBezierCurve.hxx>
#include<Handle_PColPGeom_HArray1OfBSplineCurve.hxx>
#include<Handle_PColPGeom_HArray1OfBoundedSurface.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<Handle_PColPGeom_HArray1OfCurve.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<Handle_PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<Handle_PColPGeom_HArray1OfSurface.hxx>
#include<Handle_PColPGeom_HArray2OfSurface.hxx>

// Additional headers necessary for compilation.

#include<PColPGeom_HArray2OfBoundedSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfSurface.hxx>
#include<PColPGeom2d_HArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_HArray1OfBezierCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_FieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom_HArray1OfBoundedCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom2d_HArray1OfBSplineCurve.hxx>
#include<PColPGeom_HArray1OfBoundedSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom2d_FieldOfHArray1OfCurve.hxx>
#include<PColPGeom_FieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom2d_HArray1OfBezierCurve.hxx>
#include<PColPGeom2d_FieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfSurface.hxx>
#include<PColPGeom2d_FieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfCurve.hxx>
#include<PColPGeom_HArray1OfBSplineCurve.hxx>
#include<PColPGeom_FieldOfHArray2OfBoundedSurface.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray2OfBezierSurface.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_HArray1OfCurve.hxx>
#include<PColPGeom_VArrayTNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfSurface.hxx>
#include<PColPGeom_HArray2OfBezierSurface.hxx>
#include<PColPGeom_HArray2OfSurface.hxx>
#include<PColPGeom_HArray1OfSurface.hxx>
#include<PColPGeom_HArray2OfBSplineSurface.hxx>
#include<PColPGeom_FieldOfHArray2OfSurface.hxx>
#include<PColPGeom2d_VArrayNodeOfFieldOfHArray1OfCurve.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom2d_FieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfBoundedSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfBoundedCurve.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom_FieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom_VArrayNodeOfFieldOfHArray2OfBSplineSurface.hxx>
#include<PColPGeom_FieldOfHArray1OfBezierCurve.hxx>
#include<PColPGeom2d_VArrayTNodeOfFieldOfHArray1OfBSplineCurve.hxx>
#include<PColPGeom2d_HArray1OfCurve.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Handle_PGeom_BoundedSurface.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PGeom_Surface.hxx>
#include<Handle_PGeom_BSplineCurve.hxx>
#include<Handle_PGeom_Curve.hxx>
#include<Handle_PGeom_BezierCurve.hxx>
#include<Handle_PGeom_BSplineSurface.hxx>
#include<Handle_PGeom_BezierSurface.hxx>
#include<Handle_PGeom_BoundedCurve.hxx>
%}
