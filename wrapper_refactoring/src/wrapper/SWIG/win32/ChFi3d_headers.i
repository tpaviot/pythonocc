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

#include<ChFi3d.hxx>
#include<ChFi3d_Builder.hxx>
#include<ChFi3d_Builder_0.hxx>
#include<ChFi3d_ChBuilder.hxx>
#include<ChFi3d_FilBuilder.hxx>
#include<ChFi3d_FilletShape.hxx>
#include<ChFi3d_SearchSing.hxx>

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

#include<ChFi3d.hxx>
#include<BRepAdaptor_Surface.hxx>
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
#include<Handle_Geom_Curve.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_ChFiDS_SecHArray1.hxx>
#include<Handle_ChFiDS_HElSpine.hxx>
#include<Handle_BRepAdaptor_HSurface.hxx>
#include<Handle_BRepAdaptor_HCurve2d.hxx>
#include<math_Vector.hxx>
#include<Handle_Law_Function.hxx>
#include<gp_XY.hxx>
%}
