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

#include<DsgPrs.hxx>
#include<DsgPrs_AnglePresentation.hxx>
#include<DsgPrs_ArrowSide.hxx>
#include<DsgPrs_Chamf2dPresentation.hxx>
#include<DsgPrs_ConcentricPresentation.hxx>
#include<DsgPrs_DatumPrs.hxx>
#include<DsgPrs_DatumTool.hxx>
#include<DsgPrs_DiameterPresentation.hxx>
#include<DsgPrs_EllipseRadiusPresentation.hxx>
#include<DsgPrs_EqualDistancePresentation.hxx>
#include<DsgPrs_EqualRadiusPresentation.hxx>
#include<DsgPrs_FilletRadiusPresentation.hxx>
#include<DsgPrs_FixPresentation.hxx>
#include<DsgPrs_IdenticPresentation.hxx>
#include<DsgPrs_LengthPresentation.hxx>
#include<DsgPrs_MidPointPresentation.hxx>
#include<DsgPrs_OffsetPresentation.hxx>
#include<DsgPrs_ParalPresentation.hxx>
#include<DsgPrs_PerpenPresentation.hxx>
#include<DsgPrs_RadiusPresentation.hxx>
#include<DsgPrs_ShadedPlanePresentation.hxx>
#include<DsgPrs_ShapeDirPresentation.hxx>
#include<DsgPrs_SymbPresentation.hxx>
#include<DsgPrs_SymmetricPresentation.hxx>
#include<DsgPrs_TangentPresentation.hxx>
#include<DsgPrs_XYZAxisPresentation.hxx>
#include<DsgPrs_XYZPlanePresentation.hxx>

// Additional headers necessary for compilation.

#include<DsgPrs.hxx>
#include<DsgPrs_AnglePresentation.hxx>
#include<DsgPrs_ArrowSide.hxx>
#include<DsgPrs_Chamf2dPresentation.hxx>
#include<DsgPrs_ConcentricPresentation.hxx>
#include<DsgPrs_DatumPrs.hxx>
#include<DsgPrs_DatumTool.hxx>
#include<DsgPrs_DiameterPresentation.hxx>
#include<DsgPrs_EllipseRadiusPresentation.hxx>
#include<DsgPrs_EqualDistancePresentation.hxx>
#include<DsgPrs_EqualRadiusPresentation.hxx>
#include<DsgPrs_FilletRadiusPresentation.hxx>
#include<DsgPrs_FixPresentation.hxx>
#include<DsgPrs_IdenticPresentation.hxx>
#include<DsgPrs_LengthPresentation.hxx>
#include<DsgPrs_MidPointPresentation.hxx>
#include<DsgPrs_OffsetPresentation.hxx>
#include<DsgPrs_ParalPresentation.hxx>
#include<DsgPrs_PerpenPresentation.hxx>
#include<DsgPrs_RadiusPresentation.hxx>
#include<DsgPrs_ShadedPlanePresentation.hxx>
#include<DsgPrs_ShapeDirPresentation.hxx>
#include<DsgPrs_SymbPresentation.hxx>
#include<DsgPrs_SymmetricPresentation.hxx>
#include<DsgPrs_TangentPresentation.hxx>
#include<DsgPrs_XYZAxisPresentation.hxx>
#include<DsgPrs_XYZPlanePresentation.hxx>

// Needed headers necessary for compilation.

#include<Handle_Prs3d_Presentation.hxx>
#include<Handle_Prs3d_Drawer.hxx>
#include<TCollection_ExtendedString.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<Handle_Geom_TrimmedCurve.hxx>
#include<gp_Ax2.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Geom_Plane.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Surface.hxx>
#include<gp_Ax1.hxx>
#include<Handle_Geom_OffsetCurve.hxx>
#include<gp_Lin.hxx>
#include<DsgPrs.hxx>
#include<Handle_Prs3d_AngleAspect.hxx>
#include<Handle_Prs3d_LengthAspect.hxx>
#include<Handle_Geom_Curve.hxx>
#include<Handle_Prs3d_LineAspect.hxx>
#include<Handle_Prs3d_ArrowAspect.hxx>
#include<Handle_Prs3d_TextAspect.hxx>
%}
