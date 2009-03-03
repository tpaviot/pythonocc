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

#include<Contap_ContAna.hxx>
#include<Contap_Contour.hxx>
#include<Contap_HContTool.hxx>
#include<Contap_HCurve2dTool.hxx>
#include<Contap_HSurfaceTool.hxx>
#include<Contap_IType.hxx>
#include<Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfLineOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfPointOfContour.hxx>
#include<Contap_SequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_TFunction.hxx>
#include<Contap_TheArcFunctionOfContour.hxx>
#include<Contap_TheHSequenceOfPointOfContour.hxx>
#include<Contap_TheIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_TheIWalkingOfContour.hxx>
#include<Contap_TheLineOfContour.hxx>
#include<Contap_ThePathPointOfTheSearchOfContour.hxx>
#include<Contap_ThePointOfContour.hxx>
#include<Contap_TheSearchInsideOfContour.hxx>
#include<Contap_TheSearchOfContour.hxx>
#include<Contap_TheSegmentOfTheSearchOfContour.hxx>
#include<Contap_TheSequenceOfLineOfContour.hxx>
#include<Contap_TheSequenceOfPointOfContour.hxx>
#include<Contap_TheSurfFunctionOfContour.hxx>
#include<Contap_TheSurfPropsOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfTheSequenceOfLineOfContour.hxx>
#include<Handle_Contap_SequenceNodeOfTheSequenceOfPointOfContour.hxx>
#include<Handle_Contap_TheHSequenceOfPointOfContour.hxx>
#include<Handle_Contap_TheIWLineOfTheIWalkingOfContour.hxx>

// Additional headers necessary for compilation.

#include<Contap_ContAna.hxx>
#include<Contap_Contour.hxx>
#include<Contap_HContTool.hxx>
#include<Contap_HCurve2dTool.hxx>
#include<Contap_HSurfaceTool.hxx>
#include<Contap_IType.hxx>
#include<Contap_SequenceNodeOfSequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfSequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfLineOfContour.hxx>
#include<Contap_SequenceNodeOfTheSequenceOfPointOfContour.hxx>
#include<Contap_SequenceOfIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_SequenceOfPathPointOfTheSearchOfContour.hxx>
#include<Contap_SequenceOfSegmentOfTheSearchOfContour.hxx>
#include<Contap_TFunction.hxx>
#include<Contap_TheArcFunctionOfContour.hxx>
#include<Contap_TheHSequenceOfPointOfContour.hxx>
#include<Contap_TheIWLineOfTheIWalkingOfContour.hxx>
#include<Contap_TheIWalkingOfContour.hxx>
#include<Contap_TheLineOfContour.hxx>
#include<Contap_ThePathPointOfTheSearchOfContour.hxx>
#include<Contap_ThePointOfContour.hxx>
#include<Contap_TheSearchInsideOfContour.hxx>
#include<Contap_TheSearchOfContour.hxx>
#include<Contap_TheSegmentOfTheSearchOfContour.hxx>
#include<Contap_TheSequenceOfLineOfContour.hxx>
#include<Contap_TheSequenceOfPointOfContour.hxx>
#include<Contap_TheSurfFunctionOfContour.hxx>
#include<Contap_TheSurfPropsOfContour.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Vec.hxx>
#include<gp_Pln.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Cone.hxx>
#include<gp_Torus.hxx>
#include<gp_Sphere.hxx>
#include<Handle_Geom_BezierSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_Ax1.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<Handle_Adaptor3d_TopolTool.hxx>
#include<Handle_IntSurf_LineOn2S.hxx>
#include<IntSurf_PntOn2S.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<IntSurf_PathPoint.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_Adaptor3d_HVertex.hxx>
#include<IntSurf_Transition.hxx>
#include<gp_Vec2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
%}
