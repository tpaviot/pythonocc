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

#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXY.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec2d.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt2d.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXYZ.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_DataMapNodeOfDataMapOfIntegerCirc2d.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_DataMapOfIntegerCirc2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec.hxx>
#include<TColgp_HArray2OfVec.hxx>
#include<Handle_TColgp_HArray2OfCirc2d.hxx>
#include<Handle_TColgp_HSequenceOfDir2d.hxx>
#include<Handle_TColgp_HArray2OfVec.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfVec.hxx>
#include<Handle_TColgp_HArray1OfVec2d.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfDir.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfDir2d.hxx>
#include<Handle_TColgp_HArray1OfLin2d.hxx>
#include<Handle_TColgp_HSequenceOfVec2d.hxx>
#include<Handle_TColgp_HArray2OfDir.hxx>
#include<Handle_TColgp_HArray2OfXYZ.hxx>
#include<Handle_TColgp_HArray1OfDir2d.hxx>
#include<Handle_TColgp_HArray1OfPnt2d.hxx>
#include<Handle_TColgp_HSequenceOfPnt2d.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfXY.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfPnt2d.hxx>
#include<Handle_TColgp_HArray2OfPnt.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<Handle_TColgp_HArray2OfDir2d.hxx>
#include<Handle_TColgp_HArray1OfCirc2d.hxx>
#include<Handle_TColgp_HSequenceOfXY.hxx>
#include<Handle_TColgp_HArray2OfPnt2d.hxx>
#include<Handle_TColgp_HArray1OfVec.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfPnt.hxx>
#include<Handle_TColgp_HArray2OfVec2d.hxx>
#include<Handle_TColgp_HSequenceOfVec.hxx>
#include<Handle_TColgp_HArray1OfDir.hxx>
#include<Handle_TColgp_HSequenceOfPnt.hxx>
#include<Handle_TColgp_HSequenceOfDir.hxx>
#include<Handle_TColgp_HArray2OfLin2d.hxx>
#include<Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d.hxx>
#include<Handle_TColgp_HArray2OfXY.hxx>
#include<Handle_TColgp_HSequenceOfXYZ.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfXYZ.hxx>
#include<Handle_TColgp_SequenceNodeOfSequenceOfVec2d.hxx>
#include<Handle_TColgp_HArray1OfXY.hxx>

// Additional headers necessary for compilation.

#include<TColgp_HSequenceOfXY.hxx>
#include<TColgp_Array2OfPnt2d.hxx>
#include<TColgp_HArray1OfLin2d.hxx>
#include<TColgp_HArray1OfVec.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXY.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir.hxx>
#include<TColgp_Array2OfDir.hxx>
#include<TColgp_Array2OfDir2d.hxx>
#include<TColgp_HArray1OfCirc2d.hxx>
#include<TColgp_HArray1OfPnt.hxx>
#include<TColgp_HArray1OfVec2d.hxx>
#include<TColgp_HArray2OfVec2d.hxx>
#include<TColgp_HArray2OfCirc2d.hxx>
#include<TColgp_HArray1OfDir2d.hxx>
#include<TColgp_HArray2OfXYZ.hxx>
#include<TColgp_HArray2OfDir2d.hxx>
#include<TColgp_HSequenceOfPnt.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt.hxx>
#include<TColgp_SequenceOfVec2d.hxx>
#include<TColgp_SequenceOfDir.hxx>
#include<TColgp_Array2OfCirc2d.hxx>
#include<TColgp_HArray2OfDir.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<TColgp_HArray2OfPnt.hxx>
#include<TColgp_Array1OfXY.hxx>
#include<TColgp_Array2OfVec.hxx>
#include<TColgp_Array1OfDir2d.hxx>
#include<TColgp_Array1OfCirc2d.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_Array1OfXYZ.hxx>
#include<TColgp_HArray2OfXY.hxx>
#include<TColgp_Array2OfPnt.hxx>
#include<TColgp_HArray1OfDir.hxx>
#include<TColgp_HSequenceOfVec.hxx>
#include<TColgp_HArray1OfXY.hxx>
#include<TColgp_HArray1OfXYZ.hxx>
#include<TColgp_HArray1OfPnt2d.hxx>
#include<TColgp_Array2OfXY.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec2d.hxx>
#include<TColgp_HSequenceOfDir.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_Array1OfLin2d.hxx>
#include<TColgp_HSequenceOfDir2d.hxx>
#include<TColgp_HSequenceOfPnt2d.hxx>
#include<TColgp_Array2OfLin2d.hxx>
#include<TColgp_HSequenceOfXYZ.hxx>
#include<TColgp_Array2OfXYZ.hxx>
#include<TColgp_SequenceOfDir2d.hxx>
#include<TColgp_Array2OfVec2d.hxx>
#include<TColgp_Array1OfVec2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfDir2d.hxx>
#include<TColgp_SequenceNodeOfSequenceOfPnt2d.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<TColgp_HArray2OfPnt2d.hxx>
#include<TColgp_HArray2OfLin2d.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d.hxx>
#include<TColgp_HSequenceOfVec2d.hxx>
#include<TColgp_Array1OfDir.hxx>
#include<TColgp_SequenceNodeOfSequenceOfXYZ.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<TColgp_DataMapNodeOfDataMapOfIntegerCirc2d.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<TColgp_DataMapOfIntegerCirc2d.hxx>
#include<TColgp_Array1OfVec.hxx>
#include<TColgp_SequenceNodeOfSequenceOfVec.hxx>
#include<TColgp_HArray2OfVec.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_XYZ.hxx>
#include<gp_Vec.hxx>
#include<gp_Dir2d.hxx>
#include<gp_XY.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Pnt.hxx>
%}
