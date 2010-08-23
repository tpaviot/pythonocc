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
%rename(downcast) Handle_BinMXCAFDoc_ColorToolDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_DocumentToolDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_GraphNodeDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_VolumeDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_ShapeToolDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_CentroidDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_LocationDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_ColorDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_AreaDriver::DownCast;
%rename(downcast) Handle_BinMXCAFDoc_LayerToolDriver::DownCast;
%rename(adddrivers) BinMXCAFDoc::AddDrivers;
%rename(translate) BinMXCAFDoc_LocationDriver::Translate;
