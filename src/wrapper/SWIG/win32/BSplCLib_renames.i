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

$Revision
$Date
$Author
$HeaderURL

*/
%rename(hunt) BSplCLib::Hunt;
%rename(firstuknotindex) BSplCLib::FirstUKnotIndex;
%rename(lastuknotindex) BSplCLib::LastUKnotIndex;
%rename(flatindex) BSplCLib::FlatIndex;
%rename(locateparameter) BSplCLib::LocateParameter;
%rename(locateparameter) BSplCLib::LocateParameter;
%rename(locateparameter) BSplCLib::LocateParameter;
%rename(maxknotmult) BSplCLib::MaxKnotMult;
%rename(minknotmult) BSplCLib::MinKnotMult;
%rename(nbpoles) BSplCLib::NbPoles;
%rename(knotsequencelength) BSplCLib::KnotSequenceLength;
%rename(knotsequence) BSplCLib::KnotSequence;
%rename(knotsequence) BSplCLib::KnotSequence;
%rename(knotslength) BSplCLib::KnotsLength;
%rename(knots) BSplCLib::Knots;
%rename(knotform) BSplCLib::KnotForm;
%rename(multform) BSplCLib::MultForm;
%rename(reparametrize) BSplCLib::Reparametrize;
%rename(reverse) BSplCLib::Reverse;
%rename(reverse) BSplCLib::Reverse;
%rename(reverse) BSplCLib::Reverse;
%rename(reverse) BSplCLib::Reverse;
%rename(reverse) BSplCLib::Reverse;
%rename(isrational) BSplCLib::IsRational;
%rename(maxdegree) BSplCLib::MaxDegree;
%rename(eval) BSplCLib::Eval;
%rename(boorscheme) BSplCLib::BoorScheme;
%rename(antiboorscheme) BSplCLib::AntiBoorScheme;
%rename(derivative) BSplCLib::Derivative;
%rename(bohm) BSplCLib::Bohm;
%rename(noweights) BSplCLib::NoWeights;
%rename(nomults) BSplCLib::NoMults;
%rename(buildknots) BSplCLib::BuildKnots;
%rename(poleindex) BSplCLib::PoleIndex;
%rename(buildeval) BSplCLib::BuildEval;
%rename(buildeval) BSplCLib::BuildEval;
%rename(buildeval) BSplCLib::BuildEval;
%rename(buildboor) BSplCLib::BuildBoor;
%rename(boorindex) BSplCLib::BoorIndex;
%rename(getpole) BSplCLib::GetPole;
%rename(prepareinsertknots) BSplCLib::PrepareInsertKnots;
%rename(insertknots) BSplCLib::InsertKnots;
%rename(insertknots) BSplCLib::InsertKnots;
%rename(insertknots) BSplCLib::InsertKnots;
%rename(insertknot) BSplCLib::InsertKnot;
%rename(insertknot) BSplCLib::InsertKnot;
%rename(raisemultiplicity) BSplCLib::RaiseMultiplicity;
%rename(raisemultiplicity) BSplCLib::RaiseMultiplicity;
%rename(removeknot) BSplCLib::RemoveKnot;
%rename(removeknot) BSplCLib::RemoveKnot;
%rename(removeknot) BSplCLib::RemoveKnot;
%rename(increasedegreecountknots) BSplCLib::IncreaseDegreeCountKnots;
%rename(increasedegree) BSplCLib::IncreaseDegree;
%rename(increasedegree) BSplCLib::IncreaseDegree;
%rename(increasedegree) BSplCLib::IncreaseDegree;
%rename(increasedegree) BSplCLib::IncreaseDegree;
%rename(increasedegree) BSplCLib::IncreaseDegree;
%rename(prepareunperiodize) BSplCLib::PrepareUnperiodize;
%rename(unperiodize) BSplCLib::Unperiodize;
%rename(unperiodize) BSplCLib::Unperiodize;
%rename(unperiodize) BSplCLib::Unperiodize;
%rename(preparetrimming) BSplCLib::PrepareTrimming;
%rename(trimming) BSplCLib::Trimming;
%rename(trimming) BSplCLib::Trimming;
%rename(trimming) BSplCLib::Trimming;
%rename(d0) BSplCLib::D0;
%rename(d0) BSplCLib::D0;
%rename(d0) BSplCLib::D0;
%rename(d0) BSplCLib::D0;
%rename(d0) BSplCLib::D0;
%rename(d1) BSplCLib::D1;
%rename(d1) BSplCLib::D1;
%rename(d1) BSplCLib::D1;
%rename(d1) BSplCLib::D1;
%rename(d1) BSplCLib::D1;
%rename(d2) BSplCLib::D2;
%rename(d2) BSplCLib::D2;
%rename(d2) BSplCLib::D2;
%rename(d2) BSplCLib::D2;
%rename(d2) BSplCLib::D2;
%rename(d3) BSplCLib::D3;
%rename(d3) BSplCLib::D3;
%rename(d3) BSplCLib::D3;
%rename(d3) BSplCLib::D3;
%rename(d3) BSplCLib::D3;
%rename(evalbsplinebasis) BSplCLib::EvalBsplineBasis;
%rename(buildbspmatrix) BSplCLib::BuildBSpMatrix;
%rename(factorbandedmatrix) BSplCLib::FactorBandedMatrix;
%rename(solvebandedsystem) BSplCLib::SolveBandedSystem;
%rename(solvebandedsystem) BSplCLib::SolveBandedSystem;
%rename(solvebandedsystem) BSplCLib::SolveBandedSystem;
%rename(solvebandedsystem) BSplCLib::SolveBandedSystem;
%rename(solvebandedsystem) BSplCLib::SolveBandedSystem;
%rename(solvebandedsystem) BSplCLib::SolveBandedSystem;
%rename(mergebsplineknots) BSplCLib::MergeBSplineKnots;
%rename(eval) BSplCLib::Eval;
%rename(eval) BSplCLib::Eval;
%rename(eval) BSplCLib::Eval;
%rename(eval) BSplCLib::Eval;
%rename(tangextendtoconstraint) BSplCLib::TangExtendToConstraint;
%rename(cached0) BSplCLib::CacheD0;
%rename(cached0) BSplCLib::CacheD0;
%rename(coefsd0) BSplCLib::CoefsD0;
%rename(coefsd0) BSplCLib::CoefsD0;
%rename(cached1) BSplCLib::CacheD1;
%rename(cached1) BSplCLib::CacheD1;
%rename(coefsd1) BSplCLib::CoefsD1;
%rename(coefsd1) BSplCLib::CoefsD1;
%rename(cached2) BSplCLib::CacheD2;
%rename(cached2) BSplCLib::CacheD2;
%rename(coefsd2) BSplCLib::CoefsD2;
%rename(coefsd2) BSplCLib::CoefsD2;
%rename(cached3) BSplCLib::CacheD3;
%rename(cached3) BSplCLib::CacheD3;
%rename(coefsd3) BSplCLib::CoefsD3;
%rename(coefsd3) BSplCLib::CoefsD3;
%rename(buildcache) BSplCLib::BuildCache;
%rename(buildcache) BSplCLib::BuildCache;
%rename(polescoefficients) BSplCLib::PolesCoefficients;
%rename(polescoefficients) BSplCLib::PolesCoefficients;
%rename(polescoefficients) BSplCLib::PolesCoefficients;
%rename(polescoefficients) BSplCLib::PolesCoefficients;
%rename(buildschoenbergpoints) BSplCLib::BuildSchoenbergPoints;
%rename(interpolate) BSplCLib::Interpolate;
%rename(interpolate) BSplCLib::Interpolate;
%rename(interpolate) BSplCLib::Interpolate;
%rename(interpolate) BSplCLib::Interpolate;
%rename(interpolate) BSplCLib::Interpolate;
%rename(interpolate) BSplCLib::Interpolate;
%rename(movepoint) BSplCLib::MovePoint;
%rename(movepoint) BSplCLib::MovePoint;
%rename(movepointandtangent) BSplCLib::MovePointAndTangent;
%rename(movepointandtangent) BSplCLib::MovePointAndTangent;
%rename(movepointandtangent) BSplCLib::MovePointAndTangent;
%rename(resolution) BSplCLib::Resolution;
%rename(resolution) BSplCLib::Resolution;
%rename(resolution) BSplCLib::Resolution;
