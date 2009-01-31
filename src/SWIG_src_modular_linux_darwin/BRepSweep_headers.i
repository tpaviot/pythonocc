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

#include<BRepSweep_Array2OfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_Tool.hxx>
#include<BRepSweep_Builder.hxx>
#include<BRepSweep_Revol.hxx>
#include<BRepSweep_SequenceOfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_NumLinearRegularSweep.hxx>
#include<BRepSweep_Rotation.hxx>
#include<BRepSweep_Translation.hxx>
#include<BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_Prism.hxx>
#include<BRepSweep_Trsf.hxx>
#include<BRepSweep_Iterator.hxx>
#include<Handle_BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep.hxx>

// Additional headers necessary for compilation.

#include<BRepSweep_Array2OfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_Tool.hxx>
#include<BRepSweep_Builder.hxx>
#include<BRepSweep_Revol.hxx>
#include<BRepSweep_SequenceOfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_NumLinearRegularSweep.hxx>
#include<BRepSweep_Rotation.hxx>
#include<BRepSweep_Translation.hxx>
#include<BRepSweep_SequenceNodeOfSequenceOfShapesOfNumLinearRegularSweep.hxx>
#include<BRepSweep_Prism.hxx>
#include<BRepSweep_Trsf.hxx>
#include<BRepSweep_Iterator.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Sweep_NumShape.hxx>
#include<TopLoc_Location.hxx>
#include<gp_Vec.hxx>
#include<gp_Ax1.hxx>
#include<BRep_Builder.hxx>
#include<gp_Dir.hxx>
%}
