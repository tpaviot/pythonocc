##Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)
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
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

''' Mesh Visualization
'''

from OCC.MeshVS import *
from OCC.SMESH import *
from OCC.Quantity import *

class MeshVisualization(object):
    ''' Mesh Visualization
    '''
    def __init__(self,mesh):
        self._mesh = mesh
    
    def set_display(self,display):
        self._display = display
        self._data_source = None
    
    def build_data_source(self):
        ''' compute data source from the mesh
        '''
        aDS = SMESH_MeshVSLink(self._mesh)
        self._data_source = aDS.GetHandle()

    def perform(self):
        if self._data_source is None:
            self.build_data_source()
        aMeshVS = MeshVS_Mesh(True)
        DMF = 1 # to wrap!
        MeshVS_BP_Mesh       =  5 # To wrap!
        aPrsBuilder = MeshVS_MeshPrsBuilder(aMeshVS.GetHandle(),DMF,self._data_source,0,MeshVS_BP_Mesh)
        aMeshVS.SetDataSource(self._data_source)
        aMeshVS.AddBuilder(aPrsBuilder.GetHandle(),True)
        #Create the graphic window and display the mesh
        context = self._display.Context
        mesh_to_display = aMeshVS.GetHandle()
        # display the mesh edges in black
        mesh_drawer = aMeshVS.GetDrawer().GetObject()
        
        # Edges in black
        mesh_drawer.SetColor(3,Quantity_Color(Quantity_NOC_BLACK))# 3 means Edge color
        # Markers in green
        mesh_drawer.SetColor(13,Quantity_Color(Quantity_NOC_GREEN))
        #context.SetColor(mesh_to_display,Quantity_NOC_BLACK,0)
        context.Display(mesh_to_display)
        self._display.FitAll()
        #context.Deactivate(aMeshVS.GetHandle())
        
