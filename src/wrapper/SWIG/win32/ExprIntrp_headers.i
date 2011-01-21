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
#include<Handle_ExprIntrp_GenExp.hxx>
#include<Handle_ExprIntrp_GenFct.hxx>
#include<Handle_ExprIntrp_GenRel.hxx>
#include<Handle_ExprIntrp_Generator.hxx>
#include<Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression.hxx>
#include<Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation.hxx>
#include<Handle_ExprIntrp_StackNodeOfStackOfNames.hxx>
#include<Handle_ExprIntrp_SyntaxError.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Expr_NamedFunction.hxx>
#include<Handle_Expr_NamedExpression.hxx>
#include<TCollection_AsciiString.hxx>
#include<Standard_SStream.hxx>
#include<ExprIntrp.hxx>
#include<Handle_Expr_GeneralRelation.hxx>
#include<Handle_Expr_GeneralExpression.hxx>
#include<Handle_Expr_GeneralFunction.hxx>
%}
