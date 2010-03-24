#!/usr/bin/env python

##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.BRepPrimAPI import *
from OCC.GC import *
from OCC.Geom import *
from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.Utils.Image import Texture
from OCC.Graphic3d import *

from OCC.DYN.Context import DynamicSimulationContext, DynamicShape
import ode

from OCC.Display.SimpleGui import *
from OCC.Utils.Construct import translate_topods_from_vector, make_face
display, start_display, add_menu, add_function_to_menu = init_display()
    
def rotating_box(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    # Create s shape and add it to the dynamic context
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = dyn_context.add_shape(s1)
    d.enable_view_cog()
    d.setAngularVel([-1,0,0])
    dyn_context.start_open_loop()


def display_cog_trajectory(event=None):
    ''' Falling rotating box with display of COG
    '''
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    dyn_context.enable_gravity()
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = dyn_context.add_shape(s1)
    d.enable_view_cog()
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    dyn_context.start_open_loop()
        
def box_plane_collision(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The box
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = dyn_context.add_shape(s1)
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    # The plane (note: this plane is not a dynamic shape, it's just displayed)
    P1 = gp_Pnt(0,0,-100)
    V1 = gp_Vec(0,0,1)
    PL = gp_Pln(P1,gp_Dir(V1))                     
    face = make_face(PL, -100., 100., -60., 60)
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    display.DisplayColoredShape(face,'RED')
    display.FitAll()
    #Starts the simulation
    dyn_context.start_open_loop()

def two_boxes_sphere_plane_collision(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The fist box
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = dyn_context.add_shape(s1)
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    # The second box
    box2 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    box2 = translate_topods_from_vector(box2, gp_Vec(5, 5, 100))
    d2 = dyn_context.add_shape(box2)
    # The sphere
    sphere = BRepPrimAPI_MakeSphere(10).Shape()
    sphere = translate_topods_from_vector(sphere, gp_Vec(0,0,250))
    d3 = dyn_context.add_shape(sphere)
    # Draw a plane (note: this plane is not a dynamic shape, it's just displayed)
    PL = gp_Pln(gp_Pnt(0,0,-100),gp_Dir(gp_Vec(0,0,1)))
    face = make_face(PL, -100., 100., -100., 100.)
    display.DisplayColoredShape(face,'RED')
    display.FitAll()
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    #Starts the simulation
    #raw_input('Hit a key when ready to start simulation')
    dyn_context.start_open_loop()

def dominos(event=None):
    ''' The well known domino demo. Dominos are placed on a marble table and
    start collapsing.
    '''
    display.EraseAll()
    l_table = 180.
    w_table = 180.
    h_table = 15.
    # Create the dynamic context
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # Create the floor The floor is not visible
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -h_table)
    # create the table
    table_shape = BRepPrimAPI_MakeBox(l_table,w_table,h_table).Shape()
    # move the table down
    #table_shape = translate_topods_from_vector(table_shape, gp_Vec(-l_table/2, -l_table/2, -h_table))
    table_shape = translate_topods_from_vector(table_shape, gp_Vec(-l_table/2, -l_table/2, -h_table))
    dynamic_table = dyn_context.add_shape(table_shape)
    dynamic_table.set_fixed()
    # Create a 'ground'
    P1 = gp_Pnt(0,0,-h_table)
    V1 = gp_Vec(0,0,1)
    PL = gp_Pln(P1,gp_Dir(V1))                     
    face = make_face(PL, -150., 150., -100., 100.,)
    display.DisplayColoredShape(face,color='RED')
    # wrap a texture on the plane
    texture_filename = os.path.join(os.path.split(os.path.abspath(__file__))[0], 'ground.bmp')
    t = Texture(texture_filename)
    m = Graphic3d_MaterialAspect(Graphic3d_NOM_ALUMINIUM)
    #s = BRepPrimAPI_MakeCylinder(60, 200)
    display.DisplayShape(table_shape,material=m,texture=t)
    #display.FitAll()
    # Create the first domino
    domino_shape = BRepPrimAPI_MakeBox(5,20,40).Shape()
    v = gp_Vec(19, 0, 0)
    domino_shape = translate_topods_from_vector(domino_shape, v)
    dynamic_domino = dyn_context.add_shape(domino_shape)
    # create a list of domino_boxes
    for _ in range(3):
        transformed_shape = translate_topods_from_vector(domino_shape, v, copy=True)
        dynamic_transformed = dyn_context.add_shape(transformed_shape)
    # The last domino is rotating around the y-axis (he's falling)
    dynamic_transformed.setAngularVel([0,-10,0])
    # Finlly, start simulation loop
    dyn_context.set_time_step(0.02)
    dyn_context.start_open_loop()
      
def exit(event=None):
    sys.exit()  
    
if __name__=='__main__':
    add_menu('rigid body simulation sample')
    add_function_to_menu('rigid body simulation sample', rotating_box)
    add_function_to_menu('rigid body simulation sample', box_plane_collision)
    add_function_to_menu('rigid body simulation sample', display_cog_trajectory)
    add_function_to_menu('rigid body simulation sample', two_boxes_sphere_plane_collision)
    add_function_to_menu('rigid body simulation sample', dominos)
    add_function_to_menu('rigid body simulation sample', exit)
    start_display()