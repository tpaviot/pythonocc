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
%rename(DownCast) Handle_GeomFill_Boundary::DownCast;
%rename(DownCast) Handle_GeomFill_TrihedronLaw::DownCast;
%rename(DownCast) Handle_GeomFill_TrihedronWithGuide::DownCast;
%rename(DownCast) Handle_GeomFill_SectionLaw::DownCast;
%rename(DownCast) Handle_GeomFill_NSections::DownCast;
%rename(DownCast) Handle_GeomFill_DegeneratedBound::DownCast;
%rename(DownCast) Handle_GeomFill_GuideTrihedronPlan::DownCast;
%rename(DownCast) Handle_GeomFill_LocationLaw::DownCast;
%rename(DownCast) Handle_GeomFill_CurveAndTrihedron::DownCast;
%rename(DownCast) Handle_GeomFill_CircularBlendFunc::DownCast;
%rename(DownCast) Handle_GeomFill_SimpleBound::DownCast;
%rename(DownCast) Handle_GeomFill_DraftTrihedron::DownCast;
%rename(DownCast) Handle_GeomFill_LocationDraft::DownCast;
%rename(DownCast) Handle_GeomFill_BoundWithSurf::DownCast;
%rename(DownCast) Handle_GeomFill_Line::DownCast;
%rename(DownCast) Handle_GeomFill_TgtField::DownCast;
%rename(DownCast) Handle_GeomFill_HArray1OfSectionLaw::DownCast;
%rename(DownCast) Handle_GeomFill_Frenet::DownCast;
%rename(DownCast) Handle_GeomFill_Darboux::DownCast;
%rename(DownCast) Handle_GeomFill_CoonsAlgPatch::DownCast;
%rename(DownCast) Handle_GeomFill_ConstantBiNormal::DownCast;
%rename(DownCast) Handle_GeomFill_LocationGuide::DownCast;
%rename(DownCast) Handle_GeomFill_GuideTrihedronAC::DownCast;
%rename(DownCast) Handle_GeomFill_CorrectedFrenet::DownCast;
%rename(DownCast) Handle_GeomFill_SweepFunction::DownCast;
%rename(DownCast) Handle_GeomFill_UniformSection::DownCast;
%rename(DownCast) Handle_GeomFill_SequenceNodeOfSequenceOfTrsf::DownCast;
%rename(DownCast) Handle_GeomFill_EvolvedSection::DownCast;
%rename(DownCast) Handle_GeomFill_HArray1OfLocationLaw::DownCast;
%rename(DownCast) Handle_GeomFill_Fixed::DownCast;
%rename(DownCast) Handle_GeomFill_TgtOnCoons::DownCast;
%rename(Surface) GeomFill::Surface;
%rename(GetCircle) GeomFill::GetCircle;
%rename(GetShape) GeomFill::GetShape;
%rename(Knots) GeomFill::Knots;
%rename(Mults) GeomFill::Mults;
%rename(GetMinimalWeights) GeomFill::GetMinimalWeights;
%rename(GetTolerance) GeomFill::GetTolerance;
