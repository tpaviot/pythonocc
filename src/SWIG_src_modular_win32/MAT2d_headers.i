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

#include<MAT2d_Array2OfConnexion.hxx>
#include<MAT2d_BiInt.hxx>
#include<MAT2d_Circuit.hxx>
#include<MAT2d_Connexion.hxx>
#include<MAT2d_CutCurve.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapOfIntegerVec2d.hxx>
#include<MAT2d_MapBiIntHasher.hxx>
#include<MAT2d_Mat2d.hxx>
#include<MAT2d_MiniPath.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfBoolean.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfConnexion.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SequenceOfBoolean.hxx>
#include<MAT2d_SequenceOfConnexion.hxx>
#include<MAT2d_SequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SketchExplorer.hxx>
#include<MAT2d_Tool2d.hxx>
#include<Handle_MAT2d_Circuit.hxx>
#include<Handle_MAT2d_Connexion.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfBoolean.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfConnexion.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve.hxx>
#include<Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry.hxx>

// Additional headers necessary for compilation.

#include<MAT2d_Array2OfConnexion.hxx>
#include<MAT2d_BiInt.hxx>
#include<MAT2d_Circuit.hxx>
#include<MAT2d_Connexion.hxx>
#include<MAT2d_CutCurve.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapNodeOfDataMapOfIntegerVec2d.hxx>
#include<MAT2d_DataMapOfBiIntInteger.hxx>
#include<MAT2d_DataMapOfBiIntSequenceOfInteger.hxx>
#include<MAT2d_DataMapOfIntegerBisec.hxx>
#include<MAT2d_DataMapOfIntegerConnexion.hxx>
#include<MAT2d_DataMapOfIntegerPnt2d.hxx>
#include<MAT2d_DataMapOfIntegerSequenceOfConnexion.hxx>
#include<MAT2d_DataMapOfIntegerVec2d.hxx>
#include<MAT2d_MapBiIntHasher.hxx>
#include<MAT2d_Mat2d.hxx>
#include<MAT2d_MiniPath.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfBoolean.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfConnexion.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SequenceOfBoolean.hxx>
#include<MAT2d_SequenceOfConnexion.hxx>
#include<MAT2d_SequenceOfSequenceOfCurve.hxx>
#include<MAT2d_SequenceOfSequenceOfGeometry.hxx>
#include<MAT2d_SketchExplorer.hxx>
#include<MAT2d_Tool2d.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<Bisector_Bisec.hxx>
#include<TColGeom2d_SequenceOfGeometry.hxx>
#include<Handle_Geom2d_Geometry.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_MAT_Bisector.hxx>
#include<TColGeom2d_SequenceOfCurve.hxx>
#include<gp_Pnt2d.hxx>
%}
