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
%rename(DownCast) Handle_Expr_ExprFailure::DownCast;
%rename(DownCast) Handle_Expr_NotAssigned::DownCast;
%rename(DownCast) Handle_Expr_GeneralExpression::DownCast;
%rename(DownCast) Handle_Expr_UnaryExpression::DownCast;
%rename(DownCast) Handle_Expr_LogOf10::DownCast;
%rename(DownCast) Handle_Expr_SquareRoot::DownCast;
%rename(DownCast) Handle_Expr_Tanh::DownCast;
%rename(DownCast) Handle_Expr_ArcSine::DownCast;
%rename(DownCast) Handle_Expr_UnaryMinus::DownCast;
%rename(DownCast) Handle_Expr_NotEvaluable::DownCast;
%rename(DownCast) Handle_Expr_NumericValue::DownCast;
%rename(DownCast) Handle_Expr_InvalidAssignment::DownCast;
%rename(DownCast) Handle_Expr_ArcCosine::DownCast;
%rename(DownCast) Handle_Expr_GeneralRelation::DownCast;
%rename(DownCast) Handle_Expr_SingleRelation::DownCast;
%rename(DownCast) Handle_Expr_Different::DownCast;
%rename(DownCast) Handle_Expr_BinaryExpression::DownCast;
%rename(DownCast) Handle_Expr_Division::DownCast;
%rename(DownCast) Handle_Expr_Exponentiate::DownCast;
%rename(DownCast) Handle_Expr_ArgSinh::DownCast;
%rename(DownCast) Handle_Expr_PolyExpression::DownCast;
%rename(DownCast) Handle_Expr_Exponential::DownCast;
%rename(DownCast) Handle_Expr_Absolute::DownCast;
%rename(DownCast) Handle_Expr_NamedExpression::DownCast;
%rename(DownCast) Handle_Expr_NamedConstant::DownCast;
%rename(DownCast) Handle_Expr_Difference::DownCast;
%rename(DownCast) Handle_Expr_NamedUnknown::DownCast;
%rename(DownCast) Handle_Expr_Sinh::DownCast;
%rename(DownCast) Handle_Expr_Sum::DownCast;
%rename(DownCast) Handle_Expr_LessThan::DownCast;
%rename(DownCast) Handle_Expr_Sign::DownCast;
%rename(DownCast) Handle_Expr_InvalidFunction::DownCast;
%rename(DownCast) Handle_Expr_GreaterThanOrEqual::DownCast;
%rename(DownCast) Handle_Expr_Tangent::DownCast;
%rename(DownCast) Handle_Expr_Equal::DownCast;
%rename(DownCast) Handle_Expr_Sine::DownCast;
%rename(DownCast) Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression::DownCast;
%rename(DownCast) Handle_Expr_InvalidOperand::DownCast;
%rename(DownCast) Handle_Expr_ArgCosh::DownCast;
%rename(DownCast) Handle_Expr_PolyFunction::DownCast;
%rename(DownCast) Handle_Expr_ArcTangent::DownCast;
%rename(DownCast) Handle_Expr_LogOfe::DownCast;
%rename(DownCast) Handle_Expr_UnaryFunction::DownCast;
%rename(DownCast) Handle_Expr_GreaterThan::DownCast;
%rename(DownCast) Handle_Expr_Cosh::DownCast;
%rename(DownCast) Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown::DownCast;
%rename(DownCast) Handle_Expr_GeneralFunction::DownCast;
%rename(DownCast) Handle_Expr_NamedFunction::DownCast;
%rename(DownCast) Handle_Expr_SystemRelation::DownCast;
%rename(DownCast) Handle_Expr_Product::DownCast;
%rename(DownCast) Handle_Expr_LessThanOrEqual::DownCast;
%rename(DownCast) Handle_Expr_FunctionDerivative::DownCast;
%rename(DownCast) Handle_Expr_BinaryFunction::DownCast;
%rename(DownCast) Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation::DownCast;
%rename(DownCast) Handle_Expr_ArgTanh::DownCast;
%rename(DownCast) Handle_Expr_Cosine::DownCast;
%rename(DownCast) Handle_Expr_Square::DownCast;
%rename(Raise) Expr_ExprFailure::Raise;
%rename(NewInstance) Expr_ExprFailure::NewInstance;
%rename(Raise) Expr_NotEvaluable::Raise;
%rename(NewInstance) Expr_NotEvaluable::NewInstance;
%rename(CopyShare) Expr::CopyShare;
%rename(NbOfFreeVariables) Expr::NbOfFreeVariables;
%rename(Sign) Expr::Sign;
%rename(Raise) Expr_InvalidFunction::Raise;
%rename(NewInstance) Expr_InvalidFunction::NewInstance;
%rename(Raise) Expr_InvalidOperand::Raise;
%rename(NewInstance) Expr_InvalidOperand::NewInstance;
%rename(Raise) Expr_NotAssigned::Raise;
%rename(NewInstance) Expr_NotAssigned::NewInstance;
%rename(Raise) Expr_InvalidAssignment::Raise;
%rename(NewInstance) Expr_InvalidAssignment::NewInstance;
