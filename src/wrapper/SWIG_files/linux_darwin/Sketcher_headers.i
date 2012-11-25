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

#include<Sketcher.hxx>
#include<Sketcher_AnalyserSnap.hxx>
#include<Sketcher_Arc.hxx>
#include<Sketcher_Command.hxx>
#include<Sketcher_CommandArc3P.hxx>
#include<Sketcher_CommandArcCenter2P.hxx>
#include<Sketcher_CommandBezierCurve.hxx>
#include<Sketcher_CommandCircle2PTan.hxx>
#include<Sketcher_CommandCircle3P.hxx>
#include<Sketcher_CommandCircle3Tan.hxx>
#include<Sketcher_CommandCircleCenterRadius.hxx>
#include<Sketcher_CommandCircleP2Tan.hxx>
#include<Sketcher_CommandLine2P.hxx>
#include<Sketcher_CommandPoint.hxx>
#include<Sketcher_CommandTrim.hxx>
#include<Sketcher_Edge.hxx>
#include<Sketcher_GUI.hxx>
#include<Sketcher_Object.hxx>
#include<Sketcher_ObjectGeometryType.hxx>
#include<Sketcher_ObjectType.hxx>
#include<Sketcher_ObjectTypeOfMethod.hxx>
#include<Sketcher_Profile.hxx>
#include<Sketcher_Snap.hxx>
#include<Sketcher_SnapCenter.hxx>
#include<Sketcher_SnapEnd.hxx>
#include<Sketcher_SnapIntersection.hxx>
#include<Sketcher_SnapLine.hxx>
#include<Sketcher_SnapLineParallel.hxx>
#include<Sketcher_SnapLinePerpendicular.hxx>
#include<Sketcher_SnapMiddle.hxx>
#include<Sketcher_SnapNearest.hxx>
#include<Sketcher_SnapTangent.hxx>
#include<Sketcher_SnapType.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

%}
