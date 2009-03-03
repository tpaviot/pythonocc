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

#include<HLRBRep.hxx>
#include<HLRBRep_Algo.hxx>
#include<HLRBRep_AreaLimit.hxx>
#include<HLRBRep_Array1OfEData.hxx>
#include<HLRBRep_Array1OfFData.hxx>
#include<HLRBRep_BCurveTool.hxx>
#include<HLRBRep_BSurfaceTool.hxx>
#include<HLRBRep_BiPnt2D.hxx>
#include<HLRBRep_BiPoint.hxx>
#include<HLRBRep_CInter.hxx>
#include<HLRBRep_CLProps.hxx>
#include<HLRBRep_CLPropsATool.hxx>
#include<HLRBRep_Curve.hxx>
#include<HLRBRep_CurveTool.hxx>
#include<HLRBRep_Data.hxx>
#include<HLRBRep_EdgeBuilder.hxx>
#include<HLRBRep_EdgeData.hxx>
#include<HLRBRep_EdgeFaceTool.hxx>
#include<HLRBRep_EdgeIList.hxx>
#include<HLRBRep_EdgeInterferenceTool.hxx>
#include<HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_FaceData.hxx>
#include<HLRBRep_FaceIterator.hxx>
#include<HLRBRep_HLRToShape.hxx>
#include<HLRBRep_Hider.hxx>
#include<HLRBRep_IntConicCurveOfCInter.hxx>
#include<HLRBRep_InterCSurf.hxx>
#include<HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_InternalAlgo.hxx>
#include<HLRBRep_Intersector.hxx>
#include<HLRBRep_LineTool.hxx>
#include<HLRBRep_ListIteratorOfListOfBPnt2D.hxx>
#include<HLRBRep_ListIteratorOfListOfBPoint.hxx>
#include<HLRBRep_ListNodeOfListOfBPnt2D.hxx>
#include<HLRBRep_ListNodeOfListOfBPoint.hxx>
#include<HLRBRep_ListOfBPnt2D.hxx>
#include<HLRBRep_ListOfBPoint.hxx>
#include<HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter.hxx>
#include<HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_PolyAlgo.hxx>
#include<HLRBRep_PolyHLRToShape.hxx>
#include<HLRBRep_SLProps.hxx>
#include<HLRBRep_SLPropsATool.hxx>
#include<HLRBRep_SeqOfShapeBounds.hxx>
#include<HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_SequenceNodeOfSeqOfShapeBounds.hxx>
#include<HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_ShapeBounds.hxx>
#include<HLRBRep_ShapeToHLR.hxx>
#include<HLRBRep_Surface.hxx>
#include<HLRBRep_SurfaceTool.hxx>
#include<HLRBRep_TheCSFunctionOfInterCSurf.hxx>
#include<HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_TheExactInterCSurf.hxx>
#include<HLRBRep_TheIntConicCurveOfCInter.hxx>
#include<HLRBRep_TheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_TheInterferenceOfInterCSurf.hxx>
#include<HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx>
#include<HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_ThePolygonOfInterCSurf.hxx>
#include<HLRBRep_ThePolygonToolOfInterCSurf.hxx>
#include<HLRBRep_ThePolyhedronOfInterCSurf.hxx>
#include<HLRBRep_ThePolyhedronToolOfInterCSurf.hxx>
#include<HLRBRep_TheProjPCurOfCInter.hxx>
#include<HLRBRep_TheQuadCurvExactInterCSurf.hxx>
#include<HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx>
#include<HLRBRep_VertexList.hxx>
#include<Handle_HLRBRep_Algo.hxx>
#include<Handle_HLRBRep_AreaLimit.hxx>
#include<Handle_HLRBRep_Data.hxx>
#include<Handle_HLRBRep_InternalAlgo.hxx>
#include<Handle_HLRBRep_ListNodeOfListOfBPnt2D.hxx>
#include<Handle_HLRBRep_ListNodeOfListOfBPoint.hxx>
#include<Handle_HLRBRep_PolyAlgo.hxx>
#include<Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds.hxx>
#include<Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx>

// Additional headers necessary for compilation.

#include<HLRBRep.hxx>
#include<HLRBRep_Algo.hxx>
#include<HLRBRep_AreaLimit.hxx>
#include<HLRBRep_Array1OfEData.hxx>
#include<HLRBRep_Array1OfFData.hxx>
#include<HLRBRep_BCurveTool.hxx>
#include<HLRBRep_BSurfaceTool.hxx>
#include<HLRBRep_BiPnt2D.hxx>
#include<HLRBRep_BiPoint.hxx>
#include<HLRBRep_CInter.hxx>
#include<HLRBRep_CLProps.hxx>
#include<HLRBRep_CLPropsATool.hxx>
#include<HLRBRep_Curve.hxx>
#include<HLRBRep_CurveTool.hxx>
#include<HLRBRep_Data.hxx>
#include<HLRBRep_EdgeBuilder.hxx>
#include<HLRBRep_EdgeData.hxx>
#include<HLRBRep_EdgeFaceTool.hxx>
#include<HLRBRep_EdgeIList.hxx>
#include<HLRBRep_EdgeInterferenceTool.hxx>
#include<HLRBRep_ExactIntersectionPointOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_FaceData.hxx>
#include<HLRBRep_FaceIterator.hxx>
#include<HLRBRep_HLRToShape.hxx>
#include<HLRBRep_Hider.hxx>
#include<HLRBRep_IntConicCurveOfCInter.hxx>
#include<HLRBRep_InterCSurf.hxx>
#include<HLRBRep_InterferencePoly2dOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_InternalAlgo.hxx>
#include<HLRBRep_Intersector.hxx>
#include<HLRBRep_LineTool.hxx>
#include<HLRBRep_ListIteratorOfListOfBPnt2D.hxx>
#include<HLRBRep_ListIteratorOfListOfBPoint.hxx>
#include<HLRBRep_ListNodeOfListOfBPnt2D.hxx>
#include<HLRBRep_ListNodeOfListOfBPoint.hxx>
#include<HLRBRep_ListOfBPnt2D.hxx>
#include<HLRBRep_ListOfBPoint.hxx>
#include<HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter.hxx>
#include<HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_PolyAlgo.hxx>
#include<HLRBRep_PolyHLRToShape.hxx>
#include<HLRBRep_SLProps.hxx>
#include<HLRBRep_SLPropsATool.hxx>
#include<HLRBRep_SeqOfShapeBounds.hxx>
#include<HLRBRep_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_SequenceNodeOfSeqOfShapeBounds.hxx>
#include<HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_ShapeBounds.hxx>
#include<HLRBRep_ShapeToHLR.hxx>
#include<HLRBRep_Surface.hxx>
#include<HLRBRep_SurfaceTool.hxx>
#include<HLRBRep_TheCSFunctionOfInterCSurf.hxx>
#include<HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_TheExactInterCSurf.hxx>
#include<HLRBRep_TheIntConicCurveOfCInter.hxx>
#include<HLRBRep_TheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_TheInterferenceOfInterCSurf.hxx>
#include<HLRBRep_TheIntersectorOfTheIntConicCurveOfCInter.hxx>
#include<HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx>
#include<HLRBRep_ThePolygon2dOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter.hxx>
#include<HLRBRep_ThePolygonOfInterCSurf.hxx>
#include<HLRBRep_ThePolygonToolOfInterCSurf.hxx>
#include<HLRBRep_ThePolyhedronOfInterCSurf.hxx>
#include<HLRBRep_ThePolyhedronToolOfInterCSurf.hxx>
#include<HLRBRep_TheProjPCurOfCInter.hxx>
#include<HLRBRep_TheQuadCurvExactInterCSurf.hxx>
#include<HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf.hxx>
#include<HLRBRep_VertexList.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<IntRes2d_Domain.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr2d.hxx>
#include<HLRAlgo_Intersection.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_HLRAlgo_PolyAlgo.hxx>
#include<HLRAlgo_Projector.hxx>
#include<HLRAlgo_EdgeStatus.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Torus.hxx>
#include<gp_Sphere.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Ax1.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Extrema_POnCurv2d.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Dir2d.hxx>
#include<Handle_HLRTopoBRep_OutLiner.hxx>
#include<Handle_MMgt_TShared.hxx>
#include<Bnd_BoundSortBox.hxx>
#include<HLRAlgo_Interference.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<BRepTopAdaptor_MapOfShapeTool.hxx>
#include<HLRBRep.hxx>
#include<Handle_HLRAlgo_EdgesBlock.hxx>
#include<gp_Vec2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<IntSurf_Quadric.hxx>
#include<IntCurve_IConicTool.hxx>
#include<Bnd_Box2d.hxx>
#include<math_FunctionSetRoot.hxx>
#include<HLRAlgo_ListIteratorOfInterferenceList.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<Intf_Array1OfLin.hxx>
#include<TopoDS_Face.hxx>
#include<HLRAlgo_InterferenceList.hxx>
%}
