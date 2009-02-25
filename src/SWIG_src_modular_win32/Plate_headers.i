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

#include<Plate_Array1OfPinpointConstraint.hxx>
#include<Plate_D1.hxx>
#include<Plate_D2.hxx>
#include<Plate_D3.hxx>
#include<Plate_FreeGtoCConstraint.hxx>
#include<Plate_GlobalTranslationConstraint.hxx>
#include<Plate_GtoCConstraint.hxx>
#include<Plate_HArray1OfPinpointConstraint.hxx>
#include<Plate_LinearScalarConstraint.hxx>
#include<Plate_LinearXYZConstraint.hxx>
#include<Plate_LineConstraint.hxx>
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
#include<Handle_Plate_HArray1OfPinpointConstraint.hxx>
#include<Handle_Plate_SequenceNodeOfSequenceOfLinearScalarConstraint.hxx>
#include<Handle_Plate_SequenceNodeOfSequenceOfLinearXYZConstraint.hxx>
#include<Handle_Plate_SequenceNodeOfSequenceOfPinpointConstraint.hxx>

// Additional headers necessary for compilation.

#include<Plate_Array1OfPinpointConstraint.hxx>
#include<Plate_D1.hxx>
#include<Plate_D2.hxx>
#include<Plate_D3.hxx>
#include<Plate_FreeGtoCConstraint.hxx>
#include<Plate_GlobalTranslationConstraint.hxx>
#include<Plate_GtoCConstraint.hxx>
#include<Plate_HArray1OfPinpointConstraint.hxx>
#include<Plate_LinearScalarConstraint.hxx>
#include<Plate_LinearXYZConstraint.hxx>
#include<Plate_LineConstraint.hxx>
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
