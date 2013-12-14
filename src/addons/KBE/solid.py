##Copyright 2008-2013 Jelle Feringa (jelleferinga@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>

from OCC.TopoDS import TopoDS_Solid
from OCC.Utils.Topology import Topo

from base import GlobalProperties, KbeObject
from shell import Shell


class Solid(KbeObject, TopoDS_Solid):

    """high level Solid Api"""
    def __init__(self, solid):
        KbeObject.__init__(name='solid')
        TopoDS_Solid.__init__(self, solid)
        self.GlobalProperties = GlobalProperties(self)

    #=======================================================================
    #    Solid.boolean
    #=======================================================================
    def add(self, other_solid):
        '''adds another_solid to self
        '''
        raise NotImplementedError

    def cut(self, other_solid):
        '''cuts other_solid from self
        '''
        raise NotImplementedError

    def intersect(self, other_solid):
        '''common space of self and other_solid
        '''
        raise NotImplementedError

    def shells(self):
        return (Shell(sh) for sh in Topo(self))
#===========================================================================
#    Solid.graphic
#===========================================================================

    @property
    def color(self, color):
        '''color all the faces
        '''
    raise NotImplementedError

    @property
    def tesselation(self, angle):
        '''descriptor of the parameter controlling the precision of the
        tesselation
        '''
        raise NotImplementedError
