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

#include<BRepOffset_Analyse.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<BRepOffset_DataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapOfShapeReal.hxx>
#include<BRepOffset_Error.hxx>
#include<BRepOffset_Inter2d.hxx>
#include<BRepOffset_Inter3d.hxx>
#include<BRepOffset_Interval.hxx>
#include<BRepOffset_ListIteratorOfListOfInterval.hxx>
#include<BRepOffset_ListNodeOfListOfInterval.hxx>
#include<BRepOffset_ListOfInterval.hxx>
#include<BRepOffset_MakeLoops.hxx>
#include<BRepOffset_MakeOffset.hxx>
#include<BRepOffset_Mode.hxx>
#include<BRepOffset_Offset.hxx>
#include<BRepOffset_Status.hxx>
#include<BRepOffset_Tool.hxx>
#include<BRepOffset_Type.hxx>
#include<BRepOffset.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeOffset.hxx>
#include<Handle_BRepOffset_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_BRepOffset_ListNodeOfListOfInterval.hxx>

// Additional headers necessary for compilation.

#include<BRepOffset.hxx>
#include<BRepOffsetAPI_DataMapIteratorOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_DataMapNodeOfDataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_DataMapOfShapeSequenceOfShape.hxx>
#include<BRepOffsetAPI_DraftAngle.hxx>
#include<BRepOffsetAPI_FindContigousEdges.hxx>
#include<BRepOffsetAPI_MakeDraft.hxx>
#include<BRepOffsetAPI_MakeEvolved.hxx>
#include<BRepOffsetAPI_MakeFilling.hxx>
#include<BRepOffsetAPI_MakeOffset.hxx>
#include<BRepOffsetAPI_MakeOffsetShape.hxx>
#include<BRepOffsetAPI_MakePipe.hxx>
#include<BRepOffsetAPI_MakePipeShell.hxx>
#include<BRepOffsetAPI_MakeThickSolid.hxx>
#include<BRepOffsetAPI_NormalProjection.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_SequenceNodeOfSequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfReal.hxx>
#include<BRepOffsetAPI_SequenceOfSequenceOfShape.hxx>
#include<BRepOffsetAPI_Sewing.hxx>
#include<BRepOffsetAPI_ThruSections.hxx>
#include<BRepOffset_Analyse.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<BRepOffset_DataMapOfShapeListOfInterval.hxx>
#include<BRepOffset_DataMapOfShapeMapOfShape.hxx>
#include<BRepOffset_DataMapOfShapeOffset.hxx>
#include<BRepOffset_DataMapOfShapeReal.hxx>
#include<BRepOffset_Error.hxx>
#include<BRepOffset_Inter2d.hxx>
#include<BRepOffset_Inter3d.hxx>
#include<BRepOffset_Interval.hxx>
#include<BRepOffset_ListIteratorOfListOfInterval.hxx>
#include<BRepOffset_ListNodeOfListOfInterval.hxx>
#include<BRepOffset_ListOfInterval.hxx>
#include<BRepOffset_MakeLoops.hxx>
#include<BRepOffset_MakeOffset.hxx>
#include<BRepOffset_Mode.hxx>
#include<BRepOffset_Offset.hxx>
#include<BRepOffset_Status.hxx>
#include<BRepOffset_Tool.hxx>
#include<BRepOffset_Type.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Compound.hxx>
#include<TopTools_MapOfShape.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_BRepAlgo_AsDes.hxx>
#include<BRepAlgo_Image.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopoDS_Wire.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<Handle_Geom_Curve.hxx>
%}
