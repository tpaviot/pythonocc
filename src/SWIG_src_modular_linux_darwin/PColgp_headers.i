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

#include<PColgp_FieldOfHArray1OfPnt.hxx>
#include<PColgp_HArray1OfLin2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<PColgp_HArray2OfPnt2d.hxx>
#include<PColgp_HArray2OfXYZ.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfXYZ.hxx>
#include<PColgp_FieldOfHArray2OfVec2d.hxx>
#include<PColgp_SeqNodeOfHSequenceOfPnt.hxx>
#include<PColgp_HArray1OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<PColgp_HArray1OfVec2d.hxx>
#include<PColgp_HArray2OfDir2d.hxx>
#include<PColgp_HArray1OfXYZ.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfDir2d.hxx>
#include<PColgp_SeqNodeOfHSequenceOfVec.hxx>
#include<PColgp_SeqNodeOfHSequenceOfXYZ.hxx>
#include<PColgp_FieldOfHArray2OfPnt.hxx>
#include<PColgp_FieldOfHArray1OfVec2d.hxx>
#include<PColgp_FieldOfHArray1OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfVec.hxx>
#include<PColgp_HSequenceOfPnt.hxx>
#include<PColgp_HArray1OfXY.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfXY.hxx>
#include<PColgp_SeqNodeOfHSequenceOfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfVec.hxx>
#include<PColgp_FieldOfHArray1OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfXY.hxx>
#include<PColgp_HArray2OfVec2d.hxx>
#include<PColgp_FieldOfHArray2OfLin2d.hxx>
#include<PColgp_FieldOfHArray2OfXYZ.hxx>
#include<PColgp_HArray2OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfXY.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfDir.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfPnt.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfPnt.hxx>
#include<PColgp_HArray2OfLin2d.hxx>
#include<PColgp_FieldOfHArray1OfDir2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<PColgp_HSequenceOfVec.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfXYZ.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfPnt.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfXYZ.hxx>
#include<PColgp_FieldOfHArray1OfCirc2d.hxx>
#include<PColgp_HArray2OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfVec2d.hxx>
#include<PColgp_HArray1OfDir2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d.hxx>
#include<PColgp_FieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfVec2d.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfVec.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfVec.hxx>
#include<PColgp_HArray1OfVec.hxx>
#include<PColgp_FieldOfHArray1OfPnt2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfDir2d.hxx>
#include<PColgp_HArray1OfDir.hxx>
#include<PColgp_FieldOfHArray2OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<PColgp_FieldOfHArray2OfPnt2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d.hxx>
#include<PColgp_HSequenceOfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfLin2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d.hxx>
#include<PColgp_HSequenceOfXYZ.hxx>
#include<PColgp_HArray2OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfLin2d.hxx>
#include<PColgp_FieldOfHArray1OfXYZ.hxx>
#include<PColgp_FieldOfHArray2OfCirc2d.hxx>
#include<PColgp_FieldOfHArray2OfDir2d.hxx>
#include<PColgp_HArray1OfPnt.hxx>
#include<PColgp_FieldOfHArray1OfDir.hxx>
#include<PColgp_HArray1OfPnt2d.hxx>
#include<PColgp_FieldOfHArray2OfVec.hxx>
#include<PColgp_HArray2OfCirc2d.hxx>
#include<PColgp_HArray2OfDir.hxx>
#include<PColgp_FieldOfHArray1OfLin2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec.hxx>
#include<Handle_PColgp_HArray2OfXY.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfXYZ.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt.hxx>
#include<Handle_PColgp_HArray2OfPnt2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<Handle_PColgp_HArray1OfLin2d.hxx>
#include<Handle_PColgp_HArray2OfLin2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY.hxx>
#include<Handle_PColgp_HSequenceOfDir.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfPnt.hxx>
#include<Handle_PColgp_HArray1OfVec2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec.hxx>
#include<Handle_PColgp_HArray1OfXY.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d.hxx>
#include<Handle_PColgp_HArray1OfDir2d.hxx>
#include<Handle_PColgp_HSequenceOfVec.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ.hxx>
#include<Handle_PColgp_HArray2OfCirc2d.hxx>
#include<Handle_PColgp_HArray2OfDir.hxx>
#include<Handle_PColgp_HArray1OfXYZ.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfVec.hxx>
#include<Handle_PColgp_HArray1OfCirc2d.hxx>
#include<Handle_PColgp_HArray1OfPnt.hxx>
#include<Handle_PColgp_HArray2OfDir2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<Handle_PColgp_HArray2OfVec.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir.hxx>
#include<Handle_PColgp_HArray2OfPnt.hxx>
#include<Handle_PColgp_HArray1OfPnt2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d.hxx>
#include<Handle_PColgp_HArray2OfXYZ.hxx>
#include<Handle_PColgp_HSequenceOfXYZ.hxx>
#include<Handle_PColgp_HArray1OfVec.hxx>
#include<Handle_PColgp_HArray1OfDir.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<Handle_PColgp_HSequenceOfPnt.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<Handle_PColgp_SeqNodeOfHSequenceOfDir.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt.hxx>
#include<Handle_PColgp_HArray2OfVec2d.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ.hxx>
#include<Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d.hxx>

// Additional headers necessary for compilation.

#include<PColgp_FieldOfHArray1OfPnt.hxx>
#include<PColgp_HArray1OfLin2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<PColgp_HArray2OfPnt2d.hxx>
#include<PColgp_HArray2OfXYZ.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfXYZ.hxx>
#include<PColgp_FieldOfHArray2OfVec2d.hxx>
#include<PColgp_SeqNodeOfHSequenceOfPnt.hxx>
#include<PColgp_HArray1OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<PColgp_HArray1OfVec2d.hxx>
#include<PColgp_HArray2OfDir2d.hxx>
#include<PColgp_HArray1OfXYZ.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfDir2d.hxx>
#include<PColgp_SeqNodeOfHSequenceOfVec.hxx>
#include<PColgp_SeqNodeOfHSequenceOfXYZ.hxx>
#include<PColgp_FieldOfHArray2OfPnt.hxx>
#include<PColgp_FieldOfHArray1OfVec2d.hxx>
#include<PColgp_FieldOfHArray1OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfVec.hxx>
#include<PColgp_HSequenceOfPnt.hxx>
#include<PColgp_HArray1OfXY.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfXY.hxx>
#include<PColgp_SeqNodeOfHSequenceOfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfVec.hxx>
#include<PColgp_FieldOfHArray1OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfXY.hxx>
#include<PColgp_HArray2OfVec2d.hxx>
#include<PColgp_FieldOfHArray2OfLin2d.hxx>
#include<PColgp_FieldOfHArray2OfXYZ.hxx>
#include<PColgp_HArray2OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfXY.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfDir.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfPnt.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfPnt.hxx>
#include<PColgp_HArray2OfLin2d.hxx>
#include<PColgp_FieldOfHArray1OfDir2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<PColgp_HSequenceOfVec.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfXYZ.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfPnt.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfXYZ.hxx>
#include<PColgp_FieldOfHArray1OfCirc2d.hxx>
#include<PColgp_HArray2OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfVec2d.hxx>
#include<PColgp_HArray1OfDir2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d.hxx>
#include<PColgp_FieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfVec.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfVec2d.hxx>
#include<PColgp_SeqExplorerOfHSequenceOfVec.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfVec.hxx>
#include<PColgp_HArray1OfVec.hxx>
#include<PColgp_FieldOfHArray1OfPnt2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfDir2d.hxx>
#include<PColgp_HArray1OfDir.hxx>
#include<PColgp_FieldOfHArray2OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d.hxx>
#include<PColgp_FieldOfHArray2OfPnt2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfPnt.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d.hxx>
#include<PColgp_HSequenceOfDir.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray2OfLin2d.hxx>
#include<PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d.hxx>
#include<PColgp_HSequenceOfXYZ.hxx>
#include<PColgp_HArray2OfXY.hxx>
#include<PColgp_VArrayNodeOfFieldOfHArray1OfLin2d.hxx>
#include<PColgp_FieldOfHArray1OfXYZ.hxx>
#include<PColgp_FieldOfHArray2OfCirc2d.hxx>
#include<PColgp_FieldOfHArray2OfDir2d.hxx>
#include<PColgp_HArray1OfPnt.hxx>
#include<PColgp_FieldOfHArray1OfDir.hxx>
#include<PColgp_HArray1OfPnt2d.hxx>
#include<PColgp_FieldOfHArray2OfVec.hxx>
#include<PColgp_HArray2OfCirc2d.hxx>
#include<PColgp_HArray2OfDir.hxx>
#include<PColgp_FieldOfHArray1OfLin2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Vec.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Dir.hxx>
#include<gp_Pnt.hxx>
#include<gp_XYZ.hxx>
#include<gp_XY.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Dir2d.hxx>
%}
