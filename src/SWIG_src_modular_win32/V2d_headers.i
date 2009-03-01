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

// Headers necessary to define wrapped classes.

#include<V2d_BackgroundGraphicObject.hxx>
#include<V2d_CircularGraphicGrid.hxx>
#include<V2d_CircularGrid.hxx>
#include<V2d_DefaultMap.hxx>
#include<V2d_RectangularGraphicGrid.hxx>
#include<V2d_RectangularGrid.hxx>
#include<V2d_TypeOfWindowResizingEffect.hxx>
#include<V2d_View.hxx>
#include<V2d_Viewer.hxx>
#include<V2d_ViewerPointer.hxx>
#include<V2d.hxx>
#include<Handle_V2d_BackgroundGraphicObject.hxx>
#include<Handle_V2d_CircularGraphicGrid.hxx>
#include<Handle_V2d_CircularGrid.hxx>
#include<Handle_V2d_RectangularGraphicGrid.hxx>
#include<Handle_V2d_RectangularGrid.hxx>
#include<Handle_V2d_View.hxx>
#include<Handle_V2d_Viewer.hxx>

// Additional headers necessary for compilation.

#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<V2d.hxx>
#include<Handle_Graphic2d_GraphicObject.hxx>
#include<Handle_Graphic2d_View.hxx>
#include<Handle_Aspect_WindowDriver.hxx>
#include<Handle_Graphic2d_DisplayList.hxx>
#include<Handle_PlotMgt_PlotterDriver.hxx>
#include<Quantity_Color.hxx>
#include<Handle_Aspect_GenericColorMap.hxx>
#include<Handle_Aspect_TypeMap.hxx>
#include<Handle_Aspect_WidthMap.hxx>
#include<Handle_Aspect_FontMap.hxx>
#include<Handle_Aspect_MarkMap.hxx>
#include<Handle_Aspect_GraphicDevice.hxx>
#include<Handle_Aspect_ColorMap.hxx>
%}
