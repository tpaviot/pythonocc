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

#include<Handle_IGESSolid_Block.hxx>
#include<Handle_IGESSolid_BooleanTree.hxx>
#include<Handle_IGESSolid_ConeFrustum.hxx>
#include<Handle_IGESSolid_ConicalSurface.hxx>
#include<Handle_IGESSolid_Cylinder.hxx>
#include<Handle_IGESSolid_CylindricalSurface.hxx>
#include<Handle_IGESSolid_EdgeList.hxx>
#include<Handle_IGESSolid_Ellipsoid.hxx>
#include<Handle_IGESSolid_Face.hxx>
#include<Handle_IGESSolid_GeneralModule.hxx>
#include<Handle_IGESSolid_HArray1OfFace.hxx>
#include<Handle_IGESSolid_HArray1OfLoop.hxx>
#include<Handle_IGESSolid_HArray1OfShell.hxx>
#include<Handle_IGESSolid_HArray1OfVertexList.hxx>
#include<Handle_IGESSolid_Loop.hxx>
#include<Handle_IGESSolid_ManifoldSolid.hxx>
#include<Handle_IGESSolid_PlaneSurface.hxx>
#include<Handle_IGESSolid_Protocol.hxx>
#include<Handle_IGESSolid_ReadWriteModule.hxx>
#include<Handle_IGESSolid_RightAngularWedge.hxx>
#include<Handle_IGESSolid_SelectedComponent.hxx>
#include<Handle_IGESSolid_Shell.hxx>
#include<Handle_IGESSolid_SolidAssembly.hxx>
#include<Handle_IGESSolid_SolidInstance.hxx>
#include<Handle_IGESSolid_SolidOfLinearExtrusion.hxx>
#include<Handle_IGESSolid_SolidOfRevolution.hxx>
#include<Handle_IGESSolid_SpecificModule.hxx>
#include<Handle_IGESSolid_Sphere.hxx>
#include<Handle_IGESSolid_SphericalSurface.hxx>
#include<Handle_IGESSolid_ToroidalSurface.hxx>
#include<Handle_IGESSolid_Torus.hxx>
#include<Handle_IGESSolid_VertexList.hxx>
#include<IGESSolid.hxx>
#include<IGESSolid_Array1OfFace.hxx>
#include<IGESSolid_Array1OfLoop.hxx>
#include<IGESSolid_Array1OfShell.hxx>
#include<IGESSolid_Array1OfVertexList.hxx>
#include<IGESSolid_Block.hxx>
#include<IGESSolid_BooleanTree.hxx>
#include<IGESSolid_ConeFrustum.hxx>
#include<IGESSolid_ConicalSurface.hxx>
#include<IGESSolid_Cylinder.hxx>
#include<IGESSolid_CylindricalSurface.hxx>
#include<IGESSolid_EdgeList.hxx>
#include<IGESSolid_Ellipsoid.hxx>
#include<IGESSolid_Face.hxx>
#include<IGESSolid_GeneralModule.hxx>
#include<IGESSolid_HArray1OfFace.hxx>
#include<IGESSolid_HArray1OfLoop.hxx>
#include<IGESSolid_HArray1OfShell.hxx>
#include<IGESSolid_HArray1OfVertexList.hxx>
#include<IGESSolid_Loop.hxx>
#include<IGESSolid_ManifoldSolid.hxx>
#include<IGESSolid_PlaneSurface.hxx>
#include<IGESSolid_Protocol.hxx>
#include<IGESSolid_ReadWriteModule.hxx>
#include<IGESSolid_RightAngularWedge.hxx>
#include<IGESSolid_SelectedComponent.hxx>
#include<IGESSolid_Shell.hxx>
#include<IGESSolid_SolidAssembly.hxx>
#include<IGESSolid_SolidInstance.hxx>
#include<IGESSolid_SolidOfLinearExtrusion.hxx>
#include<IGESSolid_SolidOfRevolution.hxx>
#include<IGESSolid_SpecificModule.hxx>
#include<IGESSolid_Sphere.hxx>
#include<IGESSolid_SphericalSurface.hxx>
#include<IGESSolid_ToolBlock.hxx>
#include<IGESSolid_ToolBooleanTree.hxx>
#include<IGESSolid_ToolConeFrustum.hxx>
#include<IGESSolid_ToolConicalSurface.hxx>
#include<IGESSolid_ToolCylinder.hxx>
#include<IGESSolid_ToolCylindricalSurface.hxx>
#include<IGESSolid_ToolEdgeList.hxx>
#include<IGESSolid_ToolEllipsoid.hxx>
#include<IGESSolid_ToolFace.hxx>
#include<IGESSolid_ToolLoop.hxx>
#include<IGESSolid_ToolManifoldSolid.hxx>
#include<IGESSolid_ToolPlaneSurface.hxx>
#include<IGESSolid_ToolRightAngularWedge.hxx>
#include<IGESSolid_ToolSelectedComponent.hxx>
#include<IGESSolid_ToolShell.hxx>
#include<IGESSolid_ToolSolidAssembly.hxx>
#include<IGESSolid_ToolSolidInstance.hxx>
#include<IGESSolid_ToolSolidOfLinearExtrusion.hxx>
#include<IGESSolid_ToolSolidOfRevolution.hxx>
#include<IGESSolid_ToolSphere.hxx>
#include<IGESSolid_ToolSphericalSurface.hxx>
#include<IGESSolid_ToolToroidalSurface.hxx>
#include<IGESSolid_ToolTorus.hxx>
#include<IGESSolid_ToolVertexList.hxx>
#include<IGESSolid_TopoBuilder.hxx>
#include<IGESSolid_ToroidalSurface.hxx>
#include<IGESSolid_Torus.hxx>
#include<IGESSolid_VertexList.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<Interface_GraphContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_IGESData_IGESEntity.hxx>
#include<gp_XYZ.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<Handle_IGESData_IGESReaderData.hxx>
#include<IGESData_ParamReader.hxx>
#include<IGESData_IGESWriter.hxx>
#include<Interface_EntityIterator.hxx>
#include<IGESData_DirChecker.hxx>
#include<Interface_ShareTool.hxx>
#include<Handle_Interface_Check.hxx>
#include<Interface_CopyTool.hxx>
#include<IGESData_IGESDumper.hxx>
#include<Handle_Message_Messenger.hxx>
#include<Handle_IGESData_HArray1OfIGESEntity.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_IGESGeom_Point.hxx>
#include<Handle_IGESGeom_Direction.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<IGESSolid.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfInteger.hxx>
#include<Handle_IGESBasic_HArray1OfHArray1OfIGESEntity.hxx>
#include<Handle_IGESGeom_HArray1OfTransformationMatrix.hxx>
#include<Handle_IGESGeom_TransformationMatrix.hxx>
%}
