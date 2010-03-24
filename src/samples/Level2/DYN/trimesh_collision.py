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
from OCC.Utils.Construct import translate_topods_from_vector
from OCC.DYN.Context import DynamicSimulationContext, DynamicShape
from OCC.TopoDS import *
from OCC.BRep import *
from OCC.BRepTools import *
import ode

from OCC.Display.SimpleGui import *
display, start_display, add_menu, add_function_to_menu = init_display()
    
        
def falling_torus(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # test the post_register_callback feature
    def f():
        print 'Wooooooooooo'
    dyn_context.register_post_step_callback(f)
    # The torus
    s1 = BRepPrimAPI_MakeTorus(15,5).Shape()
    d = dyn_context.add_shape(s1,enable_collision_detection=True,use_trimesh=True)
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    # The plane (note: this plane is not a dynamic shape, it's just displayed)
    P1 = gp_Pnt(0,0,-100)
    V1 = gp_Vec(0,0,1)
    PL = gp_Pln(P1,gp_Dir(V1))                     
    aPlane = GC_MakePlane(PL).Value()
    aSurface = Geom_RectangularTrimmedSurface( aPlane, - 100., 100., - 60., 60., 1, 1 )
    face = BRepBuilderAPI_MakeFace(aSurface.GetHandle())
    face.Build()
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    display.DisplayColoredShape(face.Shape(),'RED')
    display.FitAll()
    #Starts the simulation
    dyn_context.set_simulation_duration(20) #1s forthe simulation
    dyn_context.set_time_step(0.01)
    dyn_context.start_open_loop()

def falling_torus_torus(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The torus
    s1 = BRepPrimAPI_MakeTorus(15,5).Shape()
    d = dyn_context.add_shape(s1, enable_collision_detection=True,use_trimesh=True)
    # The box
    s2 = BRepPrimAPI_MakeTorus(10,6).Shape()
    t2 = gp_Trsf()
    t2.SetTranslation(gp_Vec(0, 0, 100))
    transformed_shape_2 = BRepBuilderAPI_Transform(s2,t2).Shape()
    d2 = dyn_context.add_shape(transformed_shape_2,enable_collision_detection=True,use_trimesh=True)

    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    # The plane (note: this plane is not a dynamic shape, it's just displayed)
    P1 = gp_Pnt(0,0,-100)
    V1 = gp_Vec(0,0,1)
    PL = gp_Pln(P1,gp_Dir(V1))                     
    aPlane = GC_MakePlane(PL).Value()
    aSurface = Geom_RectangularTrimmedSurface( aPlane, - 100., 100., - 60., 60., 1, 1 )
    face = BRepBuilderAPI_MakeFace(aSurface.GetHandle())
    face.Build()
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    display.DisplayColoredShape(face.Shape(),'RED')
    display.FitAll()
    #Starts the simulation
    dyn_context.set_simulation_duration(20) #1s forthe simulation
    dyn_context.set_time_step(0.01)
    dyn_context.start_open_loop()
    
def falling_pump(event=None):
    def load_brep(filename):
    # Load the shape from a file
    #file_to_load = '../../data/BREP/13_bottom.brep'
        aShape = TopoDS_Shape()
        builder = BRep_Builder()
        BRepTools().Read(aShape,str(filename),builder)
        return aShape
 
    # Just a copy/paste of the torus code
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    
    s1 = load_brep('../../data/BREP/40_pump_body.brep')
    d = dyn_context.add_shape(s1,enable_collision_detection=True,use_trimesh=True)
 
    # The plane (note: this plane is not a dynamic shape, it's just displayed)
    P1 = gp_Pnt(0,0,-1000)
    V1 = gp_Vec(0,0,1)
    PL = gp_Pln(P1,gp_Dir(V1))                     
    aPlane = GC_MakePlane(PL).Value()
    aSurface = Geom_RectangularTrimmedSurface( aPlane, - 1000., 1000., - 600., 600., 1, 1 )
    face = BRepBuilderAPI_MakeFace(aSurface.GetHandle())
    face.Build()
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -1000)
    display.DisplayColoredShape(face.Shape(),'RED')
    display.FitAll()
    #Starts the simulation
    dyn_context.set_simulation_duration(30) #1s forthe simulation
    dyn_context.set_time_step(0.02)
    dyn_context.start_open_loop()

def exit(event=None):
    import sys
    sys.exit(0)

if __name__=='__main__':
    add_menu('trimesh collision demo')
    add_function_to_menu('trimesh collision demo', falling_torus)
    add_function_to_menu('trimesh collision demo', falling_torus_torus)
    add_function_to_menu('trimesh collision demo', falling_pump)
    add_function_to_menu('trimesh collision demo', exit)
    start_display()