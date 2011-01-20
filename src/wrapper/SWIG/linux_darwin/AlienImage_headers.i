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

#include<AlienImage.hxx>
#include<AlienImage_AidaAlienData.hxx>
#include<AlienImage_AidaAlienImage.hxx>
#include<AlienImage_AlienImage.hxx>
#include<AlienImage_AlienImageData.hxx>
#include<AlienImage_AlienUserImage.hxx>
#include<AlienImage_BMPAlienData.hxx>
#include<AlienImage_BMPAlienImage.hxx>
#include<AlienImage_BMPHeader.hxx>
#include<AlienImage_EuclidAlienData.hxx>
#include<AlienImage_EuclidAlienImage.hxx>
#include<AlienImage_GIFAlienData.hxx>
#include<AlienImage_GIFAlienImage.hxx>
#include<AlienImage_MemoryOperations.hxx>
#include<AlienImage_SGIRGBAlienData.hxx>
#include<AlienImage_SGIRGBAlienImage.hxx>
#include<AlienImage_SGIRGBFileHeader.hxx>
#include<AlienImage_SUNRFFileHeader.hxx>
#include<AlienImage_SUNRFFormat.hxx>
#include<AlienImage_SunRFAlienData.hxx>
#include<AlienImage_SunRFAlienImage.hxx>
#include<AlienImage_X11XColor.hxx>
#include<AlienImage_X11XWDAlienData.hxx>
#include<AlienImage_X11XWDFileHeader.hxx>
#include<AlienImage_XAlienImage.hxx>
#include<Handle_AlienImage_AidaAlienData.hxx>
#include<Handle_AlienImage_AidaAlienImage.hxx>
#include<Handle_AlienImage_AlienImage.hxx>
#include<Handle_AlienImage_AlienImageData.hxx>
#include<Handle_AlienImage_AlienUserImage.hxx>
#include<Handle_AlienImage_BMPAlienData.hxx>
#include<Handle_AlienImage_BMPAlienImage.hxx>
#include<Handle_AlienImage_EuclidAlienData.hxx>
#include<Handle_AlienImage_EuclidAlienImage.hxx>
#include<Handle_AlienImage_GIFAlienData.hxx>
#include<Handle_AlienImage_GIFAlienImage.hxx>
#include<Handle_AlienImage_SGIRGBAlienData.hxx>
#include<Handle_AlienImage_SGIRGBAlienImage.hxx>
#include<Handle_AlienImage_SunRFAlienData.hxx>
#include<Handle_AlienImage_SunRFAlienImage.hxx>
#include<Handle_AlienImage_X11XWDAlienData.hxx>
#include<Handle_AlienImage_XAlienImage.hxx>

// Additional headers necessary for compilation.

#include<Quantity_AbsorbedDose.hxx>
#include<Quantity_Acceleration.hxx>
#include<Quantity_AcousticIntensity.hxx>
#include<Quantity_Activity.hxx>
#include<Quantity_Admittance.hxx>
#include<Quantity_AmountOfSubstance.hxx>
#include<Quantity_AngularVelocity.hxx>
#include<Quantity_Area.hxx>
#include<Quantity_Array1OfCoefficient.hxx>
#include<Quantity_Array1OfColor.hxx>
#include<Quantity_Array2OfColor.hxx>
#include<Quantity_Capacitance.hxx>
#include<Quantity_Coefficient.hxx>
#include<Quantity_CoefficientOfExpansion.hxx>
#include<Quantity_Color.hxx>
#include<Quantity_ColorDefinitionError.hxx>
#include<Quantity_Color_1.hxx>
#include<Quantity_Concentration.hxx>
#include<Quantity_Conductivity.hxx>
#include<Quantity_Constant.hxx>
#include<Quantity_Consumption.hxx>
#include<Quantity_Content.hxx>
#include<Quantity_Convert.hxx>
#include<Quantity_Date.hxx>
#include<Quantity_DateDefinitionError.hxx>
#include<Quantity_Density.hxx>
#include<Quantity_DoseEquivalent.hxx>
#include<Quantity_ElectricCapacitance.hxx>
#include<Quantity_ElectricCharge.hxx>
#include<Quantity_ElectricCurrent.hxx>
#include<Quantity_ElectricFieldStrength.hxx>
#include<Quantity_ElectricPotential.hxx>
#include<Quantity_Energy.hxx>
#include<Quantity_Enthalpy.hxx>
#include<Quantity_Entropy.hxx>
#include<Quantity_Factor.hxx>
#include<Quantity_Force.hxx>
#include<Quantity_Frequency.hxx>
#include<Quantity_HArray1OfColor.hxx>
#include<Quantity_Illuminance.hxx>
#include<Quantity_Impedance.hxx>
#include<Quantity_Index.hxx>
#include<Quantity_Inductance.hxx>
#include<Quantity_KinematicViscosity.hxx>
#include<Quantity_KineticMoment.hxx>
#include<Quantity_Length.hxx>
#include<Quantity_Luminance.hxx>
#include<Quantity_LuminousEfficacity.hxx>
#include<Quantity_LuminousExposition.hxx>
#include<Quantity_LuminousFlux.hxx>
#include<Quantity_LuminousIntensity.hxx>
#include<Quantity_MagneticFieldStrength.hxx>
#include<Quantity_MagneticFlux.hxx>
#include<Quantity_MagneticFluxDensity.hxx>
#include<Quantity_Mass.hxx>
#include<Quantity_MassFlow.hxx>
#include<Quantity_MolarConcentration.hxx>
#include<Quantity_MolarMass.hxx>
#include<Quantity_MolarVolume.hxx>
#include<Quantity_Molarity.hxx>
#include<Quantity_MomentOfAForce.hxx>
#include<Quantity_MomentOfInertia.hxx>
#include<Quantity_Momentum.hxx>
#include<Quantity_NameOfColor.hxx>
#include<Quantity_Normality.hxx>
#include<Quantity_Parameter.hxx>
#include<Quantity_Period.hxx>
#include<Quantity_PeriodDefinitionError.hxx>
#include<Quantity_PhysicalQuantity.hxx>
#include<Quantity_PlaneAngle.hxx>
#include<Quantity_Power.hxx>
#include<Quantity_Pressure.hxx>
#include<Quantity_Quotient.hxx>
#include<Quantity_Rate.hxx>
#include<Quantity_Ratio.hxx>
#include<Quantity_Reluctance.hxx>
#include<Quantity_Resistance.hxx>
#include<Quantity_Resistivity.hxx>
#include<Quantity_Scalaire.hxx>
#include<Quantity_SolidAngle.hxx>
#include<Quantity_SoundIntensity.hxx>
#include<Quantity_SpecificHeatCapacity.hxx>
#include<Quantity_Speed.hxx>
#include<Quantity_SurfaceTension.hxx>
#include<Quantity_Temperature.hxx>
#include<Quantity_ThermalConductivity.hxx>
#include<Quantity_Torque.hxx>
#include<Quantity_TypeOfColor.hxx>
#include<Quantity_Velocity.hxx>
#include<Quantity_Viscosity.hxx>
#include<Quantity_Volume.hxx>
#include<Quantity_VolumeFlow.hxx>
#include<Quantity_Weight.hxx>
#include<Quantity_Work.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<OSD_File.hxx>
#include<Handle_Image_Image.hxx>
#include<TCollection_AsciiString.hxx>
#include<AlienImage.hxx>
#include<Handle_Aspect_ColorMap.hxx>
#include<Handle_Image_PseudoColorImage.hxx>
#include<Handle_Image_ColorImage.hxx>
%}
