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

#include<Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt.hxx>
#include<Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY.hxx>
#include<Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient.hxx>
#include<Handle_MeshShape_ListNodeOfListOfSurfacePoint.hxx>
#include<Handle_MeshShape_ListNodeOfPolygon.hxx>
#include<Handle_MeshShape_StdMapNodeOfMapOfCouple.hxx>
#include<MeshShape.hxx>
#include<MeshShape_Couple.hxx>
#include<MeshShape_CoupleHasher.hxx>
#include<MeshShape_CurvatureType.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient.hxx>
#include<MeshShape_DataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapOfShapeListOfTransient.hxx>
#include<MeshShape_Edge.hxx>
#include<MeshShape_ListIteratorOfListOfSurfacePoint.hxx>
#include<MeshShape_ListIteratorOfPolygon.hxx>
#include<MeshShape_ListNodeOfListOfSurfacePoint.hxx>
#include<MeshShape_ListNodeOfPolygon.hxx>
#include<MeshShape_ListOfSurfacePoint.hxx>
#include<MeshShape_MapIteratorOfMapOfCouple.hxx>
#include<MeshShape_MapOfCouple.hxx>
#include<MeshShape_Polygon.hxx>
#include<MeshShape_PolygonPoint.hxx>
#include<MeshShape_StdMapNodeOfMapOfCouple.hxx>
#include<MeshShape_SurfacePoint.hxx>
#include<MeshShape_Triangle.hxx>
#include<MeshShape_Vertex.hxx>

// Additional headers necessary for compilation.

#include<MeshShape.hxx>
#include<MeshShape_Couple.hxx>
#include<MeshShape_CoupleHasher.hxx>
#include<MeshShape_CurvatureType.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient.hxx>
#include<MeshShape_DataMapOfIntegerPnt.hxx>
#include<MeshShape_DataMapOfIntegerXY.hxx>
#include<MeshShape_DataMapOfShapeListOfTransient.hxx>
#include<MeshShape_Edge.hxx>
#include<MeshShape_ListIteratorOfListOfSurfacePoint.hxx>
#include<MeshShape_ListIteratorOfPolygon.hxx>
#include<MeshShape_ListNodeOfListOfSurfacePoint.hxx>
#include<MeshShape_ListNodeOfPolygon.hxx>
#include<MeshShape_ListOfSurfacePoint.hxx>
#include<MeshShape_MapIteratorOfMapOfCouple.hxx>
#include<MeshShape_MapOfCouple.hxx>
#include<MeshShape_Polygon.hxx>
#include<MeshShape_PolygonPoint.hxx>
#include<MeshShape_StdMapNodeOfMapOfCouple.hxx>
#include<MeshShape_SurfacePoint.hxx>
#include<MeshShape_Triangle.hxx>
#include<MeshShape_Vertex.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Shape.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<MeshShape.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>
%}
