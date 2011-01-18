/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_VrmlConverter_Drawer.hxx>
#include<Handle_VrmlConverter_IsoAspect.hxx>
#include<Handle_VrmlConverter_LineAspect.hxx>
#include<Handle_VrmlConverter_PointAspect.hxx>
#include<Handle_VrmlConverter_Projector.hxx>
#include<Handle_VrmlConverter_ShadingAspect.hxx>
#include<VrmlConverter_Curve.hxx>
#include<VrmlConverter_DeflectionCurve.hxx>
#include<VrmlConverter_Drawer.hxx>
#include<VrmlConverter_HLRShape.hxx>
#include<VrmlConverter_IsoAspect.hxx>
#include<VrmlConverter_LineAspect.hxx>
#include<VrmlConverter_PointAspect.hxx>
#include<VrmlConverter_Projector.hxx>
#include<VrmlConverter_ShadedShape.hxx>
#include<VrmlConverter_ShadingAspect.hxx>
#include<VrmlConverter_TypeOfCamera.hxx>
#include<VrmlConverter_TypeOfLight.hxx>
#include<VrmlConverter_WFDeflectionRestrictedFace.hxx>
#include<VrmlConverter_WFDeflectionShape.hxx>
#include<VrmlConverter_WFRestrictedFace.hxx>
#include<VrmlConverter_WFShape.hxx>

// Additional headers necessary for compilation.

#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<TopoDS_Face.hxx>
#include<Poly_Connect.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Handle_Vrml_Material.hxx>
#include<Vrml_ShapeHints.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<HLRAlgo_Projector.hxx>
%}
