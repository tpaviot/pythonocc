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

#include<Handle_NLPlate_HGPPConstraint.hxx>
#include<Handle_NLPlate_HPG0Constraint.hxx>
#include<Handle_NLPlate_HPG0G1Constraint.hxx>
#include<Handle_NLPlate_HPG0G2Constraint.hxx>
#include<Handle_NLPlate_HPG0G3Constraint.hxx>
#include<Handle_NLPlate_HPG1Constraint.hxx>
#include<Handle_NLPlate_HPG2Constraint.hxx>
#include<Handle_NLPlate_HPG3Constraint.hxx>
#include<Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint.hxx>
#include<Handle_NLPlate_StackNodeOfStackOfPlate.hxx>
#include<NLPlate_HGPPConstraint.hxx>
#include<NLPlate_HPG0Constraint.hxx>
#include<NLPlate_HPG0G1Constraint.hxx>
#include<NLPlate_HPG0G2Constraint.hxx>
#include<NLPlate_HPG0G3Constraint.hxx>
#include<NLPlate_HPG1Constraint.hxx>
#include<NLPlate_HPG2Constraint.hxx>
#include<NLPlate_HPG3Constraint.hxx>
#include<NLPlate_NLPlate.hxx>
#include<NLPlate_SequenceNodeOfSequenceOfHGPPConstraint.hxx>
#include<NLPlate_SequenceOfHGPPConstraint.hxx>
#include<NLPlate_StackIteratorOfStackOfPlate.hxx>
#include<NLPlate_StackNodeOfStackOfPlate.hxx>
#include<NLPlate_StackOfPlate.hxx>

// Additional headers necessary for compilation.

#include<NLPlate_HGPPConstraint.hxx>
#include<NLPlate_HPG0Constraint.hxx>
#include<NLPlate_HPG0G1Constraint.hxx>
#include<NLPlate_HPG0G2Constraint.hxx>
#include<NLPlate_HPG0G3Constraint.hxx>
#include<NLPlate_HPG1Constraint.hxx>
#include<NLPlate_HPG2Constraint.hxx>
#include<NLPlate_HPG3Constraint.hxx>
#include<NLPlate_NLPlate.hxx>
#include<NLPlate_SequenceNodeOfSequenceOfHGPPConstraint.hxx>
#include<NLPlate_SequenceOfHGPPConstraint.hxx>
#include<NLPlate_StackIteratorOfStackOfPlate.hxx>
#include<NLPlate_StackNodeOfStackOfPlate.hxx>
#include<NLPlate_StackOfPlate.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_XY.hxx>
#include<Plate_D1.hxx>
#include<Plate_D2.hxx>
#include<Plate_D3.hxx>
#include<gp_XYZ.hxx>
#include<Plate_Plate.hxx>
#include<Handle_Geom_Surface.hxx>
%}
