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
%rename(downcast) Handle_GeomFill_TrihedronLaw::DownCast;
%rename(downcast) Handle_GeomFill_TrihedronWithGuide::DownCast;
%rename(downcast) Handle_GeomFill_GuideTrihedronAC::DownCast;
%rename(downcast) Handle_GeomFill_CircularBlendFunc::DownCast;
%rename(downcast) Handle_GeomFill_HArray1OfLocationLaw::DownCast;
%rename(downcast) Handle_GeomFill_GuideTrihedronPlan::DownCast;
%rename(downcast) Handle_GeomFill_LocationLaw::DownCast;
%rename(downcast) Handle_GeomFill_CurveAndTrihedron::DownCast;
%rename(downcast) Handle_GeomFill_LocationDraft::DownCast;
%rename(downcast) Handle_GeomFill_Boundary::DownCast;
%rename(downcast) Handle_GeomFill_BoundWithSurf::DownCast;
%rename(downcast) Handle_GeomFill_Line::DownCast;
%rename(downcast) Handle_GeomFill_SequenceNodeOfSequenceOfCurve::DownCast;
%rename(downcast) Handle_GeomFill_TgtField::DownCast;
%rename(downcast) Handle_GeomFill_Frenet::DownCast;
%rename(downcast) Handle_GeomFill_Darboux::DownCast;
%rename(downcast) Handle_GeomFill_ConstantBiNormal::DownCast;
%rename(downcast) Handle_GeomFill_DegeneratedBound::DownCast;
%rename(downcast) Handle_GeomFill_CorrectedFrenet::DownCast;
%rename(downcast) Handle_GeomFill_SimpleBound::DownCast;
%rename(downcast) Handle_GeomFill_TgtOnCoons::DownCast;
%rename(downcast) Handle_GeomFill_HArray1OfSectionLaw::DownCast;
%rename(downcast) Handle_GeomFill_SectionLaw::DownCast;
%rename(downcast) Handle_GeomFill_NSections::DownCast;
%rename(downcast) Handle_GeomFill_UniformSection::DownCast;
%rename(downcast) Handle_GeomFill_SequenceNodeOfSequenceOfTrsf::DownCast;
%rename(downcast) Handle_GeomFill_CoonsAlgPatch::DownCast;
%rename(downcast) Handle_GeomFill_EvolvedSection::DownCast;
%rename(downcast) Handle_GeomFill_DraftTrihedron::DownCast;
%rename(downcast) Handle_GeomFill_Fixed::DownCast;
%rename(downcast) Handle_GeomFill_SweepFunction::DownCast;
%rename(downcast) Handle_GeomFill_LocationGuide::DownCast;
%rename(surface) GeomFill::Surface;
%rename(getcircle) GeomFill::GetCircle;
%rename(getshape) GeomFill::GetShape;
%rename(knots) GeomFill::Knots;
%rename(mults) GeomFill::Mults;
%rename(getminimalweights) GeomFill::GetMinimalWeights;
%rename(gettolerance) GeomFill::GetTolerance;
