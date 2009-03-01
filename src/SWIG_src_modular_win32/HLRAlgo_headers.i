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

#include<HLRAlgo_Array1OfPHDat.hxx>
#include<HLRAlgo_Array1OfPINod.hxx>
#include<HLRAlgo_Array1OfPISeg.hxx>
#include<HLRAlgo_Array1OfTData.hxx>
#include<HLRAlgo_BiPoint.hxx>
#include<HLRAlgo_Coincidence.hxx>
#include<HLRAlgo_EdgeIterator.hxx>
#include<HLRAlgo_EdgesBlock.hxx>
#include<HLRAlgo_EdgeStatus.hxx>
#include<HLRAlgo_HArray1OfPHDat.hxx>
#include<HLRAlgo_HArray1OfPINod.hxx>
#include<HLRAlgo_HArray1OfPISeg.hxx>
#include<HLRAlgo_HArray1OfTData.hxx>
#include<HLRAlgo_Interference.hxx>
#include<HLRAlgo_InterferenceList.hxx>
#include<HLRAlgo_Intersection.hxx>
#include<HLRAlgo_ListIteratorOfInterferenceList.hxx>
#include<HLRAlgo_ListIteratorOfListOfBPoint.hxx>
#include<HLRAlgo_ListNodeOfInterferenceList.hxx>
#include<HLRAlgo_ListNodeOfListOfBPoint.hxx>
#include<HLRAlgo_ListOfBPoint.hxx>
#include<HLRAlgo_PolyAlgo.hxx>
#include<HLRAlgo_PolyData.hxx>
#include<HLRAlgo_PolyHidingData.hxx>
#include<HLRAlgo_PolyInternalData.hxx>
#include<HLRAlgo_PolyInternalNode.hxx>
#include<HLRAlgo_PolyInternalSegment.hxx>
#include<HLRAlgo_PolyShellData.hxx>
#include<HLRAlgo_Projector.hxx>
#include<HLRAlgo_TriangleData.hxx>
#include<HLRAlgo_WiresBlock.hxx>
#include<HLRAlgo.hxx>
#include<Handle_HLRAlgo_EdgesBlock.hxx>
#include<Handle_HLRAlgo_HArray1OfPHDat.hxx>
#include<Handle_HLRAlgo_HArray1OfPINod.hxx>
#include<Handle_HLRAlgo_HArray1OfPISeg.hxx>
#include<Handle_HLRAlgo_HArray1OfTData.hxx>
#include<Handle_HLRAlgo_ListNodeOfInterferenceList.hxx>
#include<Handle_HLRAlgo_ListNodeOfListOfBPoint.hxx>
#include<Handle_HLRAlgo_PolyAlgo.hxx>
#include<Handle_HLRAlgo_PolyData.hxx>
#include<Handle_HLRAlgo_PolyInternalData.hxx>
#include<Handle_HLRAlgo_PolyInternalNode.hxx>
#include<Handle_HLRAlgo_PolyShellData.hxx>
#include<Handle_HLRAlgo_WiresBlock.hxx>

// Additional headers necessary for compilation.

#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Ax2.hxx>
#include<gp_Trsf.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Vec.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Lin.hxx>
#include<Handle_TColStd_HArray1OfTransient.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<HLRAlgo.hxx>
%}
