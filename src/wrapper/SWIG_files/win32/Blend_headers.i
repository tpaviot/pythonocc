/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Blend_AppFunction.hxx>
#include<Blend_CSFunction.hxx>
#include<Blend_CurvPointFuncInv.hxx>
#include<Blend_DecrochStatus.hxx>
#include<Blend_FuncInv.hxx>
#include<Blend_Function.hxx>
#include<Blend_Point.hxx>
#include<Blend_RstRstFunction.hxx>
#include<Blend_SequenceNodeOfSequenceOfPoint.hxx>
#include<Blend_SequenceOfPoint.hxx>
#include<Blend_Status.hxx>
#include<Blend_SurfCurvFuncInv.hxx>
#include<Blend_SurfPointFuncInv.hxx>
#include<Blend_SurfRstFunction.hxx>
#include<Handle_Blend_SequenceNodeOfSequenceOfPoint.hxx>

// Additional headers necessary for compilation.

#include<BlendFunc.hxx>
#include<BlendFunc_CSCircular.hxx>
#include<BlendFunc_CSConstRad.hxx>
#include<BlendFunc_ChAsym.hxx>
#include<BlendFunc_ChAsymInv.hxx>
#include<BlendFunc_ChamfInv.hxx>
#include<BlendFunc_Chamfer.hxx>
#include<BlendFunc_ConstRad.hxx>
#include<BlendFunc_ConstRadInv.hxx>
#include<BlendFunc_Corde.hxx>
#include<BlendFunc_EvolRad.hxx>
#include<BlendFunc_EvolRadInv.hxx>
#include<BlendFunc_Ruled.hxx>
#include<BlendFunc_RuledInv.hxx>
#include<BlendFunc_SectionShape.hxx>
#include<BlendFunc_Tensor.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<gp_Pnt.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
%}
