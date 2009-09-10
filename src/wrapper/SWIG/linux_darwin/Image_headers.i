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

#include<Handle_Image_ColorImage.hxx>
#include<Handle_Image_DColorImage.hxx>
#include<Handle_Image_DIndexedImage.hxx>
#include<Handle_Image_DataMapNodeOfColorPixelDataMap.hxx>
#include<Handle_Image_DataMapNodeOfLookupTable.hxx>
#include<Handle_Image_Image.hxx>
#include<Handle_Image_PseudoColorImage.hxx>
#include<Image.hxx>
#include<Image_AveragePixelInterpolation.hxx>
#include<Image_BalancedPixelInterpolation.hxx>
#include<Image_BilinearPixelInterpolation.hxx>
#include<Image_ColorImage.hxx>
#include<Image_ColorPixelDataMap.hxx>
#include<Image_ColorPixelMapHasher.hxx>
#include<Image_Convertor.hxx>
#include<Image_DColorImage.hxx>
#include<Image_DIndexedImage.hxx>
#include<Image_DataMapIteratorOfColorPixelDataMap.hxx>
#include<Image_DataMapIteratorOfLookupTable.hxx>
#include<Image_DataMapNodeOfColorPixelDataMap.hxx>
#include<Image_DataMapNodeOfLookupTable.hxx>
#include<Image_DitheringMethod.hxx>
#include<Image_FlipType.hxx>
#include<Image_Image.hxx>
#include<Image_IndexPixelMapHasher.hxx>
#include<Image_LookupTable.hxx>
#include<Image_PixelAddress.hxx>
#include<Image_PixelFieldOfDColorImage.hxx>
#include<Image_PixelInterpolation.hxx>
#include<Image_PixelRowOfDColorImage.hxx>
#include<Image_PixelRowOfDIndexedImage.hxx>
#include<Image_PlanarPixelInterpolation.hxx>
#include<Image_PseudoColorImage.hxx>
#include<Image_TypeOfImage.hxx>

// Additional headers necessary for compilation.

#include<ImageUtility.hxx>
#include<ImageUtility_X11Display.hxx>
#include<ImageUtility_X11Dump.hxx>
#include<ImageUtility_X11GC.hxx>
#include<ImageUtility_X11Window.hxx>
#include<ImageUtility_X11XImage.hxx>
#include<ImageUtility_XPR.hxx>
#include<ImageUtility_XWD.hxx>
#include<ImageUtility_XWUD.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Aspect_IndexPixel.hxx>
#include<Handle_Quantity_HArray1OfColor.hxx>
#include<Quantity_Array1OfColor.hxx>
#include<Handle_Standard_Type.hxx>
#include<Aspect_Pixel.hxx>
#include<Aspect_ColorPixel.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Trsf.hxx>
#include<Handle_Aspect_GenericColorMap.hxx>
#include<Image.hxx>
#include<Handle_Aspect_ColorMap.hxx>
%}
