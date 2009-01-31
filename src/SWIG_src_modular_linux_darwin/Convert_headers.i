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

#include<Convert_SphereToBSplineSurface.hxx>
#include<Convert_CompBezierCurves2dToBSplineCurve2d.hxx>
#include<Convert_CompPolynomialToPoles.hxx>
#include<Convert_CompBezierCurvesToBSplineCurve.hxx>
#include<Convert_ConicToBSplineCurve.hxx>
#include<Convert_EllipseToBSplineCurve.hxx>
#include<Convert_SequenceOfArray1OfPoles2d.hxx>
#include<Convert_ElementarySurfaceToBSplineSurface.hxx>
#include<Convert_CircleToBSplineCurve.hxx>
#include<Convert_CosAndSinEvalFunction.hxx>
#include<Convert_ConeToBSplineSurface.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles2d.hxx>
#include<Convert_CylinderToBSplineSurface.hxx>
#include<Convert_PolynomialCosAndSin.hxx>
#include<Convert_SequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles.hxx>
#include<Convert_ParabolaToBSplineCurve.hxx>
#include<Convert_ParameterisationType.hxx>
#include<Convert_GridPolynomialToPoles.hxx>
#include<Convert_TorusToBSplineSurface.hxx>
#include<Convert_HyperbolaToBSplineCurve.hxx>
#include<Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles.hxx>
#include<Handle_Convert_SequenceNodeOfSequenceOfArray1OfPoles2d.hxx>

// Additional headers necessary for compilation.

#include<Convert_SphereToBSplineSurface.hxx>
#include<Convert_CompBezierCurves2dToBSplineCurve2d.hxx>
#include<Convert_CompPolynomialToPoles.hxx>
#include<Convert_CompBezierCurvesToBSplineCurve.hxx>
#include<Convert_ConicToBSplineCurve.hxx>
#include<Convert_EllipseToBSplineCurve.hxx>
#include<Convert_SequenceOfArray1OfPoles2d.hxx>
#include<Convert_ElementarySurfaceToBSplineSurface.hxx>
#include<Convert_CircleToBSplineCurve.hxx>
#include<Convert_CosAndSinEvalFunction.hxx>
#include<Convert_ConeToBSplineSurface.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles2d.hxx>
#include<Convert_CylinderToBSplineSurface.hxx>
#include<Convert_PolynomialCosAndSin.hxx>
#include<Convert_SequenceOfArray1OfPoles.hxx>
#include<Convert_SequenceNodeOfSequenceOfArray1OfPoles.hxx>
#include<Convert_ParabolaToBSplineCurve.hxx>
#include<Convert_ParameterisationType.hxx>
#include<Convert_GridPolynomialToPoles.hxx>
#include<Convert_TorusToBSplineSurface.hxx>
#include<Convert_HyperbolaToBSplineCurve.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<Handle_TColgp_HArray1OfPnt2d.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
#include<gp_Pnt.hxx>
#include<gp_Cone.hxx>
#include<gp_Torus.hxx>
#include<gp_Hypr2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Parab2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<gp_Sphere.hxx>
%}
