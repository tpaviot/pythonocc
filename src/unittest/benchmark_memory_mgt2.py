from OCC.Standard import *
from OCC.gp import *
from OCC.BRepPrimAPI import *
import time
from random import randint
from OCC.TColStd import *


#
# Check memory leaks
#
init_time = time.time()
init_mem = GarbageCollector.mem()
for j in range(100):
    #print j
    # allocate random of gp_Pnt
    n=randint(1,10000)
    # creat n points
    for i in range(n):
        #Standard_Transient().GetHandle()
        gp_Pnt(1,0,0) #is misc
        BRepPrimAPI_MakeBox(n,n,n) #is misc
        # allocate through handles
        TColStd_HArray1OfReal(1,n)
    final_mem = GarbageCollector.mem()
    #print "Memory consumed before purge:%f"%(final_mem-init_mem)
    print(len(GarbageCollector.garbage._transients))
    GarbageCollector.garbage.smart_purge()
    final_mem = GarbageCollector.mem()
    print("%i"%(final_mem-init_mem))
final_time = time.time()
print(final_time-init_time)
