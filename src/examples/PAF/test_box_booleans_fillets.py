from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters
from OCC.PAF.TopologyParameterizer import geomobject_from_topods
from OCC.Display.SimpleGui import init_display
from OCC.Utils.Construct import *
from OCC.Utils.Common import *

display, start_display, add_menu, add_function_to_menu = init_display()

p = Parameters()                          # Create a parameters set
# Create and initialize a parametric context
# not committing changes ( Undo stack ), nor registering all *_operations
# this speeds things up considerably
my_context = ParametricModelingContext(p, commit=False, register_all_operations=False)
my_context.set_display(display)                 # start the graphic display


# we need to register the operations that are used
# for concerns of performance, _only_ operations that are registered
# are associative
my_context.register_operations(my_context.basic_operations,
                               my_context.boolean_operations,
                               my_context.local_operations
)
# Create parameters
p.X1, p.Y1, p.Z1 = 0,0,0
p.X2, p.Y2, p.Z2 = 30,30,30

p.X3, p.Y3, p.Z3 = 10,10,-10
p.X4, p.Y4, p.Z4 = 20,20,40

p.RADIUS         = 1

# points box 1
my_pnt1 = my_context.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1")   # Create the first point box1
my_pnt2 = my_context.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2")   # Create the second point box1

# points box 2
my_pnt3 = my_context.basic_operations.MakePointXYZ(p.X3,p.Y3,p.Z3, name="Pnt3")   # Create the first point box2
my_pnt4 = my_context.basic_operations.MakePointXYZ(p.X4,p.Y4,p.Z4, name="Pnt4")   # Create the second point box2

# create boxes
box1 = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=False)            # Create the box
box2 = my_context.prim_operations.MakeBoxTwoPnt(my_pnt3,my_pnt4,name="Box2", show=False)            # Create the box

# boolean subtract box2 from box1
booled_box = my_context.boolean_operations.MakeBoolean( box1, box2, 2, name='BooleanBox', show=False)

# add fillets to the booleaned box
fillet_box = my_context.local_operations.MakeFilletAll( booled_box, p.RADIUS, name='FilletBox', show=True)

li1 = make_line(gp_Pnt(-10,0,0), gp_Pnt(10,0,0))
li2 = make_line(gp_Pnt(0,-10,0), gp_Pnt(0,10,0))
li1_geom = geomobject_from_topods(my_context, li1)
li2_geom = geomobject_from_topods(my_context, li2)

yy1 = TColStd_HSequenceOfTransient()
yy2 = TColStd_HSequenceOfTransient()
yy1.Append(li1_geom.GetHandle())
yy2.Append(li2_geom.GetHandle())

my_context.boolean_operations.MakeBoolean(li1_geom.GetHandle(),li2_geom.GetHandle(),3, show=True)
pres1, pres2, pres_fillet = my_context.get_presentation(box1), my_context.get_presentation(box2), my_context.get_presentation(fillet_box)
pres1.SetTransparency(.8); pres1.SetColor(12)
pres2.SetTransparency(.8); pres1.SetColor(12)
pres_fillet.SetColor(1)

start_display()
