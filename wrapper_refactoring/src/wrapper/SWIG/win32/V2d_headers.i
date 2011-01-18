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

// Headers necessary to define wrapped classes.

#include<Handle_V2d_BackgroundGraphicObject.hxx>
#include<Handle_V2d_CircularGraphicGrid.hxx>
#include<Handle_V2d_CircularGrid.hxx>
#include<Handle_V2d_RectangularGraphicGrid.hxx>
#include<Handle_V2d_RectangularGrid.hxx>
#include<Handle_V2d_View.hxx>
#include<Handle_V2d_Viewer.hxx>
#include<V2d.hxx>
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
