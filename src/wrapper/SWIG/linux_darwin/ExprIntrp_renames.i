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
%rename(downcast) Handle_ExprIntrp_StackNodeOfStackOfGeneralFunction::DownCast;
%rename(downcast) Handle_ExprIntrp_StackNodeOfStackOfGeneralExpression::DownCast;
%rename(downcast) Handle_ExprIntrp_Generator::DownCast;
%rename(downcast) Handle_ExprIntrp_GenExp::DownCast;
%rename(downcast) Handle_ExprIntrp_SyntaxError::DownCast;
%rename(downcast) Handle_ExprIntrp_GenRel::DownCast;
%rename(downcast) Handle_ExprIntrp_StackNodeOfStackOfGeneralRelation::DownCast;
%rename(downcast) Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedExpression::DownCast;
%rename(downcast) Handle_ExprIntrp_GenFct::DownCast;
%rename(downcast) Handle_ExprIntrp_SequenceNodeOfSequenceOfNamedFunction::DownCast;
%rename(downcast) Handle_ExprIntrp_StackNodeOfStackOfNames::DownCast;
%rename(create) ExprIntrp_GenFct::Create;
%rename(raise) ExprIntrp_SyntaxError::Raise;
%rename(raise) ExprIntrp_SyntaxError::Raise;
%rename(newinstance) ExprIntrp_SyntaxError::NewInstance;
%rename(create) ExprIntrp_GenRel::Create;
%rename(create) ExprIntrp_GenExp::Create;
