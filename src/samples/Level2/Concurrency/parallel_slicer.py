from OCC.gp import *
from OCC.BRepPrimAPI import *
from OCC.BRepAlgoAPI import *
from OCC.TopOpeBRepTool import *
from OCC.BRepBuilderAPI import *
from OCC.Geom import *
from OCC.TopoDS import *

from OCC.Display.SimpleGui import display, start_display

import time, numpy, os, pickle, sys
if sys.version_info[:3] >= (2,6,0):
   import multiprocessing as processing
else:
   import processing

def get_brep():
    from OCC.Utils.DataExchange.utils import file_to_shape
    pth = os.path.split(os.path.abspath(__file__))[0]
    pth = os.path.abspath( os.path.join(pth, '../../../../data/_3dmodels/Pump_Bottom.brep') )
    return file_to_shape(pth)

def vectorized_slicer( li ):
    # Create Plane defined by a point and the perpendicular direction
    z_values, shape = li
    _slices = []
    for z in z_values:
        #print 'slicing index:', z, 'sliced by process:', os.getpid()
        plane = gp_Pln( gp_Pnt( 0., 0., z ), gp_Dir( 0., 0., 1. ) )
        face = BRepBuilderAPI_MakeFace( plane ).Shape()
        # Computes Shape/Plane intersection
        section = BRepAlgoAPI_Section( shape, face )
        section.Build()
        if section.IsDone():
            _slices.append( section.Shape() )
        else:
            pass
            #print 'damn it'
        section.Destroy()
        
    return _slices

from OCC.Utils.Common import get_boundingbox

def run( n_procs, compare_by_number_of_processors=False ):

    shape = get_brep()
    display.DisplayShape(shape)
    x_min, y_min, z_min, x_max, y_max, z_max = get_boundingbox(shape).Get() 
    z_delta = abs( z_min - z_max )

    # compute bounding box!
    init_time = time.time() # for total time computation
    

    def get_z_coords_for_n_procs(n_slices, n_procs):
        z_slices = numpy.arange( z_min, z_max, z_delta/n_slices )
        
        slices = []
        n = z_slices.shape[0] / n_procs
        
        _str_slices = []
        for i in range(1, n_procs+1):
            if i == 1:
                slices.append(z_slices[ :i*n ].tolist())
                _str_slices.append(':'+str(i*n)+' ')
            elif i == n_procs:
                # does a little extra work if the number of slices isnt divisible by n_procs
                slices.append(z_slices[ (i-1)*n: ].tolist())
                _str_slices.append(str((i-1)*n)+': ')
                print 'last slice',len(z_slices[ (i-1)*n: ])
            else:
                slices.append(z_slices[ (i-1)*n:i*n ].tolist())
                _str_slices.append(' %s:%s ' % ( (i-1)*n, i*n) )
        print 'the z-index array is sliced over %s processors like this: \n %s' % (  n_procs, _str_slices )
        print 'number of slices:', z_slices[-1]
        return slices

    def arguments(n_slices, n_procs):
        _tmp = []
        slices = get_z_coords_for_n_procs(n_slices, n_procs)
        for i in slices:
            _tmp.append([i, shape])
        return _tmp

    n_slice = 200

    if not compare_by_number_of_processors:
        _results = []
        P = processing.Pool( n_procs )
        _results = P.map(vectorized_slicer, arguments(n_slice, n_procs))

    else:
        arr = [[i, shape] for i in numpy.arange( z_min, z_max, z_delta/n_slice ).tolist()]
        for i in range(1,9):
            tA = time.time()
            _results = []
            if i == 1:
                _results = vectorized_slicer([numpy.arange( z_min, z_max, z_delta/n_slice ).tolist(), shape])
            else:
                P = processing.Pool( n_procs )
                _results = P.map(vectorized_slicer, arguments(n_slice, i))
            
            print 'slicing took %s seconds for %s processors ' % ( time.time()-tA, i)
        sys.exit()
    
    print '\n\n\n DONE SLICING ON %i CORES \n\n\n'%nprocs
    time.sleep(3)
    
    for result_shp in _results:
        print 'result_shp',result_shp
        for i in result_shp:
            display.DisplayShape(i, update=False)
    
    # update viewer when all is added:
    display.Repaint()
    total_time = time.time() - init_time
    print "%s necessary to perform slice with %s processor(s)." % ( total_time, n_procs )
    start_display()

if __name__ == '__main__':
    # use compare_by_number_of_processors=True to see speed up per number of processor added
    nprocs = processing.cpu_count()
    run( nprocs , compare_by_number_of_processors=False )
