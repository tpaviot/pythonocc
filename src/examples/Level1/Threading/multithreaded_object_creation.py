##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
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

import threading
import Queue
from OCC.gp import *
from OCC.BRepBuilderAPI import *
import time, random, sys

def threading_test():
    QUEUE_POINTS = Queue.Queue(1000)
    QUEUE_VERTICES = Queue.Queue(1000)
    
    def CreatePoints():
        for i in range(10):
            P = gp_Pnt(random.random(),random.random(),random.random())
            QUEUE_POINTS.put(P)
            time.sleep(0.1) #to make the tasks asynchronous
            print "Create point: ",P.Coord()
    
    def CreateVerticesFromPoints():
        for i in range(10):
            time.sleep(0.2)
            P = QUEUE_POINTS.get_nowait()
            # Build vertex from point
            V = BRepBuilderAPI_MakeVertex(P)
            QUEUE_VERTICES.put(V)
            print "Create vertex from point"
            
    thread1 = threading.Thread(None, CreatePoints, None,())
    thread2 = threading.Thread(None, CreateVerticesFromPoints,None,())
    
    thread1.start()
    thread2.start()
    
    # Wait for the tasks to be finished
    while thread1.isAlive() or thread2.isAlive():
        pass
    # Display the content of the queue of vertices:
    print "Building list from Queue"
    vertices = []
    while not QUEUE_VERTICES.empty():
        vertex = QUEUE_VERTICES.get_nowait()
        if not vertex in vertices: #check that the vertices are different
            vertices.append(vertex)
    print vertices, len(vertices)

def threaded_boxes():
    def CreateBox():
        time.sleep(random.random()*10)
        b = BRepPrimAPI_MakeBox(random.random()*50.,random.random()*50.,random.random()*50.).Shape()
        print 'Created ',b
    for i in range(100):
        thread = threading.Thread(None, CreateBox, None,())
        thread.start()

def exit(event=None):
    sys.exit()

if __name__ == '__main__':
    threading_test()
    threaded_boxes()
    
