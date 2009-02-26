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

#include<StdPrs_Curve.hxx>
#include<StdPrs_DeflectionCurve.hxx>
#include<StdPrs_HLRPolyShape.hxx>
#include<StdPrs_HLRShape.hxx>
#include<StdPrs_HLRToolShape.hxx>
#include<StdPrs_Plane.hxx>
#include<StdPrs_Point.hxx>
#include<StdPrs_PoleCurve.hxx>
#include<StdPrs_ShadedPoleSurface.hxx>
#include<StdPrs_ShadedShape.hxx>
#include<StdPrs_ShadedSurface.hxx>
#include<StdPrs_ToolPoint.hxx>
#include<StdPrs_ToolRFace.hxx>
#include<StdPrs_ToolShadedShape.hxx>
#include<StdPrs_ToolVertex.hxx>
#include<StdPrs_Vertex.hxx>
#include<StdPrs_WFDeflectionRestrictedFace.hxx>
#include<StdPrs_WFDeflectionShape.hxx>
#include<StdPrs_WFDeflectionSurface.hxx>
#include<StdPrs_WFPoleSurface.hxx>
#include<StdPrs_WFRestrictedFace.hxx>
#include<StdPrs_WFShape.hxx>
#include<StdPrs_WFSurface.hxx>

// Additional headers necessary for compilation.

#include<StdPrs_Curve.hxx>
#include<StdPrs_DeflectionCurve.hxx>
#include<StdPrs_HLRPolyShape.hxx>
#include<StdPrs_HLRShape.hxx>
#include<StdPrs_HLRToolShape.hxx>
#include<StdPrs_Plane.hxx>
#include<StdPrs_Point.hxx>
#include<StdPrs_PoleCurve.hxx>
#include<StdPrs_ShadedPoleSurface.hxx>
#include<StdPrs_ShadedShape.hxx>
#include<StdPrs_ShadedSurface.hxx>
#include<StdPrs_ToolPoint.hxx>
#include<StdPrs_ToolRFace.hxx>
#include<StdPrs_ToolShadedShape.hxx>
#include<StdPrs_ToolVertex.hxx>
#include<StdPrs_Vertex.hxx>
#include<StdPrs_WFDeflectionRestrictedFace.hxx>
#include<StdPrs_WFDeflectionShape.hxx>
#include<StdPrs_WFDeflectionSurface.hxx>
#include<StdPrs_WFPoleSurface.hxx>
#include<StdPrs_WFRestrictedFace.hxx>
#include<StdPrs_WFShape.hxx>
#include<StdPrs_WFSurface.hxx>

// Needed headers necessary for compilation.

#include<Handle_Prs3d_Presentation.hxx>
#include<TopoDS_Vertex.hxx>
#include<Handle_Prs3d_Drawer.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<Handle_Geom_Point.hxx>
#include<Adaptor3d_Surface.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<TopoDS_Face.hxx>
#include<TopLoc_Location.hxx>
#include<Poly_Connect.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Handle_Prs3d_Projector.hxx>
#include<Handle_TopTools_HSequenceOfShape.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<HLRAlgo_Projector.hxx>
#include<BRepAdaptor_Curve.hxx>
%}
