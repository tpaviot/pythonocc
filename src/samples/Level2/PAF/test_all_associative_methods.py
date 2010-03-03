from OCC.PAF.Context import ParametricModelingContext
from OCC.PAF.Parametric import Parameters
from OCC.Display.SimpleGui import init_display
display, start_display, add_menu, add_function_to_menu = init_display()


from OCC.SGEOM import *
from OCC.TCollection import *

import time

def main():
    p = Parameters()                          # Create a parameters set
    my_context = ParametricModelingContext(p, commit=False)     # Create and initialize a parametric context
    my_context.set_display(display)                 # start the graphic display
    
    
    # we need to register the operations that are used
    # for concerns of performance, _only_ operations that are registered
    # are associative 

    my_context.register_operations(my_context.basic_operations,
                                   my_context.boolean_operations,
                                   my_context.local_operations,
                                   my_context.curve_operations,
                                   )

    for ops in dir(my_context):
        try:
            if ops.split('_')[1] == 'operations':
                print '\n\n****** %s ******\n\n' % ( ops )
                print 'has the following methods:'
                for i in dir(getattr(my_context, ops)):
                    if not i.islower():
                        print i
        except IndexError:
            pass 

    '''
    
    Could be really interesting to make examples here of functions in the GEOM module
    that do not have counter parts in the OCC API
    
    '''

    
    #===============================================================================
    # SKETCHER INFOS
    # Init Sketcher
    # Create a string beginning by :"Sketcher:"
    # Each command must be separated by ":"
    # "F x y" : Create first point at X & Y
    # 
    # To Make Segment
    # "R angle" : Set the direction by angle
    # "D dx dy" : Set the direction by DX & DY
    # 
    # "TT x y" : Create by point at X & Y
    # "T dx dy" : Create by point with DX & DY
    # "L length" : Create by direction & Length
    # "IX x" : Create by direction & Intersect. X
    # "IY y" : Create by direction & Intersect. Y
    # 
    # To Make Arc
    # "C radius length" : Create by direction, radius and length(in degree)
    # 
    # To finish
    # "WW" : Close Wire
    # 
    # Create Sketcher
    #===============================================================================
    Cmd = "Sketch:F 0 0:TT 0 100:C 100 180:WW"
    #import ipdb; ipdb.set_trace()
    
    
    ## Return list of variables value from salome notebook
    ## @ingroup l1_geompy_auxiliary    
    def ParseSketcherCommand(command):
        Result = ""
        StringResult = ""
        sections = command.split(":")
        for section in sections:
            parameters = section.split(" ")
            paramIndex = 1
            for parameter in parameters:
                if paramIndex > 1 and parameter.find("'") != -1:
                    parameter = parameter.replace("'","")
                    if notebook.isVariable(parameter):
                        Result = Result + str(notebook.get(parameter)) + " "
                        pass
                    else:
                        raise RuntimeError, "Variable with name '" + parameter + "' doesn't exist!!!"
                        pass
                    pass
                else:
                    Result = Result + str(parameter) + " "
                    pass
                if paramIndex > 1:
                    StringResult = StringResult + parameter
                    StringResult = StringResult + ":"
                    pass
                paramIndex = paramIndex + 1
                pass
            Result = Result[:len(Result)-1] + ":"
            pass
        Result = Result[:len(Result)-1]
        return Result, StringResult
    
    
    cmd, params = ParseSketcherCommand(Cmd)
    theWorkingPlane = [0,0,0, 0,0,1, 1,0,0]
    

    cmd = TCollection_AsciiString(cmd)
    
    # theWorkingPlane should be a GEOM_Parameter nested in a std::list
    # ---BUG--- NO CONVERTER FOR STD::LIST

    # NOT YET IMPLEMENTED
    #sketcher = my_context.curve_operations.MakeSketcher(cmd, theWorkingPlane) #(string)->GEOM_Shape_ptr
    
    
    
#    Out[0]: <OCC.TCollection.TCollection_AsciiString; proxy of <Swig Object of type 'TCollection_AsciiString *' at 0x210b2860> >
#    ipdb> crv.MakeSketcher(_cmd, theWorkingPlane)
#    *** TypeError: in method 'GEOMImpl_ICurvesOperations_MakeSketcher', argument 3 of type 'std::list< GEOM_Parameter,std::allocator< GEOM_Parameter > >'
    


    start_display()

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
    box1 = my_context.prim_operations.MakeBoxTwoPnt(my_pnt1,my_pnt2,name="Box1", show=True)            # Create the box
    box2 = my_context.prim_operations.MakeBoxTwoPnt(my_pnt3,my_pnt4,name="Box2", show=True)            # Create the box
    
    # boolean subtract box2 from box1 
    booled_box = my_context.boolean_operations.MakeBoolean( box1, box2, 2, name='BooleanBox', show=False)
    
    # add fillets to the booleaned box
    fillet_box = my_context.local_operations.MakeFilletAll( booled_box, p.RADIUS, name='FilletBox', show=True)
    
    # configuring presentations
    #===========================================================================
    # MISSING THE "get_presentation" METHOD Nooooooooooooooooooooooo!
    #===========================================================================
#    pres1, pres2, pres_fillet = my_context.get_presentation(box1), my_context.get_presentation(box2), my_context.get_presentation(fillet_box)
#    pres1.SetTransparency(.8); pres1.SetColor(12) 
#    pres2.SetTransparency(.8); pres1.SetColor(12)
#    pres_fillet.SetColor(1)
    
    for i in range(14,40,5):
        print 'changed parameter p.Z2 from %s to %s' % ( i-1, i )
        tA = time.time() 
        p.Z2 = i
        print 'updating geometry took:', time.time() - tA
    
    for i in range(10,40,5):
        tA = time.time() 
        p.RADIUS = i/10.
        print 'updating geometry took:', time.time() - tA
    
    start_display()

def profile_main():
     # This is the main function for profiling 
     # We've renamed our original main() above to real_main()
     import cProfile, pstats
     prof = cProfile.Profile()
     prof = prof.runctx("main()", globals(), locals())
     print "<pre>"
     stats = pstats.Stats(prof)
     stats.sort_stats("time")  # Or cumulative
     stats.print_stats(80)  # 80 = how many to print
     # The rest is optional.
     stats.print_callees()
     stats.print_callers()
     print "</pre>"

#profile_main()
main()
