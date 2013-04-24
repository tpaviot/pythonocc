#!/usr/bin/env python

##Copyright 2010 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.BRepPrimAPI import *
from OCC.GC import *
from OCC.Geom import *
from OCC.gp import *
from OCC.BRepBuilderAPI import *
from OCC.Utils.Image import Texture
from OCC.Graphic3d import *
from OCC.Utils.Construct import *
from OCC.DYN.Context import DynamicSimulationContext, DynamicShape
from OCC.DYN.Joints import DynamicBallJoint, DynamicHingeJoint
import ode

from OCC.Display.SimpleGui import *
from OCC.Utils.Construct import translate_topods_from_vector, make_plane, make_face
from OCC.DYN.Joints import DynamicSliderJoint

display, start_display, add_menu, add_function_to_menu = init_display()

def rotating_box(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    # Create s shape and add it to the dynamic context
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = dyn_context.register_shape(s1)
    #d.enable_view_cog()
    d.setAngularVel([-1,0,0])
    dyn_context.register_post_step_callback(safe_yield)
    dyn_context.start_open_loop()
    dyn_context.clear()

#def display_cog_trajectory(event=None):
#    ''' Falling rotating box with display of COG
#    '''
#    display.EraseAll()
#    dyn_context = DynamicSimulationContext()
#    dyn_context.set_display(display, safe_yield)
#    dyn_context.enable_gravity()
#    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
#    d = dyn_context.register_shape(s1)
#    d.enable_view_cog()
#    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
#    dyn_context.start_open_loop()
        
def box_plane_collision(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The box
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = dyn_context.register_shape(s1,enable_collision_detection=True,use_boundingbox=True)
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    # The plane (note: this plane is not a dynamic shape, it's just displayed)
    P1 = gp_Pnt(0,0,-100)
    V1 = gp_Vec(0,0,1)
    face = make_plane(P1, V1, -100., 100., -60., 60)
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    display.DisplayColoredShape(face,'RED')
    display.FitAll()
    #Starts the simulation
    dyn_context.set_animation_frame_rate(60)
    dyn_context.start_open_loop()

def two_boxes_sphere_plane_collision(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The first box
    s1 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    d = dyn_context.register_shape(s1,enable_collision_detection=True,use_boundingbox=True)
    d.setAngularVel([-1,-0.5,0.3]) # the box is rotating
    # The second box
    box2 = BRepPrimAPI_MakeBox(10,20,30).Shape()
    box2 = translate_topods_from_vector(box2, gp_Vec(5, 5, 100))
    d2 = dyn_context.register_shape(box2,enable_collision_detection=True,use_boundingbox=True)
    # The sphere
    sphere = BRepPrimAPI_MakeSphere(10).Shape()
    sphere = translate_topods_from_vector(sphere, gp_Vec(0,0,250))
    d3 = dyn_context.register_shape(sphere,enable_collision_detection=True,use_sphere=True)
    # Draw a plane (note: this plane is not a dynamic shape, it's just displayed)
    face = make_plane( gp_Pnt(0,0,-100), gp_Vec(0,0,1), -100., 100., -100., 100.)
    display.DisplayColoredShape(face,'RED')
    display.FitAll()
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
    #Starts the simulation
    #raw_input('Hit a key when ready to start simulation')
    dyn_context.set_simulation_duration(10.)
    dyn_context.set_animation_frame_rate(60)
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
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # Create the floor The floor is not visible
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), -h_table)
    # create the table
    table_shape = BRepPrimAPI_MakeBox(l_table,w_table,h_table).Shape()
    # move the table down
    # the table rests on the `floor`
    #table_shape = translate_topods_from_vector(table_shape, gp_Vec(-l_table/2, -l_table/2, -h_table))
    table_shape = translate_topods_from_vector(table_shape, gp_Vec(-l_table/2, -l_table/2, -h_table))
    dynamic_table = dyn_context.register_shape(table_shape,enable_collision_detection=True,use_boundingbox=True)
    dynamic_table.set_fixed()
    # Create a 'ground'
    P1 = gp_Pnt(0,0,-h_table)
    V1 = gp_Vec(0,0,1)
    face = make_plane(P1, V1,-150., 150., -100., 100.,)
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
    dynamic_domino = dyn_context.register_shape(domino_shape,enable_collision_detection=True,use_boundingbox=True)
    # create a list of domino_boxes
    for _ in range(3):
        transformed_shape = translate_topods_from_vector(domino_shape, v, copy=True)
        dynamic_transformed = dyn_context.register_shape(transformed_shape,enable_collision_detection=True,use_boundingbox=True)
    # The last domino is rotating around the y-axis (he's falling)
    dynamic_transformed.setAngularVel([0,0,0])
    # Finally, start simulation loop
    dyn_context.set_simulation_duration(5)
    dyn_context.set_time_step(0.001)
    dyn_context.set_animation_frame_rate(60)
    #dyn_context.set
    dyn_context.start_open_loop()

def collisions(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The plane (note: this plane is not a dynamic shape, it's just displayed)
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    references=[] #a list that stores ode instances before they are removed from memory
    
    def floor():
        P1 = gp_Pnt(0,0,-100)
        V1 = gp_Vec(0,0,1)
        PL = gp_Pln(P1,gp_Dir(V1))                     
        aPlane = GC_MakePlane(PL).Value()
        aSurface = Geom_RectangularTrimmedSurface( aPlane, -100., 100., -60., 60., 1, 1 )
        face = make_face(aSurface.GetHandle(), 1e-6)
        floor = ode.GeomPlane(dyn_context._space, (0,0,1), -100)
        references.append(floor)
        display.DisplayColoredShape(face,'RED')
        display.FitAll()
    
    floor()
    
    def add_box(i):
        import random
        i = i+1
        print "i:",i
        # Create a shape of random dimension
        rndX,rndY = random.uniform(-5,5), random.uniform(-5,5)
        _x,_y,_z = 5+rndX, 10+rndY, 20
        new_box = BRepPrimAPI_MakeBox(_x,_y,_z).Shape()
        new_box_translated = translate_topods_from_vector(new_box, gp_Vec(0,0,i*40), False)
        d = dyn_context.register_shape(new_box_translated,enable_collision_detection=True,use_boundingbox=True)
        geom_box = ode.GeomBox(dyn_context._space, lengths=(_x,_y,_z))
        geom_box.setBody(d)
        references.append(geom_box)
    
    for i in range(60):
        add_box(i)
   # add_additional(90)
    dyn_context.setERP(0.5) # 0.2 default
    dyn_context.setCFM(1e-10) # 1e-10 default
    dyn_context.set_simulation_duration(25.)
    dyn_context.set_time_step(0.001)
    dyn_context.set_animation_frame_rate(60)
    dyn_context.start_open_loop()


def pillars(event=None):
    display.EraseAll()
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # The plane (note: this plane is not a dynamic shape, it's just displayed)
    # Then create a geom for this plane
    # Create a plane geom which prevent the objects from falling forever
    references=[] #a list that stores ode instances before they are removed from memory

    def floor():
        Z = -100
        P1 = gp_Pnt(0,0,Z)
        V1 = gp_Vec(0,0,1)
        PL = gp_Pln(P1,gp_Dir(V1))
        aPlane = GC_MakePlane(PL).Value()
        aSurface = Geom_RectangularTrimmedSurface( aPlane, -10., 10., -6., 6., 1, 1 )
        face = BRepBuilderAPI_MakeFace(aSurface.GetHandle())
        face.Build()
        floor = ode.GeomPlane(dyn_context._space, (0,0,1), Z)
        references.append(floor)
        display.DisplayColoredShape(face.Shape(),'RED')
        display.FitAll()

    floor()

    class Pilars(object):
        def __init__(self, nx,ny,nz,\
                            dx,dy,dz,\
                             spacex,spacey,spacez
                                                ):
            self.n=0
            # number of grid
            self.nx=nx
            self.ny=ny
            self.nz=nz
            # distance between grid members
            self.dx=dx
            self.dy=dy
            self.dz=dz
            # space between grid members
            self.spacex=spacex
            self.spacey=spacey
            self.spacez=spacez
            # current z level in grid
            self.level = 0
            self.iX, self.iY, self.iZ = 0,0,0

        def add_boxes(self):
            for i in range(self.nx):
                self.iX +=1
                for j in range(self.ny):
                    self.iY +=1
                    for k in range(self.nz):
                        self.n +=1
                        if (self.iX*self.iY) % (self.nx-1*self.ny-1) == 0:
                            self.level += 1
                            self.iX, self.iY = 0,0

                        new_box = BRepPrimAPI_MakeBox(self.dx,self.dy,self.dz).Shape()
                        _x = self.dx*i + self.spacex*i
                        _y = self.dy*j + self.spacey*j
                        _z = ( self.dz*k + self.spacez*k ) 
                        print '_x,_y,_z',_x,_y,_z
                        v = gp_Vec(_x,_y,_z)
                        new_box_translated = translate_topods_from_vector(new_box, v, False)
                        d = dyn_context.register_shape(new_box_translated,enable_collision_detection=True,use_boundingbox=True)

    p = Pilars(6,6,6,\
                 1,1,3,\
                    0.1,0.1,0.1)
                    #1,1,1)
    p.add_boxes()

    dyn_context.setERP(0.5) # 0.2 default
    dyn_context.setCFM(1e-10) # 1e-10 default
    dyn_context.set_simulation_duration(20.)
    dyn_context.set_time_step(0.001)
    dyn_context.set_animation_frame_rate(24)
    dyn_context.start_open_loop(False)

def hinge(event=None):
    '''
    hinge joint example adapted from pyode
    http://pyode.sourceforge.net/tutorials/tutorial2.html
    
    '''
    from OCC.Utils.Common import center_boundingbox
    
    display.EraseAll()
    # Create the dynamic context
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # create the table
    block1 = BRepPrimAPI_MakeBox(4,1,1).Shape()

    N = 36*3

    dyn_shapes = []
    for i in range(1,N):
        table_shape = translate_topods_from_vector(block1, gp_Vec(0,0,2*(i*0.5)), copy=True)
        dyn_shape = dyn_context.register_shape(table_shape, enable_collision_detection=True, use_boundingbox=True)
        dyn_shapes.append((dyn_shape,table_shape))

    dyn_shapes = iter(dyn_shapes)
    prev, table_shape = dyn_shapes.next()
    # safe for future reference
    first, cube = prev, table_shape
    prev_center = center_boundingbox(table_shape)
    for i,xxx in enumerate(dyn_shapes):
        dyn_shape, table_shape = xxx
        bj = DynamicBallJoint(dyn_context)
        center = center_boundingbox(table_shape)
        bj.attach_shapes(prev, dyn_shape)
        if i%2 == 0:
            bj.set_anchor( (prev_center.as_vec() - gp_Vec(2,0,0.5)).as_pnt() )
        else:
            bj.set_anchor( (prev_center.as_vec() - gp_Vec(-2,0,0.5)).as_pnt() )
        dyn_context.register_joint(bj)
        prev=dyn_shape
        prev_center = center

    # get the 1st block, the one one the ground...
    xmin, ymin, zmin, xmax, ymax, zmax = get_boundingbox(cube)
    # set the lower block in motion
    vec1 = (12, 88, 0)
    first.setLinearVel(vec1)
    # change the color of the bottom element a little...
    ais = first.get_ais_shape().GetObject()
    from OCC.Graphic3d import Graphic3d_NOM_SILVER
    ais.SetMaterial(Graphic3d_NOM_SILVER)

    # lock the upper block
    #bj.attach_shapes(dyn_shape, ode.environment)
    vec2 = (-12, -88, 0)
    dyn_shape.setLinearVel(vec2)
    ais = dyn_shape.get_ais_shape().GetObject()
    ais.SetMaterial(Graphic3d_NOM_SILVER)
    # create a floor...
    floor = ode.GeomPlane(dyn_context._space, (0,0,1), zmin)
    def f():
        XXX = 0.15 * N
        first.setLinearVel((0, XXX,0))
        dyn_shape.setLinearVel((0,-XXX,0))

    dyn_context.mu = 500
    dyn_context.setERP(0.8) # 0.2 default
    dyn_context.setCFM(1e-12) # 1e-10 default
    dyn_context.set_simulation_duration(1200.)
    dyn_context.set_animation_frame_rate(60)
    dyn_context.set_time_step(0.01)
    dyn_context.register_post_step_callback(f)
    dyn_context.start_open_loop(True)

def adhesion(event=None):
    '''
    hinge joint example adapted from pyode
    http://pyode.sourceforge.net/tutorials/tutorial2.html

    '''
    from OCC.Utils.Common import center_boundingbox

    display.EraseAll()
    # Create the dynamic context
    dyn_context = DynamicSimulationContext()
    dyn_context.set_display(display, safe_yield)
    dyn_context.enable_collision_detection()
    dyn_context.enable_gravity()
    # create the table
    block1 = BRepPrimAPI_MakeBox(4,1,1).Shape()

    N = 12

    dyn_shapes = []
    for i in range(1,N):
        table_shape = translate_topods_from_vector(block1, gp_Vec(0,0,2*(i*0.5)), copy=True)
        dyn_shape = dyn_context.register_shape(table_shape, enable_collision_detection=True, use_boundingbox=True)
        dyn_shapes.append((dyn_shape,table_shape))

    _dyn_shapes = iter(dyn_shapes)
    prev, table_shape = _dyn_shapes.next()
    # safe for future reference
    first, cube = prev, table_shape
    prev_center = center_boundingbox(table_shape)

    slider_vec = gp_Dir(1,1,0)

    for i,xxx in enumerate(_dyn_shapes):
        dyn_shape, table_shape = xxx
        bj = DynamicSliderJoint(dyn_context)
        bj.set_axis(slider_vec)
        center = center_boundingbox(table_shape)
        if i == 0:
            bj.attach_shapes(prev, ode.environment)
            first_joint = bj
        else:
            bj.attach_shapes(prev, dyn_shape)
        dyn_context.register_joint(bj)
        prev=dyn_shape
        prev_center = center

    # get the 1st block, the one one the ground...
    xmin, ymin, zmin, xmax, ymax, zmax = get_boundingbox(cube)
    # set the middle block in motion
    vec1 = (160, 66, 0)
    #vec1 = (1.20, 0.66, 0)
    middle, topods = dyn_shapes[N/2]

    middle.setLinearVel(vec1)
    #middle.setForce(vec1)

    # change the color of the bottom element a little...
    ais = middle.get_ais_shape().GetObject()
    from OCC.Graphic3d import Graphic3d_NOM_SILVER
    ais.SetMaterial(Graphic3d_NOM_SILVER)

    bj.attach_shapes( dyn_shape, ode.environment )
    first_joint.attach_shapes( first, ode.environment )

    floor = ode.GeomPlane(dyn_context._space, (0,0,1), zmin)

    dyn_context.mu = 0 # icey!!!
    dyn_context.setERP(0.1) # 0.2 default
    dyn_context.setCFM(1e-12) # 1e-10 default
    dyn_context.set_simulation_duration(1200)
    dyn_context.set_animation_frame_rate(40)
    dyn_context.set_time_step(0.01)
    dyn_context.start_open_loop(True)



def exit(event=None):
    sys.exit()  
    
if __name__=='__main__':
    add_menu('rigid body simulation sample')
    add_function_to_menu('rigid body simulation sample', rotating_box)
    add_function_to_menu('rigid body simulation sample', box_plane_collision)
    add_function_to_menu('rigid body simulation sample', two_boxes_sphere_plane_collision)
    add_function_to_menu('rigid body simulation sample', dominos)
    add_function_to_menu('rigid body simulation sample', collisions)
    add_function_to_menu('rigid body simulation sample', hinge)
    add_function_to_menu('rigid body simulation sample', adhesion)
    adhesion()
    start_display()
