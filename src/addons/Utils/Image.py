#!/usr/bin/env python

##Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

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
        self._filename = filename
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
