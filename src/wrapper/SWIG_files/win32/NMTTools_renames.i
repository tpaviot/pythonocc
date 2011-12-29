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
%rename(DownCast) Handle_NMTTools_StdMapNodeOfMapOfPaveBlock::DownCast;
%rename(DownCast) Handle_NMTTools_DataMapNodeOfDataMapOfIntegerFaceInfo::DownCast;
%rename(DownCast) Handle_NMTTools_ListNodeOfListOfCoupleOfShape::DownCast;
%rename(DownCast) Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock::DownCast;
%rename(DownCast) Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape::DownCast;
%rename(DownCast) Handle_NMTTools_ListNodeOfListOfCommonBlock::DownCast;
%rename(DownCast) Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock::DownCast;
%rename(DownCast) Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger::DownCast;
%rename(MakeNewVertex) NMTTools_Tools::MakeNewVertex;
%rename(FindChains) NMTTools_Tools::FindChains;
%rename(IsSplitInOnFace) NMTTools_Tools::IsSplitInOnFace;
%rename(AreFacesSameDomain) NMTTools_Tools::AreFacesSameDomain;
%rename(MakePCurve) NMTTools_Tools::MakePCurve;
%rename(UpdateEdge) NMTTools_Tools::UpdateEdge;
