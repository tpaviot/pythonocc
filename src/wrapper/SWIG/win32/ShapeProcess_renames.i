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
%rename(downcast) Handle_ShapeProcess_StackItemOfDictionaryOfOperator::DownCast;
%rename(downcast) Handle_ShapeProcess_Operator::DownCast;
%rename(downcast) Handle_ShapeProcess_UOperator::DownCast;
%rename(downcast) Handle_ShapeProcess_Context::DownCast;
%rename(downcast) Handle_ShapeProcess_DictionaryOfOperator::DownCast;
%rename(downcast) Handle_ShapeProcess_ShapeContext::DownCast;
%rename(init) ShapeProcess_OperLibrary::Init;
%rename(applymodifier) ShapeProcess_OperLibrary::ApplyModifier;
%rename(registeroperator) ShapeProcess::RegisterOperator;
%rename(findoperator) ShapeProcess::FindOperator;
%rename(perform) ShapeProcess::Perform;
