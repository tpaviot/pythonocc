/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_Law_BSpFunc.hxx>
#include<Handle_Law_BSpline.hxx>
#include<Handle_Law_Composite.hxx>
#include<Handle_Law_Constant.hxx>
#include<Handle_Law_Function.hxx>
#include<Handle_Law_Interpol.hxx>
#include<Handle_Law_Linear.hxx>
#include<Handle_Law_ListNodeOfLaws.hxx>
#include<Handle_Law_S.hxx>
#include<Law.hxx>
#include<Law_BSpFunc.hxx>
#include<Law_BSpline.hxx>
#include<Law_BSplineKnotSplitting.hxx>
#include<Law_Composite.hxx>
#include<Law_Constant.hxx>
#include<Law_Function.hxx>
#include<Law_Interpol.hxx>
#include<Law_Interpolate.hxx>
#include<Law_Laws.hxx>
#include<Law_Linear.hxx>
#include<Law_ListIteratorOfLaws.hxx>
#include<Law_ListNodeOfLaws.hxx>
#include<Law_S.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray1OfBoolean.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<Law.hxx>
#include<Adaptor3d_Curve.hxx>
%}
