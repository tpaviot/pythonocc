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

#include<BRepExtrema_DistShapeShape.hxx>
#include<BRepExtrema_DistanceSS.hxx>
#include<BRepExtrema_ExtCC.hxx>
#include<BRepExtrema_ExtCF.hxx>
#include<BRepExtrema_ExtFF.hxx>
#include<BRepExtrema_ExtPC.hxx>
#include<BRepExtrema_ExtPF.hxx>
#include<BRepExtrema_Poly.hxx>
#include<BRepExtrema_SeqOfSolution.hxx>
#include<BRepExtrema_SequenceNodeOfSeqOfSolution.hxx>
#include<BRepExtrema_SolutionElem.hxx>
#include<BRepExtrema_SupportType.hxx>
#include<BRepExtrema_UnCompatibleShape.hxx>
#include<Handle_BRepExtrema_SequenceNodeOfSeqOfSolution.hxx>
#include<Handle_BRepExtrema_UnCompatibleShape.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<Bnd_Box.hxx>
#include<Standard_SStream.hxx>
%}
