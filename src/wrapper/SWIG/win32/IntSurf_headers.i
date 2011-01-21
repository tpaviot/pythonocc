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

#include<Handle_IntSurf_LineOn2S.hxx>
#include<Handle_IntSurf_ListNodeOfListOfPntOn2S.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfCouple.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfInteriorPoint.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfPathPoint.hxx>
#include<Handle_IntSurf_SequenceNodeOfSequenceOfPntOn2S.hxx>
#include<IntSurf.hxx>
#include<IntSurf_Couple.hxx>
#include<IntSurf_InteriorPoint.hxx>
#include<IntSurf_InteriorPointTool.hxx>
#include<IntSurf_LineOn2S.hxx>
#include<IntSurf_ListIteratorOfListOfPntOn2S.hxx>
#include<IntSurf_ListNodeOfListOfPntOn2S.hxx>
#include<IntSurf_ListOfPntOn2S.hxx>
#include<IntSurf_PathPoint.hxx>
#include<IntSurf_PathPointTool.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<IntSurf_Quadric.hxx>
#include<IntSurf_QuadricTool.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfCouple.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfInteriorPoint.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfPathPoint.hxx>
#include<IntSurf_SequenceNodeOfSequenceOfPntOn2S.hxx>
#include<IntSurf_SequenceOfCouple.hxx>
#include<IntSurf_SequenceOfInteriorPoint.hxx>
#include<IntSurf_SequenceOfPathPoint.hxx>
#include<IntSurf_SequenceOfPntOn2S.hxx>
#include<IntSurf_Situation.hxx>
#include<IntSurf_Transition.hxx>
#include<IntSurf_TypeTrans.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<IntSurf.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Sphere.hxx>
#include<gp_Cone.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Vec2d.hxx>
%}
