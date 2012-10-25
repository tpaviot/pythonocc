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
%{

// Headers necessary to define wrapped classes.

#include<BRepMAT2d_BisectingLocus.hxx>
#include<BRepMAT2d_DataMapIteratorOfDataMapOfBasicEltShape.hxx>
#include<BRepMAT2d_DataMapIteratorOfDataMapOfShapeSequenceOfBasicElt.hxx>
#include<BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape.hxx>
#include<BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt.hxx>
#include<BRepMAT2d_DataMapOfBasicEltShape.hxx>
#include<BRepMAT2d_DataMapOfShapeSequenceOfBasicElt.hxx>
#include<BRepMAT2d_Explorer.hxx>
#include<BRepMAT2d_LinkTopoBilo.hxx>
#include<BRepMAT2d_SequenceNodeOfSequenceOfBasicElt.hxx>
#include<BRepMAT2d_SequenceOfBasicElt.hxx>
#include<Handle_BRepMAT2d_DataMapNodeOfDataMapOfBasicEltShape.hxx>
#include<Handle_BRepMAT2d_DataMapNodeOfDataMapOfShapeSequenceOfBasicElt.hxx>
#include<Handle_BRepMAT2d_SequenceNodeOfSequenceOfBasicElt.hxx>

// Additional headers necessary for compilation.

#include<Bisector.hxx>
#include<Bisector_Bisec.hxx>
#include<Bisector_BisecAna.hxx>
#include<Bisector_BisecCC.hxx>
#include<Bisector_BisecPC.hxx>
#include<Bisector_Curve.hxx>
#include<Bisector_FunctionH.hxx>
#include<Bisector_FunctionInter.hxx>
#include<Bisector_Inter.hxx>
#include<Bisector_PointOnBis.hxx>
#include<Bisector_PolyBis.hxx>
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_EulerSequence.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Quaternion.hxx>
#include<gp_QuaternionNLerp.hxx>
#include<gp_QuaternionSLerp.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_MAT_Graph.hxx>
#include<Handle_MAT_BasicElt.hxx>
#include<Handle_Geom2d_Geometry.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_MAT_Node.hxx>
#include<Bisector_Bisec.hxx>
#include<Handle_MAT_Arc.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_Geom2d_Curve.hxx>
%}
