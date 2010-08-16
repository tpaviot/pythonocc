#!/usr/bin/env python

##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import os, os.path
from OCC.TopoDS import *
from OCC.BRep import *
from OCC.STEPControl import *

from OCC.IFSelect import *


from OCC.XCAFApp import *
from OCC.STEPCAFControl import *
from OCC.TDocStd import *
from OCC.TCollection import *
from OCC.XCAFDoc import *
from OCC.TDF import *
#from OCC.TopoDS import *

from OCC import XCAFApp, TDocStd, TCollection, XCAFDoc, BRepPrimAPI, Quantity, TopLoc, gp, TPrsStd, XCAFPrs

from OCC.STEPCAFControl import *
from OCC.XSControl import *
from OCC.STEPControl import *
from OCC.Quantity import *
from OCC.Utils.Topology import Topo
from OCC.TopAbs import *
import os

class STEPImporter(object):
    def __init__(self,filename=None):        
        self._shapes = []
        self._nbs = 0
        self.SetFilename(filename)

    def GetNbrShapes(self):
        """ Return the number of shapes from the importer
        """
        return self._nbs
       
    def SetFilename(self, filename):
        if not os.path.isfile(filename):
            print "STEPImporter initialization Error: file %s not found."%filename
            self._filename = None
        else:
            self._filename = filename
        
    def ReadFile(self):
        """
        Read the STEP file and stores the result in a _shapes list
        """
        if not self._filename:
            print "ReadFile Error: first set the filename."
            return False
        aReader = STEPControl_Reader()
        status = aReader.ReadFile(self._filename)
        if status==IFSelect_RetDone:
            failsonly = False
            aReader.PrintCheckLoad(failsonly, IFSelect_ItemsByEntity)
            nbr = aReader.NbRootsForTransfer()
            print "%i root(s)"%nbr
            aReader.PrintCheckTransfer(failsonly, IFSelect_ItemsByEntity)
            for n in range(1,nbr+1):
                ok = aReader.TransferRoot(n)
                self.nbs = aReader.NbShapes()
                if self.nbs == 0:
                    print "At least one shape in STEP cannot be transfered"
                elif (nbr==1 and self.nbs==1):
                    aResShape = aReader.Shape(1)
                    if aResShape.IsNull():
                        print "At least one shape in STEP cannot be transferred"
                    self._shapes.append(aResShape)
                else:                    
                    for i in range(1,self.nbs+1):
                        aShape = aReader.Shape(i)
                        if aShape.IsNull():
                            print "At least one shape in STEP cannot be transferred"
                        else:
                            self._shapes.append(aShape)
                            #B.Add(compound,aShape)
            return True
        else:
            print "Error: can't read file %s"%self._filename
            return False
        return False

    def GetCompound(self):
        """ Create and returns a compound from the _shapes list
        """
        # Create a compound
        compound = TopoDS_Compound()
        B = BRep_Builder()
        B.MakeCompound(compound)
        # Populate the compound
        for shape in self._shapes:
            B.Add(compound,shape)
        return compound
    
    def GetShapes(self):
        return self._shapes

class STEPExporter(object):
    def __init__(self, filename, verbose=False):
        self._shapes = []
        self.verbose = verbose
        self._filename = filename
        self.stepWriter = STEPControl_Writer()
        
    def SetTolerance(self, tolerance=0.0001):
        self.stepWriter.SetTolerance(tolerance)
    
    def AddShape(self, aShape):
        # First check the shape
        if aShape.IsNull():
            raise Assertion("STEPExporter Error: the shape is NULL")
        else: 
            self._shapes.append(aShape)
    
    def WriteFile(self):
        for shp in self._shapes:
            status = self.stepWriter.Transfer(shp, STEPControl_AsIs )
        if status == IFSelect_RetDone:
            status = self.stepWriter.Write(self._filename)
        else:
            return False
        
        if self.verbose:
            self.stepWriter.PrintStatsTransfer()
        
        if status == IFSelect_RetDone:
            print "STEP transfer successful."
            return True
        else:
            return False

class STEPOCAF_Import(object):
    '''
    Imports STEP file that support layers & colors
    '''
    def __init__(self, filename, layer_name='layer-00'):
        self.filename = filename
        self._shapes = [] #an empty string
    
    def get_shapes(self):
        return self._shapes
    
    def read(self):
        h_doc = TDocStd.Handle_TDocStd_Document()
        print "Empty Doc?", h_doc.IsNull()
        
        # Create the application
        app = XCAFApp.GetApplication().GetObject()
        app.NewDocument(TCollection.TCollection_ExtendedString("MDTV-CAF"),h_doc)
        
        # Get root assembly
        doc = h_doc.GetObject()
        h_shape_tool = XCAFDoc.XCAFDoc_DocumentTool().ShapeTool(doc.Main())
        l_Colors = XCAFDoc.XCAFDoc_DocumentTool().ColorTool(doc.Main())
        l_Layers = XCAFDoc.XCAFDoc_DocumentTool().LayerTool(doc.Main())
        
        STEPReader = STEPCAFControl_Reader()
        STEPReader.SetColorMode(True)
        STEPReader.SetLayerMode(True)
        STEPReader.SetNameMode(True)
        STEPReader.SetMatMode(True)
        
        status = STEPReader.ReadFile(str(self.filename))         
        if status == IFSelect_RetDone:
            STEPReader.Transfer(doc.GetHandle())
        Labels = TDF_LabelSequence()
        ColorLabels = TDF_LabelSequence()
          #TopoDS_Shape aShape;
        h_shape_tool.GetObject().GetFreeShapes(Labels)
        print Labels.Length()
        l_Colors.GetObject().GetColors(ColorLabels)
        print 'Number of colors=%i'%ColorLabels.Length()
#          if(CL_Len>0)
#               ColorTool->GetColor(ColorLabels.Value(1),DefaultColor);
        for i in range(Labels.Length()):
            #print i
            aShape = h_shape_tool.GetObject().GetShape(Labels.Value(i+1))
            #print aShape,aShape.ShapeType()
            if aShape.ShapeType() == TopAbs_COMPOUND:
                t = Topo(aShape)
                for t in t.solids():
                    self._shapes.append(t)
        return True

class StepOCAF_Export(object):
    '''
    STEP export that support layers & colors
    '''
    def __init__(self, filename, layer_name='layer-00'):
        self.filename = filename
        self.h_doc = h_doc = TDocStd.Handle_TDocStd_Document()
        print "Empty Doc?", h_doc.IsNull()
        
        # Create the application
        app = XCAFApp.GetApplication().GetObject()
        app.NewDocument(TCollection.TCollection_ExtendedString("MDTV-CAF"),h_doc)
        
        # Get root assembly
        doc = h_doc.GetObject()
        h_shape_tool = XCAFDoc.XCAFDoc_DocumentTool().ShapeTool(doc.Main())
        l_Colors = XCAFDoc.XCAFDoc_DocumentTool().ColorTool(doc.Main())
        l_Layers = XCAFDoc.XCAFDoc_DocumentTool().LayerTool(doc.Main())
        labels = TDF_LabelSequence()
        ColorLabels = TDF_LabelSequence()
          #TopoDS_Shape aShape;
        
        self.shape_tool = h_shape_tool.GetObject()
        self.top_label = self.shape_tool.NewShape()
        self.colors = l_Colors.GetObject()
        self.layers = l_Layers.GetObject()
    
        self.current_color = Quantity.Quantity_Color(Quantity.Quantity_NOC_RED)  
        self.current_layer = self.layers.AddLayer(TCollection_ExtendedString(layer_name))
        self.layer_names = {}
    
    def set_color(self, r=1,g=1,b=1, color=None):
        if not color is None:
            self.current_color = color
        else:
            clr = Quantity.Quantity_Color(r,g,b,0)
            self.current_color = clr
    
    def set_layer(self, layer_name):
        '''set the current layer name
        
        if the layer has already been set before, that TDF_Label will be used 
        
        @param layer_name: string that is the name of the layer
        '''
        if layer_name in self.layer_names:
            self.current_layer = self.layer_names[layer_name]
        else:
            self.current_layer = self.layers.AddLayer(TCollection_ExtendedString(layer_name))
            self.layer_names[layer_name] = self.current_layer
    
    def add_shape(self, shape, color=None, layer=None):
        '''add a shape to export
        
        a layer and color can be specified.
        
        note that the set colors / layers will be used for further objects
        added too! 
        
        @param shape:     the TopoDS_Shape to export
        @param color:     can be a tuple: (r,g,b) or a Quantity_Color instance
        @param layer:     string with the layer name
        '''
        assert issubclass(shape.__class__, TopoDS_Shape) or isinstance(shape, TopoDS_Shape), 'not a TopoDS_Shape or subclass'
        shp_label = self.shape_tool.AddShape( shape )
        
        if color is None:  
            self.colors.SetColor(shp_label, self.current_color, XCAFDoc.XCAFDoc_ColorGen)
        else:
            if isinstance(color, Quantity_Color):
                self.current_color = color
            else:
                assert len(color) == 3, 'expected a tuple with three values < 1.'
                r,g,b = color
                self.set_color(r,g,b)
            self.colors.SetColor(shp_label, self.current_color, XCAFDoc.XCAFDoc_ColorGen)
        
        if layer is None:
            self.layers.SetLayer(shp_label, self.current_layer)
        else:
            self.set_layer(layer)
            self.layers.SetLayer(shp_label, self.current_layer)
        
    def write(self):
        WS = XSControl_WorkSession()
        writer = STEPCAFControl_Writer( WS.GetHandle(), False )
        writer.Transfer(self.h_doc, STEPControl_AsIs)
        print 'writing STEP file'
        status = writer.Write(self.filename)
        print 'status:', status

def TestImport():
    """
    Imports a STEP file.
    """
    myImporter = STEPImporter("test.stp")
    myImporter.ReadFile()
    print myImporter.GetShape()

def TestExport():
    """
    Exports a TopoDS_Shape to a STEP file.
    """
    from OCC.BRepPrimAPI import BRepPrimAPI_MakeBox
    test_shape1 = BRepPrimAPI_MakeBox(100.,100.,100.).Shape()
    test_shape2 = BRepPrimAPI_MakeBox(100.,100.,100.).Shape()
    myExporter = STEPExporter('test.stp')
    myExporter.AddShape(test_shape1)
    myExporter.AddShape(test_shape2)
    myExporter.WriteFile()

if __name__=='__main__':
    TestExport()
    TestImport()
