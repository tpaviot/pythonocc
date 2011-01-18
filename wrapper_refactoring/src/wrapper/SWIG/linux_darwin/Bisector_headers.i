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
#include<Handle_Bisector_BisecAna.hxx>
#include<Handle_Bisector_BisecCC.hxx>
#include<Handle_Bisector_BisecPC.hxx>
#include<Handle_Bisector_Curve.hxx>

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
#include<IntRes2d_Domain.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Geom2d_Geometry.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_Geom2d_Point.hxx>
#include<Handle_Geom2d_TrimmedCurve.hxx>
#include<Bisector.hxx>
%}
