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
%{

// Headers necessary to define wrapped classes.

#include<Handle_Select3D_ListNodeOfListOfSensitive.hxx>
#include<Handle_Select3D_ListNodeOfListOfSensitiveTriangle.hxx>
#include<Handle_Select3D_SensitiveBox.hxx>
#include<Handle_Select3D_SensitiveCircle.hxx>
#include<Handle_Select3D_SensitiveCurve.hxx>
#include<Handle_Select3D_SensitiveEntity.hxx>
#include<Handle_Select3D_SensitiveFace.hxx>
#include<Handle_Select3D_SensitiveGroup.hxx>
#include<Handle_Select3D_SensitivePoint.hxx>
#include<Handle_Select3D_SensitivePoly.hxx>
#include<Handle_Select3D_SensitiveSegment.hxx>
#include<Handle_Select3D_SensitiveTriangle.hxx>
#include<Handle_Select3D_SensitiveTriangulation.hxx>
#include<Handle_Select3D_SensitiveWire.hxx>
#include<Handle_Select3D_SequenceNodeOfSensitiveEntitySequence.hxx>
#include<Select3D_Box2d.hxx>
#include<Select3D_ListIteratorOfListOfSensitive.hxx>
#include<Select3D_ListIteratorOfListOfSensitiveTriangle.hxx>
#include<Select3D_ListNodeOfListOfSensitive.hxx>
#include<Select3D_ListNodeOfListOfSensitiveTriangle.hxx>
#include<Select3D_ListOfSensitive.hxx>
#include<Select3D_ListOfSensitiveTriangle.hxx>
#include<Select3D_Macro.hxx>
#include<Select3D_Pnt.hxx>
#include<Select3D_Pnt2d.hxx>
#include<Select3D_Projector.hxx>
#include<Select3D_SensitiveBox.hxx>
#include<Select3D_SensitiveCircle.hxx>
#include<Select3D_SensitiveCurve.hxx>
#include<Select3D_SensitiveEntity.hxx>
#include<Select3D_SensitiveEntitySequence.hxx>
#include<Select3D_SensitiveFace.hxx>
#include<Select3D_SensitiveGroup.hxx>
#include<Select3D_SensitivePoint.hxx>
#include<Select3D_SensitivePoly.hxx>
#include<Select3D_SensitiveSegment.hxx>
#include<Select3D_SensitiveTriangle.hxx>
#include<Select3D_SensitiveTriangulation.hxx>
#include<Select3D_SensitiveWire.hxx>
#include<Select3D_SequenceNodeOfSensitiveEntitySequence.hxx>
#include<Select3D_TypeOfSensitivity.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopLoc_Location.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Bnd_Box2d.hxx>
#include<gp_Lin.hxx>
#include<Handle_SelectBasics_EntityOwner.hxx>
#include<Bnd_Box.hxx>
#include<SelectBasics_ListOfBox2d.hxx>
#include<gp_Pnt.hxx>
#include<Handle_V3d_View.hxx>
#include<gp_Ax2.hxx>
#include<gp_Trsf.hxx>
#include<gp_Vec2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_Vec.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<gp_XY.hxx>
#include<Handle_Geom_Circle.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_Geom_Curve.hxx>
%}
