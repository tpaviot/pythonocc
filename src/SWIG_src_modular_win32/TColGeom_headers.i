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

#include<Handle_TColGeom_HArray1OfBSplineCurve.hxx>
#include<Handle_TColGeom_HArray1OfBezierCurve.hxx>
#include<Handle_TColGeom_HArray1OfBoundedCurve.hxx>
#include<Handle_TColGeom_HArray1OfBoundedSurface.hxx>
#include<Handle_TColGeom_HArray1OfCurve.hxx>
#include<Handle_TColGeom_HArray1OfSurface.hxx>
#include<Handle_TColGeom_HArray2OfBSplineSurface.hxx>
#include<Handle_TColGeom_HArray2OfBezierSurface.hxx>
#include<Handle_TColGeom_HArray2OfBoundedSurface.hxx>
#include<Handle_TColGeom_HArray2OfSurface.hxx>
#include<Handle_TColGeom_HSequenceOfBoundedCurve.hxx>
#include<Handle_TColGeom_HSequenceOfBoundedSurface.hxx>
#include<Handle_TColGeom_HSequenceOfCurve.hxx>
#include<Handle_TColGeom_HSequenceOfSurface.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfBoundedSurface.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfCurve.hxx>
#include<Handle_TColGeom_SequenceNodeOfSequenceOfSurface.hxx>
#include<TColGeom_Array1OfBSplineCurve.hxx>
#include<TColGeom_Array1OfBezierCurve.hxx>
#include<TColGeom_Array1OfBoundedCurve.hxx>
#include<TColGeom_Array1OfBoundedSurface.hxx>
#include<TColGeom_Array1OfCurve.hxx>
#include<TColGeom_Array1OfSurface.hxx>
#include<TColGeom_Array2OfBSplineSurface.hxx>
#include<TColGeom_Array2OfBezierSurface.hxx>
#include<TColGeom_Array2OfBoundedSurface.hxx>
#include<TColGeom_Array2OfSurface.hxx>
#include<TColGeom_HArray1OfBSplineCurve.hxx>
#include<TColGeom_HArray1OfBezierCurve.hxx>
#include<TColGeom_HArray1OfBoundedCurve.hxx>
#include<TColGeom_HArray1OfBoundedSurface.hxx>
#include<TColGeom_HArray1OfCurve.hxx>
#include<TColGeom_HArray1OfSurface.hxx>
#include<TColGeom_HArray2OfBSplineSurface.hxx>
#include<TColGeom_HArray2OfBezierSurface.hxx>
#include<TColGeom_HArray2OfBoundedSurface.hxx>
#include<TColGeom_HArray2OfSurface.hxx>
#include<TColGeom_HSequenceOfBoundedCurve.hxx>
#include<TColGeom_HSequenceOfBoundedSurface.hxx>
#include<TColGeom_HSequenceOfCurve.hxx>
#include<TColGeom_HSequenceOfSurface.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfBoundedSurface.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfCurve.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfSurface.hxx>
#include<TColGeom_SequenceOfBoundedCurve.hxx>
#include<TColGeom_SequenceOfBoundedSurface.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<TColGeom_SequenceOfSurface.hxx>

// Additional headers necessary for compilation.

#include<TColGeom2d_Array1OfBSplineCurve.hxx>
#include<TColGeom2d_Array1OfBezierCurve.hxx>
#include<TColGeom2d_Array1OfBoundedCurve.hxx>
#include<TColGeom2d_Array1OfCurve.hxx>
#include<TColGeom2d_Array1OfGeometry.hxx>
#include<TColGeom2d_HArray1OfBSplineCurve.hxx>
#include<TColGeom2d_HArray1OfBezierCurve.hxx>
#include<TColGeom2d_HArray1OfBoundedCurve.hxx>
#include<TColGeom2d_HArray1OfCurve.hxx>
#include<TColGeom2d_HArray1OfGeometry.hxx>
#include<TColGeom2d_HSequenceOfBoundedCurve.hxx>
#include<TColGeom2d_HSequenceOfCurve.hxx>
#include<TColGeom2d_HSequenceOfGeometry.hxx>
#include<TColGeom2d_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<TColGeom2d_SequenceNodeOfSequenceOfCurve.hxx>
#include<TColGeom2d_SequenceNodeOfSequenceOfGeometry.hxx>
#include<TColGeom2d_SequenceOfBoundedCurve.hxx>
#include<TColGeom2d_SequenceOfCurve.hxx>
#include<TColGeom2d_SequenceOfGeometry.hxx>
#include<TColGeom_Array1OfBSplineCurve.hxx>
#include<TColGeom_Array1OfBezierCurve.hxx>
#include<TColGeom_Array1OfBoundedCurve.hxx>
#include<TColGeom_Array1OfBoundedSurface.hxx>
#include<TColGeom_Array1OfCurve.hxx>
#include<TColGeom_Array1OfSurface.hxx>
#include<TColGeom_Array2OfBSplineSurface.hxx>
#include<TColGeom_Array2OfBezierSurface.hxx>
#include<TColGeom_Array2OfBoundedSurface.hxx>
#include<TColGeom_Array2OfSurface.hxx>
#include<TColGeom_HArray1OfBSplineCurve.hxx>
#include<TColGeom_HArray1OfBezierCurve.hxx>
#include<TColGeom_HArray1OfBoundedCurve.hxx>
#include<TColGeom_HArray1OfBoundedSurface.hxx>
#include<TColGeom_HArray1OfCurve.hxx>
#include<TColGeom_HArray1OfSurface.hxx>
#include<TColGeom_HArray2OfBSplineSurface.hxx>
#include<TColGeom_HArray2OfBezierSurface.hxx>
#include<TColGeom_HArray2OfBoundedSurface.hxx>
#include<TColGeom_HArray2OfSurface.hxx>
#include<TColGeom_HSequenceOfBoundedCurve.hxx>
#include<TColGeom_HSequenceOfBoundedSurface.hxx>
#include<TColGeom_HSequenceOfCurve.hxx>
#include<TColGeom_HSequenceOfSurface.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfBoundedCurve.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfBoundedSurface.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfCurve.hxx>
#include<TColGeom_SequenceNodeOfSequenceOfSurface.hxx>
#include<TColGeom_SequenceOfBoundedCurve.hxx>
#include<TColGeom_SequenceOfBoundedSurface.hxx>
#include<TColGeom_SequenceOfCurve.hxx>
#include<TColGeom_SequenceOfSurface.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Geom_BezierCurve.hxx>
%}
