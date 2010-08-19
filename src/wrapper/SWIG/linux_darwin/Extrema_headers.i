/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<Extrema_Array1OfPOnCurv.hxx>
#include<Extrema_Array1OfPOnCurv2d.hxx>
#include<Extrema_Array1OfPOnSurf.hxx>
#include<Extrema_Array2OfPOnCurv.hxx>
#include<Extrema_Array2OfPOnCurv2d.hxx>
#include<Extrema_Array2OfPOnSurf.hxx>
#include<Extrema_CCFOfECC2dOfExtCC2d.hxx>
#include<Extrema_CCFOfECCOfExtCC.hxx>
#include<Extrema_CCFOfELCC2dOfLocateExtCC2d.hxx>
#include<Extrema_CCFOfELCCOfLocateExtCC.hxx>
#include<Extrema_CCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include<Extrema_CCLocFOfLocECCOfLocateExtCC.hxx>
#include<Extrema_Curve2dTool.hxx>
#include<Extrema_CurveTool.hxx>
#include<Extrema_ECC2dOfExtCC2d.hxx>
#include<Extrema_ECCOfExtCC.hxx>
#include<Extrema_ELCC2dOfLocateExtCC2d.hxx>
#include<Extrema_ELCCOfLocateExtCC.hxx>
#include<Extrema_ELPCOfLocateExtPC.hxx>
#include<Extrema_ELPCOfLocateExtPC2d.hxx>
#include<Extrema_EPCOfELPCOfLocateExtPC.hxx>
#include<Extrema_EPCOfELPCOfLocateExtPC2d.hxx>
#include<Extrema_EPCOfExtPC.hxx>
#include<Extrema_EPCOfExtPC2d.hxx>
#include<Extrema_ExtCC.hxx>
#include<Extrema_ExtCC2d.hxx>
#include<Extrema_ExtCS.hxx>
#include<Extrema_ExtElC.hxx>
#include<Extrema_ExtElC2d.hxx>
#include<Extrema_ExtElCS.hxx>
#include<Extrema_ExtElSS.hxx>
#include<Extrema_ExtPC.hxx>
#include<Extrema_ExtPC2d.hxx>
#include<Extrema_ExtPElC.hxx>
#include<Extrema_ExtPElC2d.hxx>
#include<Extrema_ExtPElS.hxx>
#include<Extrema_ExtPExtS.hxx>
#include<Extrema_ExtPRevS.hxx>
#include<Extrema_ExtPS.hxx>
#include<Extrema_ExtSS.hxx>
#include<Extrema_FuncExtCS.hxx>
#include<Extrema_FuncExtPS.hxx>
#include<Extrema_FuncExtSS.hxx>
#include<Extrema_GenExtCS.hxx>
#include<Extrema_GenExtPS.hxx>
#include<Extrema_GenExtSS.hxx>
#include<Extrema_GenLocateExtCS.hxx>
#include<Extrema_GenLocateExtPS.hxx>
#include<Extrema_GenLocateExtSS.hxx>
#include<Extrema_HArray1OfPOnCurv.hxx>
#include<Extrema_HArray1OfPOnCurv2d.hxx>
#include<Extrema_HArray1OfPOnSurf.hxx>
#include<Extrema_HArray2OfPOnCurv.hxx>
#include<Extrema_HArray2OfPOnCurv2d.hxx>
#include<Extrema_HArray2OfPOnSurf.hxx>
#include<Extrema_LocECC2dOfLocateExtCC2d.hxx>
#include<Extrema_LocECCOfLocateExtCC.hxx>
#include<Extrema_LocEPCOfLocateExtPC.hxx>
#include<Extrema_LocEPCOfLocateExtPC2d.hxx>
#include<Extrema_LocateExtCC.hxx>
#include<Extrema_LocateExtCC2d.hxx>
#include<Extrema_LocateExtPC.hxx>
#include<Extrema_LocateExtPC2d.hxx>
#include<Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx>
#include<Extrema_PCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include<Extrema_PCFOfEPCOfExtPC.hxx>
#include<Extrema_PCFOfEPCOfExtPC2d.hxx>
#include<Extrema_PCLocFOfLocEPCOfLocateExtPC.hxx>
#include<Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include<Extrema_POnCurv.hxx>
#include<Extrema_POnCurv2d.hxx>
#include<Extrema_POnSurf.hxx>
#include<Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC.hxx>
#include<Extrema_SeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include<Extrema_SeqPCOfPCFOfEPCOfExtPC.hxx>
#include<Extrema_SeqPCOfPCFOfEPCOfExtPC2d.hxx>
#include<Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC.hxx>
#include<Extrema_SeqPCOfPCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include<Extrema_SeqPOnCOfCCFOfECC2dOfExtCC2d.hxx>
#include<Extrema_SeqPOnCOfCCFOfECCOfExtCC.hxx>
#include<Extrema_SeqPOnCOfCCFOfELCC2dOfLocateExtCC2d.hxx>
#include<Extrema_SeqPOnCOfCCFOfELCCOfLocateExtCC.hxx>
#include<Extrema_SeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include<Extrema_SeqPOnCOfCCLocFOfLocECCOfLocateExtCC.hxx>
#include<Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC.hxx>
#include<Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include<Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC.hxx>
#include<Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d.hxx>
#include<Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC.hxx>
#include<Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include<Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d.hxx>
#include<Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC.hxx>
#include<Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d.hxx>
#include<Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC.hxx>
#include<Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include<Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC.hxx>
#include<Extrema_SequenceNodeOfSequenceOfBoolean.hxx>
#include<Extrema_SequenceNodeOfSequenceOfPOnCurv.hxx>
#include<Extrema_SequenceNodeOfSequenceOfPOnCurv2d.hxx>
#include<Extrema_SequenceNodeOfSequenceOfPOnSurf.hxx>
#include<Extrema_SequenceOfBoolean.hxx>
#include<Extrema_SequenceOfPOnCurv.hxx>
#include<Extrema_SequenceOfPOnCurv2d.hxx>
#include<Extrema_SequenceOfPOnSurf.hxx>
#include<Handle_Extrema_HArray1OfPOnCurv.hxx>
#include<Handle_Extrema_HArray1OfPOnCurv2d.hxx>
#include<Handle_Extrema_HArray1OfPOnSurf.hxx>
#include<Handle_Extrema_HArray2OfPOnCurv.hxx>
#include<Handle_Extrema_HArray2OfPOnCurv2d.hxx>
#include<Handle_Extrema_HArray2OfPOnSurf.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfELPCOfLocateExtPC2d.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPCOfPCFOfEPCOfExtPC2d.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPCOfPCLocFOfLocEPCOfLocateExtPC2d.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECC2dOfExtCC2d.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfECCOfExtCC.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCC2dOfLocateExtCC2d.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPOnCOfCCFOfELCCOfLocateExtCC.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECC2dOfLocateExtCC2d.hxx>
#include<Handle_Extrema_SequenceNodeOfSeqPOnCOfCCLocFOfLocECCOfLocateExtCC.hxx>
#include<Handle_Extrema_SequenceNodeOfSequenceOfBoolean.hxx>
#include<Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv.hxx>
#include<Handle_Extrema_SequenceNodeOfSequenceOfPOnCurv2d.hxx>
#include<Handle_Extrema_SequenceNodeOfSequenceOfPOnSurf.hxx>

// Additional headers necessary for compilation.

#include<Adaptor2d_Curve2d.hxx>
#include<Adaptor2d_Curve2dPtr.hxx>
#include<Adaptor2d_HCurve2d.hxx>
#include<Adaptor2d_HLine2d.hxx>
#include<Adaptor2d_Line2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Pnt.hxx>
#include<Adaptor2d_Curve2d.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_Curve.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<gp_Lin.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Circ.hxx>
#include<gp_Hypr.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Vec.hxx>
#include<gp_Elips.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Adaptor3d_SurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_SurfaceOfRevolution.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
%}
