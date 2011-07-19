from OCC.XCAFDoc import XCAFDoc_DocumentTool
from OCC.Utils.Construct import *
from OCC.PAF.Context import Parameters, ParametricModelingContext
from OCC.KBE.base import Display

vertex  = make_vertex( gp_Pnt() )
lineA   = make_line( gp_Pnt(-1,0,0), gp_Pnt(1,0,0) )
lineB   = make_line( gp_Pnt(0,-1,0), gp_Pnt(0,1,0) )

def geomobject_from_topods(topods, pmc):
    """
    returns a GEOM_Object that contains a TopoDS_Shape
    :param topods:  the TopoDS_Shape to add to the GEOM_Object
    :param pmc:     the parametric modeling context
    :return:        a GEOM_Object that contains :topods:
    """
    # creates a GEOM_Object in the appropriate context
    geomobject = pmc.myEngine.AddObject(1,1).GetObject()
    label = ss.GetEntry() # TDF_Label
    doc_tool = XCAFDoc_DocumentTool().ShapeTool(label).GetObject()
    doc_tool.SetShape(label, topods)
    return geomobject.GetHandle()
    
v, lA, lB = map(lambda x: geomobject_from_topods(x, pmc), (vertex, lineA, lineB))

p = Parameters()
pmc = ParametricModelingContext(p)
qq = pmc.boolean_operations.MakeBoolean(lA,lB,3)
qqq = qq.GetObject().GetValue()



Display()(qqq)

#   pmc.boolean_operations.MakePartition()

#Handle_TColStd_HSequenceOfTransient theTools,
#Handle_TColStd_HSequenceOfTransient theKeepInside,
#Handle_TColStd_HSequenceOfTransient theRemoveInside,
#Standard_Integer theLimit,
#Standard_Boolean theRemoveWebs,
#Handle_TColStd_HArray1OfInteger theMaterials,
#Standard_Integer theKeepNonlimitShapes,
#Standard_Boolean thePerformSelfIntersections) -> Handle_GEOM_Object



pmc.boolean_operations.MakeBoolean(v,lA, 3)






#TopoDS_Shape s1 = BRepPrimAPI_MakeBox(gp_Pnt(0, 0, 0), gp_Pnt(10, 30, 20));
#TopLoc_Location location1, location2;
#
#TDF_Label lab1 = XCAFDoc_DocumentTool::ShapeTool (aDoc->Main ())->NewShape();
#XCAFDoc_DocumentTool::ShapeTool (aDoc->Main ())->SetShape(lab1, s1);
#TDataStd_Name::Set(lab1, "Box1");
