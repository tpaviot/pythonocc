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

#include<Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d.hxx>
#include<Handle_TColgp_HArray1OfCirc2d.hxx>
#include<Handle_TColgp_HArray1OfDir.hxx>
#include<Handle_TColgp_HArray1OfDir2d.hxx>
#include<Handle_TColgp_HArray1OfLin2d.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<Handle_TColgp_HArray1OfPnt2d.hxx>
#include<Handle_TColgp_HArray1OfVec.hxx>
#include<Handle_TColgp_HArray1OfVec2d.hxx>
#include<Handle_TColgp_HArray1OfXY.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<Handle_TColgp_HArray2OfCirc2d.hxx>
#include<Handle_TColgp_HArray2OfDir.hxx>
#include<Handle_TColgp_HArray2OfDir2d.hxx>
#include<Handle_TColgp_HArray2OfLin2d.hxx>
#include<Handle_TColgp_HArray2OfPnt.hxx>
#include<Handle_TColgp_HArray2OfPnt2d.hxx>
#include<Handle_TColgp_HArray2OfVec.hxx>
#include<Handle_TColgp_HArray2OfVec2d.hxx>
#include<Handle_TColgp_HArray2OfXY.hxx>
#include<Handle_TColgp_HArray2OfXYZ.hxx>
#include<Handle_TColgp_HSequenceOfDir.hxx>
#include<Handle_TColgp_HSequenceOfDir2d.hxx>
#include<Handle_TColgp_HSequenceOfPnt.hxx>
#include<Handle_TColgp_HSequenceOfPnt2d.hxx>
#include<Handle_TColgp_HSequenceOfVec.hxx>
#include<Handle_TColgp_HSequenceOfVec2d.hxx>
#include<Handle_TColgp_HSequenceOfXY.hxx>
#include<Handle_TColgp_HSequenceOfXYZ.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfDir.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfDir2d.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfPnt.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfPnt2d.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfVec.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfVec2d.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfXY.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfXYZ.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d.hxx>
#include<TColgp_DataMapNodeOfDataMapOfIntegerCirc2d.hxx>
#include<TColgp_DataMapOfIntegerCirc2d.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_HArray2OfVec.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXY.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXYZ.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_SequenceOfXYZ.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_XYZ.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir.hxx>
#include<gp_Vec.hxx>
#include<gp_Pnt.hxx>
#include<gp_XY.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Circ2d.hxx>
%}
