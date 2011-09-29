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
%rename(DownCast) Handle_VrmlConverter_ShadingAspect::DownCast;
%rename(DownCast) Handle_VrmlConverter_Drawer::DownCast;
%rename(DownCast) Handle_VrmlConverter_PointAspect::DownCast;
%rename(DownCast) Handle_VrmlConverter_LineAspect::DownCast;
%rename(DownCast) Handle_VrmlConverter_IsoAspect::DownCast;
%rename(DownCast) Handle_VrmlConverter_Projector::DownCast;
%rename(Add) VrmlConverter_WFDeflectionShape::Add;
%rename(Add) VrmlConverter_WFDeflectionRestrictedFace::Add;
%rename(AddUIso) VrmlConverter_WFDeflectionRestrictedFace::AddUIso;
%rename(AddVIso) VrmlConverter_WFDeflectionRestrictedFace::AddVIso;
%rename(Add) VrmlConverter_WFRestrictedFace::Add;
%rename(AddUIso) VrmlConverter_WFRestrictedFace::AddUIso;
%rename(AddVIso) VrmlConverter_WFRestrictedFace::AddVIso;
%rename(Add) VrmlConverter_ShadedShape::Add;
%rename(ComputeNormal) VrmlConverter_ShadedShape::ComputeNormal;
%rename(Add) VrmlConverter_Curve::Add;
%rename(Add) VrmlConverter_HLRShape::Add;
%rename(Add) VrmlConverter_WFShape::Add;
%rename(Add) VrmlConverter_DeflectionCurve::Add;
