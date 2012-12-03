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
%rename(Hunt) BSplCLib::Hunt;
%rename(FirstUKnotIndex) BSplCLib::FirstUKnotIndex;
%rename(LastUKnotIndex) BSplCLib::LastUKnotIndex;
%rename(FlatIndex) BSplCLib::FlatIndex;
%rename(LocateParameter) BSplCLib::LocateParameter;
%rename(MaxKnotMult) BSplCLib::MaxKnotMult;
%rename(MinKnotMult) BSplCLib::MinKnotMult;
%rename(NbPoles) BSplCLib::NbPoles;
%rename(KnotSequenceLength) BSplCLib::KnotSequenceLength;
%rename(KnotSequence) BSplCLib::KnotSequence;
%rename(KnotsLength) BSplCLib::KnotsLength;
%rename(Knots) BSplCLib::Knots;
%rename(KnotForm) BSplCLib::KnotForm;
%rename(MultForm) BSplCLib::MultForm;
%rename(Reparametrize) BSplCLib::Reparametrize;
%rename(Reverse) BSplCLib::Reverse;
%rename(IsRational) BSplCLib::IsRational;
%rename(MaxDegree) BSplCLib::MaxDegree;
%rename(Eval) BSplCLib::Eval;
%rename(BoorScheme) BSplCLib::BoorScheme;
%rename(AntiBoorScheme) BSplCLib::AntiBoorScheme;
%rename(Derivative) BSplCLib::Derivative;
%rename(Bohm) BSplCLib::Bohm;
%rename(NoWeights) BSplCLib::NoWeights;
%rename(NoMults) BSplCLib::NoMults;
%rename(BuildKnots) BSplCLib::BuildKnots;
%rename(PoleIndex) BSplCLib::PoleIndex;
%rename(BuildEval) BSplCLib::BuildEval;
%rename(BuildBoor) BSplCLib::BuildBoor;
%rename(BoorIndex) BSplCLib::BoorIndex;
%rename(GetPole) BSplCLib::GetPole;
%rename(PrepareInsertKnots) BSplCLib::PrepareInsertKnots;
%rename(InsertKnots) BSplCLib::InsertKnots;
%rename(InsertKnot) BSplCLib::InsertKnot;
%rename(RaiseMultiplicity) BSplCLib::RaiseMultiplicity;
%rename(RemoveKnot) BSplCLib::RemoveKnot;
%rename(IncreaseDegreeCountKnots) BSplCLib::IncreaseDegreeCountKnots;
%rename(IncreaseDegree) BSplCLib::IncreaseDegree;
%rename(PrepareUnperiodize) BSplCLib::PrepareUnperiodize;
%rename(Unperiodize) BSplCLib::Unperiodize;
%rename(PrepareTrimming) BSplCLib::PrepareTrimming;
%rename(Trimming) BSplCLib::Trimming;
%rename(D0) BSplCLib::D0;
%rename(D1) BSplCLib::D1;
%rename(D2) BSplCLib::D2;
%rename(D3) BSplCLib::D3;
%rename(EvalBsplineBasis) BSplCLib::EvalBsplineBasis;
%rename(BuildBSpMatrix) BSplCLib::BuildBSpMatrix;
%rename(FactorBandedMatrix) BSplCLib::FactorBandedMatrix;
%rename(SolveBandedSystem) BSplCLib::SolveBandedSystem;
%rename(MergeBSplineKnots) BSplCLib::MergeBSplineKnots;
%rename(FunctionReparameterise) BSplCLib::FunctionReparameterise;
%rename(FunctionMultiply) BSplCLib::FunctionMultiply;
%rename(TangExtendToConstraint) BSplCLib::TangExtendToConstraint;
%rename(CacheD0) BSplCLib::CacheD0;
%rename(CoefsD0) BSplCLib::CoefsD0;
%rename(CacheD1) BSplCLib::CacheD1;
%rename(CoefsD1) BSplCLib::CoefsD1;
%rename(CacheD2) BSplCLib::CacheD2;
%rename(CoefsD2) BSplCLib::CoefsD2;
%rename(CacheD3) BSplCLib::CacheD3;
%rename(CoefsD3) BSplCLib::CoefsD3;
%rename(BuildCache) BSplCLib::BuildCache;
%rename(PolesCoefficients) BSplCLib::PolesCoefficients;
%rename(FlatBezierKnots) BSplCLib::FlatBezierKnots;
%rename(BuildSchoenbergPoints) BSplCLib::BuildSchoenbergPoints;
%rename(Interpolate) BSplCLib::Interpolate;
%rename(MovePoint) BSplCLib::MovePoint;
%rename(MovePointAndTangent) BSplCLib::MovePointAndTangent;
%rename(Resolution) BSplCLib::Resolution;
