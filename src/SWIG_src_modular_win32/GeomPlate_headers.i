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

#include<GeomPlate_Aij.hxx>
#include<GeomPlate_Array1OfHCurveOnSurface.hxx>
#include<GeomPlate_Array1OfSequenceOfReal.hxx>
#include<GeomPlate_BuildAveragePlane.hxx>
#include<GeomPlate_BuildPlateSurface.hxx>
#include<GeomPlate_CurveConstraint.hxx>
#include<GeomPlate_HArray1OfHCurveOnSurface.hxx>
#include<GeomPlate_HArray1OfSequenceOfReal.hxx>
#include<GeomPlate_HSequenceOfCurveConstraint.hxx>
#include<GeomPlate_HSequenceOfPointConstraint.hxx>
#include<GeomPlate_MakeApprox.hxx>
#include<GeomPlate_PlateG0Criterion.hxx>
#include<GeomPlate_PlateG1Criterion.hxx>
#include<GeomPlate_PointConstraint.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfAij.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfCurveConstraint.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfPointConstraint.hxx>
#include<GeomPlate_SequenceOfAij.hxx>
#include<GeomPlate_SequenceOfCurveConstraint.hxx>
#include<GeomPlate_SequenceOfPointConstraint.hxx>
#include<GeomPlate_Surface.hxx>
#include<Handle_GeomPlate_CurveConstraint.hxx>
#include<Handle_GeomPlate_HArray1OfHCurveOnSurface.hxx>
#include<Handle_GeomPlate_HArray1OfSequenceOfReal.hxx>
#include<Handle_GeomPlate_HSequenceOfCurveConstraint.hxx>
#include<Handle_GeomPlate_HSequenceOfPointConstraint.hxx>
#include<Handle_GeomPlate_PointConstraint.hxx>
#include<Handle_GeomPlate_SequenceNodeOfSequenceOfAij.hxx>
#include<Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint.hxx>
#include<Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint.hxx>
#include<Handle_GeomPlate_Surface.hxx>

// Additional headers necessary for compilation.

#include<GProp.hxx>
#include<GProp_CelGProps.hxx>
#include<GProp_EquaType.hxx>
#include<GProp_GProps.hxx>
#include<GProp_PEquation.hxx>
#include<GProp_PGProps.hxx>
#include<GProp_PrincipalProps.hxx>
#include<GProp_SelGProps.hxx>
#include<GProp_UndefinedAxis.hxx>
#include<GProp_ValueType.hxx>
#include<GProp_VelGProps.hxx>
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Adaptor3d_HCurveOnSurface.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<AdvApp2Var_Criterion.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<Handle_Adaptor3d_HCurve.hxx>
#include<Handle_Law_Function.hxx>
#include<gp_Pnt.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Handle_Adaptor2d_HCurve2d.hxx>
#include<Handle_TColgp_HArray1OfPnt.hxx>
#include<TColgp_SequenceOfVec.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_Geom_Line.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Plate_Plate.hxx>
#include<gp_Trsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Geom_Geometry.hxx>
#include<TColgp_SequenceOfXY.hxx>
#include<TColgp_SequenceOfXYZ.hxx>
#include<AdvApp2Var_Patch.hxx>
#include<AdvApp2Var_Context.hxx>
#include<gp_Pnt2d.hxx>
#include<Handle_TColStd_HArray1OfInteger.hxx>
#include<Handle_TColGeom2d_HArray1OfCurve.hxx>
%}
