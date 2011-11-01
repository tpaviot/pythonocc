from OCC.Visualization import *
from html_file import *
from time import time
import sys, os

class WebGlRenderer:
    def __init__(self, background_color = "#000000"):
        self._js_filename = "shape.js"
        self._html_filename = "webgl_topods_shape.html"
        self._background_color = background_color
        
    def DisplayShape(self,shape):
        self._shape = shape
        print "Tesselate shape ...",
        t0 = time()
        tess = Tesselator(self._shape, atNormal,1.0,1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.)
        t1 = time()
        print "done in %f s."%(t1-t0)
        print "Exporting tesselation to JSON ...",
        t2 = time()
        tess.ExportShapeToJSON(self._js_filename)
        t3 = time()
        print "done in %f s."%(t3-t2)
        print "Generating HTML stream ...",
        self.GenerateHTMLFile()
        print "done."
        print "Opening html output in the default webbrowser ..."
        os.system('open %s'%self._html_filename)
        print "done."
        
    
    def GenerateHTMLFile(self):
        """ Generate the HTML file to be rendered wy the web browser
        """
        fp = open(self._html_filename,"w")
        fp.write("<!DOCTYPE HTML>")
        fp.write('<html lang="en">')
        # header
        fp.write(HTMLHeader(self._background_color).get_str())
        # body
        fp.write(HTMLBody().get_str())
        fp.write("</html>\n")
        fp.close()

        
        

