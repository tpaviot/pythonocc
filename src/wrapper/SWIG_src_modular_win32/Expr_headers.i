/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

#include<Expr.hxx>
#include<Expr_Absolute.hxx>
#include<Expr_ArcCosine.hxx>
#include<Expr_ArcSine.hxx>
#include<Expr_ArcTangent.hxx>
#include<Expr_ArgCosh.hxx>
#include<Expr_ArgSinh.hxx>
#include<Expr_ArgTanh.hxx>
#include<Expr_Array1OfGeneralExpression.hxx>
#include<Expr_Array1OfNamedUnknown.hxx>
#include<Expr_Array1OfSingleRelation.hxx>
#include<Expr_BinaryExpression.hxx>
#include<Expr_BinaryFunction.hxx>
#include<Expr_Cosh.hxx>
#include<Expr_Cosine.hxx>
#include<Expr_Difference.hxx>
#include<Expr_Different.hxx>
#include<Expr_Division.hxx>
#include<Expr_Equal.hxx>
#include<Expr_Exponential.hxx>
#include<Expr_Exponentiate.hxx>
#include<Expr_ExprFailure.hxx>
#include<Expr_FunctionDerivative.hxx>
#include<Expr_GeneralExpression.hxx>
#include<Expr_GeneralFunction.hxx>
#include<Expr_GeneralRelation.hxx>
#include<Expr_GreaterThan.hxx>
#include<Expr_GreaterThanOrEqual.hxx>
#include<Expr_IndexedMapNodeOfMapOfNamedUnknown.hxx>
#include<Expr_InvalidAssignment.hxx>
#include<Expr_InvalidFunction.hxx>
#include<Expr_InvalidOperand.hxx>
#include<Expr_LessThan.hxx>
#include<Expr_LessThanOrEqual.hxx>
#include<Expr_LogOf10.hxx>
#include<Expr_LogOfe.hxx>
#include<Expr_MapOfNamedUnknown.hxx>
#include<Expr_NamedConstant.hxx>
#include<Expr_NamedExpression.hxx>
#include<Expr_NamedFunction.hxx>
#include<Expr_NamedUnknown.hxx>
#include<Expr_NotAssigned.hxx>
#include<Expr_NotEvaluable.hxx>
#include<Expr_NumericValue.hxx>
#include<Expr_Operators.hxx>
#include<Expr_PolyExpression.hxx>
#include<Expr_PolyFunction.hxx>
#include<Expr_Product.hxx>
#include<Expr_RUIterator.hxx>
#include<Expr_RelationIterator.hxx>
#include<Expr_SequenceNodeOfSequenceOfGeneralExpression.hxx>
#include<Expr_SequenceNodeOfSequenceOfGeneralRelation.hxx>
#include<Expr_SequenceOfGeneralExpression.hxx>
#include<Expr_SequenceOfGeneralRelation.hxx>
#include<Expr_Sign.hxx>
#include<Expr_Sine.hxx>
#include<Expr_SingleRelation.hxx>
#include<Expr_Sinh.hxx>
#include<Expr_Square.hxx>
#include<Expr_SquareRoot.hxx>
#include<Expr_Sum.hxx>
#include<Expr_SystemRelation.hxx>
#include<Expr_Tangent.hxx>
#include<Expr_Tanh.hxx>
#include<Expr_UnaryExpression.hxx>
#include<Expr_UnaryFunction.hxx>
#include<Expr_UnaryMinus.hxx>
#include<Expr_UnknownIterator.hxx>
#include<Handle_Expr_Absolute.hxx>
#include<Handle_Expr_ArcCosine.hxx>
#include<Handle_Expr_ArcSine.hxx>
#include<Handle_Expr_ArcTangent.hxx>
#include<Handle_Expr_ArgCosh.hxx>
#include<Handle_Expr_ArgSinh.hxx>
#include<Handle_Expr_ArgTanh.hxx>
#include<Handle_Expr_BinaryExpression.hxx>
#include<Handle_Expr_BinaryFunction.hxx>
#include<Handle_Expr_Cosh.hxx>
#include<Handle_Expr_Cosine.hxx>
#include<Handle_Expr_Difference.hxx>
#include<Handle_Expr_Different.hxx>
#include<Handle_Expr_Division.hxx>
#include<Handle_Expr_Equal.hxx>
#include<Handle_Expr_Exponential.hxx>
#include<Handle_Expr_Exponentiate.hxx>
#include<Handle_Expr_ExprFailure.hxx>
#include<Handle_Expr_FunctionDerivative.hxx>
#include<Handle_Expr_GeneralExpression.hxx>
#include<Handle_Expr_GeneralFunction.hxx>
#include<Handle_Expr_GeneralRelation.hxx>
#include<Handle_Expr_GreaterThan.hxx>
#include<Handle_Expr_GreaterThanOrEqual.hxx>
#include<Handle_Expr_IndexedMapNodeOfMapOfNamedUnknown.hxx>
#include<Handle_Expr_InvalidAssignment.hxx>
#include<Handle_Expr_InvalidFunction.hxx>
#include<Handle_Expr_InvalidOperand.hxx>
#include<Handle_Expr_LessThan.hxx>
#include<Handle_Expr_LessThanOrEqual.hxx>
#include<Handle_Expr_LogOf10.hxx>
#include<Handle_Expr_LogOfe.hxx>
#include<Handle_Expr_NamedConstant.hxx>
#include<Handle_Expr_NamedExpression.hxx>
#include<Handle_Expr_NamedFunction.hxx>
#include<Handle_Expr_NamedUnknown.hxx>
#include<Handle_Expr_NotAssigned.hxx>
#include<Handle_Expr_NotEvaluable.hxx>
#include<Handle_Expr_NumericValue.hxx>
#include<Handle_Expr_PolyExpression.hxx>
#include<Handle_Expr_PolyFunction.hxx>
#include<Handle_Expr_Product.hxx>
#include<Handle_Expr_SequenceNodeOfSequenceOfGeneralExpression.hxx>
#include<Handle_Expr_SequenceNodeOfSequenceOfGeneralRelation.hxx>
#include<Handle_Expr_Sign.hxx>
#include<Handle_Expr_Sine.hxx>
#include<Handle_Expr_SingleRelation.hxx>
#include<Handle_Expr_Sinh.hxx>
#include<Handle_Expr_Square.hxx>
#include<Handle_Expr_SquareRoot.hxx>
#include<Handle_Expr_Sum.hxx>
#include<Handle_Expr_SystemRelation.hxx>
#include<Handle_Expr_Tangent.hxx>
#include<Handle_Expr_Tanh.hxx>
#include<Handle_Expr_UnaryExpression.hxx>
#include<Handle_Expr_UnaryFunction.hxx>
#include<Handle_Expr_UnaryMinus.hxx>

// Additional headers necessary for compilation.

#include<ExprIntrp.hxx>
#include<ExprIntrp_Analysis.hxx>
#include<ExprIntrp_GenExp.hxx>
#include<ExprIntrp_GenFct.hxx>
#include<ExprIntrp_GenRel.hxx>
#include<ExprIntrp_Generator.hxx>
#include<ExprIntrp_SequenceNodeOfSequenceOfNamedExpression.hxx>
#include<ExprIntrp_SequenceNodeOfSequenceOfNamedFunction.hxx>
#include<ExprIntrp_SequenceOfNamedExpression.hxx>
#include<ExprIntrp_SequenceOfNamedFunction.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralExpression.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralFunction.hxx>
#include<ExprIntrp_StackIteratorOfStackOfGeneralRelation.hxx>
#include<ExprIntrp_StackIteratorOfStackOfNames.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralExpression.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralFunction.hxx>
#include<ExprIntrp_StackNodeOfStackOfGeneralRelation.hxx>
#include<ExprIntrp_StackNodeOfStackOfNames.hxx>
#include<ExprIntrp_StackOfGeneralExpression.hxx>
#include<ExprIntrp_StackOfGeneralFunction.hxx>
#include<ExprIntrp_StackOfGeneralRelation.hxx>
#include<ExprIntrp_StackOfNames.hxx>
#include<ExprIntrp_SyntaxError.hxx>
#include<ExprIntrp_yaccanal.hxx>
#include<ExprIntrp_yaccintrf.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TCollection_AsciiString.hxx>
#include<Standard_SStream.hxx>
#include<Expr.hxx>
%}
