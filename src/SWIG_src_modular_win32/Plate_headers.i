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

#include<Handle_Plate_HArray1OfPinpointConstraint.hxx>
#include<Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint.hxx>
#include<Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint.hxx>
#include<Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint.hxx>
#include<Plate_Array1OfPinpointConstraint.hxx>
#include<Plate_D1.hxx>
#include<Plate_D2.hxx>
#include<Plate_D3.hxx>
#include<Plate_FreeGtoCConstraint.hxx>
#include<Plate_GlobalTranslationConstraint.hxx>
#include<Plate_GtoCConstraint.hxx>
#include<Plate_HArray1OfPinpointConstraint.hxx>
#include<Plate_LineConstraint.hxx>
#include<Plate_LinearScalarConstraint.hxx>
#include<Plate_LinearXYZConstraint.hxx>
#include<Plate_PinpointConstraint.hxx>
#include<Plate_PlaneConstraint.hxx>
#include<Plate_Plate.hxx>
#include<Plate_SampledCurveConstraint.hxx>
#include<Plate_SequenceNodeOfSequenceOfLinearScalarConstraint.hxx>
#include<Plate_SequenceNodeOfSequenceOfLinearXYZConstraint.hxx>
#include<Plate_SequenceNodeOfSequenceOfPinpointConstraint.hxx>
#include<Plate_SequenceOfLinearScalarConstraint.hxx>
#include<Plate_SequenceOfLinearXYZConstraint.hxx>
#include<Plate_SequenceOfPinpointConstraint.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_XYZ.hxx>
#include<gp_XY.hxx>
#include<Handle_TColgp_HArray2OfXYZ.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<gp_Pln.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<gp_Lin.hxx>
%}
