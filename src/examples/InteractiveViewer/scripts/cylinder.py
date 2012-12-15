#!/usr/bin/env python

##Copyright 2008 Thomas Paviot
##
##thomas.paviot@supmeca.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
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

import os
import math
from OCC import BRepPrimAPI
#
# Make the 1st cylinder
#
cyl1 = BRepPrimAPI.BRepPrimAPI_MakeCylinder(50,200)
cyl1_shape = cyl1.Shape()
#
# Make the 2nd cylinder
#
cyl2 = BRepPrimAPI.BRepPrimAPI_MakeCylinder(OCC.gp_Ax2(OCC.gp_Pnt(200,200,0),OCC.gp_Dir(0,0,1)),40,110,210*math.pi/180)
cyl2_shape = cyl2.Shape()
#
# Export result to IGES file
#
i = OCC.IGESControl_Controller()
i.Init()
iges_writer = OCC.IGESControl_Writer()
iges_writer.AddShape(cyl1_shape)
iges_writer.AddShape(cyl2_shape)
iges_writer.Write("./cylinder.iges")

