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

#include<BRepAlgo.hxx>
#include<BRepAlgo_AsDes.hxx>
#include<BRepAlgo_BooleanOperation.hxx>
#include<BRepAlgo_BooleanOperations.hxx>
#include<BRepAlgo_CheckStatus.hxx>
#include<BRepAlgo_Common.hxx>
#include<BRepAlgo_Cut.hxx>
#include<BRepAlgo_DSAccess.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_DataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_EdgeConnector.hxx>
#include<BRepAlgo_FaceRestrictor.hxx>
#include<BRepAlgo_Fuse.hxx>
#include<BRepAlgo_Image.hxx>
#include<BRepAlgo_Loop.hxx>
#include<BRepAlgo_NormalProjection.hxx>
#include<BRepAlgo_Section.hxx>
#include<BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_SequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_Tool.hxx>
#include<BRepAlgo_TopOpe.hxx>
#include<Handle_BRepAlgo_AsDes.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeInterference.hxx>
#include<Handle_BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<Handle_BRepAlgo_EdgeConnector.hxx>
#include<Handle_BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger.hxx>

// Additional headers necessary for compilation.

#include<BRepAlgo.hxx>
#include<BRepAlgoAPI_BooleanOperation.hxx>
#include<BRepAlgoAPI_Common.hxx>
#include<BRepAlgoAPI_Cut.hxx>
#include<BRepAlgoAPI_Fuse.hxx>
#include<BRepAlgoAPI_Section.hxx>
#include<BRepAlgo_AsDes.hxx>
#include<BRepAlgo_BooleanOperation.hxx>
#include<BRepAlgo_BooleanOperations.hxx>
#include<BRepAlgo_CheckStatus.hxx>
#include<BRepAlgo_Common.hxx>
#include<BRepAlgo_Cut.hxx>
#include<BRepAlgo_DSAccess.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapIteratorOfDataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapNodeOfDataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_DataMapOfShapeBoolean.hxx>
#include<BRepAlgo_DataMapOfShapeInterference.hxx>
#include<BRepAlgo_DataMapOfShapeListOfInteger.hxx>
#include<BRepAlgo_EdgeConnector.hxx>
#include<BRepAlgo_FaceRestrictor.hxx>
#include<BRepAlgo_Fuse.hxx>
#include<BRepAlgo_Image.hxx>
#include<BRepAlgo_Loop.hxx>
#include<BRepAlgo_NormalProjection.hxx>
#include<BRepAlgo_Section.hxx>
#include<BRepAlgo_SequenceNodeOfSequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_SequenceOfSequenceOfInteger.hxx>
#include<BRepAlgo_Tool.hxx>
#include<BRepAlgo_TopOpe.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_TopOpeBRepDS_Interference.hxx>
#include<Handle_TopOpeBRepBuild_HBuilder.hxx>
#include<Adaptor3d_Curve.hxx>
#include<TopoDS_Wire.hxx>
#include<Handle_TopOpeBRepDS_HDataStructure.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<BRepAlgo.hxx>
%}
