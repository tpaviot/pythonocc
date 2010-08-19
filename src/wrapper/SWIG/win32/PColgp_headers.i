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

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_PColgp_HArray1OfCirc2d.hxx>
#include<Handle_PColgp_HArray1OfDir.hxx>
#include<Handle_PColgp_HArray1OfDir2d.hxx>
#include<Handle_PColgp_HArray1OfLin2d.hxx>
#include<Handle_PColgp_HArray1OfPnt.hxx>
#include<Handle_PColgp_HArray1OfPnt2d.hxx>
#include<Handle_PColgp_HArray1OfVec.hxx>
#include<Handle_PColgp_HArray1OfVec2d.hxx>
#include<Handle_PColgp_HArray1OfXY.hxx>
#include<Handle_PColgp_HArray1OfXYZ.hxx>
#include<Handle_PColgp_HArray2OfCirc2d.hxx>
#include<Handle_PColgp_HArray2OfDir.hxx>
#include<Handle_PColgp_HArray2OfDir2d.hxx>
#include<Handle_PColgp_HArray2OfLin2d.hxx>
#include<Handle_PColgp_HArray2OfPnt.hxx>
#include<Handle_PColgp_HArray2OfPnt2d.hxx>
#include<Handle_PColgp_HArray2OfVec.hxx>
#include<Handle_PColgp_HArray2OfVec2d.hxx>
#include<Handle_PColgp_HArray2OfXY.hxx>
#include<Handle_PColgp_HArray2OfXYZ.hxx>
#include<Handle_PColgp_HSequenceOfDir.hxx>
#include<Handle_PColgp_HSequenceOfPnt.hxx>
#include<Handle_PColgp_HSequenceOfVec.hxx>
#include<Handle_PColgp_HSequenceOfXYZ.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfDir.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfPnt.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfVec.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfXYZ.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ.hxx>
#include<PColgp_FieldOfHArray1OfCirc2d.hxx>
#include<PColgp_FieldOfHArray1OfDir.hxx>
#include<PColgp_FieldOfHArray1OfDir2d.hxx>
#include<PColgp_FieldOfHArray1OfLin2d.hxx>
#include<PColgp_FieldOfHArray1OfPnt.hxx>
#include<PColgp_FieldOfHArray1OfPnt2d.hxx>
#include<PColgp_FieldOfHArray1OfVec.hxx>
#include<PColgp_FieldOfHArray1OfVec2d.hxx>
#include<PColgp_FieldOfHArray1OfXY.hxx>
#include<PColgp_FieldOfHArray1OfXYZ.hxx>
#include<PColgp_FieldOfHArray2OfCirc2d.hxx>
#include<PColgp_FieldOfHArray2OfDir.hxx>
#include<PColgp_FieldOfHArray2OfDir2d.hxx>
#include<PColgp_FieldOfHArray2OfLin2d.hxx>
#include<PColgp_FieldOfHArray2OfPnt.hxx>
#include<PColgp_FieldOfHArray2OfPnt2d.hxx>
#include<PColgp_FieldOfHArray2OfVec.hxx>
#include<PColgp_FieldOfHArray2OfVec2d.hxx>
#include<PColgp_FieldOfHArray2OfXY.hxx>
#include<PColgp_FieldOfHArray2OfXYZ.hxx>
#include<PColgp_HArray1OfCirc2d.hxx>
#include<PColgp_HArray1OfDir.hxx>
#include<PColgp_HArray1OfDir2d.hxx>
#include<PColgp_HArray1OfLin2d.hxx>
#include<PColgp_HArray1OfPnt.hxx>
#include<PColgp_HArray1OfPnt2d.hxx>
#include<PColgp_HArray1OfVec.hxx>
#include<PColgp_HArray1OfVec2d.hxx>
#include<PColgp_HArray1OfXY.hxx>
#include<PColgp_HArray1OfXYZ.hxx>
#include<PColgp_HArray2OfCirc2d.hxx>
#include<PColgp_HArray2OfDir.hxx>
#include<PColgp_HArray2OfDir2d.hxx>
#include<PColgp_HArray2OfLin2d.hxx>
#include<PColgp_HArray2OfPnt.hxx>
#include<PColgp_HArray2OfPnt2d.hxx>
#include<PColgp_HArray2OfVec.hxx>
#include<PColgp_HArray2OfVec2d.hxx>
#include<PColgp_HArray2OfXY.hxx>
#include<PColgp_HArray2OfXYZ.hxx>
#include<PColgp_HSequenceOfDir.hxx>
#include<PColgp_HSequenceOfPnt.hxx>
#include<PColgp_HSequenceOfVec.hxx>
#include<PColgp_HSequenceOfXYZ.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfDir.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfPnt.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfVec.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfXYZ.hxx>
#include<PColgp_SeqNodeOfHSequenceOfDir.hxx>
#include<PColgp_SeqNodeOfHSequenceOfPnt.hxx>
#include<PColgp_SeqNodeOfHSequenceOfVec.hxx>
#include<PColgp_SeqNodeOfHSequenceOfXYZ.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfDir2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfLin2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfPnt.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfVec2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfXYZ.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfDir2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfLin2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfPnt.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfVec2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfXYZ.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfVec.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfXY.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfVec.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfXY.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<gp_Pnt.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Vec.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Dir.hxx>
#include<gp_XYZ.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_XY.hxx>
%}
