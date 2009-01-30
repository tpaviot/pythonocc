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

#include<gce_ErrorType.hxx>
#include<gce_MakeCirc.hxx>
#include<gce_MakeCirc2d.hxx>
#include<gce_MakeCone.hxx>
#include<gce_MakeCylinder.hxx>
#include<gce_MakeDir.hxx>
#include<gce_MakeDir2d.hxx>
#include<gce_MakeElips.hxx>
#include<gce_MakeElips2d.hxx>
#include<gce_MakeHypr.hxx>
#include<gce_MakeHypr2d.hxx>
#include<gce_MakeLin.hxx>
#include<gce_MakeLin2d.hxx>
#include<gce_MakeMirror.hxx>
#include<gce_MakeMirror2d.hxx>
#include<gce_MakeParab.hxx>
#include<gce_MakeParab2d.hxx>
#include<gce_MakePln.hxx>
#include<gce_MakeRotation.hxx>
#include<gce_MakeRotation2d.hxx>
#include<gce_MakeScale.hxx>
#include<gce_MakeScale2d.hxx>
#include<gce_MakeTranslation.hxx>
#include<gce_MakeTranslation2d.hxx>
#include<gce_Root.hxx>

// Additional headers necessary for compilation.

#include<GCE2d_MakeArcOfCircle.hxx>
#include<GCE2d_MakeArcOfEllipse.hxx>
#include<GCE2d_MakeArcOfHyperbola.hxx>
#include<GCE2d_MakeArcOfParabola.hxx>
#include<GCE2d_MakeCircle.hxx>
#include<GCE2d_MakeEllipse.hxx>
#include<GCE2d_MakeHyperbola.hxx>
#include<GCE2d_MakeLine.hxx>
#include<GCE2d_MakeMirror.hxx>
#include<GCE2d_MakeParabola.hxx>
#include<GCE2d_MakeRotation.hxx>
#include<GCE2d_MakeScale.hxx>
#include<GCE2d_MakeSegment.hxx>
#include<GCE2d_MakeTranslation.hxx>
#include<GCE2d_Root.hxx>
#include<gce_ErrorType.hxx>
#include<gce_MakeCirc.hxx>
#include<gce_MakeCirc2d.hxx>
#include<gce_MakeCone.hxx>
#include<gce_MakeCylinder.hxx>
#include<gce_MakeDir.hxx>
#include<gce_MakeDir2d.hxx>
#include<gce_MakeElips.hxx>
#include<gce_MakeElips2d.hxx>
#include<gce_MakeHypr.hxx>
#include<gce_MakeHypr2d.hxx>
#include<gce_MakeLin.hxx>
#include<gce_MakeLin2d.hxx>
#include<gce_MakeMirror.hxx>
#include<gce_MakeMirror2d.hxx>
#include<gce_MakeParab.hxx>
#include<gce_MakeParab2d.hxx>
#include<gce_MakePln.hxx>
#include<gce_MakeRotation.hxx>
#include<gce_MakeRotation2d.hxx>
#include<gce_MakeScale.hxx>
#include<gce_MakeScale2d.hxx>
#include<gce_MakeTranslation.hxx>
#include<gce_MakeTranslation2d.hxx>
#include<gce_Root.hxx>

// Needed headers necessary for compilation.

#include<gp_Ax2d.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Ax1.hxx>
#include<gp_Pnt.hxx>
#include<gp_Dir.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Ax2.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Circ.hxx>
#include<gp_Pln.hxx>
#include<gp_Vec.hxx>
#include<gp_XYZ.hxx>
#include<gp_Vec2d.hxx>
#include<gp_XY.hxx>
#include<gp_Cone.hxx>
%}
