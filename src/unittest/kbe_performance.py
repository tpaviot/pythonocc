from OCC.TopoDS import TopoDS_Face, TopoDS_Edge
from OCC.Utils.Construct import make_line, make_face, make_circle, make_wire, gp_Pnt
from OCC.KBE.edge import Edge
from OCC.KBE.face import Face


li = make_line(gp_Pnt(), gp_Pnt(1,1,1))
fc = make_face(make_wire(make_circle(gp_Pnt(), 1)))


def test_instantiation_edge():
    # from 15s -> 4.9s
    # reference: 3.1s
    for i in xrange(1e5):
        print i
        e = Edge(li)
    return None

def test_instantiation_edge_ref():
    # 3.1s
    for i in xrange(1e5):
        print i
        e = TopoDS_Edge(li)
    return None

def test_instantiation_face():
    # from 25s -> 4.2s
    # reference: 3.1
    for i in xrange(1e5):
        print i
        f = Face(fc)
    return None

def test_instantiation_face_ref():
    # 3.1s
    for i in xrange(1e5):
        print i
        f = TopoDS_Face(fc)
    return None


#if __name__ == "__main__":
#    import pycallgraph
#    pycallgraph.start_trace()
#
#    test_instantiation()
#
#    pycallgraph.stop_trace()
#    pycallgraph.make_dot_graph('kbe-instantiation-call-graph.png')
#    pycallgraph.save_dot('kbe-instantiation-call-graph.dot')


if __name__ == "__main__":
    # This is the main function for profiling
    # We've renamed our original main() above to real_main()
    import cProfile, pstats
    prof = cProfile.Profile()
    #prof = prof.runctx("test_instantiation_edge()", globals(), locals())
    prof = prof.runctx("test_instantiation_face()", globals(), locals())
    #prof = prof.runctx("test_instantiation_edge_ref()", globals(), locals())
    #prof = prof.runctx("test_instantiation_face_ref()", globals(), locals())
    stats = pstats.Stats(prof)
    stats.sort_stats("cumulative")  # Or cumulative
    stats.print_stats(80)  # 80 = how many to print
    # The rest is optional.
    #stats.print_callees()
    #stats.print_callers()

  