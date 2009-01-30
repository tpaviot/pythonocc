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

#include<ShapeExtend_BasicMsgRegistrator.hxx>
#include<ShapeExtend_ComplexCurve.hxx>
#include<ShapeExtend_CompositeSurface.hxx>
#include<ShapeExtend_DataMapIteratorOfDataMapOfShapeListOfMsg.hxx>
#include<ShapeExtend_DataMapIteratorOfDataMapOfTransientListOfMsg.hxx>
#include<ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg.hxx>
#include<ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg.hxx>
#include<ShapeExtend_DataMapOfShapeListOfMsg.hxx>
#include<ShapeExtend_DataMapOfTransientListOfMsg.hxx>
#include<ShapeExtend_Explorer.hxx>
#include<ShapeExtend_MsgRegistrator.hxx>
#include<ShapeExtend_Parametrisation.hxx>
#include<ShapeExtend_Status.hxx>
#include<ShapeExtend_WireData.hxx>
#include<ShapeExtend.hxx>
#include<Handle_ShapeExtend_BasicMsgRegistrator.hxx>
#include<Handle_ShapeExtend_ComplexCurve.hxx>
#include<Handle_ShapeExtend_CompositeSurface.hxx>
#include<Handle_ShapeExtend_DataMapNodeOfDataMapOfShapeListOfMsg.hxx>
#include<Handle_ShapeExtend_DataMapNodeOfDataMapOfTransientListOfMsg.hxx>
#include<Handle_ShapeExtend_MsgRegistrator.hxx>
#include<Handle_ShapeExtend_WireData.hxx>

// Additional headers necessary for compilation.

#include<BRepFill.hxx>
#include<BRepFilletAPI_LocalOperation.hxx>
#include<BRepFilletAPI_MakeChamfer.hxx>
#include<BRepFilletAPI_MakeFillet.hxx>
#include<BRepFilletAPI_MakeFillet2d.hxx>
#include<BRepFill_ACRLaw.hxx>
#include<BRepFill_ApproxSeewing.hxx>
#include<BRepFill_CompatibleWires.hxx>
#include<BRepFill_ComputeCLine.hxx>
#include<BRepFill_CurveConstraint.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfNodeDataMapOfShapeShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfNodeShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfOrientedShapeListOfShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeDataMapOfShapeListOfShape.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfPnt.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfReal.hxx>
#include<BRepFill_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfNodeDataMapOfShapeShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfNodeShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfOrientedShapeListOfShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeDataMapOfShapeListOfShape.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfPnt.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfReal.hxx>
#include<BRepFill_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepFill_DataMapOfNodeDataMapOfShapeShape.hxx>
#include<BRepFill_DataMapOfNodeShape.hxx>
#include<BRepFill_DataMapOfOrientedShapeListOfShape.hxx>
#include<BRepFill_DataMapOfShapeDataMapOfShapeListOfShape.hxx>
#include<BRepFill_DataMapOfShapeSequenceOfPnt.hxx>
#include<BRepFill_DataMapOfShapeSequenceOfReal.hxx>
#include<BRepFill_DataMapOfShapeSequenceOfShape.hxx>
#include<BRepFill_Draft.hxx>
#include<BRepFill_DraftLaw.hxx>
#include<BRepFill_Edge3DLaw.hxx>
#include<BRepFill_EdgeFaceAndOrder.hxx>
#include<BRepFill_EdgeOnSurfLaw.hxx>
#include<BRepFill_Evolved.hxx>
#include<BRepFill_FaceAndOrder.hxx>
#include<BRepFill_Filling.hxx>
#include<BRepFill_Generator.hxx>
#include<BRepFill_ListIteratorOfListOfOffsetWire.hxx>
#include<BRepFill_ListNodeOfListOfOffsetWire.hxx>
#include<BRepFill_ListOfOffsetWire.hxx>
#include<BRepFill_LocationLaw.hxx>
#include<BRepFill_MultiLine.hxx>
#include<BRepFill_MultiLineTool.hxx>
#include<BRepFill_MyLeastSquareOfComputeCLine.hxx>
#include<BRepFill_NSections.hxx>
#include<BRepFill_OffsetAncestors.hxx>
#include<BRepFill_OffsetWire.hxx>
#include<BRepFill_Pipe.hxx>
#include<BRepFill_PipeShell.hxx>
#include<BRepFill_Section.hxx>
#include<BRepFill_SectionLaw.hxx>
#include<BRepFill_SectionPlacement.hxx>
#include<BRepFill_SequenceNodeOfSequenceOfEdgeFaceAndOrder.hxx>
#include<BRepFill_SequenceNodeOfSequenceOfFaceAndOrder.hxx>
#include<BRepFill_SequenceNodeOfSequenceOfSection.hxx>
#include<BRepFill_SequenceOfEdgeFaceAndOrder.hxx>
#include<BRepFill_SequenceOfFaceAndOrder.hxx>
#include<BRepFill_SequenceOfSection.hxx>
#include<BRepFill_ShapeLaw.hxx>
#include<BRepFill_Sweep.hxx>
#include<BRepFill_TransitionStyle.hxx>
#include<BRepFill_TrimEdgeTool.hxx>
#include<BRepFill_TrimShellCorner.hxx>
#include<BRepFill_TrimSurfaceTool.hxx>
#include<gp.hxx>
#include<GProp.hxx>
#include<GProp_CelGProps.hxx>
#include<GProp_EquaType.hxx>
#include<GProp_GProps.hxx>
#include<GProp_PEquation.hxx>
#include<GProp_PGProps.hxx>
#include<GProp_PrincipalProps.hxx>
#include<GProp_SelGProps.hxx>
#include<GProp_UndefinedAxis.hxx>
#include<GProp_ValueType.hxx>
#include<GProp_VelGProps.hxx>
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
#include<TopoDS.hxx>
#include<TopoDSToStep.hxx>
#include<TopoDSToStep_Builder.hxx>
#include<TopoDSToStep_BuilderError.hxx>
#include<TopoDSToStep_FacetedError.hxx>
#include<TopoDSToStep_FacetedTool.hxx>
#include<TopoDSToStep_MakeBrepWithVoids.hxx>
#include<TopoDSToStep_MakeEdgeError.hxx>
#include<TopoDSToStep_MakeFaceError.hxx>
#include<TopoDSToStep_MakeFacetedBrep.hxx>
#include<TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx>
#include<TopoDSToStep_MakeGeometricCurveSet.hxx>
#include<TopoDSToStep_MakeManifoldSolidBrep.hxx>
#include<TopoDSToStep_MakeShellBasedSurfaceModel.hxx>
#include<TopoDSToStep_MakeStepEdge.hxx>
#include<TopoDSToStep_MakeStepFace.hxx>
#include<TopoDSToStep_MakeStepVertex.hxx>
#include<TopoDSToStep_MakeStepWire.hxx>
#include<TopoDSToStep_MakeVertexError.hxx>
#include<TopoDSToStep_MakeWireError.hxx>
#include<TopoDSToStep_Root.hxx>
#include<TopoDSToStep_Tool.hxx>
#include<TopoDSToStep_WireframeBuilder.hxx>
#include<TopoDS_Builder.hxx>
#include<TopoDS_Builder3D.hxx>
#include<TopoDS_Compound.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_FrozenShape.hxx>
#include<TopoDS_HShape.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDS_ListIteratorOfListOfShape.hxx>
#include<TopoDS_ListNodeOfListOfShape.hxx>
#include<TopoDS_ListOfShape.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_TCompound.hxx>
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_TEdge.hxx>
#include<TopoDS_TFace.hxx>
#include<TopoDS_TShape.hxx>
#include<TopoDS_TShell.hxx>
#include<TopoDS_TSolid.hxx>
#include<TopoDS_TVertex.hxx>
#include<TopoDS_TWire.hxx>
#include<TopoDS_UnCompatibleShapes.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Wire.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Trsf.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_TopTools_HSequenceOfShape.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_Msg.hxx>
#include<Handle_TColGeom_HArray2OfSurface.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Trsf2d.hxx>
#include<Handle_Geom_Geometry.hxx>
#include<Handle_Geom_Curve.hxx>
#include<TopTools_ListOfShape.hxx>
%}
