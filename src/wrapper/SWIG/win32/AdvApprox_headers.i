/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<AdvApprox_ApproxAFunction.hxx>
#include<AdvApprox_Cutting.hxx>
#include<AdvApprox_DichoCutting.hxx>
#include<AdvApprox_EvaluatorFunction.hxx>
#include<AdvApprox_PrefAndRec.hxx>
#include<AdvApprox_PrefCutting.hxx>
#include<AdvApprox_SimpleApprox.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<Handle_TColgp_HArray2OfPnt2d.hxx>
#include<Handle_TColgp_HArray2OfPnt.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_PLib_JacobiPolynomial.hxx>
#include<TColStd_Array1OfInteger.hxx>
%}
