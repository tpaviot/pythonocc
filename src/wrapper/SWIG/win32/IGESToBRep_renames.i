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
%rename(downcast) Handle_IGESToBRep_Actor::DownCast;
%rename(downcast) Handle_IGESToBRep_AlgoContainer::DownCast;
%rename(downcast) Handle_IGESToBRep_IGESBoundary::DownCast;
%rename(downcast) Handle_IGESToBRep_ToolContainer::DownCast;
%rename(init) IGESToBRep::Init;
%rename(setalgocontainer) IGESToBRep::SetAlgoContainer;
%rename(algocontainer) IGESToBRep::AlgoContainer;
%rename(iscurveandsurface) IGESToBRep::IsCurveAndSurface;
%rename(isbasiccurve) IGESToBRep::IsBasicCurve;
%rename(isbasicsurface) IGESToBRep::IsBasicSurface;
%rename(istopocurve) IGESToBRep::IsTopoCurve;
%rename(istoposurface) IGESToBRep::IsTopoSurface;
%rename(isbrepentity) IGESToBRep::IsBRepEntity;
%rename(writeshape) IGESToBRep::WriteShape;
%rename(igescurvetosequenceofigescurve) IGESToBRep::IGESCurveToSequenceOfIGESCurve;
%rename(transferpcurve) IGESToBRep::TransferPCurve;
