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
%rename(downcast) Handle_math_NotSquare::DownCast;
%rename(downcast) Handle_math_SingularMatrix::DownCast;
%rename(raise) math_SingularMatrix::Raise;
%rename(newinstance) math_SingularMatrix::NewInstance;
%rename(gausspointsmax) math::GaussPointsMax;
%rename(gausspoints) math::GaussPoints;
%rename(gaussweights) math::GaussWeights;
%rename(kronrodpointsmax) math::KronrodPointsMax;
%rename(orderedgausspointsandweights) math::OrderedGaussPointsAndWeights;
%rename(kronrodpointsandweights) math::KronrodPointsAndWeights;
%rename(sort) math_QuickSortOfValueAndWeight::Sort;
%rename(raise) math_NotSquare::Raise;
%rename(newinstance) math_NotSquare::NewInstance;
%rename(gkrule) math_KronrodSingleIntegration::GKRule;
