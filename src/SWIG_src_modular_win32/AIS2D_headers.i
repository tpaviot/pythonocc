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
#include<AIS2D_PrimitiveArchit.hxx>
#include<AIS2D_ProjShape.hxx>
#include<AIS2D_PToListOfInt.hxx>
#include<AIS2D_SelectStatus.hxx>
#include<AIS2D_SequenceNodeOfSequenceOfIO.hxx>
#include<AIS2D_SequenceNodeOfSequenceOfPrimArchit.hxx>
#include<AIS2D_SequenceOfIO.hxx>
#include<AIS2D_SequenceOfPrimArchit.hxx>
#include<AIS2D_StatusOfDetection.hxx>
#include<AIS2D_StatusOfPick.hxx>
#include<AIS2D_TypeOfAxis.hxx>
#include<AIS2D_TypeOfDetection.hxx>
#include<AIS2D.hxx>
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
#include<AIS2D_PrimitiveArchit.hxx>
#include<AIS2D_ProjShape.hxx>
#include<AIS2D_PToListOfInt.hxx>
#include<AIS2D_SelectStatus.hxx>
#include<AIS2D_SequenceNodeOfSequenceOfIO.hxx>
#include<AIS2D_SequenceNodeOfSequenceOfPrimArchit.hxx>
#include<AIS2D_SequenceOfIO.hxx>
#include<AIS2D_SequenceOfPrimArchit.hxx>
#include<AIS2D_StatusOfDetection.hxx>
#include<AIS2D_StatusOfPick.hxx>
#include<AIS2D_TypeOfAxis.hxx>
#include<AIS2D_TypeOfDetection.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Graphic2d_Primitive.hxx>
#include<Handle_Prs2d_AspectRoot.hxx>
#include<Handle_V2d_Viewer.hxx>
#include<Handle_V2d_View.hxx>
#include<Handle_MMgt_TShared.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Quantity_Color.hxx>
#include<Aspect_FontStyle.hxx>
#include<Handle_Prs2d_Drawer.hxx>
#include<HLRAlgo_Projector.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Graphic2d_Line.hxx>
#include<AIS2D.hxx>
#include<TColStd_MapOfTransient.hxx>
%}
