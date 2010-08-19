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

#include<Handle_MAT_Arc.hxx>
#include<Handle_MAT_BasicElt.hxx>
#include<Handle_MAT_Bisector.hxx>
#include<Handle_MAT_DataMapNodeOfDataMapOfIntegerArc.hxx>
#include<Handle_MAT_DataMapNodeOfDataMapOfIntegerBasicElt.hxx>
#include<Handle_MAT_DataMapNodeOfDataMapOfIntegerBisector.hxx>
#include<Handle_MAT_DataMapNodeOfDataMapOfIntegerNode.hxx>
#include<Handle_MAT_Edge.hxx>
#include<Handle_MAT_Graph.hxx>
#include<Handle_MAT_ListOfBisector.hxx>
#include<Handle_MAT_ListOfEdge.hxx>
#include<Handle_MAT_Node.hxx>
#include<Handle_MAT_SequenceNodeOfSequenceOfArc.hxx>
#include<Handle_MAT_SequenceNodeOfSequenceOfBasicElt.hxx>
#include<Handle_MAT_TListNodeOfListOfBisector.hxx>
#include<Handle_MAT_TListNodeOfListOfEdge.hxx>
#include<Handle_MAT_Zone.hxx>
#include<MAT_Arc.hxx>
#include<MAT_BasicElt.hxx>
#include<MAT_Bisector.hxx>
#include<MAT_DataMapIteratorOfDataMapOfIntegerArc.hxx>
#include<MAT_DataMapIteratorOfDataMapOfIntegerBasicElt.hxx>
#include<MAT_DataMapIteratorOfDataMapOfIntegerBisector.hxx>
#include<MAT_DataMapIteratorOfDataMapOfIntegerNode.hxx>
#include<MAT_DataMapNodeOfDataMapOfIntegerArc.hxx>
#include<MAT_DataMapNodeOfDataMapOfIntegerBasicElt.hxx>
#include<MAT_DataMapNodeOfDataMapOfIntegerBisector.hxx>
#include<MAT_DataMapNodeOfDataMapOfIntegerNode.hxx>
#include<MAT_DataMapOfIntegerArc.hxx>
#include<MAT_DataMapOfIntegerBasicElt.hxx>
#include<MAT_DataMapOfIntegerBisector.hxx>
#include<MAT_DataMapOfIntegerNode.hxx>
#include<MAT_Edge.hxx>
#include<MAT_Graph.hxx>
#include<MAT_ListOfBisector.hxx>
#include<MAT_ListOfEdge.hxx>
#include<MAT_Node.hxx>
#include<MAT_SequenceNodeOfSequenceOfArc.hxx>
#include<MAT_SequenceNodeOfSequenceOfBasicElt.hxx>
#include<MAT_SequenceOfArc.hxx>
#include<MAT_SequenceOfBasicElt.hxx>
#include<MAT_Side.hxx>
#include<MAT_TListNodeOfListOfBisector.hxx>
#include<MAT_TListNodeOfListOfEdge.hxx>
#include<MAT_Zone.hxx>

// Additional headers necessary for compilation.

#include<MAT2d_Array2OfConnexion.hxx>
#include<MAT2d_BiInt.hxx>
#include<MAT2d_Circuit.hxx>
#include<MAT2d_Connexion.hxx>
#include<MAT2d_CutCurve.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapOfIntegerVec2d.hxx>
#include<MAT2d_MapBiIntHasher.hxx>
#include<MAT2d_Mat2d.hxx>
#include<MAT2d_MiniPath.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfBoolean.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfConnexion.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SequenceOfBoolean.hxx>
#include<MAT2d_SequenceOfConnexion.hxx>
#include<MAT2d_SequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SketchExplorer.hxx>
#include<MAT2d_Tool2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
%}
