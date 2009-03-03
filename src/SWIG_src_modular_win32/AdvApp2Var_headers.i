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

#include<AdvApp2Var_ApproxAFunc2Var.hxx>
#include<AdvApp2Var_ApproxF2var.hxx>
#include<AdvApp2Var_Context.hxx>
#include<AdvApp2Var_Criterion.hxx>
#include<AdvApp2Var_CriterionRepartition.hxx>
#include<AdvApp2Var_CriterionType.hxx>
#include<AdvApp2Var_Data.hxx>
#include<AdvApp2Var_Data_f2c.hxx>
#include<AdvApp2Var_EvaluatorFunc2Var.hxx>
#include<AdvApp2Var_Framework.hxx>
#include<AdvApp2Var_Iso.hxx>
#include<AdvApp2Var_MathBase.hxx>
#include<AdvApp2Var_Network.hxx>
#include<AdvApp2Var_Node.hxx>
#include<AdvApp2Var_Patch.hxx>
#include<AdvApp2Var_SequenceNodeOfSequenceOfNode.hxx>
#include<AdvApp2Var_SequenceNodeOfSequenceOfPatch.hxx>
#include<AdvApp2Var_SequenceNodeOfSequenceOfStrip.hxx>
#include<AdvApp2Var_SequenceNodeOfStrip.hxx>
#include<AdvApp2Var_SequenceOfNode.hxx>
#include<AdvApp2Var_SequenceOfPatch.hxx>
#include<AdvApp2Var_SequenceOfStrip.hxx>
#include<AdvApp2Var_Strip.hxx>
#include<AdvApp2Var_SysBase.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfSequenceOfNode.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfSequenceOfPatch.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfSequenceOfStrip.hxx>
#include<Handle_AdvApp2Var_SequenceNodeOfStrip.hxx>

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
#include<TColStd_SequenceOfReal.hxx>
#include<Handle_TColgp_HArray2OfPnt.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<AdvApprox_Cutting.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_XY.hxx>
#include<gp_Pnt.hxx>
%}
