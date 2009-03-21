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
%module Quantity

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include Quantity_dependencies.i


%include Quantity_headers.i

typedef Standard_Real Quantity_Momentum;
typedef Standard_Real Quantity_Factor;
typedef Standard_Real Quantity_Mass;
typedef Standard_Real Quantity_ElectricCharge;
typedef Standard_Real Quantity_Work;
typedef Standard_Real Quantity_Energy;
typedef Standard_Real Quantity_Normality;
typedef Standard_Real Quantity_SpecificHeatCapacity;
typedef Standard_Real Quantity_SurfaceTension;
typedef Standard_Real Quantity_Constant;
typedef Standard_Real Quantity_PlaneAngle;
typedef Standard_Real Quantity_Molarity;
typedef Standard_Real Quantity_Weight;
typedef Standard_Real Quantity_Velocity;
typedef Standard_Real Quantity_AmountOfSubstance;
typedef Standard_Real Quantity_LuminousEfficacity;
typedef Standard_Real Quantity_MolarConcentration;
typedef Standard_Real Quantity_MagneticFieldStrength;
typedef Standard_Real Quantity_Parameter;
typedef Standard_Real Quantity_ThermalConductivity;
typedef Standard_Real Quantity_AngularVelocity;
typedef Standard_Real Quantity_MagneticFlux;
typedef Standard_Real Quantity_VolumeFlow;
typedef Standard_Real Quantity_ElectricCapacitance;
typedef Standard_Real Quantity_KineticMoment;
typedef Standard_Real Quantity_Index;
typedef Standard_Real Quantity_CoefficientOfExpansion;
typedef Standard_Real Quantity_MomentOfInertia;
typedef Standard_Real Quantity_Temperature;
typedef Standard_Real Quantity_MomentOfAForce;
typedef Standard_Real Quantity_Pressure;
typedef Standard_Real Quantity_Content;
typedef Standard_Real Quantity_ElectricCurrent;
typedef Standard_Real Quantity_DoseEquivalent;
typedef Standard_Real Quantity_Density;
typedef Standard_Real Quantity_Rate;
typedef Standard_Real Quantity_Ratio;
typedef Standard_Real Quantity_MolarMass;
typedef Standard_Real Quantity_Conductivity;
typedef Standard_Real Quantity_Capacitance;
typedef Standard_Real Quantity_Reluctance;
typedef Standard_Real Quantity_Concentration;
typedef Standard_Real Quantity_ElectricFieldStrength;
typedef Standard_Real Quantity_MolarVolume;
typedef Standard_Real Quantity_SolidAngle;
typedef Standard_Real Quantity_KinematicViscosity;
typedef Standard_Real Quantity_Power;
typedef Standard_Real Quantity_MagneticFluxDensity;
typedef Standard_Real Quantity_Quotient;
typedef Standard_Real Quantity_Illuminance;
typedef Standard_Real Quantity_Consumption;
typedef Standard_Real Quantity_Entropy;
typedef Standard_Real Quantity_Volume;
typedef Standard_Real Quantity_Frequency;
typedef Standard_Real Quantity_AbsorbedDose;
typedef Standard_Real Quantity_MassFlow;
typedef Standard_Real Quantity_Area;
typedef Standard_Real Quantity_Resistivity;
typedef Standard_Real Quantity_SoundIntensity;
typedef Standard_Real Quantity_Acceleration;
typedef Standard_Real Quantity_Admittance;
typedef Standard_Real Quantity_Torque;
typedef Standard_Real Quantity_Viscosity;
typedef Standard_Real Quantity_AcousticIntensity;
typedef Standard_Real Quantity_Activity;
typedef Standard_Real Quantity_LuminousExposition;
typedef Standard_Real Quantity_Force;
typedef Standard_Real Quantity_LuminousFlux;
typedef Standard_Real Quantity_Enthalpy;
typedef Standard_Real Quantity_Luminance;
typedef Standard_Real Quantity_Coefficient;
typedef Standard_Real Quantity_Impedance;
typedef Standard_Real Quantity_Speed;
typedef Standard_Real Quantity_Length;
typedef Standard_Real Quantity_Scalaire;
typedef Standard_Real Quantity_LuminousIntensity;
typedef Standard_Real Quantity_Resistance;
typedef Standard_Real Quantity_ElectricPotential;
typedef Standard_Real Quantity_Inductance;

enum Quantity_TypeOfColor {
	Quantity_TOC_RGB,
	Quantity_TOC_HLS,
	};

enum Quantity_PhysicalQuantity {
	Quantity_MASS,
	Quantity_PLANEANGLE,
	Quantity_SOLIDANGLE,
	Quantity_LENGTH,
	Quantity_AREA,
	Quantity_VOLUME,
	Quantity_SPEED,
	Quantity_VELOCITY,
	Quantity_ACCELERATION,
	Quantity_ANGULARVELOCITY,
	Quantity_FREQUENCY,
	Quantity_TEMPERATURE,
	Quantity_AMOUNTOFSUBSTANCE,
	Quantity_DENSITY,
	Quantity_MASSFLOW,
	Quantity_VOLUMEFLOW,
	Quantity_CONSUMPTION,
	Quantity_MOMENTUM,
	Quantity_KINETICMOMENT,
	Quantity_MOMENTOFINERTIA,
	Quantity_FORCE,
	Quantity_MOMENTOFAFORCE,
	Quantity_TORQUE,
	Quantity_WEIGHT,
	Quantity_PRESSURE,
	Quantity_VISCOSITY,
	Quantity_KINEMATICVISCOSITY,
	Quantity_ENERGY,
	Quantity_WORK,
	Quantity_POWER,
	Quantity_SURFACETENSION,
	Quantity_COEFFICIENTOFEXPANSION,
	Quantity_THERMALCONDUCTIVITY,
	Quantity_SPECIFICHEATCAPACITY,
	Quantity_ENTROPY,
	Quantity_ENTHALPY,
	Quantity_LUMINOUSINTENSITY,
	Quantity_LUMINOUSFLUX,
	Quantity_LUMINANCE,
	Quantity_ILLUMINANCE,
	Quantity_LUMINOUSEXPOSITION,
	Quantity_LUMINOUSEFFICACITY,
	Quantity_ELECTRICCHARGE,
	Quantity_ELECTRICCURRENT,
	Quantity_ELECTRICFIELDSTRENGTH,
	Quantity_ELECTRICPOTENTIAL,
	Quantity_ELECTRICCAPACITANCE,
	Quantity_MAGNETICFLUX,
	Quantity_MAGNETICFLUXDENSITY,
	Quantity_MAGNETICFIELDSTRENGTH,
	Quantity_RELUCTANCE,
	Quantity_RESISTANCE,
	Quantity_INDUCTANCE,
	Quantity_CAPACITANCE,
	Quantity_IMPEDANCE,
	Quantity_ADMITTANCE,
	Quantity_RESISTIVITY,
	Quantity_CONDUCTIVITY,
	Quantity_MOLARMASS,
	Quantity_MOLARVOLUME,
	Quantity_CONCENTRATION,
	Quantity_MOLARCONCENTRATION,
	Quantity_MOLARITY,
	Quantity_SOUNDINTENSITY,
	Quantity_ACOUSTICINTENSITY,
	Quantity_ACTIVITY,
	Quantity_ABSORBEDDOSE,
	Quantity_DOSEEQUIVALENT,
	};

enum Quantity_NameOfColor {
	Quantity_NOC_BLACK,
	Quantity_NOC_MATRABLUE,
	Quantity_NOC_MATRAGRAY,
	Quantity_NOC_ALICEBLUE,
	Quantity_NOC_ANTIQUEWHITE,
	Quantity_NOC_ANTIQUEWHITE1,
	Quantity_NOC_ANTIQUEWHITE2,
	Quantity_NOC_ANTIQUEWHITE3,
	Quantity_NOC_ANTIQUEWHITE4,
	Quantity_NOC_AQUAMARINE1,
	Quantity_NOC_AQUAMARINE2,
	Quantity_NOC_AQUAMARINE4,
	Quantity_NOC_AZURE,
	Quantity_NOC_AZURE2,
	Quantity_NOC_AZURE3,
	Quantity_NOC_AZURE4,
	Quantity_NOC_BEIGE,
	Quantity_NOC_BISQUE,
	Quantity_NOC_BISQUE2,
	Quantity_NOC_BISQUE3,
	Quantity_NOC_BISQUE4,
	Quantity_NOC_BLANCHEDALMOND,
	Quantity_NOC_BLUE1,
	Quantity_NOC_BLUE2,
	Quantity_NOC_BLUE3,
	Quantity_NOC_BLUE4,
	Quantity_NOC_BLUEVIOLET,
	Quantity_NOC_BROWN,
	Quantity_NOC_BROWN1,
	Quantity_NOC_BROWN2,
	Quantity_NOC_BROWN3,
	Quantity_NOC_BROWN4,
	Quantity_NOC_BURLYWOOD,
	Quantity_NOC_BURLYWOOD1,
	Quantity_NOC_BURLYWOOD2,
	Quantity_NOC_BURLYWOOD3,
	Quantity_NOC_BURLYWOOD4,
	Quantity_NOC_CADETBLUE,
	Quantity_NOC_CADETBLUE1,
	Quantity_NOC_CADETBLUE2,
	Quantity_NOC_CADETBLUE3,
	Quantity_NOC_CADETBLUE4,
	Quantity_NOC_CHARTREUSE,
	Quantity_NOC_CHARTREUSE1,
	Quantity_NOC_CHARTREUSE2,
	Quantity_NOC_CHARTREUSE3,
	Quantity_NOC_CHARTREUSE4,
	Quantity_NOC_CHOCOLATE,
	Quantity_NOC_CHOCOLATE1,
	Quantity_NOC_CHOCOLATE2,
	Quantity_NOC_CHOCOLATE3,
	Quantity_NOC_CHOCOLATE4,
	Quantity_NOC_CORAL,
	Quantity_NOC_CORAL1,
	Quantity_NOC_CORAL2,
	Quantity_NOC_CORAL3,
	Quantity_NOC_CORAL4,
	Quantity_NOC_CORNFLOWERBLUE,
	Quantity_NOC_CORNSILK1,
	Quantity_NOC_CORNSILK2,
	Quantity_NOC_CORNSILK3,
	Quantity_NOC_CORNSILK4,
	Quantity_NOC_CYAN1,
	Quantity_NOC_CYAN2,
	Quantity_NOC_CYAN3,
	Quantity_NOC_CYAN4,
	Quantity_NOC_DARKGOLDENROD,
	Quantity_NOC_DARKGOLDENROD1,
	Quantity_NOC_DARKGOLDENROD2,
	Quantity_NOC_DARKGOLDENROD3,
	Quantity_NOC_DARKGOLDENROD4,
	Quantity_NOC_DARKGREEN,
	Quantity_NOC_DARKKHAKI,
	Quantity_NOC_DARKOLIVEGREEN,
	Quantity_NOC_DARKOLIVEGREEN1,
	Quantity_NOC_DARKOLIVEGREEN2,
	Quantity_NOC_DARKOLIVEGREEN3,
	Quantity_NOC_DARKOLIVEGREEN4,
	Quantity_NOC_DARKORANGE,
	Quantity_NOC_DARKORANGE1,
	Quantity_NOC_DARKORANGE2,
	Quantity_NOC_DARKORANGE3,
	Quantity_NOC_DARKORANGE4,
	Quantity_NOC_DARKORCHID,
	Quantity_NOC_DARKORCHID1,
	Quantity_NOC_DARKORCHID2,
	Quantity_NOC_DARKORCHID3,
	Quantity_NOC_DARKORCHID4,
	Quantity_NOC_DARKSALMON,
	Quantity_NOC_DARKSEAGREEN,
	Quantity_NOC_DARKSEAGREEN1,
	Quantity_NOC_DARKSEAGREEN2,
	Quantity_NOC_DARKSEAGREEN3,
	Quantity_NOC_DARKSEAGREEN4,
	Quantity_NOC_DARKSLATEBLUE,
	Quantity_NOC_DARKSLATEGRAY1,
	Quantity_NOC_DARKSLATEGRAY2,
	Quantity_NOC_DARKSLATEGRAY3,
	Quantity_NOC_DARKSLATEGRAY4,
	Quantity_NOC_DARKSLATEGRAY,
	Quantity_NOC_DARKTURQUOISE,
	Quantity_NOC_DARKVIOLET,
	Quantity_NOC_DEEPPINK,
	Quantity_NOC_DEEPPINK2,
	Quantity_NOC_DEEPPINK3,
	Quantity_NOC_DEEPPINK4,
	Quantity_NOC_DEEPSKYBLUE1,
	Quantity_NOC_DEEPSKYBLUE2,
	Quantity_NOC_DEEPSKYBLUE3,
	Quantity_NOC_DEEPSKYBLUE4,
	Quantity_NOC_DODGERBLUE1,
	Quantity_NOC_DODGERBLUE2,
	Quantity_NOC_DODGERBLUE3,
	Quantity_NOC_DODGERBLUE4,
	Quantity_NOC_FIREBRICK,
	Quantity_NOC_FIREBRICK1,
	Quantity_NOC_FIREBRICK2,
	Quantity_NOC_FIREBRICK3,
	Quantity_NOC_FIREBRICK4,
	Quantity_NOC_FLORALWHITE,
	Quantity_NOC_FORESTGREEN,
	Quantity_NOC_GAINSBORO,
	Quantity_NOC_GHOSTWHITE,
	Quantity_NOC_GOLD,
	Quantity_NOC_GOLD1,
	Quantity_NOC_GOLD2,
	Quantity_NOC_GOLD3,
	Quantity_NOC_GOLD4,
	Quantity_NOC_GOLDENROD,
	Quantity_NOC_GOLDENROD1,
	Quantity_NOC_GOLDENROD2,
	Quantity_NOC_GOLDENROD3,
	Quantity_NOC_GOLDENROD4,
	Quantity_NOC_GRAY,
	Quantity_NOC_GRAY0,
	Quantity_NOC_GRAY1,
	Quantity_NOC_GRAY10,
	Quantity_NOC_GRAY11,
	Quantity_NOC_GRAY12,
	Quantity_NOC_GRAY13,
	Quantity_NOC_GRAY14,
	Quantity_NOC_GRAY15,
	Quantity_NOC_GRAY16,
	Quantity_NOC_GRAY17,
	Quantity_NOC_GRAY18,
	Quantity_NOC_GRAY19,
	Quantity_NOC_GRAY2,
	Quantity_NOC_GRAY20,
	Quantity_NOC_GRAY21,
	Quantity_NOC_GRAY22,
	Quantity_NOC_GRAY23,
	Quantity_NOC_GRAY24,
	Quantity_NOC_GRAY25,
	Quantity_NOC_GRAY26,
	Quantity_NOC_GRAY27,
	Quantity_NOC_GRAY28,
	Quantity_NOC_GRAY29,
	Quantity_NOC_GRAY3,
	Quantity_NOC_GRAY30,
	Quantity_NOC_GRAY31,
	Quantity_NOC_GRAY32,
	Quantity_NOC_GRAY33,
	Quantity_NOC_GRAY34,
	Quantity_NOC_GRAY35,
	Quantity_NOC_GRAY36,
	Quantity_NOC_GRAY37,
	Quantity_NOC_GRAY38,
	Quantity_NOC_GRAY39,
	Quantity_NOC_GRAY4,
	Quantity_NOC_GRAY40,
	Quantity_NOC_GRAY41,
	Quantity_NOC_GRAY42,
	Quantity_NOC_GRAY43,
	Quantity_NOC_GRAY44,
	Quantity_NOC_GRAY45,
	Quantity_NOC_GRAY46,
	Quantity_NOC_GRAY47,
	Quantity_NOC_GRAY48,
	Quantity_NOC_GRAY49,
	Quantity_NOC_GRAY5,
	Quantity_NOC_GRAY50,
	Quantity_NOC_GRAY51,
	Quantity_NOC_GRAY52,
	Quantity_NOC_GRAY53,
	Quantity_NOC_GRAY54,
	Quantity_NOC_GRAY55,
	Quantity_NOC_GRAY56,
	Quantity_NOC_GRAY57,
	Quantity_NOC_GRAY58,
	Quantity_NOC_GRAY59,
	Quantity_NOC_GRAY6,
	Quantity_NOC_GRAY60,
	Quantity_NOC_GRAY61,
	Quantity_NOC_GRAY62,
	Quantity_NOC_GRAY63,
	Quantity_NOC_GRAY64,
	Quantity_NOC_GRAY65,
	Quantity_NOC_GRAY66,
	Quantity_NOC_GRAY67,
	Quantity_NOC_GRAY68,
	Quantity_NOC_GRAY69,
	Quantity_NOC_GRAY7,
	Quantity_NOC_GRAY70,
	Quantity_NOC_GRAY71,
	Quantity_NOC_GRAY72,
	Quantity_NOC_GRAY73,
	Quantity_NOC_GRAY74,
	Quantity_NOC_GRAY75,
	Quantity_NOC_GRAY76,
	Quantity_NOC_GRAY77,
	Quantity_NOC_GRAY78,
	Quantity_NOC_GRAY79,
	Quantity_NOC_GRAY8,
	Quantity_NOC_GRAY80,
	Quantity_NOC_GRAY81,
	Quantity_NOC_GRAY82,
	Quantity_NOC_GRAY83,
	Quantity_NOC_GRAY85,
	Quantity_NOC_GRAY86,
	Quantity_NOC_GRAY87,
	Quantity_NOC_GRAY88,
	Quantity_NOC_GRAY89,
	Quantity_NOC_GRAY9,
	Quantity_NOC_GRAY90,
	Quantity_NOC_GRAY91,
	Quantity_NOC_GRAY92,
	Quantity_NOC_GRAY93,
	Quantity_NOC_GRAY94,
	Quantity_NOC_GRAY95,
	Quantity_NOC_GREEN,
	Quantity_NOC_GREEN1,
	Quantity_NOC_GREEN2,
	Quantity_NOC_GREEN3,
	Quantity_NOC_GREEN4,
	Quantity_NOC_GREENYELLOW,
	Quantity_NOC_GRAY97,
	Quantity_NOC_GRAY98,
	Quantity_NOC_GRAY99,
	Quantity_NOC_HONEYDEW,
	Quantity_NOC_HONEYDEW2,
	Quantity_NOC_HONEYDEW3,
	Quantity_NOC_HONEYDEW4,
	Quantity_NOC_HOTPINK,
	Quantity_NOC_HOTPINK1,
	Quantity_NOC_HOTPINK2,
	Quantity_NOC_HOTPINK3,
	Quantity_NOC_HOTPINK4,
	Quantity_NOC_INDIANRED,
	Quantity_NOC_INDIANRED1,
	Quantity_NOC_INDIANRED2,
	Quantity_NOC_INDIANRED3,
	Quantity_NOC_INDIANRED4,
	Quantity_NOC_IVORY,
	Quantity_NOC_IVORY2,
	Quantity_NOC_IVORY3,
	Quantity_NOC_IVORY4,
	Quantity_NOC_KHAKI,
	Quantity_NOC_KHAKI1,
	Quantity_NOC_KHAKI2,
	Quantity_NOC_KHAKI3,
	Quantity_NOC_KHAKI4,
	Quantity_NOC_LAVENDER,
	Quantity_NOC_LAVENDERBLUSH1,
	Quantity_NOC_LAVENDERBLUSH2,
	Quantity_NOC_LAVENDERBLUSH3,
	Quantity_NOC_LAVENDERBLUSH4,
	Quantity_NOC_LAWNGREEN,
	Quantity_NOC_LEMONCHIFFON1,
	Quantity_NOC_LEMONCHIFFON2,
	Quantity_NOC_LEMONCHIFFON3,
	Quantity_NOC_LEMONCHIFFON4,
	Quantity_NOC_LIGHTBLUE,
	Quantity_NOC_LIGHTBLUE1,
	Quantity_NOC_LIGHTBLUE2,
	Quantity_NOC_LIGHTBLUE3,
	Quantity_NOC_LIGHTBLUE4,
	Quantity_NOC_LIGHTCORAL,
	Quantity_NOC_LIGHTCYAN1,
	Quantity_NOC_LIGHTCYAN2,
	Quantity_NOC_LIGHTCYAN3,
	Quantity_NOC_LIGHTCYAN4,
	Quantity_NOC_LIGHTGOLDENROD,
	Quantity_NOC_LIGHTGOLDENROD1,
	Quantity_NOC_LIGHTGOLDENROD2,
	Quantity_NOC_LIGHTGOLDENROD3,
	Quantity_NOC_LIGHTGOLDENROD4,
	Quantity_NOC_LIGHTGOLDENRODYELLOW,
	Quantity_NOC_LIGHTGRAY,
	Quantity_NOC_LIGHTPINK,
	Quantity_NOC_LIGHTPINK1,
	Quantity_NOC_LIGHTPINK2,
	Quantity_NOC_LIGHTPINK3,
	Quantity_NOC_LIGHTPINK4,
	Quantity_NOC_LIGHTSALMON1,
	Quantity_NOC_LIGHTSALMON2,
	Quantity_NOC_LIGHTSALMON3,
	Quantity_NOC_LIGHTSALMON4,
	Quantity_NOC_LIGHTSEAGREEN,
	Quantity_NOC_LIGHTSKYBLUE,
	Quantity_NOC_LIGHTSKYBLUE1,
	Quantity_NOC_LIGHTSKYBLUE2,
	Quantity_NOC_LIGHTSKYBLUE3,
	Quantity_NOC_LIGHTSKYBLUE4,
	Quantity_NOC_LIGHTSLATEBLUE,
	Quantity_NOC_LIGHTSLATEGRAY,
	Quantity_NOC_LIGHTSTEELBLUE,
	Quantity_NOC_LIGHTSTEELBLUE1,
	Quantity_NOC_LIGHTSTEELBLUE2,
	Quantity_NOC_LIGHTSTEELBLUE3,
	Quantity_NOC_LIGHTSTEELBLUE4,
	Quantity_NOC_LIGHTYELLOW,
	Quantity_NOC_LIGHTYELLOW2,
	Quantity_NOC_LIGHTYELLOW3,
	Quantity_NOC_LIGHTYELLOW4,
	Quantity_NOC_LIMEGREEN,
	Quantity_NOC_LINEN,
	Quantity_NOC_MAGENTA1,
	Quantity_NOC_MAGENTA2,
	Quantity_NOC_MAGENTA3,
	Quantity_NOC_MAGENTA4,
	Quantity_NOC_MAROON,
	Quantity_NOC_MAROON1,
	Quantity_NOC_MAROON2,
	Quantity_NOC_MAROON3,
	Quantity_NOC_MAROON4,
	Quantity_NOC_MEDIUMAQUAMARINE,
	Quantity_NOC_MEDIUMORCHID,
	Quantity_NOC_MEDIUMORCHID1,
	Quantity_NOC_MEDIUMORCHID2,
	Quantity_NOC_MEDIUMORCHID3,
	Quantity_NOC_MEDIUMORCHID4,
	Quantity_NOC_MEDIUMPURPLE,
	Quantity_NOC_MEDIUMPURPLE1,
	Quantity_NOC_MEDIUMPURPLE2,
	Quantity_NOC_MEDIUMPURPLE3,
	Quantity_NOC_MEDIUMPURPLE4,
	Quantity_NOC_MEDIUMSEAGREEN,
	Quantity_NOC_MEDIUMSLATEBLUE,
	Quantity_NOC_MEDIUMSPRINGGREEN,
	Quantity_NOC_MEDIUMTURQUOISE,
	Quantity_NOC_MEDIUMVIOLETRED,
	Quantity_NOC_MIDNIGHTBLUE,
	Quantity_NOC_MINTCREAM,
	Quantity_NOC_MISTYROSE,
	Quantity_NOC_MISTYROSE2,
	Quantity_NOC_MISTYROSE3,
	Quantity_NOC_MISTYROSE4,
	Quantity_NOC_MOCCASIN,
	Quantity_NOC_NAVAJOWHITE1,
	Quantity_NOC_NAVAJOWHITE2,
	Quantity_NOC_NAVAJOWHITE3,
	Quantity_NOC_NAVAJOWHITE4,
	Quantity_NOC_NAVYBLUE,
	Quantity_NOC_OLDLACE,
	Quantity_NOC_OLIVEDRAB,
	Quantity_NOC_OLIVEDRAB1,
	Quantity_NOC_OLIVEDRAB2,
	Quantity_NOC_OLIVEDRAB3,
	Quantity_NOC_OLIVEDRAB4,
	Quantity_NOC_ORANGE,
	Quantity_NOC_ORANGE1,
	Quantity_NOC_ORANGE2,
	Quantity_NOC_ORANGE3,
	Quantity_NOC_ORANGE4,
	Quantity_NOC_ORANGERED,
	Quantity_NOC_ORANGERED1,
	Quantity_NOC_ORANGERED2,
	Quantity_NOC_ORANGERED3,
	Quantity_NOC_ORANGERED4,
	Quantity_NOC_ORCHID,
	Quantity_NOC_ORCHID1,
	Quantity_NOC_ORCHID2,
	Quantity_NOC_ORCHID3,
	Quantity_NOC_ORCHID4,
	Quantity_NOC_PALEGOLDENROD,
	Quantity_NOC_PALEGREEN,
	Quantity_NOC_PALEGREEN1,
	Quantity_NOC_PALEGREEN2,
	Quantity_NOC_PALEGREEN3,
	Quantity_NOC_PALEGREEN4,
	Quantity_NOC_PALETURQUOISE,
	Quantity_NOC_PALETURQUOISE1,
	Quantity_NOC_PALETURQUOISE2,
	Quantity_NOC_PALETURQUOISE3,
	Quantity_NOC_PALETURQUOISE4,
	Quantity_NOC_PALEVIOLETRED,
	Quantity_NOC_PALEVIOLETRED1,
	Quantity_NOC_PALEVIOLETRED2,
	Quantity_NOC_PALEVIOLETRED3,
	Quantity_NOC_PALEVIOLETRED4,
	Quantity_NOC_PAPAYAWHIP,
	Quantity_NOC_PEACHPUFF,
	Quantity_NOC_PEACHPUFF2,
	Quantity_NOC_PEACHPUFF3,
	Quantity_NOC_PEACHPUFF4,
	Quantity_NOC_PERU,
	Quantity_NOC_PINK,
	Quantity_NOC_PINK1,
	Quantity_NOC_PINK2,
	Quantity_NOC_PINK3,
	Quantity_NOC_PINK4,
	Quantity_NOC_PLUM,
	Quantity_NOC_PLUM1,
	Quantity_NOC_PLUM2,
	Quantity_NOC_PLUM3,
	Quantity_NOC_PLUM4,
	Quantity_NOC_POWDERBLUE,
	Quantity_NOC_PURPLE,
	Quantity_NOC_PURPLE1,
	Quantity_NOC_PURPLE2,
	Quantity_NOC_PURPLE3,
	Quantity_NOC_PURPLE4,
	Quantity_NOC_RED,
	Quantity_NOC_RED1,
	Quantity_NOC_RED2,
	Quantity_NOC_RED3,
	Quantity_NOC_RED4,
	Quantity_NOC_ROSYBROWN,
	Quantity_NOC_ROSYBROWN1,
	Quantity_NOC_ROSYBROWN2,
	Quantity_NOC_ROSYBROWN3,
	Quantity_NOC_ROSYBROWN4,
	Quantity_NOC_ROYALBLUE,
	Quantity_NOC_ROYALBLUE1,
	Quantity_NOC_ROYALBLUE2,
	Quantity_NOC_ROYALBLUE3,
	Quantity_NOC_ROYALBLUE4,
	Quantity_NOC_SADDLEBROWN,
	Quantity_NOC_SALMON,
	Quantity_NOC_SALMON1,
	Quantity_NOC_SALMON2,
	Quantity_NOC_SALMON3,
	Quantity_NOC_SALMON4,
	Quantity_NOC_SANDYBROWN,
	Quantity_NOC_SEAGREEN,
	Quantity_NOC_SEAGREEN1,
	Quantity_NOC_SEAGREEN2,
	Quantity_NOC_SEAGREEN3,
	Quantity_NOC_SEAGREEN4,
	Quantity_NOC_SEASHELL,
	Quantity_NOC_SEASHELL2,
	Quantity_NOC_SEASHELL3,
	Quantity_NOC_SEASHELL4,
	Quantity_NOC_BEET,
	Quantity_NOC_TEAL,
	Quantity_NOC_SIENNA,
	Quantity_NOC_SIENNA1,
	Quantity_NOC_SIENNA2,
	Quantity_NOC_SIENNA3,
	Quantity_NOC_SIENNA4,
	Quantity_NOC_SKYBLUE,
	Quantity_NOC_SKYBLUE1,
	Quantity_NOC_SKYBLUE2,
	Quantity_NOC_SKYBLUE3,
	Quantity_NOC_SKYBLUE4,
	Quantity_NOC_SLATEBLUE,
	Quantity_NOC_SLATEBLUE1,
	Quantity_NOC_SLATEBLUE2,
	Quantity_NOC_SLATEBLUE3,
	Quantity_NOC_SLATEBLUE4,
	Quantity_NOC_SLATEGRAY1,
	Quantity_NOC_SLATEGRAY2,
	Quantity_NOC_SLATEGRAY3,
	Quantity_NOC_SLATEGRAY4,
	Quantity_NOC_SLATEGRAY,
	Quantity_NOC_SNOW,
	Quantity_NOC_SNOW2,
	Quantity_NOC_SNOW3,
	Quantity_NOC_SNOW4,
	Quantity_NOC_SPRINGGREEN,
	Quantity_NOC_SPRINGGREEN2,
	Quantity_NOC_SPRINGGREEN3,
	Quantity_NOC_SPRINGGREEN4,
	Quantity_NOC_STEELBLUE,
	Quantity_NOC_STEELBLUE1,
	Quantity_NOC_STEELBLUE2,
	Quantity_NOC_STEELBLUE3,
	Quantity_NOC_STEELBLUE4,
	Quantity_NOC_TAN,
	Quantity_NOC_TAN1,
	Quantity_NOC_TAN2,
	Quantity_NOC_TAN3,
	Quantity_NOC_TAN4,
	Quantity_NOC_THISTLE,
	Quantity_NOC_THISTLE1,
	Quantity_NOC_THISTLE2,
	Quantity_NOC_THISTLE3,
	Quantity_NOC_THISTLE4,
	Quantity_NOC_TOMATO,
	Quantity_NOC_TOMATO1,
	Quantity_NOC_TOMATO2,
	Quantity_NOC_TOMATO3,
	Quantity_NOC_TOMATO4,
	Quantity_NOC_TURQUOISE,
	Quantity_NOC_TURQUOISE1,
	Quantity_NOC_TURQUOISE2,
	Quantity_NOC_TURQUOISE3,
	Quantity_NOC_TURQUOISE4,
	Quantity_NOC_VIOLET,
	Quantity_NOC_VIOLETRED,
	Quantity_NOC_VIOLETRED1,
	Quantity_NOC_VIOLETRED2,
	Quantity_NOC_VIOLETRED3,
	Quantity_NOC_VIOLETRED4,
	Quantity_NOC_WHEAT,
	Quantity_NOC_WHEAT1,
	Quantity_NOC_WHEAT2,
	Quantity_NOC_WHEAT3,
	Quantity_NOC_WHEAT4,
	Quantity_NOC_WHITESMOKE,
	Quantity_NOC_YELLOW,
	Quantity_NOC_YELLOW1,
	Quantity_NOC_YELLOW2,
	Quantity_NOC_YELLOW3,
	Quantity_NOC_YELLOW4,
	Quantity_NOC_YELLOWGREEN,
	Quantity_NOC_WHITE,
	};



%nodefaultctor Handle_Quantity_ColorDefinitionError;
class Handle_Quantity_ColorDefinitionError : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Quantity_ColorDefinitionError();
		%feature("autodoc", "1");
		Handle_Quantity_ColorDefinitionError(const Handle_Quantity_ColorDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Quantity_ColorDefinitionError(const Quantity_ColorDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Quantity_ColorDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Quantity_ColorDefinitionError {
	Quantity_ColorDefinitionError* GetObject() {
	return (Quantity_ColorDefinitionError*)$self->Access();
	}
};
%extend Handle_Quantity_ColorDefinitionError {
	~Handle_Quantity_ColorDefinitionError() {
	printf("Call custom destructor for instance of Handle_Quantity_ColorDefinitionError\n");
	}
};

%nodefaultctor Handle_Quantity_PeriodDefinitionError;
class Handle_Quantity_PeriodDefinitionError : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Quantity_PeriodDefinitionError();
		%feature("autodoc", "1");
		Handle_Quantity_PeriodDefinitionError(const Handle_Quantity_PeriodDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Quantity_PeriodDefinitionError(const Quantity_PeriodDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Quantity_PeriodDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Quantity_PeriodDefinitionError {
	Quantity_PeriodDefinitionError* GetObject() {
	return (Quantity_PeriodDefinitionError*)$self->Access();
	}
};
%extend Handle_Quantity_PeriodDefinitionError {
	~Handle_Quantity_PeriodDefinitionError() {
	printf("Call custom destructor for instance of Handle_Quantity_PeriodDefinitionError\n");
	}
};

%nodefaultctor Handle_Quantity_HArray1OfColor;
class Handle_Quantity_HArray1OfColor : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor();
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor(const Handle_Quantity_HArray1OfColor &aHandle);
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor(const Quantity_HArray1OfColor *anItem);
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Quantity_HArray1OfColor {
	Quantity_HArray1OfColor* GetObject() {
	return (Quantity_HArray1OfColor*)$self->Access();
	}
};
%extend Handle_Quantity_HArray1OfColor {
	~Handle_Quantity_HArray1OfColor() {
	printf("Call custom destructor for instance of Handle_Quantity_HArray1OfColor\n");
	}
};

%nodefaultctor Handle_Quantity_DateDefinitionError;
class Handle_Quantity_DateDefinitionError : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Quantity_DateDefinitionError();
		%feature("autodoc", "1");
		Handle_Quantity_DateDefinitionError(const Handle_Quantity_DateDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Quantity_DateDefinitionError(const Quantity_DateDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Quantity_DateDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Quantity_DateDefinitionError {
	Quantity_DateDefinitionError* GetObject() {
	return (Quantity_DateDefinitionError*)$self->Access();
	}
};
%extend Handle_Quantity_DateDefinitionError {
	~Handle_Quantity_DateDefinitionError() {
	printf("Call custom destructor for instance of Handle_Quantity_DateDefinitionError\n");
	}
};

%nodefaultctor Quantity_Array2OfColor;
class Quantity_Array2OfColor {
	public:
		%feature("autodoc", "1");
		Quantity_Array2OfColor(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Quantity_Array2OfColor(const Quantity_Color &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Quantity_Color &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Quantity_Array2OfColor & Assign(const Quantity_Array2OfColor &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Quantity_Color &Value);
		%feature("autodoc", "1");
		const Quantity_Color & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Quantity_Color & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Quantity_Color & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Quantity_Color & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend Quantity_Array2OfColor {
	~Quantity_Array2OfColor() {
	printf("Call custom destructor for instance of Quantity_Array2OfColor\n");
	}
};

%nodefaultctor Quantity_Array1OfCoefficient;
class Quantity_Array1OfCoefficient {
	public:
		%feature("autodoc", "1");
		Quantity_Array1OfCoefficient(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Quantity_Array1OfCoefficient(const Quantity_Coefficient &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Quantity_Coefficient &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Quantity_Array1OfCoefficient & Assign(const Quantity_Array1OfCoefficient &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Quantity_Coefficient &Value);
		%feature("autodoc", "1");
		const Quantity_Coefficient & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Quantity_Coefficient & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Coefficient & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Quantity_Coefficient & operator()(const Standard_Integer Index);

};
%extend Quantity_Array1OfCoefficient {
	~Quantity_Array1OfCoefficient() {
	printf("Call custom destructor for instance of Quantity_Array1OfCoefficient\n");
	}
};

%nodefaultctor Quantity_Period;
class Quantity_Period {
	public:
		%feature("autodoc", "1");
		Quantity_Period(const Standard_Integer dd, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss, const Standard_Integer mis=0, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		Quantity_Period(const Standard_Integer ss, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		void Values(Standard_Integer & dd, Standard_Integer & hh, Standard_Integer & mn, Standard_Integer & ss, Standard_Integer & mis, Standard_Integer & mics) const;
		%feature("autodoc", "1");
		void Values(Standard_Integer & ss, Standard_Integer & mics) const;
		%feature("autodoc", "1");
		void SetValues(const Standard_Integer dd, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss, const Standard_Integer mis=0, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		void SetValues(const Standard_Integer ss, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		Quantity_Period Subtract(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Quantity_Period operator-(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Quantity_Period Add(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Quantity_Period operator+(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsShorter(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLonger(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean operator>(const Quantity_Period &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid(const Standard_Integer dd, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss, const Standard_Integer mis=0, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		Standard_Boolean IsValid(const Standard_Integer ss, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		Quantity_Period();
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetQuantity_PeriodmySec() const;
		%feature("autodoc", "1");
		void _CSFDB_SetQuantity_PeriodmySec(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetQuantity_PeriodmyUSec() const;
		%feature("autodoc", "1");
		void _CSFDB_SetQuantity_PeriodmyUSec(const Standard_Integer p);

};
%extend Quantity_Period {
	~Quantity_Period() {
	printf("Call custom destructor for instance of Quantity_Period\n");
	}
};

%nodefaultctor Quantity_ColorDefinitionError;
class Quantity_ColorDefinitionError : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Quantity_ColorDefinitionError();
		%feature("autodoc", "1");
		Quantity_ColorDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Quantity_ColorDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Quantity_ColorDefinitionError {
	Handle_Quantity_ColorDefinitionError GetHandle() {
	return *(Handle_Quantity_ColorDefinitionError*) &$self;
	}
};
%extend Quantity_ColorDefinitionError {
	~Quantity_ColorDefinitionError() {
	printf("Call custom destructor for instance of Quantity_ColorDefinitionError\n");
	}
};

%nodefaultctor Quantity_PeriodDefinitionError;
class Quantity_PeriodDefinitionError : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Quantity_PeriodDefinitionError();
		%feature("autodoc", "1");
		Quantity_PeriodDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Quantity_PeriodDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Quantity_PeriodDefinitionError {
	Handle_Quantity_PeriodDefinitionError GetHandle() {
	return *(Handle_Quantity_PeriodDefinitionError*) &$self;
	}
};
%extend Quantity_PeriodDefinitionError {
	~Quantity_PeriodDefinitionError() {
	printf("Call custom destructor for instance of Quantity_PeriodDefinitionError\n");
	}
};

%nodefaultctor Quantity_Array1OfColor;
class Quantity_Array1OfColor {
	public:
		%feature("autodoc", "1");
		Quantity_Array1OfColor(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Quantity_Array1OfColor(const Quantity_Color &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Quantity_Color &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Quantity_Array1OfColor & Assign(const Quantity_Array1OfColor &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Quantity_Color &Value);
		%feature("autodoc", "1");
		const Quantity_Color & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Quantity_Color & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Color & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Quantity_Color & operator()(const Standard_Integer Index);

};
%extend Quantity_Array1OfColor {
	~Quantity_Array1OfColor() {
	printf("Call custom destructor for instance of Quantity_Array1OfColor\n");
	}
};

%nodefaultctor Quantity_Color;
class Quantity_Color {
	public:
		%feature("autodoc", "1");
		Quantity_Color();
		%feature("autodoc", "1");
		Quantity_Color(const Quantity_NameOfColor AName);
		%feature("autodoc", "1");
		Quantity_Color(const Quantity_Parameter R1, const Quantity_Parameter R2, const Quantity_Parameter R3, const Quantity_TypeOfColor AType);
		%feature("autodoc", "1");
		Quantity_Color & Assign(const Quantity_Color &Other);
		%feature("autodoc", "1");
		void ChangeContrast(const Quantity_Rate ADelta);
		%feature("autodoc", "1");
		void ChangeIntensity(const Quantity_Rate ADelta);
		%feature("autodoc", "1");
		void SetValues(const Quantity_NameOfColor AName);
		%feature("autodoc", "1");
		void SetValues(const Quantity_Parameter R1, const Quantity_Parameter R2, const Quantity_Parameter R3, const Quantity_TypeOfColor AType);
		%feature("autodoc", "1");
		void Delta(const Quantity_Color &AColor, Quantity_Parameter & DC, Quantity_Parameter & DI) const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Quantity_Color &AColor) const;
		%feature("autodoc", "1");
		Standard_Real SquareDistance(const Quantity_Color &AColor) const;
		%feature("autodoc", "1");
		Quantity_Parameter Blue() const;
		%feature("autodoc", "1");
		Quantity_Parameter Green() const;
		%feature("autodoc", "1");
		Quantity_Parameter Hue() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const Quantity_Color &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const Quantity_Color &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Quantity_Color &Other) const;
		%feature("autodoc", "1");
		Quantity_Parameter Light() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor Name() const;
		%feature("autodoc", "1");
		Quantity_Parameter Red() const;
		%feature("autodoc", "1");
		Quantity_Parameter Saturation() const;
		%feature("autodoc", "1");
		void Values(Quantity_Parameter & R1, Quantity_Parameter & R2, Quantity_Parameter & R3, const Quantity_TypeOfColor AType) const;
		%feature("autodoc", "1");
		void SetEpsilon(const Quantity_Parameter AnEpsilon);
		%feature("autodoc", "1");
		Quantity_Parameter Epsilon();
		%feature("autodoc", "1");
		Quantity_NameOfColor Name(const Quantity_Parameter R, const Quantity_Parameter G, const Quantity_Parameter B);
		%feature("autodoc", "1");
		char * StringName(const Quantity_NameOfColor AColor);
		%feature("autodoc", "1");
		void HlsRgb(const Quantity_Parameter H, const Quantity_Parameter L, const Quantity_Parameter S, Quantity_Parameter & R, Quantity_Parameter & G, Quantity_Parameter & B);
		%feature("autodoc", "1");
		void RgbHls(const Quantity_Parameter R, const Quantity_Parameter G, const Quantity_Parameter B, Quantity_Parameter & H, Quantity_Parameter & L, Quantity_Parameter & S);
		%feature("autodoc", "1");
		void Test();
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetQuantity_ColorMyRed() const;
		%feature("autodoc", "1");
		void _CSFDB_SetQuantity_ColorMyRed(const Standard_ShortReal p);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetQuantity_ColorMyGreen() const;
		%feature("autodoc", "1");
		void _CSFDB_SetQuantity_ColorMyGreen(const Standard_ShortReal p);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetQuantity_ColorMyBlue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetQuantity_ColorMyBlue(const Standard_ShortReal p);

};
%extend Quantity_Color {
	~Quantity_Color() {
	printf("Call custom destructor for instance of Quantity_Color\n");
	}
};

%nodefaultctor Quantity_Date;
class Quantity_Date {
	public:
		%feature("autodoc", "1");
		Quantity_Date();
		%feature("autodoc", "1");
		Quantity_Date(const Standard_Integer mm, const Standard_Integer dd, const Standard_Integer yyyy, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss, const Standard_Integer mis=0, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		void Values(Standard_Integer & mm, Standard_Integer & dd, Standard_Integer & yy, Standard_Integer & hh, Standard_Integer & mn, Standard_Integer & ss, Standard_Integer & mis, Standard_Integer & mics) const;
		%feature("autodoc", "1");
		void SetValues(const Standard_Integer mm, const Standard_Integer dd, const Standard_Integer yy, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss, const Standard_Integer mis=0, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		Quantity_Period Difference(const Quantity_Date &anOther);
		%feature("autodoc", "1");
		Quantity_Date Subtract(const Quantity_Period &aPeriod);
		%feature("autodoc", "1");
		Quantity_Date operator-(const Quantity_Period &aPeriod);
		%feature("autodoc", "1");
		Quantity_Date Add(const Quantity_Period &aPeriod);
		%feature("autodoc", "1");
		Quantity_Date operator+(const Quantity_Period &aPeriod);
		%feature("autodoc", "1");
		Standard_Integer Year();
		%feature("autodoc", "1");
		Standard_Integer Month();
		%feature("autodoc", "1");
		Standard_Integer Day();
		%feature("autodoc", "1");
		Standard_Integer Hour();
		%feature("autodoc", "1");
		Standard_Integer Minute();
		%feature("autodoc", "1");
		Standard_Integer Second();
		%feature("autodoc", "1");
		Standard_Integer MilliSecond();
		%feature("autodoc", "1");
		Standard_Integer MicroSecond();
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Quantity_Date &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEarlier(const Quantity_Date &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const Quantity_Date &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLater(const Quantity_Date &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean operator>(const Quantity_Date &anOther) const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid(const Standard_Integer mm, const Standard_Integer dd, const Standard_Integer yy, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss, const Standard_Integer mis=0, const Standard_Integer mics=0);
		%feature("autodoc", "1");
		Standard_Boolean IsLeap(const Standard_Integer yy);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetQuantity_DatemySec() const;
		%feature("autodoc", "1");
		void _CSFDB_SetQuantity_DatemySec(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetQuantity_DatemyUSec() const;
		%feature("autodoc", "1");
		void _CSFDB_SetQuantity_DatemyUSec(const Standard_Integer p);

};
%extend Quantity_Date {
	~Quantity_Date() {
	printf("Call custom destructor for instance of Quantity_Date\n");
	}
};

%nodefaultctor Quantity_DateDefinitionError;
class Quantity_DateDefinitionError : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Quantity_DateDefinitionError();
		%feature("autodoc", "1");
		Quantity_DateDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Quantity_DateDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Quantity_DateDefinitionError {
	Handle_Quantity_DateDefinitionError GetHandle() {
	return *(Handle_Quantity_DateDefinitionError*) &$self;
	}
};
%extend Quantity_DateDefinitionError {
	~Quantity_DateDefinitionError() {
	printf("Call custom destructor for instance of Quantity_DateDefinitionError\n");
	}
};

%nodefaultctor Quantity_HArray1OfColor;
class Quantity_HArray1OfColor : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Quantity_HArray1OfColor(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Quantity_HArray1OfColor(const Standard_Integer Low, const Standard_Integer Up, const Quantity_Color &V);
		%feature("autodoc", "1");
		void Init(const Quantity_Color &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Quantity_Color &Value);
		%feature("autodoc", "1");
		const Quantity_Color & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Quantity_Color & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Quantity_Array1OfColor & Array1() const;
		%feature("autodoc", "1");
		Quantity_Array1OfColor & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Quantity_HArray1OfColor {
	Handle_Quantity_HArray1OfColor GetHandle() {
	return *(Handle_Quantity_HArray1OfColor*) &$self;
	}
};
%extend Quantity_HArray1OfColor {
	~Quantity_HArray1OfColor() {
	printf("Call custom destructor for instance of Quantity_HArray1OfColor\n");
	}
};

%nodefaultctor Quantity_Convert;
class Quantity_Convert {
	public:
		%feature("autodoc", "1");
		Quantity_Convert();
		%feature("autodoc", "1");
		void SetQuantity(const Quantity_PhysicalQuantity aQuantity, const Quantity_Coefficient aCoef);
		%feature("autodoc", "1");
		Quantity_Coefficient ConvertUserToSI(const Quantity_PhysicalQuantity aQuantity, const Standard_Real aVal);
		%feature("autodoc", "1");
		Quantity_Coefficient ConvertSIToUser(const Quantity_PhysicalQuantity aQuantity, const Standard_Real aVal);
		%feature("autodoc", "1");
		Standard_Boolean IsPhysicalQuantity(const TCollection_AsciiString &aTypeName, TCollection_AsciiString & anEnum);

};
%extend Quantity_Convert {
	~Quantity_Convert() {
	printf("Call custom destructor for instance of Quantity_Convert\n");
	}
};