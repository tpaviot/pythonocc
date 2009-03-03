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

#include<Handle_ShapeCustom_BSplineRestriction.hxx>
#include<Handle_ShapeCustom_ConvertToBSpline.hxx>
#include<Handle_ShapeCustom_ConvertToRevolution.hxx>
#include<Handle_ShapeCustom_DirectModification.hxx>
#include<Handle_ShapeCustom_RestrictionParameters.hxx>
#include<Handle_ShapeCustom_SweptToElementary.hxx>
#include<Handle_ShapeCustom_TrsfModification.hxx>
#include<ShapeCustom.hxx>
#include<ShapeCustom_BSplineRestriction.hxx>
#include<ShapeCustom_ConvertToBSpline.hxx>
#include<ShapeCustom_ConvertToRevolution.hxx>
#include<ShapeCustom_Curve.hxx>
#include<ShapeCustom_Curve2d.hxx>
#include<ShapeCustom_DirectModification.hxx>
#include<ShapeCustom_RestrictionParameters.hxx>
#include<ShapeCustom_Surface.hxx>
#include<ShapeCustom_SweptToElementary.hxx>
#include<ShapeCustom_TrsfModification.hxx>

// Additional headers necessary for compilation.

#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>
#include<TopTools.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfShape.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_ListIteratorOfListOfShape.hxx>
#include<TopTools_ListNodeOfListOfShape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_LocationSet.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_SequenceNodeOfSequenceOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_StdMapNodeOfMapOfOrientedShape.hxx>
#include<TopTools_StdMapNodeOfMapOfShape.hxx>
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
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Compound.hxx>
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
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_TCompound.hxx>
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
#include<TopoDS_Face.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopLoc_Location.hxx>
#include<TopoDS_Edge.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Pnt.hxx>
#include<gp_Trsf.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Handle_Geom2d_Line.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<ShapeCustom.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_BRepTools_Modification.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<BRepTools_Modifier.hxx>
%}
