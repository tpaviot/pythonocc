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
%rename(downcast) Handle_Image_Image::DownCast;
%rename(downcast) Handle_Image_DColorImage::DownCast;
%rename(downcast) Handle_Image_DIndexedImage::DownCast;
%rename(downcast) Handle_Image_PseudoColorImage::DownCast;
%rename(downcast) Handle_Image_DataMapNodeOfLookupTable::DownCast;
%rename(downcast) Handle_Image_DataMapNodeOfColorPixelDataMap::DownCast;
%rename(downcast) Handle_Image_ColorImage::DownCast;
%rename(hashcode) Image_IndexPixelMapHasher::HashCode;
%rename(isequal) Image_IndexPixelMapHasher::IsEqual;
%rename(zoom) Image::Zoom;
%rename(rotate) Image::Rotate;
%rename(translate) Image::Translate;
%rename(affine) Image::Affine;
%rename(hashcode) Image_ColorPixelMapHasher::HashCode;
%rename(isequal) Image_ColorPixelMapHasher::IsEqual;
