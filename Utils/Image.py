#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
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
import os.path

class Texture(object):
    """
    This class encapsulates the necessary texture properties:
    Filename, toScaleU, etc.
    """
    def __init__(self, filename):
        if not os.path.isfile(filename):
            raise "File doesn't exist"
        self._filename = os.path._getfullpathname(filename) #required for OCC
        self._toScaleU = 1.0
        self._toScaleV = 1.0
        self._toRepeatU = 1.0
        self._toRepeatV = 1.0
        self._originU = 0.0
        self._originV = 0.0
        
    def TextureScale(self,toScaleU, toScaleV):
        self._toScaleU = toScaleU
        self._toScaleV = toScaleV
        
    def TextureRepeat(self,toRepeatU, toRepeatV):
        self._toRepeatU = toRepeatU
        self._toRepeatV = toRepeatV
        
    def TextureOrigin(self, originU, originV):
        self._originU = originU
        self._originV = originV
    
    def GetProperties(self):
        return (self._filename,\
                self._toScaleU,self._toScaleV,\
                self._toRepeatU, self._toRepeatV,\
                self._originU, self._originV)