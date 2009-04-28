"""
An example illustrating how to update components in an XDE document and have the View 
update interactively.
"""

#import os
#os.environ['CSF_GraphicShr']=r"/usr/local/lib/libTKOpenGl.so"

from OCC import XCAFApp, STEPCAFControl, TDocStd, TCollection,\
        XCAFDoc, BRepPrimAPI, Quantity, STEPControl,\
        TopLoc, gp, TDF, TPrsStd, XCAFPrs, AIS

import wx
import math

from OCC.Display.wxDisplay import wxViewer3d


class MyCanvas(wxViewer3d):
    def __init__(self, parent, doc):
        super(MyCanvas, self).__init__(parent)
        self.SetSizeWH(800,-1)
        self.Bind(wx.EVT_PAINT, self.OnPaint)
        
        self.context = None
        
        self.doc = doc
        
    def SetBoxSize(self, size):
        box = BRepPrimAPI.BRepPrimAPI_MakeBox(1.*size,2.*size,3.*size).Shape()
        self.shape_tool.SetShape(self.box_label, box)
        self.shape_tool.UpdateAssembly(self.top_label)
        
    def SetBoxPosition(self, val):
        d = (val-50.) * 10
        tr = gp.gp_Trsf()
        tr.SetTranslation(gp.gp_Vec(100,100,d))
        loc = TopLoc.TopLoc_Location(tr)
        
        ### One way to set the location is to remove the label and re-add it. However,
        ### this will lose any color or material attributes on the component (although
        ### attributes on the underlying Shape are retained). E.g.
        #~ self.shape_tool.RemoveComponent(self.box_comp2)
        #~ self.box_comp2 = self.shape_tool.AddComponent(self.top_label, self.box_label, loc)
        
        ###I can't see how to make the ShapeTool do this, so we need to edit the TDF_Attribute
        ###directly.
        h_a = XCAFDoc.Handle_XCAFDoc_Location()
        self.box_comp1.FindAttribute(XCAFDoc.XCAFDoc_Location().ID(), h_a)
        attr = h_a.GetObject()
        attr.Set(loc)
        self.shape_tool.UpdateAssembly(self.top_label)
        
    def SetCylDirection(self, val):
        a = (val-50.)/10.
        b = math.sin(a)
        c = math.cos(a)
        ax = gp.gp_Ax2(gp.gp_Pnt(0,0,0),
                       gp.gp_Dir(b,0,c))
        cyl = BRepPrimAPI.BRepPrimAPI_MakeCylinder(ax, 25,50).Shape()
        self.shape_tool.SetShape(self.cyl_label, cyl)
        self.shape_tool.UpdateAssembly(self.top_label)
        
    def InitDoc(self):
        h_shape_tool = XCAFDoc.XCAFDoc_DocumentTool().ShapeTool(doc.Main())
        l_Colors = XCAFDoc.XCAFDoc_DocumentTool().ColorTool(doc.Main())

        shape_tool = h_shape_tool.GetObject()
        colors = l_Colors.GetObject()
        
        self.shape_tool = shape_tool

        top_label = shape_tool.NewShape() #this is the "root" label for the assembly
        self.top_label = top_label

        #Add some shapes
        box = BRepPrimAPI.BRepPrimAPI_MakeBox(10,20,30).Shape()
        box_label = shape_tool.AddShape(box, False)

        cyl = BRepPrimAPI.BRepPrimAPI_MakeCylinder(25,50).Shape()
        cyl_label = shape_tool.AddShape(cyl, False)

        #Add components as references to our shape
        tr = gp.gp_Trsf()
        tr.SetTranslation(gp.gp_Vec(100,100,100))
        loc = TopLoc.TopLoc_Location(tr)
        box_comp1 = shape_tool.AddComponent(top_label, box_label, loc)

        tr = gp.gp_Trsf()
        tr.SetTranslation(gp.gp_Vec(-100,-100,-100))
        loc = TopLoc.TopLoc_Location(tr)
        box_comp2 = shape_tool.AddComponent(top_label, box_label, loc)

        tr = gp.gp_Trsf()
        tr.SetTranslation(gp.gp_Vec(10,10,10))
        loc = TopLoc.TopLoc_Location(tr)
        cyl_comp = shape_tool.AddComponent(top_label, cyl_label, loc)

        #Add some colors
        red = Quantity.Quantity_Color(Quantity.Quantity_NOC_RED)
        green = Quantity.Quantity_Color(Quantity.Quantity_NOC_GREEN)
        blue = Quantity.Quantity_Color(Quantity.Quantity_NOC_BLUE1)
        colors.SetColor(cyl_comp, red, XCAFDoc.XCAFDoc_ColorGen)
        colors.SetColor(box_label, blue, XCAFDoc.XCAFDoc_ColorGen)
        colors.SetColor(box_comp2, green, XCAFDoc.XCAFDoc_ColorGen)
        
        self.box_label = box_label
        self.cyl_label = cyl_label
        self.box_comp1 = box_comp1
        self.box_comp2 = box_comp2
        self.cyl_comp = cyl_comp
        
    def ShowAssembly(self, top_label):
        self.aisView = TPrsStd.TPrsStd_AISViewer().New(top_label, self.context.GetHandle())
        self.aisPres = TPrsStd.TPrsStd_AISPresentation().Set(top_label, XCAFPrs.XCAFPrs_Driver().GetID())
        self.aisPres.GetObject().Display(True)
        
    def OnPaint(self, event):
        event.Skip()
        if self.context is None:
            self.FirstDisplay()
            
    def Render(self):
        context = self.context
        if context is not None:
            context.Redisplay(AIS.AIS_KOI_Shape)
            
    def FirstDisplay(self):
        self.InitDriver()
        viewer = self._display
        self.context = viewer.Context
        self.ShowAssembly(self.top_label)
        self._display.FitAll()


class MyFrame(wx.Frame):
    def __init__(self, doc):
        super(MyFrame, self).__init__(None, -1, "test frame", size=(600,500))
        
        self.canvas = MyCanvas(self, doc)
        self.canvas.InitDoc()
        
        label1 = wx.StaticText(self, -1, "Scale shape:")
        self.slider = wx.Slider(self, -1, 20, 1,100, style=wx.SL_HORIZONTAL)
        self.slider.Bind(wx.EVT_SLIDER, self.OnSlide)
        
        label2 = wx.StaticText(self, -1, "Translate component:")
        self.slider2 = wx.Slider(self, -1, 50, 0,100, style=wx.SL_HORIZONTAL)
        self.slider2.Bind(wx.EVT_SLIDER, self.OnSlide2)
        
        label3 = wx.StaticText(self, -1, "Rotate shape:")
        self.slider3 = wx.Slider(self, -1, 50, 0,100, style=wx.SL_HORIZONTAL)
        self.slider3.Bind(wx.EVT_SLIDER, self.OnSlide3)
        
        sizer=wx.FlexGridSizer(wx.VERTICAL)
        sizer.SetCols(2)
        sizer.AddGrowableCol(1,1)
        sizer.Add(label1, 0, wx.ALL|wx.EXPAND,3)
        sizer.Add(self.slider, 1, wx.ALL|wx.EXPAND,3)
        sizer.Add(label2, 0, wx.ALL|wx.EXPAND,3)
        sizer.Add(self.slider2, 0, wx.EXPAND|wx.ALL, 3)
        sizer.Add(label3, 0, wx.ALL|wx.EXPAND,3)
        sizer.Add(self.slider3, 0, wx.EXPAND|wx.ALL, 3)
        
        sz = wx.BoxSizer(wx.VERTICAL)
        sz.Add(self.canvas, 1, wx.EXPAND|wx.ALL,3)
        sz.Add(sizer, 0, wx.EXPAND|wx.ALL,3)
        self.SetSizer(sz)
        
        self.Layout()
        
    def OnSlide(self, event):
        val = event.GetInt()
        self.canvas.SetBoxSize(val/3.)
        self.canvas.Render()
        
    def OnSlide2(self, event):
        val = event.GetInt()
        self.canvas.SetBoxPosition(val)
        self.canvas.Render()
        
    def OnSlide3(self, event):
        val = event.GetInt()
        self.canvas.SetCylDirection(val)
        self.canvas.Render()

wxApp = wx.App()

app = XCAFApp.GetApplication().GetObject()

h_doc = TDocStd.Handle_TDocStd_Document()

schema = TCollection.TCollection_ExtendedString("MDTV-CAF")
app.NewDocument(schema, h_doc)

doc = h_doc.GetObject()

frame = MyFrame(doc)
frame.Show()

wxApp.MainLoop()
