##Copyright 2011 Thomas Paviot (tpaviot@gmail.com)
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

        
        

