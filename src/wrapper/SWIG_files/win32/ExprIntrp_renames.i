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
%rename(DownCast) Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation::DownCast;
%rename(DownCast) Handle_ExprIntrp_Generator::DownCast;
%rename(DownCast) Handle_ExprIntrp_GenExp::DownCast;
%rename(DownCast) Handle_ExprIntrp_SyntaxError::DownCast;
%rename(DownCast) Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction::DownCast;
%rename(DownCast) Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression::DownCast;
%rename(DownCast) Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction::DownCast;
%rename(DownCast) Handle_ExprIntrp_StackNodeOfStackOfNames::DownCast;
%rename(DownCast) Handle_ExprIntrp_GenRel::DownCast;
%rename(DownCast) Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression::DownCast;
%rename(DownCast) Handle_ExprIntrp_GenFct::DownCast;
%rename(Create) ExprIntrp_GenFct::Create;
%rename(Raise) ExprIntrp_SyntaxError::Raise;
%rename(NewInstance) ExprIntrp_SyntaxError::NewInstance;
%rename(Create) ExprIntrp_GenRel::Create;
%rename(Create) ExprIntrp_GenExp::Create;
