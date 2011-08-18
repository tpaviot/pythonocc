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

#include<GccAna_Circ2d2TanOn.hxx>
#include<GccAna_Circ2d2TanRad.hxx>
#include<GccAna_Circ2d3Tan.hxx>
#include<GccAna_Circ2dBisec.hxx>
#include<GccAna_Circ2dTanCen.hxx>
#include<GccAna_Circ2dTanOnRad.hxx>
#include<GccAna_CircLin2dBisec.hxx>
#include<GccAna_CircPnt2dBisec.hxx>
#include<GccAna_Lin2d2Tan.hxx>
#include<GccAna_Lin2dBisec.hxx>
#include<GccAna_Lin2dTanObl.hxx>
#include<GccAna_Lin2dTanPar.hxx>
#include<GccAna_Lin2dTanPer.hxx>
#include<GccAna_LinPnt2dBisec.hxx>
#include<GccAna_NoSolution.hxx>
#include<GccAna_Pnt2dBisec.hxx>
#include<Handle_GccAna_NoSolution.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin2d.hxx>
#include<GccEnt_QualifiedCirc.hxx>
#include<GccEnt_QualifiedLin.hxx>
#include<gp_Circ2d.hxx>
#include<Handle_GccInt_Bisec.hxx>
%}
