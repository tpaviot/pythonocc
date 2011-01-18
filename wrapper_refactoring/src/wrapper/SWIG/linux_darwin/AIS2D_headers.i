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

#include<AIS2D.hxx>
#include<AIS2D_ClearMode.hxx>
#include<AIS2D_DataMapIteratorOfDataMapOfIOStatus.hxx>
#include<AIS2D_DataMapIteratorOfDataMapOfLC.hxx>
#include<AIS2D_DataMapIteratorOfDataMapOfLocStat.hxx>
#include<AIS2D_DataMapIteratorOfDataMapOfPrimAspects.hxx>
#include<AIS2D_DataMapNodeOfDataMapOfIOStatus.hxx>
#include<AIS2D_DataMapNodeOfDataMapOfLC.hxx>
#include<AIS2D_DataMapNodeOfDataMapOfLocStat.hxx>
#include<AIS2D_DataMapNodeOfDataMapOfPrimAspects.hxx>
#include<AIS2D_DataMapOfIOStatus.hxx>
#include<AIS2D_DataMapOfLC.hxx>
#include<AIS2D_DataMapOfLocStat.hxx>
#include<AIS2D_DataMapOfPrimAspects.hxx>
#include<AIS2D_DisplayStatus.hxx>
#include<AIS2D_GlobalStatus.hxx>
#include<AIS2D_HSequenceOfIO.hxx>
#include<AIS2D_HSequenceOfPrimArchit.hxx>
#include<AIS2D_InteractiveContext.hxx>
#include<AIS2D_InteractiveObject.hxx>
#include<AIS2D_KindOfDimension.hxx>
#include<AIS2D_KindOfIO.hxx>
#include<AIS2D_KindOfPrimitive.hxx>
#include<AIS2D_ListIteratorOfListOfIO.hxx>
#include<AIS2D_ListNodeOfListOfIO.hxx>
#include<AIS2D_ListOfIO.hxx>
#include<AIS2D_LocalContext.hxx>
#include<AIS2D_LocalStatus.hxx>
#include<AIS2D_PToListOfInt.hxx>
#include<AIS2D_PrimitiveArchit.hxx>
#include<AIS2D_ProjShape.hxx>
#include<AIS2D_SelectStatus.hxx>
#include<AIS2D_SequenceNodeOfSequenceOfIO.hxx>
#include<AIS2D_SequenceNodeOfSequenceOfPrimArchit.hxx>
#include<AIS2D_SequenceOfIO.hxx>
#include<AIS2D_SequenceOfPrimArchit.hxx>
#include<AIS2D_StatusOfDetection.hxx>
#include<AIS2D_StatusOfPick.hxx>
#include<AIS2D_TypeOfAxis.hxx>
#include<AIS2D_TypeOfDetection.hxx>
#include<Handle_AIS2D_DataMapNodeOfDataMapOfIOStatus.hxx>
#include<Handle_AIS2D_DataMapNodeOfDataMapOfLC.hxx>
#include<Handle_AIS2D_DataMapNodeOfDataMapOfLocStat.hxx>
#include<Handle_AIS2D_DataMapNodeOfDataMapOfPrimAspects.hxx>
#include<Handle_AIS2D_GlobalStatus.hxx>
#include<Handle_AIS2D_HSequenceOfIO.hxx>
#include<Handle_AIS2D_HSequenceOfPrimArchit.hxx>
#include<Handle_AIS2D_InteractiveContext.hxx>
#include<Handle_AIS2D_InteractiveObject.hxx>
#include<Handle_AIS2D_ListNodeOfListOfIO.hxx>
#include<Handle_AIS2D_LocalContext.hxx>
#include<Handle_AIS2D_LocalStatus.hxx>
#include<Handle_AIS2D_PrimitiveArchit.hxx>
#include<Handle_AIS2D_ProjShape.hxx>
#include<Handle_AIS2D_SequenceNodeOfSequenceOfIO.hxx>
#include<Handle_AIS2D_SequenceNodeOfSequenceOfPrimArchit.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Prs2d_Drawer.hxx>
#include<Handle_Prs2d_AspectRoot.hxx>
#include<Handle_Graphic2d_Primitive.hxx>
#include<HLRAlgo_Projector.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Graphic2d_Line.hxx>
#include<Handle_V2d_Viewer.hxx>
#include<Handle_V2d_View.hxx>
#include<Handle_MMgt_TShared.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Quantity_Color.hxx>
#include<Aspect_FontStyle.hxx>
#include<AIS2D.hxx>
#include<TColStd_MapOfTransient.hxx>
%}
