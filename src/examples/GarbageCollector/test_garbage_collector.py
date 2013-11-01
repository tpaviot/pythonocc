import os
from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.TopExp import *
from OCC.TopAbs import TopAbs_FACE


def mem(size="rss"):
    """Generalization; memory sizes: rss, rsz, vsz."""
    return int(os.popen('ps -p %d -o %s | tail -1' %
                        (os.getpid(), size)).read())
 
def rss():
    """Return ps -o rss (resident) memory in kB."""
    return float(mem("rss"))/1024

def test1():
    ''' Traverse topology without any memory freed
    '''
    print 'Running test1...'
    w = 0.1
    fp1 = (0.,0.,0.)
    fp2 = (w,w,w)
    mkbox = BRepPrimAPI_MakeBox(gp_Pnt(fp1[0],fp1[1],fp1[2]),gp_Pnt(fp2[0],fp2[1],fp2[2]))
    s1 = mkbox.Shell()
    e = TopExp_Explorer()
    initial_memory = rss()
    for i in range(100000):
        e.Init(s1, TopAbs_FACE)
        while e.More():
            sh = e.Current()
            e.Next()
        if not (i % 10000):
            #print_consumed_memory()
            # Print memory consumed for a post processing
            mem ='%f'%(rss()-initial_memory)
            f = mem.replace('.',',')#for excel datasheet
            print f
    print 'test1 finished.'
            
 
def test2():
    print 'Running test2...'
    # First empty memory
    GarbageCollector.garbage.smart_purge()
    w = 0.1
    fp1 = (0.,0.,0.)
    fp2 = (w,w,w)
    mkbox = BRepPrimAPI_MakeBox(gp_Pnt(fp1[0],fp1[1],fp1[2]),gp_Pnt(fp2[0],fp2[1],fp2[2]))
    s1 = mkbox.Shell()
    e = TopExp_Explorer()
    initial_memory = rss()
    for i in range(100000):
        #print i
        e.Init(s1, TopAbs_FACE)
        while e.More():
            sh = e.Current()
            e.Next()
        if not (i % 10000):
            #print_consumed_memory()
            # Print memory consumed for a post processing
            mem ='%f'%(rss()-initial_memory)
            f = mem.replace('.',',')#for excel datasheet
            print f
            GarbageCollector.garbage.smart_purge()
    print 'test2 finished.'
    
test1()
test2()
            
