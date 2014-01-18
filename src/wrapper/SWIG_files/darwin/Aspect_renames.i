/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%rename(DownCast) Handle_Aspect_AspectLineDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_AspectMarker::DownCast;
%rename(DownCast) Handle_Aspect_SequenceNodeOfSequenceOfWidthMapEntry::DownCast;
%rename(DownCast) Handle_Aspect_SequenceNodeOfSequenceOfMarkMapEntry::DownCast;
%rename(DownCast) Handle_Aspect_MarkerStyleDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_ColorMap::DownCast;
%rename(DownCast) Handle_Aspect_ColorCubeColorMap::DownCast;
%rename(DownCast) Handle_Aspect_SequenceNodeOfSequenceOfColorMapEntry::DownCast;
%rename(DownCast) Handle_Aspect_Driver::DownCast;
%rename(DownCast) Handle_Aspect_WindowDriver::DownCast;
%rename(DownCast) Handle_Aspect_DriverDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_UndefinedMap::DownCast;
%rename(DownCast) Handle_Aspect_GraphicDeviceDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_MarkMap::DownCast;
%rename(DownCast) Handle_Aspect_Grid::DownCast;
%rename(DownCast) Handle_Aspect_DisplayConnectionDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_PixmapError::DownCast;
%rename(DownCast) Handle_Aspect_ColorMapDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_Window::DownCast;
%rename(DownCast) Handle_Aspect_CircularGrid::DownCast;
%rename(DownCast) Handle_Aspect_BadAccess::DownCast;
%rename(DownCast) Handle_Aspect_AspectMarkerDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_WidthMap::DownCast;
%rename(DownCast) Handle_Aspect_AspectFillArea::DownCast;
%rename(DownCast) Handle_Aspect_EdgeDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_FontStyleDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_SequenceNodeOfSequenceOfTypeMapEntry::DownCast;
%rename(DownCast) Handle_Aspect_WidthMapDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_RectangularGrid::DownCast;
%rename(DownCast) Handle_Aspect_TypeMapDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_DisplayConnection::DownCast;
%rename(DownCast) Handle_Aspect_LineStyleDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_SequenceNodeOfSequenceOfFontMapEntry::DownCast;
%rename(DownCast) Handle_Aspect_IdentDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_GenericColorMap::DownCast;
%rename(DownCast) Handle_Aspect_ColorRampColorMap::DownCast;
%rename(DownCast) Handle_Aspect_PixmapDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_FontMap::DownCast;
%rename(DownCast) Handle_Aspect_LineWidthDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_AspectLine::DownCast;
%rename(DownCast) Handle_Aspect_DriverError::DownCast;
%rename(DownCast) Handle_Aspect_ColorScale::DownCast;
%rename(DownCast) Handle_Aspect_MarkMapDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_FontMapDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_WindowError::DownCast;
%rename(DownCast) Handle_Aspect_SequenceNodeOfSequenceOfColor::DownCast;
%rename(DownCast) Handle_Aspect_WindowDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_AspectFillAreaDefinitionError::DownCast;
%rename(DownCast) Handle_Aspect_TypeMap::DownCast;
%rename(DownCast) Handle_Aspect_PolyStyleDefinitionError::DownCast;
%rename(Raise) Aspect_AspectFillAreaDefinitionError::Raise;
%rename(NewInstance) Aspect_AspectFillAreaDefinitionError::NewInstance;
%rename(Raise) Aspect_ColorMapDefinitionError::Raise;
%rename(NewInstance) Aspect_ColorMapDefinitionError::NewInstance;
%rename(Raise) Aspect_UndefinedMap::Raise;
%rename(NewInstance) Aspect_UndefinedMap::NewInstance;
%rename(Raise) Aspect_PixmapError::Raise;
%rename(NewInstance) Aspect_PixmapError::NewInstance;
%rename(Raise) Aspect_WindowError::Raise;
%rename(NewInstance) Aspect_WindowError::NewInstance;
%rename(Raise) Aspect_AspectMarkerDefinitionError::Raise;
%rename(NewInstance) Aspect_AspectMarkerDefinitionError::NewInstance;
%rename(ValuesOfFOSP) Aspect::ValuesOfFOSP;
%rename(ToCString) Aspect::ToCString;
%rename(Inverse) Aspect::Inverse;
%rename(Raise) Aspect_LineStyleDefinitionError::Raise;
%rename(NewInstance) Aspect_LineStyleDefinitionError::NewInstance;
%rename(Raise) Aspect_PixmapDefinitionError::Raise;
%rename(NewInstance) Aspect_PixmapDefinitionError::NewInstance;
%rename(Raise) Aspect_DisplayConnectionDefinitionError::Raise;
%rename(NewInstance) Aspect_DisplayConnectionDefinitionError::NewInstance;
%rename(Raise) Aspect_GraphicDeviceDefinitionError::Raise;
%rename(NewInstance) Aspect_GraphicDeviceDefinitionError::NewInstance;
%rename(Raise) Aspect_EdgeDefinitionError::Raise;
%rename(NewInstance) Aspect_EdgeDefinitionError::NewInstance;
%rename(Raise) Aspect_MarkMapDefinitionError::Raise;
%rename(NewInstance) Aspect_MarkMapDefinitionError::NewInstance;
%rename(Raise) Aspect_FontStyleDefinitionError::Raise;
%rename(NewInstance) Aspect_FontStyleDefinitionError::NewInstance;
%rename(Raise) Aspect_TypeMapDefinitionError::Raise;
%rename(NewInstance) Aspect_TypeMapDefinitionError::NewInstance;
%rename(Raise) Aspect_PolyStyleDefinitionError::Raise;
%rename(NewInstance) Aspect_PolyStyleDefinitionError::NewInstance;
%rename(Raise) Aspect_MarkerStyleDefinitionError::Raise;
%rename(NewInstance) Aspect_MarkerStyleDefinitionError::NewInstance;
%rename(Raise) Aspect_DriverError::Raise;
%rename(NewInstance) Aspect_DriverError::NewInstance;
%rename(Raise) Aspect_LineWidthDefinitionError::Raise;
%rename(NewInstance) Aspect_LineWidthDefinitionError::NewInstance;
%rename(Raise) Aspect_BadAccess::Raise;
%rename(NewInstance) Aspect_BadAccess::NewInstance;
%rename(Raise) Aspect_AspectLineDefinitionError::Raise;
%rename(NewInstance) Aspect_AspectLineDefinitionError::NewInstance;
%rename(Raise) Aspect_IdentDefinitionError::Raise;
%rename(NewInstance) Aspect_IdentDefinitionError::NewInstance;
%rename(Raise) Aspect_WindowDefinitionError::Raise;
%rename(NewInstance) Aspect_WindowDefinitionError::NewInstance;
%rename(Raise) Aspect_DriverDefinitionError::Raise;
%rename(NewInstance) Aspect_DriverDefinitionError::NewInstance;
%rename(Raise) Aspect_WidthMapDefinitionError::Raise;
%rename(NewInstance) Aspect_WidthMapDefinitionError::NewInstance;
%rename(Raise) Aspect_FontMapDefinitionError::Raise;
%rename(NewInstance) Aspect_FontMapDefinitionError::NewInstance;
%rename(FindColor) Aspect_ColorScale::FindColor;
