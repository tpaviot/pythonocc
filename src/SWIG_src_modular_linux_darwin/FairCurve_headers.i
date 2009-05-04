/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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

#include<FairCurve_AnalysisCode.hxx>
#include<FairCurve_Batten.hxx>
#include<FairCurve_BattenLaw.hxx>
#include<FairCurve_DistributionOfEnergy.hxx>
#include<FairCurve_DistributionOfJerk.hxx>
#include<FairCurve_DistributionOfSagging.hxx>
#include<FairCurve_DistributionOfTension.hxx>
#include<FairCurve_Energy.hxx>
#include<FairCurve_EnergyOfBatten.hxx>
#include<FairCurve_EnergyOfMVC.hxx>
#include<FairCurve_MinimalVariation.hxx>
#include<FairCurve_Newton.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColgp_HArray1OfPnt2d.hxx>
#include<math_Vector.hxx>
#include<math_MultipleVarFunctionWithHessian.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<math_Matrix.hxx>
%}
