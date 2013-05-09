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

#include<BOPDS_BoxBndTree.hxx>
#include<BOPDS_CommonBlock.hxx>
#include<BOPDS_CoupleOfPaveBlocks.hxx>
#include<BOPDS_Curve.hxx>
#include<BOPDS_DS.hxx>
#include<BOPDS_DataMapOfIntegerListOfPaveBlock.hxx>
#include<BOPDS_DataMapOfPassKeyListOfPaveBlock.hxx>
#include<BOPDS_DataMapOfPaveBlockListOfInteger.hxx>
#include<BOPDS_DataMapOfPaveBlockListOfPaveBlock.hxx>
#include<BOPDS_DataMapOfShapeCoupleOfPaveBlocks.hxx>
#include<BOPDS_FaceInfo.hxx>
#include<BOPDS_IndexRange.hxx>
#include<BOPDS_IndexedDataMapOfPaveBlockListOfInteger.hxx>
#include<BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock.hxx>
#include<BOPDS_IndexedDataMapOfShapeCoupleOfPaveBlocks.hxx>
#include<BOPDS_IndexedMapOfPaveBlock.hxx>
#include<BOPDS_Interf.hxx>
#include<BOPDS_Iterator.hxx>
#include<BOPDS_IteratorSI.hxx>
#include<BOPDS_ListIteratorOfListOfPassKeyBoolean.hxx>
#include<BOPDS_ListOfPassKeyBoolean.hxx>
#include<BOPDS_ListOfPave.hxx>
#include<BOPDS_ListOfPaveBlock.hxx>
#include<BOPDS_MapOfCommonBlock.hxx>
#include<BOPDS_MapOfPassKey.hxx>
#include<BOPDS_MapOfPassKeyBoolean.hxx>
#include<BOPDS_MapOfPave.hxx>
#include<BOPDS_MapOfPaveBlock.hxx>
#include<BOPDS_PDS.hxx>
#include<BOPDS_PIterator.hxx>
#include<BOPDS_PassKey.hxx>
#include<BOPDS_PassKeyBoolean.hxx>
#include<BOPDS_PassKeyMapHasher.hxx>
#include<BOPDS_Pave.hxx>
#include<BOPDS_PaveBlock.hxx>
#include<BOPDS_PaveMapHasher.hxx>
#include<BOPDS_Point.hxx>
#include<BOPDS_ShapeInfo.hxx>
#include<BOPDS_SubIterator.hxx>
#include<BOPDS_Tools.hxx>
#include<BOPDS_VectorOfCurve.hxx>
#include<BOPDS_VectorOfFaceInfo.hxx>
#include<BOPDS_VectorOfIndexRange.hxx>
#include<BOPDS_VectorOfInterfEE.hxx>
#include<BOPDS_VectorOfInterfEF.hxx>
#include<BOPDS_VectorOfInterfFF.hxx>
#include<BOPDS_VectorOfInterfVE.hxx>
#include<BOPDS_VectorOfInterfVF.hxx>
#include<BOPDS_VectorOfInterfVV.hxx>
#include<BOPDS_VectorOfListOfPassKeyBoolean.hxx>
#include<BOPDS_VectorOfListOfPaveBlock.hxx>
#include<BOPDS_VectorOfPoint.hxx>
#include<BOPDS_VectorOfShapeInfo.hxx>
#include<Handle_BOPDS_CommonBlock.hxx>
#include<Handle_BOPDS_PaveBlock.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<IntTools_Curve.hxx>
#include<Bnd_Box.hxx>
#include<TopoDS_Shape.hxx>
#include<IntTools_CommonPrt.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
%}
