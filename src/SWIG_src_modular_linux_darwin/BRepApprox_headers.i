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

#include<BRepApprox_TheComputeLineOfApprox.hxx>
#include<BRepApprox_SurfaceTool.hxx>
#include<BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_ParLeastSquareOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_TheMultiLineOfApprox.hxx>
#include<BRepApprox_MyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_TheMultiLineToolOfApprox.hxx>
#include<BRepApprox_ApproxLine.hxx>
#include<BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_Approx.hxx>
#include<BRepApprox_MyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx>
#include<BRepApprox_TheComputeLineBezierOfApprox.hxx>
#include<BRepApprox_ParFunctionOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<BRepApprox_ResConstraintOfMyGradientbisOfTheComputeLineOfApprox.hxx>
#include<Handle_BRepApprox_ApproxLine.hxx>

// Additional headers necessary for compilation.

#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_SeqNode.hxx>
#include<Handle_TCollection_MapNode.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include<math_Vector.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<math_Matrix.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_IntSurf_LineOn2S.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Torus.hxx>
#include<gp_Sphere.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Ax1.hxx>
#include<gp_Dir.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<gp_Vec2d.hxx>
#include<math_FunctionSetRoot.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<gp_Dir2d.hxx>
#include<IntSurf_Quadric.hxx>
%}
