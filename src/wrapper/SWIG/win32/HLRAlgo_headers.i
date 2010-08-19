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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<HLRAlgo.hxx>
#include<HLRAlgo_Array1OfPHDat.hxx>
#include<HLRAlgo_Array1OfPINod.hxx>
#include<HLRAlgo_Array1OfPISeg.hxx>
#include<HLRAlgo_Array1OfTData.hxx>
#include<HLRAlgo_BiPoint.hxx>
#include<HLRAlgo_Coincidence.hxx>
#include<HLRAlgo_EdgeIterator.hxx>
#include<HLRAlgo_EdgeStatus.hxx>
#include<HLRAlgo_EdgesBlock.hxx>
#include<HLRAlgo_HArray1OfPHDat.hxx>
#include<HLRAlgo_HArray1OfPINod.hxx>
#include<HLRAlgo_HArray1OfPISeg.hxx>
#include<HLRAlgo_HArray1OfTData.hxx>
#include<HLRAlgo_Interference.hxx>
#include<HLRAlgo_InterferenceList.hxx>
#include<HLRAlgo_Intersection.hxx>
#include<HLRAlgo_ListIteratorOfInterferenceList.hxx>
#include<HLRAlgo_ListIteratorOfListOfBPoint.hxx>
#include<HLRAlgo_ListNodeOfInterferenceList.hxx>
#include<HLRAlgo_ListNodeOfListOfBPoint.hxx>
#include<HLRAlgo_ListOfBPoint.hxx>
#include<HLRAlgo_PolyAlgo.hxx>
#include<HLRAlgo_PolyData.hxx>
#include<HLRAlgo_PolyHidingData.hxx>
#include<HLRAlgo_PolyInternalData.hxx>
#include<HLRAlgo_PolyInternalNode.hxx>
#include<HLRAlgo_PolyInternalSegment.hxx>
#include<HLRAlgo_PolyShellData.hxx>
#include<HLRAlgo_Projector.hxx>
#include<HLRAlgo_TriangleData.hxx>
#include<HLRAlgo_WiresBlock.hxx>
#include<Handle_HLRAlgo_EdgesBlock.hxx>
#include<Handle_HLRAlgo_HArray1OfPHDat.hxx>
#include<Handle_HLRAlgo_HArray1OfPINod.hxx>
#include<Handle_HLRAlgo_HArray1OfPISeg.hxx>
#include<Handle_HLRAlgo_HArray1OfTData.hxx>
#include<Handle_HLRAlgo_ListNodeOfInterferenceList.hxx>
#include<Handle_HLRAlgo_ListNodeOfListOfBPoint.hxx>
#include<Handle_HLRAlgo_PolyAlgo.hxx>
#include<Handle_HLRAlgo_PolyData.hxx>
#include<Handle_HLRAlgo_PolyInternalData.hxx>
#include<Handle_HLRAlgo_PolyInternalNode.hxx>
#include<Handle_HLRAlgo_PolyShellData.hxx>
#include<Handle_HLRAlgo_WiresBlock.hxx>

// Additional headers necessary for compilation.

#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Ax2.hxx>
#include<gp_Trsf.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Vec.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin.hxx>
#include<Handle_TColStd_HArray1OfTransient.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<HLRAlgo.hxx>
%}
