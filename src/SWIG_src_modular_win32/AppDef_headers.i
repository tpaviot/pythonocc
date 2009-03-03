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

#include<AppDef_Array1OfMultiPointConstraint.hxx>
#include<AppDef_BSpGradient_BFGSOfMyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_BSpParFunctionOfMyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_BSpParLeastSquareOfMyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_BSplineCompute.hxx>
#include<AppDef_Compute.hxx>
#include<AppDef_Gradient_BFGSOfMyGradientOfCompute.hxx>
#include<AppDef_Gradient_BFGSOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_Gradient_BFGSOfTheGradient.hxx>
#include<AppDef_HArray1OfMultiPointConstraint.hxx>
#include<AppDef_MultiLine.hxx>
#include<AppDef_MultiPointConstraint.hxx>
#include<AppDef_MyBSplGradientOfBSplineCompute.hxx>
#include<AppDef_MyCriterionOfTheVariational.hxx>
#include<AppDef_MyGradientOfCompute.hxx>
#include<AppDef_MyGradientbisOfBSplineCompute.hxx>
#include<AppDef_MyLineTool.hxx>
#include<AppDef_ParFunctionOfMyGradientOfCompute.hxx>
#include<AppDef_ParFunctionOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_ParFunctionOfTheGradient.hxx>
#include<AppDef_ParLeastSquareOfMyGradientOfCompute.hxx>
#include<AppDef_ParLeastSquareOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_ParLeastSquareOfTheGradient.hxx>
#include<AppDef_ResConstraintOfMyGradientOfCompute.hxx>
#include<AppDef_ResConstraintOfMyGradientbisOfBSplineCompute.hxx>
#include<AppDef_ResConstraintOfTheGradient.hxx>
#include<AppDef_TheFunction.hxx>
#include<AppDef_TheGradient.hxx>
#include<AppDef_TheLeastSquares.hxx>
#include<AppDef_TheResol.hxx>
#include<AppDef_TheVariational.hxx>
#include<Handle_AppDef_HArray1OfMultiPointConstraint.hxx>
#include<Handle_AppDef_MyCriterionOfTheVariational.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include<math_Vector.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<math_Matrix.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_FEmTool_Curve.hxx>
#include<Handle_FEmTool_HAssemblyTable.hxx>
#include<Handle_TColStd_HArray2OfInteger.hxx>
%}
