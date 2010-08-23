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
%rename(downcast) Handle_VrmlConverter_PointAspect::DownCast;
%rename(downcast) Handle_VrmlConverter_Drawer::DownCast;
%rename(downcast) Handle_VrmlConverter_ShadingAspect::DownCast;
%rename(downcast) Handle_VrmlConverter_LineAspect::DownCast;
%rename(downcast) Handle_VrmlConverter_Projector::DownCast;
%rename(downcast) Handle_VrmlConverter_IsoAspect::DownCast;
%rename(add) VrmlConverter_WFDeflectionShape::Add;
%rename(add) VrmlConverter_WFDeflectionRestrictedFace::Add;
%rename(adduiso) VrmlConverter_WFDeflectionRestrictedFace::AddUIso;
%rename(addviso) VrmlConverter_WFDeflectionRestrictedFace::AddVIso;
%rename(add) VrmlConverter_WFRestrictedFace::Add;
%rename(adduiso) VrmlConverter_WFRestrictedFace::AddUIso;
%rename(addviso) VrmlConverter_WFRestrictedFace::AddVIso;
%rename(add) VrmlConverter_ShadedShape::Add;
%rename(computenormal) VrmlConverter_ShadedShape::ComputeNormal;
%rename(add) VrmlConverter_DeflectionCurve::Add;
%rename(add) VrmlConverter_Curve::Add;
%rename(add) VrmlConverter_HLRShape::Add;
%rename(add) VrmlConverter_WFShape::Add;
