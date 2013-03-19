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

#include<Handle_IntPolyh_SequenceNodeOfSeqOfStartPoints.hxx>
#include<IntPolyh_Array.hxx>
#include<IntPolyh_ArrayOfCouples.hxx>
#include<IntPolyh_ArrayOfEdges.hxx>
#include<IntPolyh_ArrayOfPoints.hxx>
#include<IntPolyh_ArrayOfSectionLines.hxx>
#include<IntPolyh_ArrayOfStartPoints.hxx>
#include<IntPolyh_ArrayOfTangentZones.hxx>
#include<IntPolyh_ArrayOfTriangles.hxx>
#include<IntPolyh_Couple.hxx>
#include<IntPolyh_Edge.hxx>
#include<IntPolyh_Intersection.hxx>
#include<IntPolyh_MaillageAffinage.hxx>
#include<IntPolyh_PMaillageAffinage.hxx>
#include<IntPolyh_Point.hxx>
#include<IntPolyh_SectionLine.hxx>
#include<IntPolyh_SeqOfStartPoints.hxx>
#include<IntPolyh_SequenceNodeOfSeqOfStartPoints.hxx>
#include<IntPolyh_StartPoint.hxx>
#include<IntPolyh_Triangle.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<TColStd_Array1OfReal.hxx>
%}
