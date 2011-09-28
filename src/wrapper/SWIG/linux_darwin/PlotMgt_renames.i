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
%rename(DownCast) Handle_PlotMgt_PlotterParameter::DownCast;
%rename(DownCast) Handle_PlotMgt_PlotterDefinitionError::DownCast;
%rename(DownCast) Handle_PlotMgt_PlotterDriver::DownCast;
%rename(DownCast) Handle_PlotMgt_Plotter::DownCast;
%rename(DownCast) Handle_PlotMgt_ImageDriver::DownCast;
%rename(DownCast) Handle_PlotMgt_HListOfPlotterParameter::DownCast;
%rename(DownCast) Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter::DownCast;
%rename(DownCast) Handle_PlotMgt_HListOfMFTFonts::DownCast;
%rename(DownCast) Handle_PlotMgt_TextManager::DownCast;
%rename(DownCast) Handle_PlotMgt_PlotterAccessError::DownCast;
%rename(Raise) PlotMgt_PlotterAccessError::Raise;
%rename(NewInstance) PlotMgt_PlotterAccessError::NewInstance;
%rename(ListPlotters) PlotMgt_Plotter::ListPlotters;
%rename(DeviceList) PlotMgt::DeviceList;
%rename(TypeFromString) PlotMgt::TypeFromString;
%rename(StringFromType) PlotMgt::StringFromType;
%rename(OriginFromString) PlotMgt::OriginFromString;
%rename(StringFromOrigin) PlotMgt::StringFromOrigin;
%rename(QualityFromString) PlotMgt::QualityFromString;
%rename(StringFromQuality) PlotMgt::StringFromQuality;
%rename(ImageFormatFromString) PlotMgt::ImageFormatFromString;
%rename(StringFromImageFormat) PlotMgt::StringFromImageFormat;
%rename(PlottingTypeFromString) PlotMgt::PlottingTypeFromString;
%rename(StringFromPlottingType) PlotMgt::StringFromPlottingType;
%rename(PaperFormatFromString) PlotMgt::PaperFormatFromString;
%rename(StringFromPaperFormat) PlotMgt::StringFromPaperFormat;
%rename(PaperSize) PlotMgt::PaperSize;
%rename(Raise) PlotMgt_PlotterDefinitionError::Raise;
%rename(NewInstance) PlotMgt_PlotterDefinitionError::NewInstance;
