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

#include<Handle_ProjLib_HCompProjectedCurve.hxx>
#include<Handle_ProjLib_HProjectedCurve.hxx>
#include<Handle_ProjLib_HSequenceOfHSequenceOfPnt.hxx>
#include<Handle_ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib.hxx>
#include<ProjLib_CompProjectedCurve.hxx>
#include<ProjLib_ComputeApprox.hxx>
#include<ProjLib_ComputeApproxOnPolarSurface.hxx>
#include<ProjLib_Cone.hxx>
#include<ProjLib_Cylinder.hxx>
#include<ProjLib_HCompProjectedCurve.hxx>
#include<ProjLib_HProjectedCurve.hxx>
#include<ProjLib_HSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_Plane.hxx>
#include<ProjLib_PrjFunc.hxx>
#include<ProjLib_PrjResolve.hxx>
#include<ProjLib_ProjectOnPlane.hxx>
#include<ProjLib_ProjectOnSurface.hxx>
#include<ProjLib_ProjectedCurve.hxx>
#include<ProjLib_Projector.hxx>
#include<ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_SequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_Sphere.hxx>
#include<ProjLib_Torus.hxx>

// Additional headers necessary for compilation.

#include<ProjLib.hxx>
#include<ProjLib_CompProjectedCurve.hxx>
#include<ProjLib_ComputeApprox.hxx>
#include<ProjLib_ComputeApproxOnPolarSurface.hxx>
#include<ProjLib_Cone.hxx>
#include<ProjLib_Cylinder.hxx>
#include<ProjLib_HCompProjectedCurve.hxx>
#include<ProjLib_HProjectedCurve.hxx>
#include<ProjLib_HSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_Plane.hxx>
#include<ProjLib_PrjFunc.hxx>
#include<ProjLib_PrjResolve.hxx>
#include<ProjLib_ProjectOnPlane.hxx>
#include<ProjLib_ProjectOnSurface.hxx>
#include<ProjLib_ProjectedCurve.hxx>
#include<ProjLib_Projector.hxx>
#include<ProjLib_SequenceNodeOfSequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_SequenceOfHSequenceOfPnt.hxx>
#include<ProjLib_Sphere.hxx>
#include<ProjLib_Torus.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TColgp_HSequenceOfPnt.hxx>
#include<Handle_Adaptor3d_HSurface.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Parab2d.hxx>
#include<Handle_Geom2d_BezierCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<gp_Lin.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<gp_Parab.hxx>
#include<gp_Hypr.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<ProjLib.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Cone.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Adaptor3d_Surface.hxx>
#include<gp_Ax3.hxx>
#include<gp_Dir.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom_BezierCurve.hxx>
#include<math_Vector.hxx>
#include<math_Matrix.hxx>
%}
