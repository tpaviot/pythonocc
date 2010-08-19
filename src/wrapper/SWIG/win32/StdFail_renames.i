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
%rename(downcast) Handle_StdFail_UndefinedValue::DownCast;
%rename(downcast) Handle_StdFail_NotDone::DownCast;
%rename(downcast) Handle_StdFail_InfiniteSolutions::DownCast;
%rename(downcast) Handle_StdFail_Undefined::DownCast;
%rename(downcast) Handle_StdFail_UndefinedDerivative::DownCast;
%rename(raise) StdFail_Undefined::Raise;
%rename(raise) StdFail_Undefined::Raise;
%rename(newinstance) StdFail_Undefined::NewInstance;
%rename(raise) StdFail_UndefinedDerivative::Raise;
%rename(raise) StdFail_UndefinedDerivative::Raise;
%rename(newinstance) StdFail_UndefinedDerivative::NewInstance;
%rename(raise) StdFail_InfiniteSolutions::Raise;
%rename(raise) StdFail_InfiniteSolutions::Raise;
%rename(newinstance) StdFail_InfiniteSolutions::NewInstance;
%rename(raise) StdFail_NotDone::Raise;
%rename(raise) StdFail_NotDone::Raise;
%rename(newinstance) StdFail_NotDone::NewInstance;
%rename(raise) StdFail_UndefinedValue::Raise;
%rename(raise) StdFail_UndefinedValue::Raise;
%rename(newinstance) StdFail_UndefinedValue::NewInstance;
