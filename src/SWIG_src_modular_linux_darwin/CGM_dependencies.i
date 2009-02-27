/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{
#include <PlotMgt_ListOfPlotterParameter.hxx>
#include <PlotMgt_Plotter.hxx>
#include <PlotMgt_TypeOfPlotterParameter.hxx>
#include <PlotMgt_HListOfPlotterParameter.hxx>
#include <PlotMgt_HListOfMFTFonts.hxx>
#include <PlotMgt_PaperFormat.hxx>
#include <PlotMgt_PlotterDriver.hxx>
#include <PlotMgt_PlotterDriverPtr.hxx>
#include <PlotMgt_PlotterAccessError.hxx>
#include <PlotMgt_ListOfMFTFonts.hxx>
#include <PlotMgt_PlotterDefinitionError.hxx>
#include <PlotMgt_ListOfMFTSizes.hxx>
#include <PlotMgt_TextManager.hxx>
#include <PlotMgt_SequenceNodeOfListOfPlotterParameter.hxx>
#include <PlotMgt_fill.hxx>
#include <PlotMgt_TypeOfOrigin.hxx>
#include <PlotMgt_TypeOfQuality.hxx>
#include <PlotMgt_PlotterTools.hxx>
#include <PlotMgt_ImageFormat.hxx>
#include <PlotMgt_HListOfMFTSizes.hxx>
#include <PlotMgt_ImageDriver.hxx>
#include <PlotMgt_PlottingType.hxx>
#include <PlotMgt_PlotterParameter.hxx>
#include <Handle_PlotMgt_PlotterParameter.hxx>
#include <Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter.hxx>
#include <Handle_PlotMgt_HListOfMFTSizes.hxx>
#include <Handle_PlotMgt_ImageDriver.hxx>
#include <Handle_PlotMgt_Plotter.hxx>
#include <Handle_PlotMgt_PlotterDefinitionError.hxx>
#include <Handle_PlotMgt_PlotterAccessError.hxx>
#include <Handle_PlotMgt_HListOfPlotterParameter.hxx>
#include <Handle_PlotMgt_PlotterDriver.hxx>
#include <Handle_PlotMgt_HListOfMFTFonts.hxx>
#include <Handle_PlotMgt_TextManager.hxx>
%};

%import PlotMgt.i
