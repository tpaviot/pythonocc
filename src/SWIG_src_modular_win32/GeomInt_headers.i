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

#include<GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_IntSS.hxx>
#include<GeomInt_LineConstructor.hxx>
#include<GeomInt_LineTool.hxx>
#include<GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_ParameterAndOrientation.hxx>
#include<GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation.hxx>
#include<GeomInt_SequenceOfParameterAndOrientation.hxx>
#include<GeomInt_TheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_TheComputeLineOfWLApprox.hxx>
#include<GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheImpPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheMultiLineOfWLApprox.hxx>
#include<GeomInt_TheMultiLineToolOfWLApprox.hxx>
#include<GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_WLApprox.hxx>
#include<Handle_GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation.hxx>

// Additional headers necessary for compilation.

#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Adaptor3d_CurveOnSurfacePtr.hxx>
#include<Adaptor3d_CurvePtr.hxx>
#include<Adaptor3d_HCurve.hxx>
#include<Adaptor3d_HCurveOnSurface.hxx>
#include<Adaptor3d_HIsoCurve.hxx>
#include<Adaptor3d_HOffsetCurve.hxx>
#include<Adaptor3d_HSurface.hxx>
#include<Adaptor3d_HSurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_HSurfaceOfRevolution.hxx>
#include<Adaptor3d_HVertex.hxx>
#include<Adaptor3d_InterFunc.hxx>
#include<Adaptor3d_IsoCurve.hxx>
#include<Adaptor3d_OffsetCurve.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_SurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_SurfaceOfRevolution.hxx>
#include<Adaptor3d_SurfacePtr.hxx>
#include<Adaptor3d_TopolTool.hxx>
#include<GProp.hxx>
#include<GProp_CelGProps.hxx>
#include<GProp_EquaType.hxx>
#include<GProp_GProps.hxx>
#include<GProp_PEquation.hxx>
#include<GProp_PGProps.hxx>
#include<GProp_PrincipalProps.hxx>
#include<GProp_SelGProps.hxx>
#include<GProp_UndefinedAxis.hxx>
#include<GProp_ValueType.hxx>
#include<GProp_VelGProps.hxx>
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include<math_Vector.hxx>
#include<AppParCurves_MultiCurve.hxx>
#include<math_MultipleVarFunctionWithGradient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<AppParCurves_MultiBSpCurve.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<IntSurf_Quadric.hxx>
#include<math_Matrix.hxx>
#include<Handle_IntPatch_TheWLineOfIntersection.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<Handle_IntPatch_Line.hxx>
#include<Handle_Adaptor3d_TopolTool.hxx>
#include<Handle_GeomAdaptor_HSurface.hxx>
#include<math_FunctionSetRoot.hxx>
%}
