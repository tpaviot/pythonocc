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

#include<Intf_SeqOfSectionPoint.hxx>
#include<Intf_Interference.hxx>
#include<Intf_PIType.hxx>
#include<Intf_SeqOfSectionLine.hxx>
#include<Intf_TangentZone.hxx>
#include<Intf_SeqOfTangentZone.hxx>
#include<Intf_SequenceNodeOfSeqOfTangentZone.hxx>
#include<Intf_SequenceNodeOfSeqOfSectionLine.hxx>
#include<Intf_SectionLine.hxx>
#include<Intf_Array1OfLin.hxx>
#include<Intf_Tool.hxx>
#include<Intf_SectionPoint.hxx>
#include<Intf_SequenceNodeOfSeqOfSectionPoint.hxx>
#include<Intf.hxx>
#include<Handle_Intf_SequenceNodeOfSeqOfSectionPoint.hxx>
#include<Handle_Intf_SequenceNodeOfSeqOfTangentZone.hxx>
#include<Handle_Intf_SequenceNodeOfSeqOfSectionLine.hxx>

// Additional headers necessary for compilation.

#include<Intf_SeqOfSectionPoint.hxx>
#include<Intf.hxx>
#include<Intf_Interference.hxx>
#include<Intf_PIType.hxx>
#include<Intf_SeqOfSectionLine.hxx>
#include<Intf_TangentZone.hxx>
#include<Intf_SeqOfTangentZone.hxx>
#include<Intf_SequenceNodeOfSeqOfTangentZone.hxx>
#include<Intf_SequenceNodeOfSeqOfSectionLine.hxx>
#include<Intf_SectionLine.hxx>
#include<Intf_Array1OfLin.hxx>
#include<Intf_Tool.hxx>
#include<Intf_SectionPoint.hxx>
#include<Intf_SequenceNodeOfSeqOfSectionPoint.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<Bnd_Box2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Bnd_Box.hxx>
#include<gp_Hypr.hxx>
#include<gp_Parab.hxx>
#include<gp_XYZ.hxx>
%}
