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
%rename(currenttols) UnitsAPI::CurrentToLS;
%rename(currenttosi) UnitsAPI::CurrentToSI;
%rename(currentfromls) UnitsAPI::CurrentFromLS;
%rename(currentfromsi) UnitsAPI::CurrentFromSI;
%rename(anytols) UnitsAPI::AnyToLS;
%rename(anytosi) UnitsAPI::AnyToSI;
%rename(anyfromls) UnitsAPI::AnyFromLS;
%rename(anyfromsi) UnitsAPI::AnyFromSI;
%rename(currenttoany) UnitsAPI::CurrentToAny;
%rename(currentfromany) UnitsAPI::CurrentFromAny;
%rename(anytoany) UnitsAPI::AnyToAny;
%rename(lstosi) UnitsAPI::LSToSI;
%rename(sitols) UnitsAPI::SIToLS;
%rename(setlocalsystem) UnitsAPI::SetLocalSystem;
%rename(localsystem) UnitsAPI::LocalSystem;
%rename(setcurrentunit) UnitsAPI::SetCurrentUnit;
%rename(currentunit) UnitsAPI::CurrentUnit;
%rename(save) UnitsAPI::Save;
%rename(reload) UnitsAPI::Reload;
%rename(dimensions) UnitsAPI::Dimensions;
%rename(dimensionless) UnitsAPI::DimensionLess;
%rename(dimensionmass) UnitsAPI::DimensionMass;
%rename(dimensionlength) UnitsAPI::DimensionLength;
%rename(dimensiontime) UnitsAPI::DimensionTime;
%rename(dimensionelectriccurrent) UnitsAPI::DimensionElectricCurrent;
%rename(dimensionthermodynamictemperature) UnitsAPI::DimensionThermodynamicTemperature;
%rename(dimensionamountofsubstance) UnitsAPI::DimensionAmountOfSubstance;
%rename(dimensionluminousintensity) UnitsAPI::DimensionLuminousIntensity;
%rename(dimensionplaneangle) UnitsAPI::DimensionPlaneAngle;
%rename(dimensionsolidangle) UnitsAPI::DimensionSolidAngle;
%rename(check) UnitsAPI::Check;
