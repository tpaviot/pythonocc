/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<AdvApp2Var_ApproxAFunc2Var.hxx>
#include<AdvApp2Var_ApproxF2var.hxx>
#include<AdvApp2Var_Context.hxx>
#include<AdvApp2Var_Criterion.hxx>
#include<AdvApp2Var_CriterionRepartition.hxx>
#include<AdvApp2Var_CriterionType.hxx>
#include<AdvApp2Var_Data.hxx>
#include<AdvApp2Var_Data_f2c.hxx>
#include<AdvApp2Var_EvaluatorFunc2Var.hxx>
#include<AdvApp2Var_Framework.hxx>
#include<AdvApp2Var_Iso.hxx>
#include<AdvApp2Var_MathBase.hxx>
#include<AdvApp2Var_Network.hxx>
#include<AdvApp2Var_Node.hxx>
#include<AdvApp2Var_Patch.hxx>
#include<AdvApp2Var_SequenceNodeOfSequenceOfNode.hxx>
#include<AdvApp2Var_SequenceNodeOfSequenceOfPatch.hxx>
#include<AdvApp2Var_SequenceNodeOfSequenceOfStrip.hxx>
#include<AdvApp2Var_SequenceNodeOfStrip.hxx>
#include<AdvApp2Var_SequenceOfNode.hxx>
#include<AdvApp2Var_SequenceOfPatch.hxx>
#include<AdvApp2Var_SequenceOfStrip.hxx>
#include<AdvApp2Var_Strip.hxx>
#include<AdvApp2Var_SysBase.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfStrip.hxx>

// Additional headers necessary for compilation.

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
#include<TColStd_SequenceOfReal.hxx>
#include<Handle_TColgp_HArray2OfPnt.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<AdvApprox_Cutting.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_XY.hxx>
#include<gp_Pnt.hxx>
%}
