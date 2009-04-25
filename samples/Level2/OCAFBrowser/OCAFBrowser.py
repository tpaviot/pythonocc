##Copyright (c) 2009, Bryan Cole
##All rights reserved.
##
##Redistribution and use in source and binary forms, with or without
##modification, are permitted provided that the following conditions are met:
##    * Redistributions of source code must retain the above copyright
##      notice, this list of conditions and the following disclaimer.
##    * Redistributions in binary form must reproduce the above copyright
##      notice, this list of conditions and the following disclaimer in the
##      documentation and/or other materials provided with the distribution.
##    * Neither the name of the <organization> nor the
##      names of its contributors may be used to endorse or promote products
##      derived from this software without specific prior written permission.
##
##THIS SOFTWARE IS PROVIDED BY Bryan Cole ''AS IS'' AND ANY
##EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
##WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
##DISCLAIMED. IN NO EVENT SHALL Bryan Cole BE LIABLE FOR ANY
##DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
##(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
##LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
##ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
##(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
##SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

from enthought.traits.ui.api import View, Item, TreeEditor, TreeNode,\
        ListEditor, VGroup

from enthought.traits.api import (HasTraits, Property, Bool, 
                        on_trait_change, cached_property, Instance, File,
                        Float as _Float, List, Str, Enum, Int
                                  )

from OCC import XCAFApp, TDocStd, TCollection,\
        XCAFDoc, BRepPrimAPI, Quantity, TopLoc, gp,\
        TPrsStd, XCAFPrs, STEPCAFControl, TDF, TDataStd,\
        TNaming, TFunction, TPrsStd
        
import itertools
    
def GID2Tuple(gid):
    return (gid._CSFDB_GetStandard_GUIDmy32b(),
            gid._CSFDB_GetStandard_GUIDmy16b1(),
            gid._CSFDB_GetStandard_GUIDmy16b2(),
            gid._CSFDB_GetStandard_GUIDmy16b3(),
            gid._CSFDB_GetStandard_GUIDmy8b1(),
            gid._CSFDB_GetStandard_GUIDmy8b2(),
            gid._CSFDB_GetStandard_GUIDmy8b3(),
            gid._CSFDB_GetStandard_GUIDmy8b4(),
            gid._CSFDB_GetStandard_GUIDmy8b5(),
            gid._CSFDB_GetStandard_GUIDmy8b6())
        
def get_AttributeMap():
    modules = [TDataStd, TNaming, TDocStd, TFunction, TPrsStd]
    def iterAttributes():
        for m in modules:
            objItr = (getattr(m, n) for n in dir(m))
            for o in objItr:
                try:
                    if issubclass(o, TDF.Handle_TDF_Attribute):
                        yield o
                except TypeError:
                    pass
    attrList = list(iterAttributes())
    def get_id(c):
        try:
            return GID2Tuple(c().GetObject().GetID()), c
        except AttributeError:
            return None
    idList = (get_id(c) for c in attrList)
    filtered = (a for a in idList if a is not None)
    return dict(filtered)

AttributeMap = get_AttributeMap()
print "map"
#print AttributeMap

shape_gid = TDataStd.TDataStd_Shape().ID()
      
class Attribute(HasTraits):
    TDF_Attribute = Instance(TDF.TDF_Attribute)
    attr_cls = Property(depends_on="TDF_Attribute")
    cls_name = Property(Str, depends_on="TDF_Attribute")
    name = Property(Str, depends_on="attr_cls")
    
    def _get_attr_cls(self):
        ID = self.TDF_Attribute.ID()
        try:
            return AttributeMap[GID2Tuple(ID)]
        except KeyError:
            return None
        
    def Downcast(self):
        cls = self.attr_cls
        if cls is not None:
            other = cls()
            h_a = self.TDF_Attribute.GetHandle()
            new_h = other.DownCast(h_a)
            new_attr = new_h.GetObject()
            return new_attr
        
    def _get_cls_name(self):
        a = self.TDF_Attribute
        h = a.DynamicType()
        s = h.GetObject()
        return s.Name()
        
    def _get_name(self):
        try:
            a = self.Downcast()
            name = TCollection.TCollection_AsciiString(a.Get())
            return name.ToCString()
        except:
            return "no name"
        

        
class Label(HasTraits):
    TDF_Label = Instance(TDF.TDF_Label)
    children = Property(List, depends_on="sublabels, attributes")
    sublabels = Property(List, depends_on="TDF_Label")
    attributes = List(Attribute)
    entry = Str("unknown")
    
    name_attr = Property(Str, depends_on="TDF_Label")
    
    repr = Property(Str, depends_on="name_attr, entry")
    
    def _get_repr(self):
        return self.entry + " " + self.name_attr
    
    def _get_name_attr(self):
        label = self.TDF_Label
        h_a = TDataStd.Handle_TDataStd_Name()
        gid = TDataStd.TDataStd_Name().ID()
        if label.FindAttribute(gid, h_a):
            a = h_a.GetObject()
            name = TCollection.TCollection_AsciiString(a.Get())
            return name.ToCString()
        else:
            return "no name"
    
    def _get_children(self):
        return self.attributes + self.sublabels
    
    def _TDF_Label_changed(self, new_label):
        tool = TDF.TDF_Tool()
        output = TCollection.TCollection_AsciiString()
        tool.Entry(new_label, output)
        entry = output.ToCString()
        self.entry = entry
        
        itr = TDF.TDF_AttributeIterator(new_label, False)
        attrs = []
        while itr.More():
            val = itr.Value()
            #print val
            a = Attribute(TDF_Attribute=val)
            #print val, "->", a.Downcast()
            attrs.append(a)
            itr.Next()
        self.attributes = attrs
    
    def _get_sublabels(self):
        itr = TDF.TDF_ChildIterator(self.TDF_Label, False)
        result = []
        while itr.More():
            val = itr.Value()
            result.append(Label(TDF_Label=val))
            itr.Next()
        return result
        
tree_ed = TreeEditor(
            nodes=[
                TreeNode( node_for=[Label],
                          auto_open=False,
                          children='children',
                          label='repr',
                          view=View() ),
                TreeNode( node_for=[Attribute],
                          auto_open=False,
                          children='',
                          label='cls_name',
                          )
                ],
            orientation='horizontal'
            )
        
class Doc(HasTraits):
    filename = File
    TDocStd = Instance(TDocStd.TDocStd_Document)
    root_label = Instance(Label)
    
    traits_view = View(VGroup(Item("filename")),
                Item("root_label", editor=tree_ed,
                     show_label=False))
    
    def _TDocStd_changed(self, new_doc):
        root_label = new_doc.Main().Root()
        label = Label(TDF_Label = root_label)
        self.root_label = label
        print "root label entry", label.entry
        h_u = TNaming.Handle_TNaming_UsedShapes()
        gid = h_u.GetObject().GetID()
        if root_label.FindAttribute(gid, h_u):
            print "got used shapes"
        
        
class App(HasTraits):
    docs = List(Instance(Doc))
    
    XCAFApp = Instance(XCAFApp.XCAFApp_Application)
    
    traits_view = View(Item('docs', style="custom",
                            editor=ListEditor(use_notebook=True),
                            show_label=False),
                        height=600,
                        width=1000,
                        resizable=True)
    
    def _XCAFApp_default(self):
        return XCAFApp.GetApplication().GetObject()
    
    def LoadSTEPFile(self, fname):
        reader = STEPCAFControl.STEPCAFControl_Reader()
        reader.ReadFile(str(fname))
        
        h_doc = self.MakeNewDocHandle()
        
        reader.Transfer(h_doc)
        
        doc = h_doc.GetObject()
        self.docs.append(Doc(filename=fname,
                             TDocStd=doc))
        
    def MakeNewDocHandle(self):
        h_doc = TDocStd.Handle_TDocStd_Document()
        schema = TCollection.TCollection_ExtendedString("MDTV-CAF")
        self.XCAFApp.NewDocument(schema,h_doc)
        return h_doc
    
    def MakeNewDoc(self):
        h_doc = self.MakeNewDocHandle()
        return h_doc.GetObject()
        
if __name__=="__main__":
    from OCC import BRepPrimAPI, XCAFDoc, gp, Quantity
    
    def FillTestDoc(doc):
        h_shape_tool = XCAFDoc.XCAFDoc_DocumentTool().ShapeTool(doc.Main())
        h_Colors = XCAFDoc.XCAFDoc_DocumentTool().ColorTool(doc.Main())
        
        shape_tool = h_shape_tool.GetObject()
        colors = h_Colors.GetObject()
        
        top_label = shape_tool.NewShape() #this is the "root" label for the assembly
        
        print "top entry", Label(TDF_Label=top_label).entry
        
        box = BRepPrimAPI.BRepPrimAPI_MakeBox(10,20,30).Shape()
        box_label = shape_tool.AddShape(box, False)
        
        cyl = BRepPrimAPI.BRepPrimAPI_MakeCylinder(25,50).Shape()
        cyl_label = shape_tool.AddShape(cyl, False)
        #
        tr = gp.gp_Trsf()
        tr.SetTranslation(gp.gp_Vec(100,100,100))
        loc = TopLoc.TopLoc_Location(tr)
        box_comp1 = shape_tool.AddComponent(top_label, box_label, loc)
        
        tr = gp.gp_Trsf()
        tr.SetTranslation(gp.gp_Vec(200,200,200))
        loc = TopLoc.TopLoc_Location(tr)
        box_comp2 = shape_tool.AddComponent(top_label, box_label, loc)
        
        tr = gp.gp_Trsf()
        tr.SetTranslation(gp.gp_Vec(150,200,100))
        loc = TopLoc.TopLoc_Location(tr)
        cyl_comp = shape_tool.AddComponent(top_label, cyl_label, loc)
        
        red = Quantity.Quantity_Color(Quantity.Quantity_NOC_RED)
        green = Quantity.Quantity_Color(Quantity.Quantity_NOC_GREEN)
        colors.SetColor(cyl_comp, red, XCAFDoc.XCAFDoc_ColorGen)
        colors.SetColor(box_comp2, green, XCAFDoc.XCAFDoc_ColorGen)
        
    
    app = App()
    fname = "../../../data/_3dmodels/aube_pleine.stp"
    app.LoadSTEPFile(fname)
    
    doc = app.MakeNewDoc()
    FillTestDoc(doc)
    
    app.docs.append(Doc(TDocStd=doc))
    
    app.configure_traits()
