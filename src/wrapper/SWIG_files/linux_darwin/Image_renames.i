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
%rename(DownCast) Handle_Image_Image::DownCast;
%rename(DownCast) Handle_Image_DColorImage::DownCast;
%rename(DownCast) Handle_Image_DIndexedImage::DownCast;
%rename(DownCast) Handle_Image_PseudoColorImage::DownCast;
%rename(DownCast) Handle_Image_DataMapNodeOfLookupTable::DownCast;
%rename(DownCast) Handle_Image_PixMap::DownCast;
%rename(DownCast) Handle_Image_DataMapNodeOfColorPixelDataMap::DownCast;
%rename(DownCast) Handle_Image_ColorImage::DownCast;
%rename(HashCode) Image_IndexPixelMapHasher::HashCode;
%rename(IsEqual) Image_IndexPixelMapHasher::IsEqual;
%rename(Zoom) Image::Zoom;
%rename(Rotate) Image::Rotate;
%rename(Translate) Image::Translate;
%rename(Affine) Image::Affine;
%rename(HashCode) Image_ColorPixelMapHasher::HashCode;
%rename(IsEqual) Image_ColorPixelMapHasher::IsEqual;
