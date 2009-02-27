/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<GGraphic2d_Curve.hxx>
#include<GGraphic2d_SetOfCurves.hxx>
#include<GGraphic2d_SequenceOfCurve.hxx>
#include<GGraphic2d_SequenceNodeOfSequenceOfCurve.hxx>
#include<GGraphic2d_CurveDefinitionError.hxx>
#include<Handle_GGraphic2d_SequenceNodeOfSequenceOfCurve.hxx>
#include<Handle_GGraphic2d_CurveDefinitionError.hxx>
#include<Handle_GGraphic2d_Curve.hxx>
#include<Handle_GGraphic2d_SetOfCurves.hxx>

// Additional headers necessary for compilation.

#include<Quantity_Resistivity.hxx>
#include<Quantity_MomentOfAForce.hxx>
#include<Quantity_MolarVolume.hxx>
#include<Quantity_Speed.hxx>
#include<Quantity_Velocity.hxx>
#include<Quantity_Consumption.hxx>
#include<Quantity_ElectricCharge.hxx>
#include<Quantity_AcousticIntensity.hxx>
#include<Quantity_Content.hxx>
#include<Quantity_Index.hxx>
#include<Quantity_Power.hxx>
#include<Quantity_Activity.hxx>
#include<Quantity_ThermalConductivity.hxx>
#include<Quantity_MagneticFieldStrength.hxx>
#include<Quantity_Date.hxx>
#include<Quantity_DoseEquivalent.hxx>
#include<Quantity_SpecificHeatCapacity.hxx>
#include<Quantity_Constant.hxx>
#include<Quantity_Illuminance.hxx>
#include<Quantity_CoefficientOfExpansion.hxx>
#include<Quantity_Ratio.hxx>
#include<Quantity_KinematicViscosity.hxx>
#include<Quantity_Weight.hxx>
#include<Quantity_Density.hxx>
#include<Quantity_Parameter.hxx>
#include<Quantity_Entropy.hxx>
#include<Quantity_Resistance.hxx>
#include<Quantity_MassFlow.hxx>
#include<Quantity_Pressure.hxx>
#include<Quantity_Frequency.hxx>
#include<Quantity_VolumeFlow.hxx>
#include<Quantity_LuminousFlux.hxx>
#include<Quantity_Convert.hxx>
#include<Quantity_Molarity.hxx>
#include<Quantity_Reluctance.hxx>
#include<Quantity_Inductance.hxx>
#include<Quantity_Area.hxx>
#include<Quantity_MagneticFlux.hxx>
#include<Quantity_Factor.hxx>
#include<Quantity_Color.hxx>
#include<Quantity_Enthalpy.hxx>
#include<Quantity_LuminousIntensity.hxx>
#include<Quantity_DateDefinitionError.hxx>
#include<Quantity_Rate.hxx>
#include<Quantity_Length.hxx>
#include<Quantity_Period.hxx>
#include<Quantity_Luminance.hxx>
#include<Quantity_Viscosity.hxx>
#include<Quantity_HArray1OfColor.hxx>
#include<Quantity_Array1OfColor.hxx>
#include<Quantity_NameOfColor.hxx>
#include<Quantity_Momentum.hxx>
#include<Quantity_PeriodDefinitionError.hxx>
#include<Quantity_LuminousExposition.hxx>
#include<Quantity_PhysicalQuantity.hxx>
#include<Quantity_Volume.hxx>
#include<Quantity_PlaneAngle.hxx>
#include<Quantity_Color_1.hxx>
#include<Quantity_SolidAngle.hxx>
#include<Quantity_SoundIntensity.hxx>
#include<Quantity_MolarMass.hxx>
#include<Quantity_LuminousEfficacity.hxx>
#include<Quantity_Concentration.hxx>
#include<Quantity_SurfaceTension.hxx>
#include<Quantity_Torque.hxx>
#include<Quantity_Impedance.hxx>
#include<Quantity_ColorDefinitionError.hxx>
#include<Quantity_AbsorbedDose.hxx>
#include<Quantity_ElectricFieldStrength.hxx>
#include<Quantity_Coefficient.hxx>
#include<Quantity_Admittance.hxx>
#include<Quantity_MagneticFluxDensity.hxx>
#include<Quantity_Mass.hxx>
#include<Quantity_AmountOfSubstance.hxx>
#include<Quantity_Force.hxx>
#include<Quantity_Capacitance.hxx>
#include<Quantity_MolarConcentration.hxx>
#include<Quantity_KineticMoment.hxx>
#include<Quantity_Temperature.hxx>
#include<Quantity_ElectricPotential.hxx>
#include<Quantity_AngularVelocity.hxx>
#include<Quantity_Energy.hxx>
#include<Quantity_Acceleration.hxx>
#include<Quantity_Array1OfCoefficient.hxx>
#include<Quantity_Normality.hxx>
#include<Quantity_Work.hxx>
#include<Quantity_ElectricCapacitance.hxx>
#include<Quantity_MomentOfInertia.hxx>
#include<Quantity_Scalaire.hxx>
#include<Quantity_Quotient.hxx>
#include<Quantity_Conductivity.hxx>
#include<Quantity_TypeOfColor.hxx>
#include<Quantity_ElectricCurrent.hxx>
#include<Quantity_Array2OfColor.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Graphic2d_GraphicObject.hxx>
#include<Standard_SStream.hxx>
%}
