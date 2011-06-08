/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

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


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin2d.hxx>
#include<IntRes2d_Domain.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr2d.hxx>
#include<HLRAlgo_Projector.hxx>
#include<Handle_HLRTopoBRep_OutLiner.hxx>
#include<Handle_MMgt_TShared.hxx>
#include<Extrema_POnCurv2d.hxx>
#include<gp_Lin.hxx>
#include<Bnd_BoundSortBox.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<BRepTopAdaptor_MapOfShapeTool.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Vec2d.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<IntSurf_Quadric.hxx>
#include<Bnd_Box2d.hxx>
#include<TopoDS_Shape.hxx>
#include<HLRAlgo_ListIteratorOfInterferenceList.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<TopoDS_Face.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Ax1.hxx>
#include<HLRAlgo_InterferenceList.hxx>
#include<HLRAlgo_Interference.hxx>
#include<IntCurve_IConicTool.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<gp_Dir.hxx>
#include<HLRAlgo_Intersection.hxx>
#include<Handle_HLRAlgo_PolyAlgo.hxx>
#include<HLRAlgo_EdgeStatus.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<HLRBRep.hxx>
#include<Handle_HLRAlgo_EdgesBlock.hxx>
#include<math_FunctionSetRoot.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Intf_Array1OfLin.hxx>
%}
