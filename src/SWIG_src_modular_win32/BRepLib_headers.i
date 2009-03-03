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

#include<BRepLib.hxx>
#include<BRepLib_Command.hxx>
#include<BRepLib_EdgeError.hxx>
#include<BRepLib_FaceError.hxx>
#include<BRepLib_FindSurface.hxx>
#include<BRepLib_FuseEdges.hxx>
#include<BRepLib_MakeEdge.hxx>
#include<BRepLib_MakeEdge2d.hxx>
#include<BRepLib_MakeFace.hxx>
#include<BRepLib_MakePolygon.hxx>
#include<BRepLib_MakeShape.hxx>
#include<BRepLib_MakeShell.hxx>
#include<BRepLib_MakeSolid.hxx>
#include<BRepLib_MakeVertex.hxx>
#include<BRepLib_MakeWire.hxx>
#include<BRepLib_ShapeModification.hxx>
#include<BRepLib_ShellError.hxx>
#include<BRepLib_WireError.hxx>

// Additional headers necessary for compilation.

#include<BRepLib.hxx>
#include<BRepLib_Command.hxx>
#include<BRepLib_EdgeError.hxx>
#include<BRepLib_FaceError.hxx>
#include<BRepLib_FindSurface.hxx>
#include<BRepLib_FuseEdges.hxx>
#include<BRepLib_MakeEdge.hxx>
#include<BRepLib_MakeEdge2d.hxx>
#include<BRepLib_MakeFace.hxx>
#include<BRepLib_MakePolygon.hxx>
#include<BRepLib_MakeShape.hxx>
#include<BRepLib_MakeShell.hxx>
#include<BRepLib_MakeSolid.hxx>
#include<BRepLib_MakeVertex.hxx>
#include<BRepLib_MakeWire.hxx>
#include<BRepLib_ShapeModification.hxx>
#include<BRepLib_ShellError.hxx>
#include<BRepLib_WireError.hxx>

// Needed headers necessary for compilation.

#include<TopoDS_Face.hxx>
#include<TopoDS_Edge.hxx>
#include<gp_Pnt.hxx>
#include<TopoDS_Vertex.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Geom_Surface.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<BRepLib.hxx>
#include<Handle_Geom_Plane.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Solid.hxx>
#include<TopTools_ListOfShape.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_DataMapOfIntegerListOfShape.hxx>
#include<TopTools_DataMapOfIntegerShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Shell.hxx>
#include<TopLoc_Location.hxx>
%}
