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

#include<TopOpeBRepTool_2d.hxx>
#include<TopOpeBRepTool_AncestorsTool.hxx>
#include<TopOpeBRepTool_box.hxx>
#include<TopOpeBRepTool_BoxSort.hxx>
#include<TopOpeBRepTool_C2DF.hxx>
#include<TopOpeBRepTool_CLASSI.hxx>
#include<TopOpeBRepTool_connexity.hxx>
#include<TopOpeBRepTool_CORRISO.hxx>
#include<TopOpeBRepTool_CurveTool.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_DataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_define.hxx>
#include<TopOpeBRepTool_defineG.hxx>
#include<TopOpeBRepTool_DRAW.hxx>
#include<TopOpeBRepTool_EXPORT.hxx>
#include<TopOpeBRepTool_face.hxx>
#include<TopOpeBRepTool_FuseEdges.hxx>
#include<TopOpeBRepTool_GEOMETRY.hxx>
#include<TopOpeBRepTool_GeomTool.hxx>
#include<TopOpeBRepTool_HBoxTool.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeAddress.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_KRO.hxx>
#include<TopOpeBRepTool_ListIteratorOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListNodeOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListOfC2DF.hxx>
#include<TopOpeBRepTool_makeTransition.hxx>
#include<TopOpeBRepTool_mkTondgE.hxx>
#include<TopOpeBRepTool_OutCurveType.hxx>
#include<TopOpeBRepTool_Plos.hxx>
#include<TopOpeBRepTool_PROJECT.hxx>
#include<TopOpeBRepTool_PShapeClassifier.hxx>
#include<TopOpeBRepTool_PSoClassif.hxx>
#include<TopOpeBRepTool_PURGE.hxx>
#include<TopOpeBRepTool_PurgeInternalEdges.hxx>
#include<TopOpeBRepTool_REGUS.hxx>
#include<TopOpeBRepTool_REGUW.hxx>
#include<TopOpeBRepTool_SC.hxx>
#include<TopOpeBRepTool_ShapeClassifier.hxx>
#include<TopOpeBRepTool_ShapeExplorer.hxx>
#include<TopOpeBRepTool_ShapeTool.hxx>
#include<TopOpeBRepTool_SolidClassifier.hxx>
#include<TopOpeBRepTool_STATE.hxx>
#include<TopOpeBRepTool_tol.hxx>
#include<TopOpeBRepTool_TOOL.hxx>
#include<TopOpeBRepTool_TOPOLOGY.hxx>
#include<TopOpeBRepTool.hxx>
#include<Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF.hxx>
#include<Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface.hxx>
#include<Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF.hxx>
#include<Handle_TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_TopOpeBRepTool_HBoxTool.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity.hxx>
#include<Handle_TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<Handle_TopOpeBRepTool_ListNodeOfListOfC2DF.hxx>

// Additional headers necessary for compilation.

#include<TopOpeBRepTool.hxx>
#include<TopOpeBRepTool_2d.hxx>
#include<TopOpeBRepTool_AncestorsTool.hxx>
#include<TopOpeBRepTool_box.hxx>
#include<TopOpeBRepTool_BoxSort.hxx>
#include<TopOpeBRepTool_C2DF.hxx>
#include<TopOpeBRepTool_CLASSI.hxx>
#include<TopOpeBRepTool_connexity.hxx>
#include<TopOpeBRepTool_CORRISO.hxx>
#include<TopOpeBRepTool_CurveTool.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_DataMapOfOrientedShapeC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeface.hxx>
#include<TopOpeBRepTool_DataMapOfShapeListOfC2DF.hxx>
#include<TopOpeBRepTool_DataMapOfShapeReal.hxx>
#include<TopOpeBRepTool_define.hxx>
#include<TopOpeBRepTool_defineG.hxx>
#include<TopOpeBRepTool_DRAW.hxx>
#include<TopOpeBRepTool_EXPORT.hxx>
#include<TopOpeBRepTool_face.hxx>
#include<TopOpeBRepTool_FuseEdges.hxx>
#include<TopOpeBRepTool_GEOMETRY.hxx>
#include<TopOpeBRepTool_GeomTool.hxx>
#include<TopOpeBRepTool_HBoxTool.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeAddress.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapNodeOfIndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeAddress.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeBox2d.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfShapeconnexity.hxx>
#include<TopOpeBRepTool_IndexedDataMapOfSolidClassifier.hxx>
#include<TopOpeBRepTool_KRO.hxx>
#include<TopOpeBRepTool_ListIteratorOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListNodeOfListOfC2DF.hxx>
#include<TopOpeBRepTool_ListOfC2DF.hxx>
#include<TopOpeBRepTool_makeTransition.hxx>
#include<TopOpeBRepTool_mkTondgE.hxx>
#include<TopOpeBRepTool_OutCurveType.hxx>
#include<TopOpeBRepTool_Plos.hxx>
#include<TopOpeBRepTool_PROJECT.hxx>
#include<TopOpeBRepTool_PShapeClassifier.hxx>
#include<TopOpeBRepTool_PSoClassif.hxx>
#include<TopOpeBRepTool_PURGE.hxx>
#include<TopOpeBRepTool_PurgeInternalEdges.hxx>
#include<TopOpeBRepTool_REGUS.hxx>
#include<TopOpeBRepTool_REGUW.hxx>
#include<TopOpeBRepTool_SC.hxx>
#include<TopOpeBRepTool_ShapeClassifier.hxx>
#include<TopOpeBRepTool_ShapeExplorer.hxx>
#include<TopOpeBRepTool_ShapeTool.hxx>
#include<TopOpeBRepTool_SolidClassifier.hxx>
#include<TopOpeBRepTool_STATE.hxx>
#include<TopOpeBRepTool_tol.hxx>
#include<TopOpeBRepTool_TOOL.hxx>
#include<TopOpeBRepTool_TOPOLOGY.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Bnd_Box.hxx>
#include<Bnd_Box2d.hxx>
#include<TopoDS_Face.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Wire.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_Shell.hxx>
#include<TopTools_DataMapOfOrientedShapeInteger.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Curve.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Handle_Bnd_HArray1OfBox.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TopTools_Array1OfShape.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir2d.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Dir.hxx>
#include<Handle_Geom_Surface.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<TopTools_IndexedDataMapOfShapeListOfShape.hxx>
#include<BRepClass3d_SolidClassifier.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopTools_DataMapOfShapeInteger.hxx>
#include<TopTools_IndexedMapOfOrientedShape.hxx>
%}
