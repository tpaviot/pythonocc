/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(downcast) Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour::DownCast;
%rename(downcast) Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour::DownCast;
%rename(downcast) Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour::DownCast;
%rename(downcast) Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour::DownCast;
%rename(downcast) Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour::DownCast;
%rename(downcast) Handle_Contap_TheIWLineOfTheIWalkingOfContour::DownCast;
%rename(downcast) Handle_Contap_TheHSequenceOfPointOfContour::DownCast;
%rename(firstuparameter) Contap_HSurfaceTool::FirstUParameter;
%rename(firstvparameter) Contap_HSurfaceTool::FirstVParameter;
%rename(lastuparameter) Contap_HSurfaceTool::LastUParameter;
%rename(lastvparameter) Contap_HSurfaceTool::LastVParameter;
%rename(nbuintervals) Contap_HSurfaceTool::NbUIntervals;
%rename(nbvintervals) Contap_HSurfaceTool::NbVIntervals;
%rename(uintervals) Contap_HSurfaceTool::UIntervals;
%rename(vintervals) Contap_HSurfaceTool::VIntervals;
%rename(utrim) Contap_HSurfaceTool::UTrim;
%rename(vtrim) Contap_HSurfaceTool::VTrim;
%rename(isuclosed) Contap_HSurfaceTool::IsUClosed;
%rename(isvclosed) Contap_HSurfaceTool::IsVClosed;
%rename(isuperiodic) Contap_HSurfaceTool::IsUPeriodic;
%rename(uperiod) Contap_HSurfaceTool::UPeriod;
%rename(isvperiodic) Contap_HSurfaceTool::IsVPeriodic;
%rename(vperiod) Contap_HSurfaceTool::VPeriod;
%rename(value) Contap_HSurfaceTool::Value;
%rename(d0) Contap_HSurfaceTool::D0;
%rename(d1) Contap_HSurfaceTool::D1;
%rename(d2) Contap_HSurfaceTool::D2;
%rename(d3) Contap_HSurfaceTool::D3;
%rename(dn) Contap_HSurfaceTool::DN;
%rename(uresolution) Contap_HSurfaceTool::UResolution;
%rename(vresolution) Contap_HSurfaceTool::VResolution;
%rename(gettype) Contap_HSurfaceTool::GetType;
%rename(plane) Contap_HSurfaceTool::Plane;
%rename(cylinder) Contap_HSurfaceTool::Cylinder;
%rename(cone) Contap_HSurfaceTool::Cone;
%rename(torus) Contap_HSurfaceTool::Torus;
%rename(sphere) Contap_HSurfaceTool::Sphere;
%rename(bezier) Contap_HSurfaceTool::Bezier;
%rename(bspline) Contap_HSurfaceTool::BSpline;
%rename(axeofrevolution) Contap_HSurfaceTool::AxeOfRevolution;
%rename(direction) Contap_HSurfaceTool::Direction;
%rename(basiscurve) Contap_HSurfaceTool::BasisCurve;
%rename(nbsamplesu) Contap_HSurfaceTool::NbSamplesU;
%rename(nbsamplesv) Contap_HSurfaceTool::NbSamplesV;
%rename(nbsamplesu) Contap_HSurfaceTool::NbSamplesU;
%rename(nbsamplesv) Contap_HSurfaceTool::NbSamplesV;
%rename(normale) Contap_TheSurfPropsOfContour::Normale;
%rename(derivandnorm) Contap_TheSurfPropsOfContour::DerivAndNorm;
%rename(normanddn) Contap_TheSurfPropsOfContour::NormAndDn;
%rename(nbsamplesu) Contap_HContTool::NbSamplesU;
%rename(nbsamplesv) Contap_HContTool::NbSamplesV;
%rename(nbsamplepoints) Contap_HContTool::NbSamplePoints;
%rename(samplepoint) Contap_HContTool::SamplePoint;
%rename(hasbeenseen) Contap_HContTool::HasBeenSeen;
%rename(nbsamplesonarc) Contap_HContTool::NbSamplesOnArc;
%rename(bounds) Contap_HContTool::Bounds;
%rename(project) Contap_HContTool::Project;
%rename(tolerance) Contap_HContTool::Tolerance;
%rename(parameter) Contap_HContTool::Parameter;
%rename(nbpoints) Contap_HContTool::NbPoints;
%rename(value) Contap_HContTool::Value;
%rename(isvertex) Contap_HContTool::IsVertex;
%rename(vertex) Contap_HContTool::Vertex;
%rename(nbsegments) Contap_HContTool::NbSegments;
%rename(hasfirstpoint) Contap_HContTool::HasFirstPoint;
%rename(haslastpoint) Contap_HContTool::HasLastPoint;
%rename(isallsolution) Contap_HContTool::IsAllSolution;
%rename(firstparameter) Contap_HCurve2dTool::FirstParameter;
%rename(lastparameter) Contap_HCurve2dTool::LastParameter;
%rename(continuity) Contap_HCurve2dTool::Continuity;
%rename(nbintervals) Contap_HCurve2dTool::NbIntervals;
%rename(intervals) Contap_HCurve2dTool::Intervals;
%rename(isclosed) Contap_HCurve2dTool::IsClosed;
%rename(isperiodic) Contap_HCurve2dTool::IsPeriodic;
%rename(period) Contap_HCurve2dTool::Period;
%rename(value) Contap_HCurve2dTool::Value;
%rename(d0) Contap_HCurve2dTool::D0;
%rename(d1) Contap_HCurve2dTool::D1;
%rename(d2) Contap_HCurve2dTool::D2;
%rename(d3) Contap_HCurve2dTool::D3;
%rename(dn) Contap_HCurve2dTool::DN;
%rename(resolution) Contap_HCurve2dTool::Resolution;
%rename(gettype) Contap_HCurve2dTool::GetType;
%rename(line) Contap_HCurve2dTool::Line;
%rename(circle) Contap_HCurve2dTool::Circle;
%rename(ellipse) Contap_HCurve2dTool::Ellipse;
%rename(hyperbola) Contap_HCurve2dTool::Hyperbola;
%rename(parabola) Contap_HCurve2dTool::Parabola;
%rename(bezier) Contap_HCurve2dTool::Bezier;
%rename(bspline) Contap_HCurve2dTool::BSpline;
%rename(nbsamples) Contap_HCurve2dTool::NbSamples;
