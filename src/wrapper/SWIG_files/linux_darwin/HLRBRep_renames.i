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
%rename(DownCast) Handle_HLRBRep_InternalAlgo::DownCast;
%rename(DownCast) Handle_HLRBRep_Algo::DownCast;
%rename(DownCast) Handle_HLRBRep_ListNodeOfListOfBPoint::DownCast;
%rename(DownCast) Handle_HLRBRep_AreaLimit::DownCast;
%rename(DownCast) Handle_HLRBRep_ListNodeOfListOfBPnt2D::DownCast;
%rename(DownCast) Handle_HLRBRep_PolyAlgo::DownCast;
%rename(DownCast) Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds::DownCast;
%rename(DownCast) Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter::DownCast;
%rename(DownCast) Handle_HLRBRep_Data::DownCast;
%rename(FindParameter) HLRBRep_TheProjPCurOfCInter::FindParameter;
%rename(FirstParameter) HLRBRep_LineTool::FirstParameter;
%rename(LastParameter) HLRBRep_LineTool::LastParameter;
%rename(Continuity) HLRBRep_LineTool::Continuity;
%rename(NbIntervals) HLRBRep_LineTool::NbIntervals;
%rename(Intervals) HLRBRep_LineTool::Intervals;
%rename(IntervalFirst) HLRBRep_LineTool::IntervalFirst;
%rename(IntervalLast) HLRBRep_LineTool::IntervalLast;
%rename(IntervalContinuity) HLRBRep_LineTool::IntervalContinuity;
%rename(IsClosed) HLRBRep_LineTool::IsClosed;
%rename(IsPeriodic) HLRBRep_LineTool::IsPeriodic;
%rename(Period) HLRBRep_LineTool::Period;
%rename(Value) HLRBRep_LineTool::Value;
%rename(D0) HLRBRep_LineTool::D0;
%rename(D1) HLRBRep_LineTool::D1;
%rename(D2) HLRBRep_LineTool::D2;
%rename(D3) HLRBRep_LineTool::D3;
%rename(DN) HLRBRep_LineTool::DN;
%rename(Resolution) HLRBRep_LineTool::Resolution;
%rename(GetType) HLRBRep_LineTool::GetType;
%rename(Line) HLRBRep_LineTool::Line;
%rename(Circle) HLRBRep_LineTool::Circle;
%rename(Ellipse) HLRBRep_LineTool::Ellipse;
%rename(Hyperbola) HLRBRep_LineTool::Hyperbola;
%rename(Parabola) HLRBRep_LineTool::Parabola;
%rename(Bezier) HLRBRep_LineTool::Bezier;
%rename(BSpline) HLRBRep_LineTool::BSpline;
%rename(Degree) HLRBRep_LineTool::Degree;
%rename(NbPoles) HLRBRep_LineTool::NbPoles;
%rename(Poles) HLRBRep_LineTool::Poles;
%rename(IsRational) HLRBRep_LineTool::IsRational;
%rename(PolesAndWeights) HLRBRep_LineTool::PolesAndWeights;
%rename(NbKnots) HLRBRep_LineTool::NbKnots;
%rename(KnotsAndMultiplicities) HLRBRep_LineTool::KnotsAndMultiplicities;
%rename(NbSamples) HLRBRep_LineTool::NbSamples;
%rename(SamplePars) HLRBRep_LineTool::SamplePars;
%rename(Load) HLRBRep_ShapeToHLR::Load;
%rename(Bounding) HLRBRep_ThePolygonToolOfInterCSurf::Bounding;
%rename(DeflectionOverEstimation) HLRBRep_ThePolygonToolOfInterCSurf::DeflectionOverEstimation;
%rename(Closed) HLRBRep_ThePolygonToolOfInterCSurf::Closed;
%rename(NbSegments) HLRBRep_ThePolygonToolOfInterCSurf::NbSegments;
%rename(BeginOfSeg) HLRBRep_ThePolygonToolOfInterCSurf::BeginOfSeg;
%rename(EndOfSeg) HLRBRep_ThePolygonToolOfInterCSurf::EndOfSeg;
%rename(Dump) HLRBRep_ThePolygonToolOfInterCSurf::Dump;
%rename(Bounding) HLRBRep_ThePolyhedronToolOfInterCSurf::Bounding;
%rename(ComponentsBounding) HLRBRep_ThePolyhedronToolOfInterCSurf::ComponentsBounding;
%rename(DeflectionOverEstimation) HLRBRep_ThePolyhedronToolOfInterCSurf::DeflectionOverEstimation;
%rename(NbTriangles) HLRBRep_ThePolyhedronToolOfInterCSurf::NbTriangles;
%rename(Triangle) HLRBRep_ThePolyhedronToolOfInterCSurf::Triangle;
%rename(Point) HLRBRep_ThePolyhedronToolOfInterCSurf::Point;
%rename(TriConnex) HLRBRep_ThePolyhedronToolOfInterCSurf::TriConnex;
%rename(IsOnBound) HLRBRep_ThePolyhedronToolOfInterCSurf::IsOnBound;
%rename(GetBorderDeflection) HLRBRep_ThePolyhedronToolOfInterCSurf::GetBorderDeflection;
%rename(Dump) HLRBRep_ThePolyhedronToolOfInterCSurf::Dump;
%rename(Value) HLRBRep_SLPropsATool::Value;
%rename(D1) HLRBRep_SLPropsATool::D1;
%rename(D2) HLRBRep_SLPropsATool::D2;
%rename(DN) HLRBRep_SLPropsATool::DN;
%rename(Continuity) HLRBRep_SLPropsATool::Continuity;
%rename(Bounds) HLRBRep_SLPropsATool::Bounds;
%rename(AddInterference) HLRBRep_EdgeIList::AddInterference;
%rename(ProcessComplex) HLRBRep_EdgeIList::ProcessComplex;
%rename(FirstParameter) HLRBRep_BCurveTool::FirstParameter;
%rename(LastParameter) HLRBRep_BCurveTool::LastParameter;
%rename(Continuity) HLRBRep_BCurveTool::Continuity;
%rename(NbIntervals) HLRBRep_BCurveTool::NbIntervals;
%rename(Intervals) HLRBRep_BCurveTool::Intervals;
%rename(IsClosed) HLRBRep_BCurveTool::IsClosed;
%rename(IsPeriodic) HLRBRep_BCurveTool::IsPeriodic;
%rename(Period) HLRBRep_BCurveTool::Period;
%rename(Value) HLRBRep_BCurveTool::Value;
%rename(D0) HLRBRep_BCurveTool::D0;
%rename(D1) HLRBRep_BCurveTool::D1;
%rename(D2) HLRBRep_BCurveTool::D2;
%rename(D3) HLRBRep_BCurveTool::D3;
%rename(DN) HLRBRep_BCurveTool::DN;
%rename(Resolution) HLRBRep_BCurveTool::Resolution;
%rename(GetType) HLRBRep_BCurveTool::GetType;
%rename(Line) HLRBRep_BCurveTool::Line;
%rename(Circle) HLRBRep_BCurveTool::Circle;
%rename(Ellipse) HLRBRep_BCurveTool::Ellipse;
%rename(Hyperbola) HLRBRep_BCurveTool::Hyperbola;
%rename(Parabola) HLRBRep_BCurveTool::Parabola;
%rename(Bezier) HLRBRep_BCurveTool::Bezier;
%rename(BSpline) HLRBRep_BCurveTool::BSpline;
%rename(Degree) HLRBRep_BCurveTool::Degree;
%rename(IsRational) HLRBRep_BCurveTool::IsRational;
%rename(NbPoles) HLRBRep_BCurveTool::NbPoles;
%rename(NbKnots) HLRBRep_BCurveTool::NbKnots;
%rename(Poles) HLRBRep_BCurveTool::Poles;
%rename(PolesAndWeights) HLRBRep_BCurveTool::PolesAndWeights;
%rename(NbSamples) HLRBRep_BCurveTool::NbSamples;
%rename(FirstUParameter) HLRBRep_BSurfaceTool::FirstUParameter;
%rename(FirstVParameter) HLRBRep_BSurfaceTool::FirstVParameter;
%rename(LastUParameter) HLRBRep_BSurfaceTool::LastUParameter;
%rename(LastVParameter) HLRBRep_BSurfaceTool::LastVParameter;
%rename(NbUIntervals) HLRBRep_BSurfaceTool::NbUIntervals;
%rename(NbVIntervals) HLRBRep_BSurfaceTool::NbVIntervals;
%rename(UIntervals) HLRBRep_BSurfaceTool::UIntervals;
%rename(VIntervals) HLRBRep_BSurfaceTool::VIntervals;
%rename(UTrim) HLRBRep_BSurfaceTool::UTrim;
%rename(VTrim) HLRBRep_BSurfaceTool::VTrim;
%rename(IsUClosed) HLRBRep_BSurfaceTool::IsUClosed;
%rename(IsVClosed) HLRBRep_BSurfaceTool::IsVClosed;
%rename(IsUPeriodic) HLRBRep_BSurfaceTool::IsUPeriodic;
%rename(UPeriod) HLRBRep_BSurfaceTool::UPeriod;
%rename(IsVPeriodic) HLRBRep_BSurfaceTool::IsVPeriodic;
%rename(VPeriod) HLRBRep_BSurfaceTool::VPeriod;
%rename(Value) HLRBRep_BSurfaceTool::Value;
%rename(D0) HLRBRep_BSurfaceTool::D0;
%rename(D1) HLRBRep_BSurfaceTool::D1;
%rename(D2) HLRBRep_BSurfaceTool::D2;
%rename(D3) HLRBRep_BSurfaceTool::D3;
%rename(DN) HLRBRep_BSurfaceTool::DN;
%rename(UContinuity) HLRBRep_BSurfaceTool::UContinuity;
%rename(VContinuity) HLRBRep_BSurfaceTool::VContinuity;
%rename(UDegree) HLRBRep_BSurfaceTool::UDegree;
%rename(NbUPoles) HLRBRep_BSurfaceTool::NbUPoles;
%rename(NbUKnots) HLRBRep_BSurfaceTool::NbUKnots;
%rename(IsURational) HLRBRep_BSurfaceTool::IsURational;
%rename(VDegree) HLRBRep_BSurfaceTool::VDegree;
%rename(NbVPoles) HLRBRep_BSurfaceTool::NbVPoles;
%rename(NbVKnots) HLRBRep_BSurfaceTool::NbVKnots;
%rename(IsVRational) HLRBRep_BSurfaceTool::IsVRational;
%rename(UResolution) HLRBRep_BSurfaceTool::UResolution;
%rename(VResolution) HLRBRep_BSurfaceTool::VResolution;
%rename(GetType) HLRBRep_BSurfaceTool::GetType;
%rename(Plane) HLRBRep_BSurfaceTool::Plane;
%rename(Cylinder) HLRBRep_BSurfaceTool::Cylinder;
%rename(Cone) HLRBRep_BSurfaceTool::Cone;
%rename(Torus) HLRBRep_BSurfaceTool::Torus;
%rename(Sphere) HLRBRep_BSurfaceTool::Sphere;
%rename(Bezier) HLRBRep_BSurfaceTool::Bezier;
%rename(BSpline) HLRBRep_BSurfaceTool::BSpline;
%rename(AxeOfRevolution) HLRBRep_BSurfaceTool::AxeOfRevolution;
%rename(Direction) HLRBRep_BSurfaceTool::Direction;
%rename(BasisCurve) HLRBRep_BSurfaceTool::BasisCurve;
%rename(NbSamplesU) HLRBRep_BSurfaceTool::NbSamplesU;
%rename(NbSamplesV) HLRBRep_BSurfaceTool::NbSamplesV;
%rename(MakeEdge) HLRBRep::MakeEdge;
%rename(PolyHLRAngleAndDeflection) HLRBRep::PolyHLRAngleAndDeflection;
%rename(Bounding) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::Bounding;
%rename(DeflectionOverEstimation) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::DeflectionOverEstimation;
%rename(Closed) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::Closed;
%rename(NbSegments) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::NbSegments;
%rename(BeginOfSeg) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::BeginOfSeg;
%rename(EndOfSeg) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::EndOfSeg;
%rename(Value) HLRBRep_CLPropsATool::Value;
%rename(D1) HLRBRep_CLPropsATool::D1;
%rename(D2) HLRBRep_CLPropsATool::D2;
%rename(D3) HLRBRep_CLPropsATool::D3;
%rename(Continuity) HLRBRep_CLPropsATool::Continuity;
%rename(FirstParameter) HLRBRep_CLPropsATool::FirstParameter;
%rename(LastParameter) HLRBRep_CLPropsATool::LastParameter;
%rename(CurvatureValue) HLRBRep_EdgeFaceTool::CurvatureValue;
%rename(UVPoint) HLRBRep_EdgeFaceTool::UVPoint;
%rename(FirstParameter) HLRBRep_CurveTool::FirstParameter;
%rename(LastParameter) HLRBRep_CurveTool::LastParameter;
%rename(Continuity) HLRBRep_CurveTool::Continuity;
%rename(NbIntervals) HLRBRep_CurveTool::NbIntervals;
%rename(Intervals) HLRBRep_CurveTool::Intervals;
%rename(GetInterval) HLRBRep_CurveTool::GetInterval;
%rename(IsClosed) HLRBRep_CurveTool::IsClosed;
%rename(IsPeriodic) HLRBRep_CurveTool::IsPeriodic;
%rename(Period) HLRBRep_CurveTool::Period;
%rename(Value) HLRBRep_CurveTool::Value;
%rename(D0) HLRBRep_CurveTool::D0;
%rename(D1) HLRBRep_CurveTool::D1;
%rename(D2) HLRBRep_CurveTool::D2;
%rename(D3) HLRBRep_CurveTool::D3;
%rename(DN) HLRBRep_CurveTool::DN;
%rename(Resolution) HLRBRep_CurveTool::Resolution;
%rename(GetType) HLRBRep_CurveTool::GetType;
%rename(TheType) HLRBRep_CurveTool::TheType;
%rename(Line) HLRBRep_CurveTool::Line;
%rename(Circle) HLRBRep_CurveTool::Circle;
%rename(Ellipse) HLRBRep_CurveTool::Ellipse;
%rename(Hyperbola) HLRBRep_CurveTool::Hyperbola;
%rename(Parabola) HLRBRep_CurveTool::Parabola;
%rename(Bezier) HLRBRep_CurveTool::Bezier;
%rename(BSpline) HLRBRep_CurveTool::BSpline;
%rename(EpsX) HLRBRep_CurveTool::EpsX;
%rename(NbSamples) HLRBRep_CurveTool::NbSamples;
%rename(FirstUParameter) HLRBRep_SurfaceTool::FirstUParameter;
%rename(FirstVParameter) HLRBRep_SurfaceTool::FirstVParameter;
%rename(LastUParameter) HLRBRep_SurfaceTool::LastUParameter;
%rename(LastVParameter) HLRBRep_SurfaceTool::LastVParameter;
%rename(NbUIntervals) HLRBRep_SurfaceTool::NbUIntervals;
%rename(NbVIntervals) HLRBRep_SurfaceTool::NbVIntervals;
%rename(UIntervals) HLRBRep_SurfaceTool::UIntervals;
%rename(VIntervals) HLRBRep_SurfaceTool::VIntervals;
%rename(UTrim) HLRBRep_SurfaceTool::UTrim;
%rename(VTrim) HLRBRep_SurfaceTool::VTrim;
%rename(IsUClosed) HLRBRep_SurfaceTool::IsUClosed;
%rename(IsVClosed) HLRBRep_SurfaceTool::IsVClosed;
%rename(IsUPeriodic) HLRBRep_SurfaceTool::IsUPeriodic;
%rename(UPeriod) HLRBRep_SurfaceTool::UPeriod;
%rename(IsVPeriodic) HLRBRep_SurfaceTool::IsVPeriodic;
%rename(VPeriod) HLRBRep_SurfaceTool::VPeriod;
%rename(Value) HLRBRep_SurfaceTool::Value;
%rename(D0) HLRBRep_SurfaceTool::D0;
%rename(D1) HLRBRep_SurfaceTool::D1;
%rename(D2) HLRBRep_SurfaceTool::D2;
%rename(D3) HLRBRep_SurfaceTool::D3;
%rename(DN) HLRBRep_SurfaceTool::DN;
%rename(UResolution) HLRBRep_SurfaceTool::UResolution;
%rename(VResolution) HLRBRep_SurfaceTool::VResolution;
%rename(GetType) HLRBRep_SurfaceTool::GetType;
%rename(Plane) HLRBRep_SurfaceTool::Plane;
%rename(Cylinder) HLRBRep_SurfaceTool::Cylinder;
%rename(Cone) HLRBRep_SurfaceTool::Cone;
%rename(Torus) HLRBRep_SurfaceTool::Torus;
%rename(Sphere) HLRBRep_SurfaceTool::Sphere;
%rename(Bezier) HLRBRep_SurfaceTool::Bezier;
%rename(BSpline) HLRBRep_SurfaceTool::BSpline;
%rename(AxeOfRevolution) HLRBRep_SurfaceTool::AxeOfRevolution;
%rename(Direction) HLRBRep_SurfaceTool::Direction;
%rename(BasisCurve) HLRBRep_SurfaceTool::BasisCurve;
%rename(BasisSurface) HLRBRep_SurfaceTool::BasisSurface;
%rename(OffsetValue) HLRBRep_SurfaceTool::OffsetValue;
%rename(NbSamplesU) HLRBRep_SurfaceTool::NbSamplesU;
%rename(NbSamplesV) HLRBRep_SurfaceTool::NbSamplesV;
