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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(downcast) Handle_Expr_GeneralExpression::DownCast;
%rename(downcast) Handle_Expr_UnaryExpression::DownCast;
%rename(downcast) Handle_Expr_Cosine::DownCast;
%rename(downcast) Handle_Expr_ArcSine::DownCast;
%rename(downcast) Handle_Expr_UnaryMinus::DownCast;
%rename(downcast) Handle_Expr_ExprFailure::DownCast;
%rename(downcast) Handle_Expr_NotEvaluable::DownCast;
%rename(downcast) Handle_Expr_NumericValue::DownCast;
%rename(downcast) Handle_Expr_Sign::DownCast;
%rename(downcast) Handle_Expr_ArgCosh::DownCast;
%rename(downcast) Handle_Expr_InvalidAssignment::DownCast;
%rename(downcast) Handle_Expr_ArcCosine::DownCast;
%rename(downcast) Handle_Expr_InvalidOperand::DownCast;
%rename(downcast) Handle_Expr_GeneralRelation::DownCast;
%rename(downcast) Handle_Expr_SingleRelation::DownCast;
%rename(downcast) Handle_Expr_Different::DownCast;
%rename(downcast) Handle_Expr_BinaryExpression::DownCast;
%rename(downcast) Handle_Expr_Division::DownCast;
%rename(downcast) Handle_Expr_PolyExpression::DownCast;
%rename(downcast) Handle_Expr_ArgSinh::DownCast;
%rename(downcast) Handle_Expr_InvalidFunction::DownCast;
%rename(downcast) Handle_Expr_LessThan::DownCast;
%rename(downcast) Handle_Expr_GreaterThanOrEqual::DownCast;
%rename(downcast) Handle_Expr_LogOf10::DownCast;
%rename(downcast) Handle_Expr_Exponential::DownCast;
%rename(downcast) Handle_Expr_Absolute::DownCast;
%rename(downcast) Handle_Expr_PolyFunction::DownCast;
%rename(downcast) Handle_Expr_NamedExpression::DownCast;
%rename(downcast) Handle_Expr_NamedConstant::DownCast;
%rename(downcast) Handle_Expr_NotAssigned::DownCast;
%rename(downcast) Handle_Expr_NamedUnknown::DownCast;
%rename(downcast) Handle_Expr_Sum::DownCast;
%rename(downcast) Handle_Expr_LogOfe::DownCast;
%rename(downcast) Handle_Expr_UnaryFunction::DownCast;
%rename(downcast) Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation::DownCast;
%rename(downcast) Handle_Expr_BinaryFunction::DownCast;
%rename(downcast) Handle_Expr_Difference::DownCast;
%rename(downcast) Handle_Expr_SquareRoot::DownCast;
%rename(downcast) Handle_Expr_Sinh::DownCast;
%rename(downcast) Handle_Expr_Cosh::DownCast;
%rename(downcast) Handle_Expr_Equal::DownCast;
%rename(downcast) Handle_Expr_Sine::DownCast;
%rename(downcast) Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression::DownCast;
%rename(downcast) Handle_Expr_ArcTangent::DownCast;
%rename(downcast) Handle_Expr_GeneralFunction::DownCast;
%rename(downcast) Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown::DownCast;
%rename(downcast) Handle_Expr_Exponentiate::DownCast;
%rename(downcast) Handle_Expr_Tanh::DownCast;
%rename(downcast) Handle_Expr_NamedFunction::DownCast;
%rename(downcast) Handle_Expr_SystemRelation::DownCast;
%rename(downcast) Handle_Expr_Product::DownCast;
%rename(downcast) Handle_Expr_LessThanOrEqual::DownCast;
%rename(downcast) Handle_Expr_ArgTanh::DownCast;
%rename(downcast) Handle_Expr_FunctionDerivative::DownCast;
%rename(downcast) Handle_Expr_Tangent::DownCast;
%rename(downcast) Handle_Expr_GreaterThan::DownCast;
%rename(downcast) Handle_Expr_Square::DownCast;
%rename(raise) Expr_ExprFailure::Raise;
%rename(newinstance) Expr_ExprFailure::NewInstance;
%rename(raise) Expr_NotEvaluable::Raise;
%rename(newinstance) Expr_NotEvaluable::NewInstance;
%rename(raise) Expr_NotAssigned::Raise;
%rename(newinstance) Expr_NotAssigned::NewInstance;
%rename(raise) Expr_InvalidFunction::Raise;
%rename(newinstance) Expr_InvalidFunction::NewInstance;
%rename(copyshare) Expr::CopyShare;
%rename(nboffreevariables) Expr::NbOfFreeVariables;
%rename(sign) Expr::Sign;
%rename(raise) Expr_InvalidOperand::Raise;
%rename(newinstance) Expr_InvalidOperand::NewInstance;
%rename(raise) Expr_InvalidAssignment::Raise;
%rename(newinstance) Expr_InvalidAssignment::NewInstance;
