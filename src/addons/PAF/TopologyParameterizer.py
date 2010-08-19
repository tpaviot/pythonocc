##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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

""" This module enable the parameterization of basic topologies: vertices, edges, faces. This module
uses the Topology module and aims at being able to transfer dumb OCC topology to smart PAF topology.
"""

from OCC.TopoDS import *
from OCC.BRep import *
from OCC.Utils.Topology import *
from OCC.gp import *

def vertex_to_paf(parameters,vertex):
    ''' Transfer a vertex to a point in a ParametricModelingContext
    
    @param parameters: the set of parameters in which the vertex has to be transfered
    @param vertex: the vertex to transfer to PAF
    
    @type parameters: Parameters
    @type vertex: TopoDS_Vertex
    
    @return: the created point
    '''
    # Retreive the coordinates for this vertex
    pnt = BRep_Tool().Pnt(vertex)
    (x,y,z) = pnt.Coord()
    # Create 3 parameters. The name of each parameter is set up according to the pnt id in order
    # to be *sure* (is it the case with the id function?) to have unique identifiers for parameters
    # For instance, passing a vertex to this function will result in the creation of 3 parameters:
    # x_4500056400
    # y_4500056400
    # z_4500056400
    # The created point name is:
    # pnt_4500056400
    pnt_id = '%s'%id(pnt)
    x_name = 'x_'+pnt_id
    y_name = 'y_'+pnt_id
    z_name = 'z_'+pnt_id
    # Create the 3 parameters
    setattr(parameters,x_name,x)
    setattr(parameters,y_name,y)
    setattr(parameters,z_name,z)
    # create the GEOM object
    paf_pnt = parameters.context.basic_operations.MakePointXYZ(getattr(parameters,x_name),
                                                    getattr(parameters,y_name),
                                                    getattr(parameters,z_name),
                                                    name='pnt_'+pnt_id,
                                                    show=True)
    return paf_pnt

def edge_to_paf(parameters, edge):
    ''' Move the given edge to the PAF
    '''
    # NOTE: the edge has to be a line otherwise it fails !!!
    # First get vertices and create points
    t = Topo(edge)
    vertices = t.vertices_from_edge(edge)
    paf_points_from_edge = []
    for vertex in vertices:
        # Create the points
        paf_points_from_edge.append(vertex_to_paf(parameters,vertex))
        # TODO: algorithm is not good. One should move only vertices that ware not already moved.
    # Then create a line between these two vertices
    paf_line = parameters.context.basic_operations.MakeLineTwoPnt(paf_points_from_edge[0],
                                                                paf_points_from_edge[1],
                                                                name = '',
                                                                show = True)
    return paf_line
 
if __name__=='__main__':
    from OCC.PAF.Context import ParametricModelingContext
    from OCC.PAF.Parametric import Parameters
    p = Parameters()            # Create a parameters set
    my_context = ParametricModelingContext(p)     # Create and initialize a parametric context
    # Create a box
    from OCC.BRepPrimAPI import BRepPrimAPI_MakeBox
    shape = BRepPrimAPI_MakeBox(10,20,30).Shape()
    # Move each vertex to the PAF
    t = Topo(shape)
    for vertex in t.vertices():
        vertex_to_paf(p,vertex)
    # Move each edge to the PAF. Uncomment the 2 lines below and you will see a parameterized box (only vertices
    # and edges)
    for edge in t.edges():
        edge_to_paf(p,edge)
    
    # Display
    from OCC.Display.SimpleGui import init_display
    display, start_display, add_menu, add_function_to_menu = init_display()
    my_context.set_display(display)
    start_display()
    
