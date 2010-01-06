from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters

p = Parameters()            # Create a parameters set
my_context = ParametricModelingContext(p)     # Create and initialize a parametric context
my_context.init_display()   # start display#
my_context.register_operations(my_context.prim_operations)

p.X1, p.Y1, p.Z1, p.X2, p.Y2, p.Z2, p.RADIUS = 12,70,12,30,30,30,4                                   # Create 7 parameters

my_pnt1 = my_context.basic_operations.MakePointXYZ(p.X1,p.Y1,p.Z1, name="Pnt1", show=True)   # Create the first point
my_pnt2 = my_context.basic_operations.MakePointXYZ(p.X2,p.Y2,p.Z2, name="Pnt2", show=True)   # Create the second point
my_box = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=True)            # Create the box

for i in range(14,100):
    print 'changed parameter p.Z2 from %s to %s' % ( i-1, i ) 
    p.Z2 = i

my_context.start_display()
