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
%rename(downcast) Handle_V2d_BackgroundGraphicObject::DownCast;
%rename(downcast) Handle_V2d_CircularGraphicGrid::DownCast;
%rename(downcast) Handle_V2d_CircularGrid::DownCast;
%rename(downcast) Handle_V2d_RectangularGrid::DownCast;
%rename(downcast) Handle_V2d_View::DownCast;
%rename(downcast) Handle_V2d_Viewer::DownCast;
%rename(downcast) Handle_V2d_RectangularGraphicGrid::DownCast;
%rename(draw) V2d::Draw;
%rename(colormap) V2d_DefaultMap::ColorMap;
%rename(typemap) V2d_DefaultMap::TypeMap;
%rename(widthmap) V2d_DefaultMap::WidthMap;
%rename(fontmap) V2d_DefaultMap::FontMap;
%rename(markmap) V2d_DefaultMap::MarkMap;
