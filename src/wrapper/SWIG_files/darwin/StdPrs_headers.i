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
%{

// Headers necessary to define wrapped classes.

#include<StdPrs_Curve.hxx>
#include<StdPrs_DeflectionCurve.hxx>
#include<StdPrs_HLRPolyShape.hxx>
#include<StdPrs_HLRShape.hxx>
#include<StdPrs_HLRToolShape.hxx>
#include<StdPrs_Plane.hxx>
#include<StdPrs_Point.hxx>
#include<StdPrs_PoleCurve.hxx>
#include<StdPrs_ShadedShape.hxx>
#include<StdPrs_ShadedSurface.hxx>
#include<StdPrs_ToolPoint.hxx>
#include<StdPrs_ToolRFace.hxx>
#include<StdPrs_ToolShadedShape.hxx>
#include<StdPrs_ToolVertex.hxx>
#include<StdPrs_Vertex.hxx>
#include<StdPrs_WFDeflectionRestrictedFace.hxx>
#include<StdPrs_WFDeflectionShape.hxx>
#include<StdPrs_WFDeflectionSurface.hxx>
#include<StdPrs_WFPoleSurface.hxx>
#include<StdPrs_WFRestrictedFace.hxx>
#include<StdPrs_WFShape.hxx>
#include<StdPrs_WFSurface.hxx>

// Additional headers necessary for compilation.

#include<Image.hxx>
#include<Image_AlienPixMap.hxx>
#include<Image_AveragePixelInterpolation.hxx>
#include<Image_BalancedPixelInterpolation.hxx>
#include<Image_BilinearPixelInterpolation.hxx>
#include<Image_Color.hxx>
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
#include<Image_Diff.hxx>
#include<Image_DitheringMethod.hxx>
#include<Image_FlipType.hxx>
#include<Image_Image.hxx>
#include<Image_IndexPixelMapHasher.hxx>
#include<Image_LookupTable.hxx>
#include<Image_PixMap.hxx>
#include<Image_PixMapData.hxx>
#include<Image_PixMap_Handle.hxx>
#include<Image_PixelAddress.hxx>
#include<Image_PixelFieldOfDColorImage.hxx>
#include<Image_PixelInterpolation.hxx>
#include<Image_PixelRowOfDColorImage.hxx>
#include<Image_PixelRowOfDIndexedImage.hxx>
#include<Image_PlanarPixelInterpolation.hxx>
#include<Image_PseudoColorImage.hxx>
#include<Image_TypeOfImage.hxx>

// Needed headers necessary for compilation.

#include<Handle_Prs3d_Presentation.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_Prs3d_Drawer.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Geom_Point.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_Curve.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Prs3d_Projector.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<TopoDS_Face.hxx>
#include<TopLoc_Location.hxx>
#include<Poly_Connect.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<Handle_TopTools_HSequenceOfShape.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<HLRAlgo_Projector.hxx>
#include<BRepAdaptor_Curve.hxx>
%}
