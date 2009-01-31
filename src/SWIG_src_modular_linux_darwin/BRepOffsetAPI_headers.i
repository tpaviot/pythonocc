/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<BRepOffsetAPI_MakePipeShell.hxx>
#include<BRepOffsetAPI_ThruSections.hxx>
#include<BRepOffsetAPI_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_MakeOffsetShape.hxx>
#include<BRepOffsetAPI_MakeEvolved.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_MakeOffset.hxx>
#include<BRepOffsetAPI_DataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_Sewing.hxx>
#include<BRepOffsetAPI_MakePipe.hxx>
#include<BRepOffsetAPI_MakeThickSolid.hxx>
#include<BRepOffsetAPI_DraftAngle.hxx>
#include<BRepOffsetAPI_NormalProjection.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_MakeFilling.hxx>
#include<BRepOffsetAPI_FindContigousEdges.hxx>
#include<BRepOffsetAPI_MakeDraft.hxx>
#include<Handle_BRepOffsetAPI_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape.hxx>
#include<Handle_BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal.hxx>

// Additional headers necessary for compilation.

#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopTools_MapIteratorOfMapOfShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_ShapeSet.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfOrientedShape.hxx>
#include<TopTools_DataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeShape.hxx>
#include<TopTools_StdMapNodeOfMapOfShape.hxx>
#include<TopTools_HArray1OfListOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopTools_SequenceNodeOfSequenceOfShape.hxx>
#include<TopTools_LocationSet.hxx>
#include<TopTools_MapOfOrientedShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeInteger.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_MapIteratorOfMapOfOrientedShape.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
#include<TopTools_OrientedShapeMapHasher.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerListOfShape.hxx>
#include<TopTools_ShapeMapHasher.hxx>
#include<TopTools_HArray1OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfOrientedShapeInteger.hxx>
#include<TopTools_ListNodeOfListOfShape.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<TopTools_HArray2OfShape.hxx>
#include<TopTools.hxx>
#include<TopTools_StdMapNodeOfMapOfOrientedShape.hxx>
#include<TopTools_IndexedMapNodeOfIndexedMapOfShape.hxx>
#include<TopTools_IndexedDataMapNodeOfIndexedDataMapOfShapeListOfShape.hxx>
#include<TopTools_Array1OfListOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfIntegerShape.hxx>
#include<TopTools_IndexedDataMapOfShapeShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TopTools_HSequenceOfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfIntegerShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfShape.hxx>
#include<TopTools_Array2OfShape.hxx>
#include<TopTools_DataMapIteratorOfDataMapOfShapeShape.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<TopTools_DataMapNodeOfDataMapOfShapeInteger.hxx>
#include<TopTools_ListIteratorOfListOfShape.hxx>
#include<BRepTools_DataMapNodeOfMapOfVertexPnt2d.hxx>
#include<BRepTools_Modification.hxx>
#include<BRepTools_DataMapIteratorOfMapOfVertexPnt2d.hxx>
#include<BRepTools_WireExplorer.hxx>
#include<BRepTools_ShapeSet.hxx>
#include<BRepTools_MapOfVertexPnt2d.hxx>
#include<BRepTools_Quilt.hxx>
#include<BRepTools_ReShape.hxx>
#include<BRepTools.hxx>
#include<BRepTools_GTrsfModification.hxx>
#include<BRepTools_Modifier.hxx>
#include<BRepTools_NurbsConvertModification.hxx>
#include<BRepTools_TrsfModification.hxx>
#include<BRepTools_Substitution.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<gp_Dir.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopoDS_Shell.hxx>
#include<TopTools_SequenceOfShape.hxx>
#include<TopoDS_Face.hxx>
#include<gp_Pln.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Wire.hxx>
#include<gp_Ax2.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_Law_Function.hxx>
#include<TopTools_ListOfShape.hxx>
%}
