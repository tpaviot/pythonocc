/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_Hatch_SequenceNodeOfSequenceOfLine.hxx>
#include<Handle_Hatch_SequenceNodeOfSequenceOfParameter.hxx>
#include<Hatch_Hatcher.hxx>
#include<Hatch_Line.hxx>
#include<Hatch_LineForm.hxx>
#include<Hatch_Parameter.hxx>
#include<Hatch_SequenceNodeOfSequenceOfLine.hxx>
#include<Hatch_SequenceNodeOfSequenceOfParameter.hxx>
#include<Hatch_SequenceOfLine.hxx>
#include<Hatch_SequenceOfParameter.hxx>

// Additional headers necessary for compilation.

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

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Pnt2d.hxx>
%}
