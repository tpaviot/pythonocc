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

#include<BRepMesh_Array1OfBiPoint.hxx>
#include<BRepMesh_Array1OfVertexOfDelaun.hxx>
#include<BRepMesh_BiPoint.hxx>
#include<BRepMesh_Classifier.hxx>
#include<BRepMesh_ComparatorOfIndexedVertexOfDelaun.hxx>
#include<BRepMesh_ComparatorOfVertexOfDelaun.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfVertexInteger.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfVertexInteger.hxx>
#include<BRepMesh_DataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapOfVertexInteger.hxx>
#include<BRepMesh_DataStructureOfDelaun.hxx>
#include<BRepMesh_Delaun.hxx>
#include<BRepMesh_DiscretFactory.hxx>
#include<BRepMesh_DiscretRoot.hxx>
#include<BRepMesh_Edge.hxx>
#include<BRepMesh_EdgeDiscret.hxx>
#include<BRepMesh_ElemHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_FactoryError.hxx>
#include<BRepMesh_FastDiscret.hxx>
#include<BRepMesh_GeomTool.hxx>
#include<BRepMesh_HArray1OfVertexOfDelaun.hxx>
#include<BRepMesh_HeapSortIndexedVertexOfDelaun.hxx>
#include<BRepMesh_HeapSortVertexOfDelaun.hxx>
#include<BRepMesh_IDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IMapOfElementOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IncrementalMesh.hxx>
#include<BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedMapNodeOfIndexedMapOfVertex.hxx>
#include<BRepMesh_IndexedMapOfVertex.hxx>
#include<BRepMesh_LinkHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_ListIteratorOfListOfSurfaceGrid.hxx>
#include<BRepMesh_ListIteratorOfListOfVertex.hxx>
#include<BRepMesh_ListIteratorOfListOfXY.hxx>
#include<BRepMesh_ListNodeOfListOfSurfaceGrid.hxx>
#include<BRepMesh_ListNodeOfListOfVertex.hxx>
#include<BRepMesh_ListNodeOfListOfXY.hxx>
#include<BRepMesh_ListOfSurfaceGrid.hxx>
#include<BRepMesh_ListOfVertex.hxx>
#include<BRepMesh_ListOfXY.hxx>
#include<BRepMesh_MapIteratorOfMapOfAsciiString.hxx>
#include<BRepMesh_MapOfAsciiString.hxx>
#include<BRepMesh_NodeHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_PDiscretRoot.hxx>
#include<BRepMesh_PluginMacro.hxx>
#include<BRepMesh_SelectorOfDataStructureOfDelaun.hxx>
#include<BRepMesh_ShapeTool.hxx>
#include<BRepMesh_Status.hxx>
#include<BRepMesh_StdMapNodeOfMapOfAsciiString.hxx>
#include<BRepMesh_SurfaceGrid.hxx>
#include<BRepMesh_Triangle.hxx>
#include<BRepMesh_Vertex.hxx>
#include<BRepMesh_VertexHasher.hxx>
#include<BRepMesh.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid.hxx>
#include<Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger.hxx>
#include<Handle_BRepMesh_DataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_EdgeDiscret.hxx>
#include<Handle_BRepMesh_FastDiscret.hxx>
#include<Handle_BRepMesh_HArray1OfVertexOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun.hxx>
#include<Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex.hxx>
#include<Handle_BRepMesh_ListNodeOfListOfSurfaceGrid.hxx>
#include<Handle_BRepMesh_ListNodeOfListOfVertex.hxx>
#include<Handle_BRepMesh_ListNodeOfListOfXY.hxx>
#include<Handle_BRepMesh_StdMapNodeOfMapOfAsciiString.hxx>
#include<Handle_BRepMesh_SurfaceGrid.hxx>

// Additional headers necessary for compilation.

#include<BRepMesh.hxx>
#include<BRepMesh_Array1OfBiPoint.hxx>
#include<BRepMesh_Array1OfVertexOfDelaun.hxx>
#include<BRepMesh_BiPoint.hxx>
#include<BRepMesh_Classifier.hxx>
#include<BRepMesh_ComparatorOfIndexedVertexOfDelaun.hxx>
#include<BRepMesh_ComparatorOfVertexOfDelaun.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapIteratorOfDataMapOfVertexInteger.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapNodeOfDataMapOfVertexInteger.hxx>
#include<BRepMesh_DataMapOfCouplePnt.hxx>
#include<BRepMesh_DataMapOfIntegerFace.hxx>
#include<BRepMesh_DataMapOfIntegerListOfXY.hxx>
#include<BRepMesh_DataMapOfMeshVertexInteger.hxx>
#include<BRepMesh_DataMapOfShapeEdgeDiscret.hxx>
#include<BRepMesh_DataMapOfShapeReal.hxx>
#include<BRepMesh_DataMapOfShapeSurfaceGrid.hxx>
#include<BRepMesh_DataMapOfVertexInteger.hxx>
#include<BRepMesh_DataStructureOfDelaun.hxx>
#include<BRepMesh_Delaun.hxx>
#include<BRepMesh_DiscretFactory.hxx>
#include<BRepMesh_DiscretRoot.hxx>
#include<BRepMesh_Edge.hxx>
#include<BRepMesh_EdgeDiscret.hxx>
#include<BRepMesh_ElemHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_FactoryError.hxx>
#include<BRepMesh_FastDiscret.hxx>
#include<BRepMesh_GeomTool.hxx>
#include<BRepMesh_HArray1OfVertexOfDelaun.hxx>
#include<BRepMesh_HeapSortIndexedVertexOfDelaun.hxx>
#include<BRepMesh_HeapSortVertexOfDelaun.hxx>
#include<BRepMesh_IDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IMapOfElementOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IncrementalMesh.hxx>
#include<BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun.hxx>
#include<BRepMesh_IndexedMapNodeOfIndexedMapOfVertex.hxx>
#include<BRepMesh_IndexedMapOfVertex.hxx>
#include<BRepMesh_LinkHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_ListIteratorOfListOfSurfaceGrid.hxx>
#include<BRepMesh_ListIteratorOfListOfVertex.hxx>
#include<BRepMesh_ListIteratorOfListOfXY.hxx>
#include<BRepMesh_ListNodeOfListOfSurfaceGrid.hxx>
#include<BRepMesh_ListNodeOfListOfVertex.hxx>
#include<BRepMesh_ListNodeOfListOfXY.hxx>
#include<BRepMesh_ListOfSurfaceGrid.hxx>
#include<BRepMesh_ListOfVertex.hxx>
#include<BRepMesh_ListOfXY.hxx>
#include<BRepMesh_MapIteratorOfMapOfAsciiString.hxx>
#include<BRepMesh_MapOfAsciiString.hxx>
#include<BRepMesh_NodeHasherOfDataStructureOfDelaun.hxx>
#include<BRepMesh_PDiscretRoot.hxx>
#include<BRepMesh_PluginMacro.hxx>
#include<BRepMesh_SelectorOfDataStructureOfDelaun.hxx>
#include<BRepMesh_ShapeTool.hxx>
#include<BRepMesh_Status.hxx>
#include<BRepMesh_StdMapNodeOfMapOfAsciiString.hxx>
#include<BRepMesh_SurfaceGrid.hxx>
#include<BRepMesh_Triangle.hxx>
#include<BRepMesh_Vertex.hxx>
#include<BRepMesh_VertexHasher.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Bnd_Box.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<MeshShape_SurfacePoint.hxx>
#include<MeshShape_ListOfSurfacePoint.hxx>
#include<gp_XY.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<BRepMesh.hxx>
#include<BRepAdaptor_Curve.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<MeshShape_Couple.hxx>
#include<TCollection_AsciiString.hxx>
#include<MeshShape_DataMapOfShapeListOfTransient.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<Bnd_Box2d.hxx>
%}
