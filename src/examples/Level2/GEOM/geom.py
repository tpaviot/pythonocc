from OCC.XCAFDoc import XCAFDoc_DocumentTool
from OCC.Utils.Construct import *
from OCC.PAF.Context import Parameters, ParametricModelingContext
from OCC.KBE.base import Display

vertex  = make_vertex( gp_Pnt() )
lineA   = make_line( gp_Pnt(-1,0,0), gp_Pnt(1,0,0) )
lineB   = make_line( gp_Pnt(0,-1,0), gp_Pnt(0,1,0) )

from itertools import count

cntr = count()



#GEOM_Object::GEOM_Object(TDF_Label& theEntry, int theType)
#: _label(theEntry), _ior(""), _docID(-1)
#{
#  Handle(TDocStd_Document) aDoc = TDocStd_Owner::GetDocument(_label.Data());
#  if(!aDoc.IsNull()) {
#    Handle(TDataStd_Integer) anID;
#    if(aDoc->Main().FindAttribute(TDataStd_Integer::GetID(), anID)) _docID = anID->Get();
#  }
#
#  theEntry.ForgetAllAttributes(Standard_True);
#
#  if(!theEntry.FindAttribute(TDataStd_TreeNode::GetDefaultTreeID(), _root))
#    _root = TDataStd_TreeNode::Set(theEntry);
#
#  TDataStd_Integer::Set(theEntry.FindChild(TYPE_LABEL), theType);
#
#  TDataStd_UAttribute::Set(theEntry, GetObjectID());
#}




def geomobject_from_topods(topods, pmc):
    """
    returns a GEOM_Object that contains a TopoDS_Shape
    :param topods:  the TopoDS_Shape to add to the GEOM_Object
    :param pmc:     the parametric modeling context
    :return:        a GEOM_Object that contains :topods:
    """
    # creates a GEOM_Object in the appropriate context

#    def GetObject(self, *args):
#        """GetObject(self, int arg0, char theEntry) -> Handle_GEOM_Object"""
#        return _SGEOM.GEOM_Engine_GetObject(self, *args)
#
#    def AddObject(self, *args):
#        """AddObject(self, int arg0, int arg1) -> Handle_GEOM_Object"""
#        return _SGEOM.GEOM_Engine_AddObject(self, *args)


    from OCC.SGEOM import *

    #geomobject = pmc.myEngine.AddObject(pmc.docId,cntr.next()).GetObject()
    doc_tool = XCAFDoc_DocumentTool().ShapeTool(pmc.root).GetObject()
    shape = TopoDS_Shape(topods)
    label = doc_tool.AddShape(shape, False)
    tt = GEOM_Object(label, topods.ShapeType())
    assert tt.GetEntry().IsEqual(label) == True
    print 'did we fail?', tt.GetValue().IsNull(), ' should be 0'

    # the problem is that GEOM_Object.GetValue() returns the value of the
    # this is the value returned by tt.GetValue(), its just an alias for:
    # tt.GetLastFunction().GetObject().GetValue() # -> segfaults...

    gf = tt.GetLastFunction().GetObject() # GEOM_Function
    gf.IsNull() # yep...
    gf.SetValue(shape) # segfault; this is the shape that tt.GetValue() will return!

    tt.GetValue().IsNull()

    if geomobject.GetValue().IsNull():
        raise ValueError('TopoDS_Shape was not set...')

    return tt.GetHandle()

p = Parameters()
pmc = ParametricModelingContext(p)
pmc.register_operations(pmc.boolean_operations)

v, lA, lB = map(lambda x: geomobject_from_topods(x, pmc), (vertex, lineA, lineB))

try:
    qq = pmc.boolean_operations.MakeBoolean(lA,lB,3)
    qqq = qq.GetObject().GetValue()
except Exception, e:
    print e
    
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
