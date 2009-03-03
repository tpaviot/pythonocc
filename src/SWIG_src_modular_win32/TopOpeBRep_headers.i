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

#include<Handle_TopOpeBRep_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<Handle_TopOpeBRep_DataMapNodeOfDataMapOfTopolTool.hxx>
#include<Handle_TopOpeBRep_FFDumper.hxx>
#include<Handle_TopOpeBRep_HArray1OfLineInter.hxx>
#include<Handle_TopOpeBRep_HArray1OfVPointInter.hxx>
#include<Handle_TopOpeBRep_Hctxee2d.hxx>
#include<Handle_TopOpeBRep_Hctxff2d.hxx>
#include<Handle_TopOpeBRep_ListNodeOfListOfBipoint.hxx>
#include<Handle_TopOpeBRep_SequenceNodeOfSequenceOfPoint2d.hxx>
#include<TopOpeBRep.hxx>
#include<TopOpeBRep_Array1OfLineInter.hxx>
#include<TopOpeBRep_Array1OfVPointInter.hxx>
#include<TopOpeBRep_Bipoint.hxx>
#include<TopOpeBRep_DRAW.hxx>
#include<TopOpeBRep_DSFiller.hxx>
#include<TopOpeBRep_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopOpeBRep_DataMapIteratorOfDataMapOfTopolTool.hxx>
#include<TopOpeBRep_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopOpeBRep_DataMapNodeOfDataMapOfTopolTool.hxx>
#include<TopOpeBRep_DataMapOfShapeInteger.hxx>
#include<TopOpeBRep_DataMapOfTopolTool.hxx>
#include<TopOpeBRep_EdgesFiller.hxx>
#include<TopOpeBRep_EdgesIntersector.hxx>
#include<TopOpeBRep_FFDumper.hxx>
#include<TopOpeBRep_FFTransitionTool.hxx>
#include<TopOpeBRep_FaceEdgeFiller.hxx>
#include<TopOpeBRep_FaceEdgeIntersector.hxx>
#include<TopOpeBRep_FacesFiller.hxx>
#include<TopOpeBRep_FacesIntersector.hxx>
#include<TopOpeBRep_GeomTool.hxx>
#include<TopOpeBRep_HArray1OfLineInter.hxx>
#include<TopOpeBRep_HArray1OfVPointInter.hxx>
#include<TopOpeBRep_Hctxee2d.hxx>
#include<TopOpeBRep_Hctxff2d.hxx>
#include<TopOpeBRep_LineInter.hxx>
#include<TopOpeBRep_ListIteratorOfListOfBipoint.hxx>
#include<TopOpeBRep_ListNodeOfListOfBipoint.hxx>
#include<TopOpeBRep_ListOfBipoint.hxx>
#include<TopOpeBRep_P2Dstatus.hxx>
#include<TopOpeBRep_PEdgesIntersector.hxx>
#include<TopOpeBRep_PFacesFiller.hxx>
#include<TopOpeBRep_PFacesIntersector.hxx>
#include<TopOpeBRep_PIntRes2d_IntersectionPoint.hxx>
#include<TopOpeBRep_PLineInter.hxx>
#include<TopOpeBRep_PPntOn2S.hxx>
#include<TopOpeBRep_PThePointOfIntersection.hxx>
#include<TopOpeBRep_Point2d.hxx>
#include<TopOpeBRep_PointClassifier.hxx>
#include<TopOpeBRep_PointGeomTool.hxx>
#include<TopOpeBRep_SequenceNodeOfSequenceOfPoint2d.hxx>
#include<TopOpeBRep_SequenceOfPoint2d.hxx>
#include<TopOpeBRep_ShapeIntersector.hxx>
#include<TopOpeBRep_ShapeIntersector2d.hxx>
#include<TopOpeBRep_ShapeScanner.hxx>
#include<TopOpeBRep_TypeLineCurve.hxx>
#include<TopOpeBRep_VPointInter.hxx>
#include<TopOpeBRep_VPointInterClassifier.hxx>
#include<TopOpeBRep_VPointInterIterator.hxx>
#include<TopOpeBRep_WPointInter.hxx>
#include<TopOpeBRep_WPointInterIterator.hxx>
#include<TopOpeBRep_define.hxx>
#include<TopOpeBRep_tools.hxx>
#include<TopOpeBRep_traceSIFF.hxx>

// Additional headers necessary for compilation.

#include<Geom2dAPI_ExtremaCurveCurve.hxx>
#include<Geom2dAPI_InterCurveCurve.hxx>
#include<Geom2dAPI_Interpolate.hxx>
#include<Geom2dAPI_PointsToBSpline.hxx>
#include<Geom2dAPI_ProjectPointOnCurve.hxx>
#include<Geom2dAdaptor.hxx>
#include<Geom2dAdaptor_Curve.hxx>
#include<Geom2dAdaptor_GHCurve.hxx>
#include<Geom2dAdaptor_HCurve.hxx>
#include<Geom2dConvert.hxx>
#include<Geom2dConvert_ApproxCurve.hxx>
#include<Geom2dConvert_BSplineCurveKnotSplitting.hxx>
#include<Geom2dConvert_BSplineCurveToBezierCurve.hxx>
#include<Geom2dConvert_CompCurveToBSplineCurve.hxx>
#include<Geom2dGcc.hxx>
#include<Geom2dGcc_Circ2d2TanOn.hxx>
#include<Geom2dGcc_Circ2d2TanRad.hxx>
#include<Geom2dGcc_Circ2d3Tan.hxx>
#include<Geom2dGcc_Circ2dTanCen.hxx>
#include<Geom2dGcc_Circ2dTanOnRad.hxx>
#include<Geom2dGcc_CurveTool.hxx>
#include<Geom2dGcc_FuncTCirCuOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTCuCuCuOfMyC2d3Tan.hxx>
#include<Geom2dGcc_FuncTCuCuOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn.hxx>
#include<Geom2dGcc_FuncTCuPtOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTOblOfMyL2dTanObl.hxx>
#include<Geom2dGcc_Lin2d2Tan.hxx>
#include<Geom2dGcc_Lin2dTanObl.hxx>
#include<Geom2dGcc_MyC2d2TanOn.hxx>
#include<Geom2dGcc_MyC2d3Tan.hxx>
#include<Geom2dGcc_MyCirc2d2TanOn.hxx>
#include<Geom2dGcc_MyCirc2d2TanRad.hxx>
#include<Geom2dGcc_MyCirc2dTanCen.hxx>
#include<Geom2dGcc_MyCirc2dTanOnRad.hxx>
#include<Geom2dGcc_MyCurveTool.hxx>
#include<Geom2dGcc_MyL2d2Tan.hxx>
#include<Geom2dGcc_MyL2dTanObl.hxx>
#include<Geom2dGcc_MyQCurve.hxx>
#include<Geom2dGcc_QualifiedCurve.hxx>
#include<Geom2dHatch_ClassifierOfHatcher.hxx>
#include<Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher.hxx>
#include<Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dHatch_DataMapNodeOfHatchingsOfHatcher.hxx>
#include<Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dHatch_ElementOfHatcher.hxx>
#include<Geom2dHatch_ElementsOfHatcher.hxx>
#include<Geom2dHatch_FClass2dOfClassifierOfHatcher.hxx>
#include<Geom2dHatch_Hatcher.hxx>
#include<Geom2dHatch_HatchingOfHatcher.hxx>
#include<Geom2dHatch_HatchingsOfHatcher.hxx>
#include<Geom2dHatch_Intersector.hxx>
#include<Geom2dHatch_MapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_GInter.hxx>
#include<Geom2dInt_Geom2dCurveTool.hxx>
#include<Geom2dInt_IntConicCurveOfGInter.hxx>
#include<Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_TheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheProjPCurOfGInter.hxx>
#include<Geom2dLProp_CLProps2d.hxx>
#include<Geom2dLProp_CurAndInf2d.hxx>
#include<Geom2dLProp_Curve2dTool.hxx>
#include<Geom2dLProp_FCurExtOfNumericCurInf2d.hxx>
#include<Geom2dLProp_FCurNulOfNumericCurInf2d.hxx>
#include<Geom2dLProp_NumericCurInf2d.hxx>
#include<Geom2dToIGES_Geom2dCurve.hxx>
#include<Geom2dToIGES_Geom2dEntity.hxx>
#include<Geom2dToIGES_Geom2dPoint.hxx>
#include<Geom2dToIGES_Geom2dVector.hxx>
#include<Geom2d_AxisPlacement.hxx>
#include<Geom2d_BSplineCurve.hxx>
#include<Geom2d_BezierCurve.hxx>
#include<Geom2d_BoundedCurve.hxx>
#include<Geom2d_CartesianPoint.hxx>
#include<Geom2d_Circle.hxx>
#include<Geom2d_Conic.hxx>
#include<Geom2d_Curve.hxx>
#include<Geom2d_Direction.hxx>
#include<Geom2d_Ellipse.hxx>
#include<Geom2d_Geometry.hxx>
#include<Geom2d_Hyperbola.hxx>
#include<Geom2d_Line.hxx>
#include<Geom2d_OffsetCurve.hxx>
#include<Geom2d_Parabola.hxx>
#include<Geom2d_Point.hxx>
#include<Geom2d_Transformation.hxx>
#include<Geom2d_TrimmedCurve.hxx>
#include<Geom2d_UndefinedDerivative.hxx>
#include<Geom2d_UndefinedValue.hxx>
#include<Geom2d_Vector.hxx>
#include<Geom2d_VectorWithMagnitude.hxx>
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
#include<TopoDS_Shape.hxx>
#include<TopOpeBRepDS_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_TopOpeBRepDS_HDataStructure.hxx>
#include<TopoDS_Face.hxx>
#include<TopOpeBRepTool_ShapeExplorer.hxx>
#include<TopOpeBRepDS_Transition.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<TopOpeBRepDS_Point.hxx>
#include<Handle_BRepTopAdaptor_TopolTool.hxx>
#include<TopTools_ListOfShape.hxx>
#include<Handle_TopOpeBRepDS_Interference.hxx>
#include<TopOpeBRepDS_ListIteratorOfListOfInterference.hxx>
#include<TopOpeBRep.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Vertex.hxx>
#include<Bnd_Box.hxx>
#include<IntPatch_ThePointOfIntersection.hxx>
#include<IntSurf_Transition.hxx>
#include<TopoDS_Edge.hxx>
#include<TCollection_AsciiString.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<IntRes2d_IntersectionPoint.hxx>
%}
