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
%rename(DownCast) Handle_ShapeProcess_Context::DownCast;
%rename(DownCast) Handle_ShapeProcess_StackItemOfDictionaryOfOperator::DownCast;
%rename(DownCast) Handle_ShapeProcess_Operator::DownCast;
%rename(DownCast) Handle_ShapeProcess_UOperator::DownCast;
%rename(DownCast) Handle_ShapeProcess_DictionaryOfOperator::DownCast;
%rename(DownCast) Handle_ShapeProcess_ShapeContext::DownCast;
%rename(RegisterOperator) ShapeProcess::RegisterOperator;
%rename(FindOperator) ShapeProcess::FindOperator;
%rename(Perform) ShapeProcess::Perform;
%rename(Init) ShapeProcess_OperLibrary::Init;
%rename(ApplyModifier) ShapeProcess_OperLibrary::ApplyModifier;
