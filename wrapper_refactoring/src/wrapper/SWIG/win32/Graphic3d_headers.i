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

#include<Graphic3d_Array1OfBytes.hxx>
#include<Graphic3d_Array1OfVector.hxx>
#include<Graphic3d_Array1OfVertex.hxx>
#include<Graphic3d_Array1OfVertexC.hxx>
#include<Graphic3d_Array1OfVertexN.hxx>
#include<Graphic3d_Array1OfVertexNC.hxx>
#include<Graphic3d_Array1OfVertexNT.hxx>
#include<Graphic3d_Array2OfVertex.hxx>
#include<Graphic3d_Array2OfVertexC.hxx>
#include<Graphic3d_Array2OfVertexN.hxx>
#include<Graphic3d_Array2OfVertexNC.hxx>
#include<Graphic3d_Array2OfVertexNT.hxx>
#include<Graphic3d_ArrayOfPoints.hxx>
#include<Graphic3d_ArrayOfPolygons.hxx>
#include<Graphic3d_ArrayOfPolylines.hxx>
#include<Graphic3d_ArrayOfPrimitives.hxx>
#include<Graphic3d_ArrayOfQuadrangleStrips.hxx>
#include<Graphic3d_ArrayOfQuadrangles.hxx>
#include<Graphic3d_ArrayOfSegments.hxx>
#include<Graphic3d_ArrayOfTriangleFans.hxx>
#include<Graphic3d_ArrayOfTriangleStrips.hxx>
#include<Graphic3d_ArrayOfTriangles.hxx>
#include<Graphic3d_AspectFillArea3d.hxx>
#include<Graphic3d_AspectLine3d.hxx>
#include<Graphic3d_AspectMarker3d.hxx>
#include<Graphic3d_AspectText3d.hxx>
#include<Graphic3d_AspectTextDefinitionError.hxx>
#include<Graphic3d_CBitFields16.hxx>
#include<Graphic3d_CBitFields20.hxx>
#include<Graphic3d_CBitFields4.hxx>
#include<Graphic3d_CBitFields8.hxx>
#include<Graphic3d_CBounds.hxx>
#include<Graphic3d_CGroup.hxx>
#include<Graphic3d_CInitTexture.hxx>
#include<Graphic3d_CLight.hxx>
#include<Graphic3d_CPick.hxx>
#include<Graphic3d_CPlane.hxx>
#include<Graphic3d_CStructure.hxx>
#include<Graphic3d_CTexture.hxx>
#include<Graphic3d_CTransPersStruct.hxx>
#include<Graphic3d_CUserDraw.hxx>
#include<Graphic3d_CView.hxx>
#include<Graphic3d_CycleError.hxx>
#include<Graphic3d_DataStructureManager.hxx>
#include<Graphic3d_ExportFormat.hxx>
#include<Graphic3d_GraphicDevice.hxx>
#include<Graphic3d_GraphicDriver.hxx>
#include<Graphic3d_Group.hxx>
#include<Graphic3d_GroupDefinitionError.hxx>
#include<Graphic3d_HArray1OfBytes.hxx>
#include<Graphic3d_HSequenceOfGroup.hxx>
#include<Graphic3d_HSequenceOfStructure.hxx>
#include<Graphic3d_HSetOfGroup.hxx>
#include<Graphic3d_HorizontalTextAlignment.hxx>
#include<Graphic3d_InitialisationError.hxx>
#include<Graphic3d_ListIteratorOfListOfPArray.hxx>
#include<Graphic3d_ListIteratorOfListOfShortReal.hxx>
#include<Graphic3d_ListIteratorOfSetListOfSetOfGroup.hxx>
#include<Graphic3d_ListNodeOfListOfPArray.hxx>
#include<Graphic3d_ListNodeOfListOfShortReal.hxx>
#include<Graphic3d_ListNodeOfSetListOfSetOfGroup.hxx>
#include<Graphic3d_ListOfPArray.hxx>
#include<Graphic3d_ListOfShortReal.hxx>
#include<Graphic3d_MapIteratorOfMapOfStructure.hxx>
#include<Graphic3d_MapOfStructure.hxx>
#include<Graphic3d_MaterialAspect.hxx>
#include<Graphic3d_MaterialDefinitionError.hxx>
#include<Graphic3d_NameOfFont.hxx>
#include<Graphic3d_NameOfMaterial.hxx>
#include<Graphic3d_NameOfTexture1D.hxx>
#include<Graphic3d_NameOfTexture2D.hxx>
#include<Graphic3d_NameOfTextureEnv.hxx>
#include<Graphic3d_NameOfTexturePlane.hxx>
#include<Graphic3d_PickIdDefinitionError.hxx>
#include<Graphic3d_Plotter.hxx>
#include<Graphic3d_PlotterDefinitionError.hxx>
#include<Graphic3d_PrimitiveArray.hxx>
#include<Graphic3d_PriorityDefinitionError.hxx>
#include<Graphic3d_SequenceNodeOfSequenceOfAddress.hxx>
#include<Graphic3d_SequenceNodeOfSequenceOfGroup.hxx>
#include<Graphic3d_SequenceNodeOfSequenceOfStructure.hxx>
#include<Graphic3d_SequenceOfAddress.hxx>
#include<Graphic3d_SequenceOfGroup.hxx>
#include<Graphic3d_SequenceOfStructure.hxx>
#include<Graphic3d_SetIteratorOfSetOfGroup.hxx>
#include<Graphic3d_SetListOfSetOfGroup.hxx>
#include<Graphic3d_SetOfGroup.hxx>
#include<Graphic3d_SortType.hxx>
#include<Graphic3d_StdMapNodeOfMapOfStructure.hxx>
#include<Graphic3d_Strips.hxx>
#include<Graphic3d_StructPtr.hxx>
#include<Graphic3d_Structure.hxx>
#include<Graphic3d_StructureDefinitionError.hxx>
#include<Graphic3d_StructureManager.hxx>
#include<Graphic3d_TextPath.hxx>
#include<Graphic3d_Texture1D.hxx>
#include<Graphic3d_Texture1Dmanual.hxx>
#include<Graphic3d_Texture1Dsegment.hxx>
#include<Graphic3d_Texture2D.hxx>
#include<Graphic3d_Texture2Dmanual.hxx>
#include<Graphic3d_Texture2Dplane.hxx>
#include<Graphic3d_TextureEnv.hxx>
#include<Graphic3d_TextureMap.hxx>
#include<Graphic3d_TextureRoot.hxx>
#include<Graphic3d_TransModeFlags.hxx>
#include<Graphic3d_TransformError.hxx>
#include<Graphic3d_TypeOfComposition.hxx>
#include<Graphic3d_TypeOfConnection.hxx>
#include<Graphic3d_TypeOfMaterial.hxx>
#include<Graphic3d_TypeOfPolygon.hxx>
#include<Graphic3d_TypeOfPrimitive.hxx>
#include<Graphic3d_TypeOfPrimitiveArray.hxx>
#include<Graphic3d_TypeOfReflection.hxx>
#include<Graphic3d_TypeOfStructure.hxx>
#include<Graphic3d_TypeOfTexture.hxx>
#include<Graphic3d_TypeOfTextureMode.hxx>
#include<Graphic3d_Vector.hxx>
#include<Graphic3d_VectorError.hxx>
#include<Graphic3d_Vertex.hxx>
#include<Graphic3d_VertexC.hxx>
#include<Graphic3d_VertexN.hxx>
#include<Graphic3d_VertexNC.hxx>
#include<Graphic3d_VertexNT.hxx>
#include<Graphic3d_VerticalTextAlignment.hxx>
#include<Graphic3d_WNTGraphicDevice.hxx>
#include<Handle_Graphic3d_ArrayOfPoints.hxx>
#include<Handle_Graphic3d_ArrayOfPolygons.hxx>
#include<Handle_Graphic3d_ArrayOfPolylines.hxx>
#include<Handle_Graphic3d_ArrayOfPrimitives.hxx>
#include<Handle_Graphic3d_ArrayOfQuadrangleStrips.hxx>
#include<Handle_Graphic3d_ArrayOfQuadrangles.hxx>
#include<Handle_Graphic3d_ArrayOfSegments.hxx>
#include<Handle_Graphic3d_ArrayOfTriangleFans.hxx>
#include<Handle_Graphic3d_ArrayOfTriangleStrips.hxx>
#include<Handle_Graphic3d_ArrayOfTriangles.hxx>
#include<Handle_Graphic3d_AspectFillArea3d.hxx>
#include<Handle_Graphic3d_AspectLine3d.hxx>
#include<Handle_Graphic3d_AspectMarker3d.hxx>
#include<Handle_Graphic3d_AspectText3d.hxx>
#include<Handle_Graphic3d_AspectTextDefinitionError.hxx>
#include<Handle_Graphic3d_CycleError.hxx>
#include<Handle_Graphic3d_DataStructureManager.hxx>
#include<Handle_Graphic3d_GraphicDevice.hxx>
#include<Handle_Graphic3d_GraphicDriver.hxx>
#include<Handle_Graphic3d_Group.hxx>
#include<Handle_Graphic3d_GroupDefinitionError.hxx>
#include<Handle_Graphic3d_HArray1OfBytes.hxx>
#include<Handle_Graphic3d_HSequenceOfGroup.hxx>
#include<Handle_Graphic3d_HSequenceOfStructure.hxx>
#include<Handle_Graphic3d_HSetOfGroup.hxx>
#include<Handle_Graphic3d_InitialisationError.hxx>
#include<Handle_Graphic3d_ListNodeOfListOfPArray.hxx>
#include<Handle_Graphic3d_ListNodeOfListOfShortReal.hxx>
#include<Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup.hxx>
#include<Handle_Graphic3d_MaterialDefinitionError.hxx>
#include<Handle_Graphic3d_PickIdDefinitionError.hxx>
#include<Handle_Graphic3d_Plotter.hxx>
#include<Handle_Graphic3d_PlotterDefinitionError.hxx>
#include<Handle_Graphic3d_PriorityDefinitionError.hxx>
#include<Handle_Graphic3d_SequenceNodeOfSequenceOfAddress.hxx>
#include<Handle_Graphic3d_SequenceNodeOfSequenceOfGroup.hxx>
#include<Handle_Graphic3d_SequenceNodeOfSequenceOfStructure.hxx>
#include<Handle_Graphic3d_StdMapNodeOfMapOfStructure.hxx>
#include<Handle_Graphic3d_Structure.hxx>
#include<Handle_Graphic3d_StructureDefinitionError.hxx>
#include<Handle_Graphic3d_StructureManager.hxx>
#include<Handle_Graphic3d_Texture1D.hxx>
#include<Handle_Graphic3d_Texture1Dmanual.hxx>
#include<Handle_Graphic3d_Texture1Dsegment.hxx>
#include<Handle_Graphic3d_Texture2D.hxx>
#include<Handle_Graphic3d_Texture2Dmanual.hxx>
#include<Handle_Graphic3d_Texture2Dplane.hxx>
#include<Handle_Graphic3d_TextureEnv.hxx>
#include<Handle_Graphic3d_TextureMap.hxx>
#include<Handle_Graphic3d_TextureRoot.hxx>
#include<Handle_Graphic3d_TransformError.hxx>
#include<Handle_Graphic3d_VectorError.hxx>
#include<Handle_Graphic3d_WNTGraphicDevice.hxx>

// Additional headers necessary for compilation.

#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Standard_SStream.hxx>
#include<Handle_Aspect_GraphicDriver.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<Handle_AlienImage_AlienImage.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Quantity_Color.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<gp_Pnt2d.hxx>
#include<Aspect_Array1OfEdge.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<Handle_Aspect_GraphicDevice.hxx>
%}
