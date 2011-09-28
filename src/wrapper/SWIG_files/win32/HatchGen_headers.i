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

#include<Handle_HatchGen_SequenceNodeOfDomains.hxx>
#include<Handle_HatchGen_SequenceNodeOfPointsOnElement.hxx>
#include<Handle_HatchGen_SequenceNodeOfPointsOnHatching.hxx>
#include<HatchGen_Domain.hxx>
#include<HatchGen_Domains.hxx>
#include<HatchGen_ErrorStatus.hxx>
#include<HatchGen_IntersectionPoint.hxx>
#include<HatchGen_IntersectionType.hxx>
#include<HatchGen_PointOnElement.hxx>
#include<HatchGen_PointOnHatching.hxx>
#include<HatchGen_PointsOnElement.hxx>
#include<HatchGen_PointsOnHatching.hxx>
#include<HatchGen_SequenceNodeOfDomains.hxx>
#include<HatchGen_SequenceNodeOfPointsOnElement.hxx>
#include<HatchGen_SequenceNodeOfPointsOnHatching.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<IntRes2d_IntersectionPoint.hxx>
%}
