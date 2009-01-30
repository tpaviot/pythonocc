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

#include<AppParCurves_Array1OfConstraintCouple.hxx>
#include<AppParCurves_Array1OfMultiBSpCurve.hxx>
#include<AppParCurves_Array1OfMultiCurve.hxx>
#include<AppParCurves_Array1OfMultiPoint.hxx>
#include<AppParCurves_Constraint.hxx>
#include<AppParCurves_ConstraintCouple.hxx>
#include<AppParCurves_HArray1OfConstraintCouple.hxx>
#include<AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include<AppParCurves_HArray1OfMultiCurve.hxx>
#include<AppParCurves_HArray1OfMultiPoint.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<AppParCurves_MultiPoint.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include<AppParCurves_SequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceOfMultiCurve.hxx>
#include<AppParCurves_SmoothCriterion.hxx>
#include<AppParCurves.hxx>
#include<Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include<Handle_AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include<Handle_AppParCurves_HArray1OfMultiCurve.hxx>
#include<Handle_AppParCurves_HArray1OfMultiPoint.hxx>
#include<Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include<Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include<Handle_AppParCurves_SmoothCriterion.hxx>

// Additional headers necessary for compilation.

#include<AppParCurves.hxx>
#include<AppParCurves_Array1OfConstraintCouple.hxx>
#include<AppParCurves_Array1OfMultiBSpCurve.hxx>
#include<AppParCurves_Array1OfMultiCurve.hxx>
#include<AppParCurves_Array1OfMultiPoint.hxx>
#include<AppParCurves_Constraint.hxx>
#include<AppParCurves_ConstraintCouple.hxx>
#include<AppParCurves_HArray1OfConstraintCouple.hxx>
#include<AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include<AppParCurves_HArray1OfMultiCurve.hxx>
#include<AppParCurves_HArray1OfMultiPoint.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<AppParCurves_MultiPoint.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include<AppParCurves_SequenceOfMultiBSpCurve.hxx>
#include<AppParCurves_SequenceOfMultiCurve.hxx>
#include<AppParCurves_SmoothCriterion.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_FEmTool_Curve.hxx>
#include<Handle_FEmTool_HAssemblyTable.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
#include<math_Matrix.hxx>
#include<math_Vector.hxx>
#include<math_IntegerVector.hxx>
%}
