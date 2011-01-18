/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{
#include <Handle_PlotMgt_HListOfMFTFonts.hxx>
#include <Handle_PlotMgt_HListOfMFTSizes.hxx>
#include <Handle_PlotMgt_HListOfPlotterParameter.hxx>
#include <Handle_PlotMgt_ImageDriver.hxx>
#include <Handle_PlotMgt_Plotter.hxx>
#include <Handle_PlotMgt_PlotterAccessError.hxx>
#include <Handle_PlotMgt_PlotterDefinitionError.hxx>
#include <Handle_PlotMgt_PlotterDriver.hxx>
#include <Handle_PlotMgt_PlotterParameter.hxx>
#include <Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter.hxx>
#include <Handle_PlotMgt_TextManager.hxx>
#include <PlotMgt_HListOfMFTFonts.hxx>
#include <PlotMgt_HListOfMFTSizes.hxx>
#include <PlotMgt_HListOfPlotterParameter.hxx>
#include <PlotMgt_ImageDriver.hxx>
#include <PlotMgt_ImageFormat.hxx>
#include <PlotMgt_ListOfMFTFonts.hxx>
#include <PlotMgt_ListOfMFTSizes.hxx>
#include <PlotMgt_ListOfPlotterParameter.hxx>
#include <PlotMgt_PaperFormat.hxx>
#include <PlotMgt_Plotter.hxx>
#include <PlotMgt_PlotterAccessError.hxx>
#include <PlotMgt_PlotterDefinitionError.hxx>
#include <PlotMgt_PlotterDriver.hxx>
#include <PlotMgt_PlotterDriverPtr.hxx>
#include <PlotMgt_PlotterParameter.hxx>
#include <PlotMgt_PlotterTools.hxx>
#include <PlotMgt_PlottingType.hxx>
#include <PlotMgt_SequenceNodeOfListOfPlotterParameter.hxx>
#include <PlotMgt_TextManager.hxx>
#include <PlotMgt_TypeOfOrigin.hxx>
#include <PlotMgt_TypeOfPlotterParameter.hxx>
#include <PlotMgt_TypeOfQuality.hxx>
#include <PlotMgt_fill.hxx>
%};

%import PlotMgt.i
