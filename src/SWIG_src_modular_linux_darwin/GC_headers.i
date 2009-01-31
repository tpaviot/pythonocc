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

#include<GC_MakeTrimmedCylinder.hxx>
#include<GC_MakeConicalSurface.hxx>
#include<GC_MakeTranslation.hxx>
#include<GC_MakePlane.hxx>
#include<GC_MakeCylindricalSurface.hxx>
#include<GC_MakeHyperbola.hxx>
#include<GC_Root.hxx>
#include<GC_MakeArcOfEllipse.hxx>
#include<GC_MakeEllipse.hxx>
#include<GC_MakeRotation.hxx>
#include<GC_MakeArcOfHyperbola.hxx>
#include<GC_MakeCircle.hxx>
#include<GC_MakeTrimmedCone.hxx>
#include<GC_MakeArcOfCircle.hxx>
#include<GC_MakeLine.hxx>
#include<GC_MakeSegment.hxx>
#include<GC_MakeArcOfParabola.hxx>
#include<GC_MakeMirror.hxx>
#include<GC_MakeScale.hxx>

// Additional headers necessary for compilation.

#include<GC_MakeTrimmedCylinder.hxx>
#include<GCE2d_MakeCircle.hxx>
#include<GC_MakeConicalSurface.hxx>
#include<GCPnts_DeflectionType.hxx>
#include<GC_MakeTranslation.hxx>
#include<GCE2d_MakeHyperbola.hxx>
#include<GC_MakePlane.hxx>
#include<GCPnts_UniformDeflection.hxx>
#include<GCE2d_MakeArcOfCircle.hxx>
#include<GCE2d_Root.hxx>
#include<GCE2d_MakeTranslation.hxx>
#include<GC_MakeCylindricalSurface.hxx>
#include<GC_MakeHyperbola.hxx>
#include<GC_Root.hxx>
#include<GC_MakeArcOfEllipse.hxx>
#include<GC_MakeEllipse.hxx>
#include<GC_MakeRotation.hxx>
#include<GC_MakeArcOfHyperbola.hxx>
#include<GC_MakeCircle.hxx>
#include<GCPnts_AbscissaPoint.hxx>
#include<GCPnts_UniformAbscissa.hxx>
#include<GC_MakeTrimmedCone.hxx>
#include<GC_MakeArcOfCircle.hxx>
#include<GCE2d_MakeArcOfParabola.hxx>
#include<GCE2d_MakeScale.hxx>
#include<GC_MakeLine.hxx>
#include<GCE2d_MakeParabola.hxx>
#include<GCPnts_AbscissaType.hxx>
#include<GCPnts_QuasiUniformAbscissa.hxx>
#include<GCE2d_MakeRotation.hxx>
#include<GC_MakeSegment.hxx>
#include<GCE2d_MakeLine.hxx>
#include<GCE2d_MakeArcOfHyperbola.hxx>
#include<GC_MakeArcOfParabola.hxx>
#include<GC_MakeMirror.hxx>
#include<GCE2d_MakeMirror.hxx>
#include<GCE2d_MakeEllipse.hxx>
#include<GCE2d_MakeSegment.hxx>
#include<GCE2d_MakeArcOfEllipse.hxx>
#include<GC_MakeScale.hxx>
#include<GCPnts_QuasiUniformDeflection.hxx>
#include<GCPnts_TangentialDeflection.hxx>

// Needed headers necessary for compilation.

#include<gp_Elips.hxx>
#include<gp_Ax2.hxx>
#include<gp_Pnt.hxx>
#include<gp_Cone.hxx>
#include<gp_Ax1.hxx>
#include<gp_Lin.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Circ.hxx>
#include<gp_Vec.hxx>
#include<gp_Hypr.hxx>
#include<gp_Dir.hxx>
#include<gp_Pln.hxx>
#include<gp_Parab.hxx>
%}
