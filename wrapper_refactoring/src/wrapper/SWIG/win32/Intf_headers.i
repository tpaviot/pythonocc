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

#include<Handle_Intf_SequenceNodeOfSeqOfSectionLine.hxx>
#include<Handle_Intf_SequenceNodeOfSeqOfSectionPoint.hxx>
#include<Handle_Intf_SequenceNodeOfSeqOfTangentZone.hxx>
#include<Intf.hxx>
#include<Intf_Array1OfLin.hxx>
#include<Intf_Interference.hxx>
#include<Intf_PIType.hxx>
#include<Intf_SectionLine.hxx>
#include<Intf_SectionPoint.hxx>
#include<Intf_SeqOfSectionLine.hxx>
#include<Intf_SeqOfSectionPoint.hxx>
#include<Intf_SeqOfTangentZone.hxx>
#include<Intf_SequenceNodeOfSeqOfSectionLine.hxx>
#include<Intf_SequenceNodeOfSeqOfSectionPoint.hxx>
#include<Intf_SequenceNodeOfSeqOfTangentZone.hxx>
#include<Intf_TangentZone.hxx>
#include<Intf_Tool.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<Bnd_Box2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Bnd_Box.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Intf.hxx>
#include<gp_XYZ.hxx>
%}
