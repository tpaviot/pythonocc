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

#include<GEOMAlgo_Algo.hxx>
#include<GEOMAlgo_Builder.hxx>
#include<GEOMAlgo_BuilderArea.hxx>
#include<GEOMAlgo_BuilderFace.hxx>
#include<GEOMAlgo_BuilderShape.hxx>
#include<GEOMAlgo_BuilderSolid.hxx>
#include<GEOMAlgo_BuilderTools.hxx>
#include<GEOMAlgo_Clsf.hxx>
#include<GEOMAlgo_ClsfBox.hxx>
#include<GEOMAlgo_ClsfSolid.hxx>
#include<GEOMAlgo_ClsfSurf.hxx>
#include<GEOMAlgo_CoupleOfShapes.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_DataMapOfPassKeyInteger.hxx>
#include<GEOMAlgo_DataMapOfPassKeyShapeShape.hxx>
#include<GEOMAlgo_DataMapOfRealListOfShape.hxx>
#include<GEOMAlgo_DataMapOfShapeReal.hxx>
#include<GEOMAlgo_DataMapOfShapeShapeSet.hxx>
#include<GEOMAlgo_FinderShapeOn.hxx>
#include<GEOMAlgo_FinderShapeOn1.hxx>
#include<GEOMAlgo_FinderShapeOn2.hxx>
#include<GEOMAlgo_FinderShapeOnQuad.hxx>
#include<GEOMAlgo_GlueAnalyser.hxx>
#include<GEOMAlgo_Gluer.hxx>
#include<GEOMAlgo_Gluer1.hxx>
#include<GEOMAlgo_HAlgo.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo.hxx>
#include<GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState.hxx>
#include<GEOMAlgo_IndexedDataMapOfIntegerShape.hxx>
#include<GEOMAlgo_IndexedDataMapOfPassKeyListOfShape.hxx>
#include<GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include<GEOMAlgo_IndexedDataMapOfShapeBox.hxx>
#include<GEOMAlgo_IndexedDataMapOfShapeShapeInfo.hxx>
#include<GEOMAlgo_IndexedDataMapOfShapeState.hxx>
#include<GEOMAlgo_KindOfBounds.hxx>
#include<GEOMAlgo_KindOfClosed.hxx>
#include<GEOMAlgo_KindOfName.hxx>
#include<GEOMAlgo_KindOfShape.hxx>
#include<GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx>
#include<GEOMAlgo_ListIteratorOfListOfPnt.hxx>
#include<GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#include<GEOMAlgo_ListNodeOfListOfPnt.hxx>
#include<GEOMAlgo_ListOfCoupleOfShapes.hxx>
#include<GEOMAlgo_ListOfPnt.hxx>
#include<GEOMAlgo_PWireEdgeSet.hxx>
#include<GEOMAlgo_PassKey.hxx>
#include<GEOMAlgo_PassKeyMapHasher.hxx>
#include<GEOMAlgo_PassKeyShape.hxx>
#include<GEOMAlgo_PassKeyShapeMapHasher.hxx>
#include<GEOMAlgo_ShapeAlgo.hxx>
#include<GEOMAlgo_ShapeInfo.hxx>
#include<GEOMAlgo_ShapeInfoFiller.hxx>
#include<GEOMAlgo_ShapeSet.hxx>
#include<GEOMAlgo_ShapeSolid.hxx>
#include<GEOMAlgo_ShellSolid.hxx>
#include<GEOMAlgo_SolidSolid.hxx>
#include<GEOMAlgo_Splitter.hxx>
#include<GEOMAlgo_State.hxx>
#include<GEOMAlgo_StateCollector.hxx>
#include<GEOMAlgo_SurfaceTools.hxx>
#include<GEOMAlgo_Tools.hxx>
#include<GEOMAlgo_Tools3D.hxx>
#include<GEOMAlgo_VertexSolid.hxx>
#include<GEOMAlgo_WESCorrector.hxx>
#include<GEOMAlgo_WireEdgeSet.hxx>
#include<GEOMAlgo_WireSolid.hxx>
#include<GEOMAlgo_WireSplitter.hxx>
#include<Handle_GEOMAlgo_Clsf.hxx>
#include<Handle_GEOMAlgo_ClsfBox.hxx>
#include<Handle_GEOMAlgo_ClsfSolid.hxx>
#include<Handle_GEOMAlgo_ClsfSurf.hxx>
#include<Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx>
#include<Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx>
#include<Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx>
#include<Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet.hxx>
#include<Handle_GEOMAlgo_HAlgo.hxx>
#include<Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#include<Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx>
#include<Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape.hxx>
#include<Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo.hxx>
#include<Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState.hxx>
#include<Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx>
#include<Handle_GEOMAlgo_ListNodeOfListOfPnt.hxx>

// Additional headers necessary for compilation.

#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>

// Needed headers necessary for compilation.

#include<NMTTools_PaveFiller.hxx>
#include<NMTTools_ListOfCoupleOfShape.hxx>
%}
