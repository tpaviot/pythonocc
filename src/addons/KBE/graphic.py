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


class Graphic(object):
    """abstract class for HL API that deals with graphics"""

    def __init__(self, x):
        """Constructor for Graphic"""
        self.x = x


class GraphicCurve(object):
    '''
    '''
    def __init__(self, display):
        '''

        @param display: set the wxViewer.display object
        '''
        self.display = display


class GraphicSurface(Graphic):
    '''
    the purpose of this class is to allow to set the
    graphic properties for ``self.instance``
    so, whether ``self.instance`` is a TopoDS_Solid, Edge, Wire,
    Compound or Solid, this class will provide
    a declarative interface for setting the properties
    '''
    def __init__(self, instance):
        self.instance = instance

    def color_solids(self, *color):
        '''the color of self
        if color is a single triple, that value will be used for all faces
        '''
        raise NotImplementedError

    def color_faces(self, *color):
        '''the color of self
        if color is a single triple, that value will be used for all faces
        '''
        raise NotImplementedError

    def color_edges(self, *color):
        '''the color of all the edges on self
        if color is a single triple, that value will be used for all edges
        '''
        raise NotImplementedError

    def color_vertices(self, *color):
        '''the color of all the vertices on self
        if color is a single triple, that value will be used for all vertices
        '''
        raise NotImplementedError

    def color(self, indx=None):
        '''sets or gets the color of all the faces of self
        '''
        raise NotImplementedError
