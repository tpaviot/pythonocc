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
%rename(downcast) Handle_PlotMgt_PlotterParameter::DownCast;
%rename(downcast) Handle_PlotMgt_HListOfMFTSizes::DownCast;
%rename(downcast) Handle_PlotMgt_PlotterDefinitionError::DownCast;
%rename(downcast) Handle_PlotMgt_PlotterDriver::DownCast;
%rename(downcast) Handle_PlotMgt_Plotter::DownCast;
%rename(downcast) Handle_PlotMgt_ImageDriver::DownCast;
%rename(downcast) Handle_PlotMgt_HListOfPlotterParameter::DownCast;
%rename(downcast) Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter::DownCast;
%rename(downcast) Handle_PlotMgt_HListOfMFTFonts::DownCast;
%rename(downcast) Handle_PlotMgt_TextManager::DownCast;
%rename(downcast) Handle_PlotMgt_PlotterAccessError::DownCast;
%rename(raise) PlotMgt_PlotterAccessError::Raise;
%rename(newinstance) PlotMgt_PlotterAccessError::NewInstance;
%rename(listplotters) PlotMgt_Plotter::ListPlotters;
%rename(devicelist) PlotMgt::DeviceList;
%rename(typefromstring) PlotMgt::TypeFromString;
%rename(stringfromtype) PlotMgt::StringFromType;
%rename(originfromstring) PlotMgt::OriginFromString;
%rename(stringfromorigin) PlotMgt::StringFromOrigin;
%rename(qualityfromstring) PlotMgt::QualityFromString;
%rename(stringfromquality) PlotMgt::StringFromQuality;
%rename(imageformatfromstring) PlotMgt::ImageFormatFromString;
%rename(stringfromimageformat) PlotMgt::StringFromImageFormat;
%rename(plottingtypefromstring) PlotMgt::PlottingTypeFromString;
%rename(stringfromplottingtype) PlotMgt::StringFromPlottingType;
%rename(paperformatfromstring) PlotMgt::PaperFormatFromString;
%rename(stringfrompaperformat) PlotMgt::StringFromPaperFormat;
%rename(papersize) PlotMgt::PaperSize;
%rename(raise) PlotMgt_PlotterDefinitionError::Raise;
%rename(newinstance) PlotMgt_PlotterDefinitionError::NewInstance;
