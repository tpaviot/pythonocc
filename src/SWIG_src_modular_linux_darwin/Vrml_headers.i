/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

#include<Handle_Vrml_AsciiText.hxx>
#include<Handle_Vrml_Coordinate3.hxx>
#include<Handle_Vrml_IndexedFaceSet.hxx>
#include<Handle_Vrml_IndexedLineSet.hxx>
#include<Handle_Vrml_LOD.hxx>
#include<Handle_Vrml_Material.hxx>
#include<Handle_Vrml_Normal.hxx>
#include<Handle_Vrml_SFImage.hxx>
#include<Handle_Vrml_TextureCoordinate2.hxx>
#include<Vrml.hxx>
#include<Vrml_AsciiText.hxx>
#include<Vrml_AsciiTextJustification.hxx>
#include<Vrml_Cone.hxx>
#include<Vrml_ConeParts.hxx>
#include<Vrml_Coordinate3.hxx>
#include<Vrml_Cube.hxx>
#include<Vrml_Cylinder.hxx>
#include<Vrml_CylinderParts.hxx>
#include<Vrml_DirectionalLight.hxx>
#include<Vrml_FaceType.hxx>
#include<Vrml_FontStyle.hxx>
#include<Vrml_FontStyleFamily.hxx>
#include<Vrml_FontStyleStyle.hxx>
#include<Vrml_Group.hxx>
#include<Vrml_IndexedFaceSet.hxx>
#include<Vrml_IndexedLineSet.hxx>
#include<Vrml_Info.hxx>
#include<Vrml_Instancing.hxx>
#include<Vrml_LOD.hxx>
#include<Vrml_Material.hxx>
#include<Vrml_MaterialBinding.hxx>
#include<Vrml_MaterialBindingAndNormalBinding.hxx>
#include<Vrml_MatrixTransform.hxx>
#include<Vrml_Normal.hxx>
#include<Vrml_NormalBinding.hxx>
#include<Vrml_OrthographicCamera.hxx>
#include<Vrml_PerspectiveCamera.hxx>
#include<Vrml_PointLight.hxx>
#include<Vrml_PointSet.hxx>
#include<Vrml_Rotation.hxx>
#include<Vrml_SFImage.hxx>
#include<Vrml_SFImageNumber.hxx>
#include<Vrml_SFRotation.hxx>
#include<Vrml_Scale.hxx>
#include<Vrml_Separator.hxx>
#include<Vrml_SeparatorRenderCulling.hxx>
#include<Vrml_ShapeHints.hxx>
#include<Vrml_ShapeType.hxx>
#include<Vrml_Sphere.hxx>
#include<Vrml_SpotLight.hxx>
#include<Vrml_Switch.hxx>
#include<Vrml_Texture2.hxx>
#include<Vrml_Texture2Transform.hxx>
#include<Vrml_Texture2Wrap.hxx>
#include<Vrml_TextureCoordinate2.hxx>
#include<Vrml_Transform.hxx>
#include<Vrml_TransformSeparator.hxx>
#include<Vrml_Translation.hxx>
#include<Vrml_VertexOrdering.hxx>
#include<Vrml_WWWAnchor.hxx>
#include<Vrml_WWWAnchorMap.hxx>
#include<Vrml_WWWInline.hxx>

// Additional headers necessary for compilation.

#include<Vrml.hxx>
#include<VrmlAPI.hxx>
#include<VrmlAPI_RepresentationOfShape.hxx>
#include<VrmlAPI_Writer.hxx>
#include<VrmlConverter_Curve.hxx>
#include<VrmlConverter_DeflectionCurve.hxx>
#include<VrmlConverter_Drawer.hxx>
#include<VrmlConverter_HLRShape.hxx>
#include<VrmlConverter_IsoAspect.hxx>
#include<VrmlConverter_LineAspect.hxx>
#include<VrmlConverter_PointAspect.hxx>
#include<VrmlConverter_Projector.hxx>
#include<VrmlConverter_ShadedShape.hxx>
#include<VrmlConverter_ShadingAspect.hxx>
#include<VrmlConverter_TypeOfCamera.hxx>
#include<VrmlConverter_TypeOfLight.hxx>
#include<VrmlConverter_WFDeflectionRestrictedFace.hxx>
#include<VrmlConverter_WFDeflectionShape.hxx>
#include<VrmlConverter_WFRestrictedFace.hxx>
#include<VrmlConverter_WFShape.hxx>
#include<VrmlData_Appearance.hxx>
#include<VrmlData_ArrayVec3d.hxx>
#include<VrmlData_Box.hxx>
#include<VrmlData_Color.hxx>
#include<VrmlData_Cone.hxx>
#include<VrmlData_Coordinate.hxx>
#include<VrmlData_Cylinder.hxx>
#include<VrmlData_DataMapOfShapeAppearance.hxx>
#include<VrmlData_ErrorStatus.hxx>
#include<VrmlData_Faceted.hxx>
#include<VrmlData_Geometry.hxx>
#include<VrmlData_Group.hxx>
#include<VrmlData_ImageTexture.hxx>
#include<VrmlData_InBuffer.hxx>
#include<VrmlData_IndexedFaceSet.hxx>
#include<VrmlData_IndexedLineSet.hxx>
#include<VrmlData_ListOfNode.hxx>
#include<VrmlData_MapOfNode.hxx>
#include<VrmlData_Material.hxx>
#include<VrmlData_Node.hxx>
#include<VrmlData_Normal.hxx>
#include<VrmlData_Scene.hxx>
#include<VrmlData_ShapeConvert.hxx>
#include<VrmlData_ShapeNode.hxx>
#include<VrmlData_Sphere.hxx>
#include<VrmlData_Texture.hxx>
#include<VrmlData_TextureCoordinate.hxx>
#include<VrmlData_TextureTransform.hxx>
#include<VrmlData_UnknownNode.hxx>
#include<VrmlData_WorldInfo.hxx>
#include<Vrml_AsciiText.hxx>
#include<Vrml_AsciiTextJustification.hxx>
#include<Vrml_Cone.hxx>
#include<Vrml_ConeParts.hxx>
#include<Vrml_Coordinate3.hxx>
#include<Vrml_Cube.hxx>
#include<Vrml_Cylinder.hxx>
#include<Vrml_CylinderParts.hxx>
#include<Vrml_DirectionalLight.hxx>
#include<Vrml_FaceType.hxx>
#include<Vrml_FontStyle.hxx>
#include<Vrml_FontStyleFamily.hxx>
#include<Vrml_FontStyleStyle.hxx>
#include<Vrml_Group.hxx>
#include<Vrml_IndexedFaceSet.hxx>
#include<Vrml_IndexedLineSet.hxx>
#include<Vrml_Info.hxx>
#include<Vrml_Instancing.hxx>
#include<Vrml_LOD.hxx>
#include<Vrml_Material.hxx>
#include<Vrml_MaterialBinding.hxx>
#include<Vrml_MaterialBindingAndNormalBinding.hxx>
#include<Vrml_MatrixTransform.hxx>
#include<Vrml_Normal.hxx>
#include<Vrml_NormalBinding.hxx>
#include<Vrml_OrthographicCamera.hxx>
#include<Vrml_PerspectiveCamera.hxx>
#include<Vrml_PointLight.hxx>
#include<Vrml_PointSet.hxx>
#include<Vrml_Rotation.hxx>
#include<Vrml_SFImage.hxx>
#include<Vrml_SFImageNumber.hxx>
#include<Vrml_SFRotation.hxx>
#include<Vrml_Scale.hxx>
#include<Vrml_Separator.hxx>
#include<Vrml_SeparatorRenderCulling.hxx>
#include<Vrml_ShapeHints.hxx>
#include<Vrml_ShapeType.hxx>
#include<Vrml_Sphere.hxx>
#include<Vrml_SpotLight.hxx>
#include<Vrml_Switch.hxx>
#include<Vrml_Texture2.hxx>
#include<Vrml_Texture2Transform.hxx>
#include<Vrml_Texture2Wrap.hxx>
#include<Vrml_TextureCoordinate2.hxx>
#include<Vrml_Transform.hxx>
#include<Vrml_TransformSeparator.hxx>
#include<Vrml_Translation.hxx>
#include<Vrml_VertexOrdering.hxx>
#include<Vrml_WWWAnchor.hxx>
#include<Vrml_WWWAnchorMap.hxx>
#include<Vrml_WWWInline.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TCollection_AsciiString.hxx>
#include<Quantity_Color.hxx>
#include<gp_Vec.hxx>
#include<Handle_TColStd_HArray1OfAsciiString.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColgp_HArray1OfVec.hxx>
#include<gp_Vec2d.hxx>
#include<Vrml.hxx>
#include<gp_Trsf.hxx>
#include<Handle_Quantity_HArray1OfColor.hxx>
#include<Handle_TColgp_HArray1OfVec2d.hxx>
%}
