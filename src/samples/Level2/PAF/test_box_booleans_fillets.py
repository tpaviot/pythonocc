from OCC.PAF.Context import Context
from OCC.PAF.Parametric import Parameters

p = Parameters()            # Create a parameters set
my_context = Context(p)     # Create and initialize a parametric context
my_context.init_display()

# Create parameters
p.X1, p.Y1, p.Z1 = 0,0,0
p.X2, p.Y2, p.Z2 = 30,30,30

p.X3, p.Y3, p.Z3 = 10,10,-10
p.X4, p.Y4, p.Z4 = 20,20,40

p.RADIUS         = 3

# points box 1                              
my_pnt1 = my_context.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1")   # Create the first point box1
my_pnt2 = my_context.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2")   # Create the second point box1

# points box 2
my_pnt3 = my_context.basic_operations.MakePointXYZ(p.X3,p.Y3,p.Z3, name="Pnt3")   # Create the first point box2
my_pnt4 = my_context.basic_operations.MakePointXYZ(p.X4,p.Y4,p.Z4, name="Pnt4")   # Create the second point box2

# create boxes
box1 = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1")            # Create the box
box2 = my_context.prim_operations.MakeBoxTwoPnt(my_pnt3,my_pnt4,name="Box2")            # Create the box

# boolean subtract box2 from box1 
booled_box = my_context.boolean_operations.MakeBoolean( box1, box2, 2, name='BooleanBox')

# add fillets to the booleaned box
fillet_box = my_context.local_operations.MakeFilletAll( booled_box, p.RADIUS, name='FilletBox', show=True)

for i in range(14,40,5):
    print 'changed parameter p.Z2 from %s to %s' % ( i-1, i ) 
    p.Z2 = i
    p.RADIUS = i/10.

my_context.start_display()
