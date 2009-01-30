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

#include<ChFi3d_Builder.hxx>
#include<ChFi3d_Builder_0.hxx>
#include<ChFi3d_ChBuilder.hxx>
#include<ChFi3d_FilBuilder.hxx>
#include<ChFi3d_FilletShape.hxx>
#include<ChFi3d_SearchSing.hxx>
#include<ChFi3d.hxx>

// Additional headers necessary for compilation.

#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Adaptor3d_CurveOnSurfacePtr.hxx>
#include<Adaptor3d_CurvePtr.hxx>
#include<Adaptor3d_HCurve.hxx>
#include<Adaptor3d_HCurveOnSurface.hxx>
#include<Adaptor3d_HIsoCurve.hxx>
#include<Adaptor3d_HOffsetCurve.hxx>
#include<Adaptor3d_HSurface.hxx>
#include<Adaptor3d_HSurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_HSurfaceOfRevolution.hxx>
#include<Adaptor3d_HVertex.hxx>
#include<Adaptor3d_InterFunc.hxx>
#include<Adaptor3d_IsoCurve.hxx>
#include<Adaptor3d_OffsetCurve.hxx>
#include<Adaptor3d_Surface.hxx>
#include<Adaptor3d_SurfaceOfLinearExtrusion.hxx>
#include<Adaptor3d_SurfaceOfRevolution.hxx>
#include<Adaptor3d_SurfacePtr.hxx>
#include<Adaptor3d_TopolTool.hxx>

// Needed headers necessary for compilation.

#include<TopoDS_Edge.hxx>
#include<Handle_ChFiDS_Spine.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_TopOpeBRepBuild_HBuilder.hxx>
#include<Handle_ChFiDS_SurfData.hxx>
#include<ChFiDS_SequenceOfSurfData.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Adaptor3d_TopolTool.hxx>
#include<Handle_Law_Function.hxx>
#include<gp_XY.hxx>
#include<Handle_ChFiDS_SecHArray1.hxx>
#include<BRepAdaptor_Surface.hxx>
#include<Handle_Geom_Curve.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_ChFiDS_HElSpine.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<Handle_BRepAdaptor_HCurve2d.hxx>
#include<math_Vector.hxx>
%}
