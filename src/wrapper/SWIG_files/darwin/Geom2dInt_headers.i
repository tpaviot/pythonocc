/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_GInter.hxx>
#include<Geom2dInt_Geom2dCurveTool.hxx>
#include<Geom2dInt_IntConicCurveOfGInter.hxx>
#include<Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_TheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheProjPCurOfGInter.hxx>
#include<Handle_Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>

// Additional headers necessary for compilation.

#include<Adaptor2d_Curve2d.hxx>
#include<Adaptor2d_Curve2dPtr.hxx>
#include<Adaptor2d_HCurve2d.hxx>
#include<Adaptor2d_HLine2d.hxx>
#include<Adaptor2d_Line2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<IntCurve_IConicTool.hxx>
#include<Adaptor2d_Curve2d.hxx>
#include<IntRes2d_Domain.hxx>
#include<gp_Pnt2d.hxx>
#include<Extrema_POnCurv2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Vec2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<Bnd_Box2d.hxx>
%}
