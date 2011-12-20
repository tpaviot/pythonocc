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
%rename(DownCast) Handle_StdFail_UndefinedValue::DownCast;
%rename(DownCast) Handle_StdFail_NotDone::DownCast;
%rename(DownCast) Handle_StdFail_InfiniteSolutions::DownCast;
%rename(DownCast) Handle_StdFail_Undefined::DownCast;
%rename(DownCast) Handle_StdFail_UndefinedDerivative::DownCast;
%rename(Raise) StdFail_UndefinedDerivative::Raise;
%rename(NewInstance) StdFail_UndefinedDerivative::NewInstance;
%rename(Raise) StdFail_InfiniteSolutions::Raise;
%rename(NewInstance) StdFail_InfiniteSolutions::NewInstance;
%rename(Raise) StdFail_NotDone::Raise;
%rename(NewInstance) StdFail_NotDone::NewInstance;
%rename(Raise) StdFail_Undefined::Raise;
%rename(NewInstance) StdFail_Undefined::NewInstance;
%rename(Raise) StdFail_UndefinedValue::Raise;
%rename(NewInstance) StdFail_UndefinedValue::NewInstance;
