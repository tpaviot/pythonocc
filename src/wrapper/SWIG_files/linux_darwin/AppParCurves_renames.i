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
%rename(DownCast) Handle_AppParCurves_HArray1OfMultiCurve::DownCast;
%rename(DownCast) Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve::DownCast;
%rename(DownCast) Handle_AppParCurves_SmoothCriterion::DownCast;
%rename(DownCast) Handle_AppParCurves_HArray1OfMultiBSpCurve::DownCast;
%rename(DownCast) Handle_AppParCurves_HArray1OfMultiPoint::DownCast;
%rename(DownCast) Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve::DownCast;
%rename(DownCast) Handle_AppParCurves_HArray1OfConstraintCouple::DownCast;
%rename(BernsteinMatrix) AppParCurves::BernsteinMatrix;
%rename(Bernstein) AppParCurves::Bernstein;
%rename(SecondDerivativeBernstein) AppParCurves::SecondDerivativeBernstein;
%rename(SplineFunction) AppParCurves::SplineFunction;
