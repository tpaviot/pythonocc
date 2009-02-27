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

#include<Select3D_Box2d.hxx>
#include<Select3D_ListIteratorOfListOfSensitive.hxx>
#include<Select3D_ListIteratorOfListOfSensitiveTriangle.hxx>
#include<Select3D_ListNodeOfListOfSensitive.hxx>
#include<Select3D_ListNodeOfListOfSensitiveTriangle.hxx>
#include<Select3D_ListOfSensitive.hxx>
#include<Select3D_ListOfSensitiveTriangle.hxx>
#include<Select3D_Macro.hxx>
#include<Select3D_Pnt.hxx>
#include<Select3D_Pnt2d.hxx>
#include<Select3D_Projector.hxx>
#include<Select3D_SensitiveBox.hxx>
#include<Select3D_SensitiveCircle.hxx>
#include<Select3D_SensitiveCurve.hxx>
#include<Select3D_SensitiveEntity.hxx>
#include<Select3D_SensitiveEntitySequence.hxx>
#include<Select3D_SensitiveFace.hxx>
#include<Select3D_SensitiveGroup.hxx>
#include<Select3D_SensitivePoint.hxx>
#include<Select3D_SensitivePoly.hxx>
#include<Select3D_SensitiveSegment.hxx>
#include<Select3D_SensitiveTriangle.hxx>
#include<Select3D_SensitiveTriangulation.hxx>
#include<Select3D_SensitiveWire.hxx>
#include<Select3D_SequenceNodeOfSensitiveEntitySequence.hxx>
#include<Select3D_TypeOfSensitivity.hxx>
#include<Handle_Select3D_ListNodeOfListOfSensitive.hxx>
#include<Handle_Select3D_ListNodeOfListOfSensitiveTriangle.hxx>
#include<Handle_Select3D_SensitiveBox.hxx>
#include<Handle_Select3D_SensitiveCircle.hxx>
#include<Handle_Select3D_SensitiveCurve.hxx>
#include<Handle_Select3D_SensitiveEntity.hxx>
#include<Handle_Select3D_SensitiveFace.hxx>
#include<Handle_Select3D_SensitiveGroup.hxx>
#include<Handle_Select3D_SensitivePoint.hxx>
#include<Handle_Select3D_SensitivePoly.hxx>
#include<Handle_Select3D_SensitiveSegment.hxx>
#include<Handle_Select3D_SensitiveTriangle.hxx>
#include<Handle_Select3D_SensitiveTriangulation.hxx>
#include<Handle_Select3D_SensitiveWire.hxx>
#include<Handle_Select3D_SequenceNodeOfSensitiveEntitySequence.hxx>

// Additional headers necessary for compilation.

#include<Select3D_Box2d.hxx>
#include<Select3D_ListIteratorOfListOfSensitive.hxx>
#include<Select3D_ListIteratorOfListOfSensitiveTriangle.hxx>
#include<Select3D_ListNodeOfListOfSensitive.hxx>
#include<Select3D_ListNodeOfListOfSensitiveTriangle.hxx>
#include<Select3D_ListOfSensitive.hxx>
#include<Select3D_ListOfSensitiveTriangle.hxx>
#include<Select3D_Macro.hxx>
#include<Select3D_Pnt.hxx>
#include<Select3D_Pnt2d.hxx>
#include<Select3D_Projector.hxx>
#include<Select3D_SensitiveBox.hxx>
#include<Select3D_SensitiveCircle.hxx>
#include<Select3D_SensitiveCurve.hxx>
#include<Select3D_SensitiveEntity.hxx>
#include<Select3D_SensitiveEntitySequence.hxx>
#include<Select3D_SensitiveFace.hxx>
#include<Select3D_SensitiveGroup.hxx>
#include<Select3D_SensitivePoint.hxx>
#include<Select3D_SensitivePoly.hxx>
#include<Select3D_SensitiveSegment.hxx>
#include<Select3D_SensitiveTriangle.hxx>
#include<Select3D_SensitiveTriangulation.hxx>
#include<Select3D_SensitiveWire.hxx>
#include<Select3D_SequenceNodeOfSensitiveEntitySequence.hxx>
#include<Select3D_TypeOfSensitivity.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopLoc_Location.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
#include<Bnd_Box2d.hxx>
#include<gp_Lin.hxx>
#include<Handle_SelectBasics_EntityOwner.hxx>
#include<Bnd_Box.hxx>
#include<SelectBasics_ListOfBox2d.hxx>
#include<Handle_V3d_View.hxx>
#include<gp_Ax2.hxx>
#include<gp_Trsf.hxx>
#include<gp_Vec2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_Vec.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<gp_XY.hxx>
#include<Handle_Geom_Circle.hxx>
#include<Handle_Poly_Triangulation.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_Geom_Curve.hxx>
%}
