"""
	
	Copyright [2009] [Dave Cowden ( dave.cowden@gmail.com)]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
	
	OccSliceLIb	
	A library for using OCC to slice solids for 3d printing.

	
	Features:
			Slice STEP and STL files by creating layers of faces
			Tolerate and fix bad STL files
			Provide viewer for slices and the target object
			Export an SVG slice file
	Installation:
	
			1)Install Python, version 2.5 or 2.6,			 
					GET:   	http://www.python.org/download/
					TEST:  	at a command prompt/console, type "python"-- you should get something like this:
										
								Python 2.5.2 (r252:60911, Feb 21 2008, 13:11:45) [MSC v.1310 32 bit (Intel)] on win32
								Type "help", "copyright", "credits" or "license" for more information
								>>>
			
			2)Install OpenCascade+pythonOCC. Follow instructions here:
			This script requires release wo-0.2 or more recent

					GET:		http://www.pythonocc.org/wiki/index.php/InstallWindows
					TEST:		at a python command prompt, type from OCC import *,
							   you should get no error, like this:
							   
								Python 2.5.2 (r252:60911, Feb 21 2008, 13:11:45) [MSC v.1310 32 bit (Intel)] o
								win32
								Type "help", "copyright", "credits" or "license" for more information.
								>>> from OCC import *
								>>>					
									
			3)Install the Cheetah Template library for python, version 2.2 from here: 
					GET:		http://sourceforge.net/project/showfiles.php?group_id=28961
					TEST:		at a python prompt try to import Cheetah, like this:
					
								Python 2.5.2 (r252:60911, Feb 21 2008, 13:11:45) [MSC v.1310 32 bit (Intel)] o
								win32
								Type "help", "copyright", "credits" or "license" for more information.
								>>> from Cheetah import *
								>>>		

			4)Copy OccSliceLib(this script) into a directory of your choice.
					TEST:		Run the script without any arguments to confirm installation is ok, and to print help:
			
								>python OccSliceLib.py
								>
								>OccSliceLib usage:
								   .....

"""



from OCC import STEPControl,TopoDS, TopExp, TopAbs,BRep,gp,BRepBuilderAPI,BRepTools,BRepAlgo,BRepBndLib,Bnd,StlAPI,BRepAlgoAPI
from OCC import BRepGProp,BRepBuilderAPI,BRepPrimAPI,GeomAdaptor,GeomAbs,BRepClass,GCPnts,BRepBuilderAPI
import os
import sys
import os.path
import wx
import logging
import time
from OCC.Display.wxDisplay import wxViewer3d
from OCC.Utils.Topology import Topo
from OCC.ShapeAnalysis import ShapeAnalysis_FreeBounds
from Cheetah.Template import Template
from OCC import ShapeFix
from OCC import BRepBuilderAPI
from OCC import TopTools


###Logging Configuration
logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s %(levelname)s %(message)s',
                    stream=sys.stdout)

##
##  TODO:
##   X change pathmanager to allow other formats and easy structure access
##   X use builtin wxDisplay
##   X change naming of slice() to something else
##   X recognize .stp in addition to .step
##   X install guide
##   X remove unneed dumpTopology and shapeDescription
##     add 2d per-slice view on select of slice
##   X add ability to easily select slice thickness
##     add separate display for original object and slices
##   X sew faces from crappy stl files into single faces somehow
##   X remove reference to profile import



#####
#utility class instances
#available to all methods
#####
brt = BRepTools.BRepTools();
btool = BRep.BRep_Tool();
ts = TopoDS.TopoDS();
topexp = TopExp.TopExp()
texp = TopExp.TopExp_Explorer();


"""
	Utility class to provide timing information
"""		
class Timer:
	def __init__(self):
		self.startTime = time.time();
		self.startAscTime = time.asctime();
		
	def start(self):
		return self.startTime;
			
	def elapsed(self):
		end = time.time();
		return end - self.startTime;
		
	def finishedString(self):
		return "%0.3f sec" % ( self.elapsed() );
	
	
#to override sometingselected,
# overrid Viewer3d.    
# def Select(self,X,Y):
#
#
class AppFrame(wx.Frame):
  def __init__(self, parent,title,x,y):
      wx.Frame.__init__(self, parent=parent, id=-1, title=title, pos=(x,y),style=wx.DEFAULT_FRAME_STYLE,size = (400,300))
      self.canva = wxViewer3d(self);
  def showShape(self,shape):
		self.canva._display.DisplayShape(shape)
  def eraseAll(self):
  		self.canva._display.EraseAll();



"""
	Class that provides easy access to commonly
	needed features of a solid shape
"""
class ShapeAnalyzer:
	def __init__(self,shape):
		self.shape = shape;

		box = Bnd.Bnd_Box();
		b = BRepBndLib.BRepBndLib();
		b.Add(shape,box);
		
		self.bounds = box.Get();
		self.xMin = self.bounds[0];
		self.xMax = self.bounds[3];
		self.xDim = abs(self.xMax - self.xMin);
		self.yMin = self.bounds[1];
		self.yMax = self.bounds[4];
		self.yDim = abs(self.yMax - self.yMin);
		self.zMin = self.bounds[2];
		self.zMax = self.bounds[5];
		self.zDim = abs(self.zMax - self.zMin);
		
	"""
		Pretty print dimensions
	"""		
	def friendlyDimensions(self):		
		formatString = "x:%0.2f y:%0.2f z:%0.2f (" + self.guessUnitOfMeasure() + ")" 
		return formatString % ( self.xDim, self.yDim, self.zDim );
		
	"""
		Translate to positive space This returns another shape that
		has been translated into positive space the current shape and bounds are not modified:
		if you want to re-analyze the shape, create another analyzer from the new shape	
	"""	
	def translateToPositiveSpace(self):

		if self.xMin < 0 or self.yMin < 0 or self.zMin < 0:
			logging.debug("Shape appears to be in negative space. Translating...");
			
			x = abs(self.xMin);
			y = abs(self.yMin);
			z = abs(self.zMin);
			p1 = gp.gp_Pnt(0,0,0);
			p2 = gp.gp_Pnt(x,y,z);
			xform = gp.gp_Trsf();
			xform.SetTranslation(p1,p2);
			logging.info("Translating shape by x=%0.3f,y=%0.3f,z=%0.3f" % ( x, y, z ));
			bt = BRepBuilderAPI.BRepBuilderAPI_Transform(xform);
			bt.Perform(self.shape,False);
			return bt.Shape();
		else:
			logging.debug("Translation is not required. Returning existing shape");
	
	"""
	  Given a list of dimenions, guess the unit of measure.
	  The idea is that usually, the dimenions are either in or mm, and its normally evident which one it is
	"""
	def guessUnitOfMeasure(self):
	
		dimList = [ abs(self.xMax - self.xMin ), abs(self.yMax - self.yMin ), abs(self.zMax - self.zMin) ];
		#no real part would likely be bigger than 10 inches on any side
		if max(dimList) > 10:
			return "mm";
	
		#no real part would likely be smaller than 0.1 mm on all dimensions
		if min(dimList) < 0.1:
			return "in";
			
		#no real part would have the sum of its dimensions less than about 5mm
		if sum(dimList) < 10:
			return "in";
		
		return "units";	


	
"""
	a set of slices that together make a part
"""
class Slicer:
	def __init__(self,shape):
		self.slices=[]

		self.shape = shape;
				
		#slicing parameters
		self.zMin = None;
		self.zMax = None;
		self.display = None;
		self.translateToPositiveSpace = False;		
		self.sliceHeight = None;
		self.numSlices = None;
		self.saveSliceFaces = True;
		self._FIRST_LAYER_OFFSET = 0.0001;
		self._DEFAULT_SLICEHEIGHT_MM = 0.3;
		self._DEFAULT_SLICEHEIGHT_IN = 0.012;
				
		self.analyzer = ShapeAnalyzer(shape);
		logging.info("Object Loaded. Dimensions are " + self.analyzer.friendlyDimensions());

	def execute(self):

		t = Timer();		
		logging.info("Slicing Started.");
		
		if self.zMin == None:
			self.zMin = self.analyzer.zMin;
			logging.warn( "No zMin Specified, assuming bottom of object.");
		
		if self.zMax ==None:
			self.zMax = self.analyzer.zMax;
			logging.warn( "No zMax Specified, assuming top of object.");

		logging.info("Slicing Object from zMin=%0.3f to zMax=%0.3f" % ( self.zMin, self.zMax )  );
		self.zRange = abs(self.zMax - self.zMin);
		uom = self.analyzer.guessUnitOfMeasure();					
		#get slice levels
		if self.sliceHeight == None:
			if self.numSlices == None:				
				if uom == 'mm':
					self.sliceHeight = self._DEFAULT_SLICEHEIGHT_MM;
				else:
					self.sliceHeight = self._DEFAULT_SLICEHEIGHT_IN;
				logging.warn( "No Slice Thickness specified. Using Sane Defaults.");
			else:
				self.sliceHeight = abs(self.zMax - self.zMin)/self.numSlices;
				logging.info( "Computed sliceHeight=%0.3f based on numSlices" % (self.sliceHeight));
		
		numSlices = self.zRange / self.sliceHeight;
		reportInterval = round(numSlices/10);
		logging.info( "Slice Thickness is %0.3f %s, %0d slices. " % ( self.sliceHeight,uom,numSlices ));
		
		#make slices
		zLevel = self.zMin + self._FIRST_LAYER_OFFSET;
		layerNo = 1;
		t2 = Timer();
		while zLevel < self.zMax:
			logging.debug( "Creating Slice %0d, z=%0.3f " % ( layerNo,zLevel));
			slice = self._makeSlice(self.shape,zLevel);
			
			#if a display is set, add it to the display
			if not self.display == None and not slice == None:
				for f in slice.faces:
					self.display.showShape(f);
				
			#compute an estimate of time remaining every 10 or so slices
			if layerNo % reportInterval == 0:
				pc = ( zLevel - self.zMin )/   ( self.zMax - self.zMin) * 100;
				logging.info("%0.0f %% complete." % (pc) );
				
			if not slice == None:
				slice.layerNo = layerNo;
				slice.zHeight = self.sliceHeight;
				self.slices.append(slice);
			else:
				logging.warn("Null Layer Detected and Skipped at z=" + str(zLevel) );
			zLevel += self.sliceHeight
			layerNo += 1;

		logging.info("Slicing Complete: " + t.finishedString() );
		logging.info("Throughput: %0.3f slices/sec" % (layerNo/t.elapsed() ) );

	def _makeSlice(self,shapeToSlice,zLevel):
		s = Slice();
		
		#change if layers are variable thickness
		s.sliceHeight = self.sliceHeight;		
		s.zLevel = zLevel;

		#make a cutting plane
		p = gp.gp_Pnt ( 0,0,zLevel );
			
		origin = gp.gp_Pnt(0,0,zLevel-1);
		csys = gp.gp_Ax3(p,gp.gp().DZ())
		cuttingPlane = gp.gp_Pln(csys);	
		bff = BRepBuilderAPI.BRepBuilderAPI_MakeFace(cuttingPlane);
		face = bff.Face();
		
		#odd, a halfspace is faster than a box?
		hs = BRepPrimAPI.BRepPrimAPI_MakeHalfSpace(face,origin);
		hs.Build();	
		halfspace = hs.Solid();
				
		#make the cut
		bc = BRepAlgoAPI.BRepAlgoAPI_Cut(shapeToSlice,halfspace);
		cutShape = bc.Shape();
		
		#search the shape for faces at the specified zlevel
		texp = TopExp.TopExp_Explorer();
		texp.Init(cutShape,TopAbs.TopAbs_FACE);
		foundFace = False;
		while ( texp.More() ):
			face = ts.Face(texp.Current());
			if self._isAtZLevel(zLevel,face):
				foundFace = True;
				logging.debug( "Face is at zlevel" + str(zLevel) );
				s.addFace(face,self.saveSliceFaces);
			texp.Next();
		
		#free memory
		face.Nullify();
		bc.Destroy();
		texp.Clear();
		texp.Destroy();
			
		if not foundFace:
			logging.warn("No faces found after slicing at zLevel " + str(zLevel) + " !. Skipping This layer completely");
			return None;
		else:				
			return s;		
		
	def _isAtZLevel(self,zLevel,face):
		bf = BRepGProp.BRepGProp_Face(face);
		bounds = bf.Bounds();
		vec = gp.gp_Vec();
		zDir = gp.gp().DZ();
		pt = gp.gp_Pnt();
		#get a normal vector to the face
		bf.Normal(bounds[0],bounds[1],pt,vec);
		z=pt.Z();	
		sDir = gp.gp_Dir(vec);
		return (abs(z - zLevel) < 0.0001 ) and ( zDir.IsParallel(sDir,0.0001))


"""
   Manages a set of loops and points
   a loop is chain of points that end where it begins
   a slice can be composed of multiple faces.
"""
class Loop:
	def __init__(self):
		self.points = [];
		self.pointFormat = "%0.4f %0.4f ";
		self.tolerance = 0.00001;
		
	def addPoint(self,x,y):
		p = gp.gp_Pnt2d(x,y);
		self.points.append( p );
	
	"""
		Print SVG Path String for a loop.
		If the end point and the beginning point are the same,
		the last point is removed and replaced with the SVG path closure, Z
	"""
	def svgPathString(self):
		lastPoint = self.points.pop();		
		if self.points[0].IsEqual( lastPoint,self.tolerance ):
			closed = True;
		else:
			closed = False;
			self.points.append(lastPoint);
		
		s = "M ";
		p = self.points[0];
		s += self.pointFormat % ( p.X(), p.Y() );
		for p in self.points[1:]:
			s += "L ";
			s += self.pointFormat % ( p.X(),p.Y())
		
		if closed:
			s+= " Z";
		
		return s;
		
"""
	One slice in a set of slices that make up a part
"""
class Slice:
	def __init__(self):
		logging.debug("Creating New Slice...");
		self.path = "";
		self.faces = [];
		self.loops=[];
		self.zLevel=0;
		self.zHeight = 0;
		self.layerNo = 0;
		self.sliceHeight=0;
		
	def _currentLoop(self):
		return self.loops[len(self.loops)-1];

	def addFace(self, face ,saveFaceCopy=True):

		if saveFaceCopy:
			copier = BRepBuilderAPI.BRepBuilderAPI_Copy(face);
			self.faces.append(copier.Shape());
			copier.Delete();
				
		ow = brt.OuterWire(face);
		logging.debug(  "Adding OuterWire..." );
		self.addWire(ow);
		
		logging.debug(  "Adding Other Wires..." );
		#now get the other wires
		te = TopExp.TopExp_Explorer();
		
		te.Init(face,TopAbs.TopAbs_WIRE);
		while te.More():
			w = ts.Wire(te.Current());
			if not w.IsSame(ow):
				self.addWire(w);
			te.Next();
		te.Clear();	
		te.Destroy();
		
	def addWire(self, wire):
		logging.debug( "Adding Wire:" + str(wire));
		loop = Loop();
		self.loops.append(loop);
		bwe = BRepTools.BRepTools_WireExplorer(wire);
		while bwe.More():
			edge = bwe.Current();
			self.addEdge(edge);
			bwe.Next();
		bwe.Clear();
	
		
	def addEdge(self, edge):
		loop = self._currentLoop();
		range = btool.Range(edge);
		logging.debug( "Edge Bounds:" + str(range) );
		hc= btool.Curve(edge);
		ad = GeomAdaptor.GeomAdaptor_Curve(hc[0]);
	
		#this could be simplified-- QuasiUnformDeflection probably handles a line
		#correcly anyway?
		
		#if ad.GetType() == GeomAbs.GeomAbs_Line:
		#	logging.debug( "Edge Appears to be a line." );
		#	if edge.Orientation() == TopAbs.TopAbs_FORWARD:							
		#		bPt = btool.Pnt(topexp.FirstVertex(edge))
		#		ePt = btool.Pnt(topexp.LastVertex(edge))
		#	else:
		#		bPt = btool.Pnt(topexp.LastVertex(edge))
		#		ePt = btool.Pnt(topexp.FirstVertex(edge))
		#	loop.addPoint(bPt.X(),bPt.Y());
		#	loop.addPoint(ePt.X(),ePt.Y());
		#	
		#else:
		logging.debug(  "Edge is a curve of type:" + str(ad.GetType()));
		gc = GCPnts.GCPnts_QuasiUniformDeflection(ad,0.1,hc[1],hc[2]);
		i=1;
		numPts = gc.NbPoints();
		logging.debug( "Discretized Curve has" + str(numPts) + " points." );
		while i<=numPts:
			if edge.Orientation() == TopAbs.TopAbs_FORWARD:
				tPt = gc.Value(i);
			else:
				tPt = gc.Value(numPts-i+1);
			i+=1;
			loop.addPoint(tPt.X(),tPt.Y());

	def svgPathString(self):
		s = "";
		for l in self.loops:
			s += l.svgPathString();
			s += " ";
		return s;

	def __str__(self):
	    return "Slice: zLevel=" + str(self.zLevel) 
			

######
# Decorates a slice to provide extra computations for SVG Presentation.
# Needed only for SVG display
######	
class SVGLayer:
	def __init__(self,slice,unitScale,numformat):
		self.slice = slice;
		self.margin = 20;
		self.unitScale = unitScale;
		self.NUMBERFORMAT = numformat;
	def zLevel(self):
		return self.NUMBERFORMAT % self.slice.zLevel;
		
	def xTransform(self):
		return self.margin;
		
	def yTransform(self):
		return (self.slice.layerNo + 1 ) * (self.margin + ( self.slice.sliceHeight * self.unitScale )) + ( self.slice.layerNo * 20 );

"""
    Writes a sliceset to specified file in SVG format.
"""
class SVGExporter ( ):
	def __init__(self,sliceSet):
		self.sliceSet = sliceSet
		self.title="Untitled";
		self.description="No Description"
		self.unitScale = 3.7;
		self.units = sliceSet.analyzer.guessUnitOfMeasure();
		self.NUMBERFORMAT = '%0.3f';
		
	def export(self, fileName):
		#export svg
		#the list of layers requires a thin layer around the
		#slices in the slice set, due to the transformations required
		#for the fancy viewer
		
		slices = self.sliceSet.slices;
		logging.info("Exporting " + str(len(slices)) + " slices to file'" + fileName + "'...");
		layers = []
		for s in	self.sliceSet.slices:
			layers.append( SVGLayer(s,self.unitScale,self.NUMBERFORMAT) );
				
		#use a cheetah template to populate the data
		#unfortunately most numbers must be formatted to particular precision		
		#most values are redundant from  sliceSet, but are repeated to allow
		#different formatting without modifying underlying data
		
		t = Template(file='svg_template.tmpl');
		t.sliceSet = self.sliceSet;
		t.layers = layers;
		t.units=self.units;
		t.unitScale = self.unitScale;
		
		#adjust precision of the limits to 4 decimals
		#this converts to a string, but that's ok since we're using it 
		# to populate a template
		t.sliceHeight = self.NUMBERFORMAT % t.sliceSet.sliceHeight;
		t.xMin = self.NUMBERFORMAT % t.sliceSet.analyzer.xMin;
		t.xMax = self.NUMBERFORMAT % t.sliceSet.analyzer.xMax;
		t.xRange = self.NUMBERFORMAT % t.sliceSet.analyzer.xDim;
		t.yMin = self.NUMBERFORMAT % t.sliceSet.analyzer.yMin;
		t.yMax = self.NUMBERFORMAT % t.sliceSet.analyzer.yMax;
		t.yRange = self.NUMBERFORMAT % t.sliceSet.analyzer.yDim;
		t.zMin = self.NUMBERFORMAT % t.sliceSet.analyzer.zMin;
		t.zMax =	self.NUMBERFORMAT % t.sliceSet.analyzer.zMax;	
		t.zRange = self.NUMBERFORMAT % t.sliceSet.analyzer.zDim;
		


		#svg specific properties
		t.xTranslate=(-1)*t.sliceSet.analyzer.xMin
		t.yTranslate=(-1)*t.sliceSet.analyzer.yMin
		t.title=self.title
		t.desc=self.description
		
		#put layer dims as nicely formatted numbers
		t.xMinText = "%0.3f" % t.sliceSet.analyzer.xMin; 
		t.xMaxText = "%0.3f" % t.sliceSet.analyzer.xMax;
		t.yMinText = "%0.3f" % t.sliceSet.analyzer.yMin; 
		t.yMaxText = "%0.3f" % t.sliceSet.analyzer.yMax;
		t.zMinText = "%0.3f" % t.sliceSet.analyzer.zMin;
		t.zMaxText = "%0.3f" % t.sliceSet.analyzer.zMax;
		f = open(fileName,'w');
		f.write(str(t));
		f.close()

"""
	Read a shape from Step file
"""
def readStepShape(fileName):
	logging.info("Reading STEP file:'" + fileName + "'...");
	stepReader = STEPControl.STEPControl_Reader();
	stepReader.ReadFile(fileName);
	
	numItems = stepReader.NbRootsForTransfer();
	numTranslated = stepReader.TransferRoots();
	logging.info("Read " + str(numTranslated) + " from File.");
	shape = stepReader.OneShape();
	logging.info("Done.");
	return shape;

def readSTLShape(fileName):
	ts = TopoDS.TopoDS();

	logging.info("Reading STL:'" + fileName + "'...");
	#read stl file
	shape = TopoDS.TopoDS_Shape()
	stl_reader = StlAPI.StlAPI_Reader()
	stl_reader.Read(shape,fileName)
	logging.info("Fixing holes and degenerated Meshes...");
	sf = ShapeFix.ShapeFix_Shape(shape);
	sf.Perform();
	fixedShape = sf.Shape();
	logging.info("Making Solid from the Shell...");
	#bb = BRepBuilderAPI.BRepBuilderAPI_MakeSolid(ts.Shell(fixedShape));
	#bb.Build();
	bb = ShapeFix.ShapeFix_Solid();
	return bb.SolidFromShell(ts.Shell(fixedShape));
	logging.info("Done.");
	return bb.Solid();



def printUsage():
	print """
		Usage: OccSliceLib <inputfile: STL or STEP> [sliceThickness]
			- inputfile [required] is an STL or STEP file, ending in .stl, .stp, or .step.
			- sliceThickness [optional] is in the same units as the object, and is optional
				 defaults to 0.3mm or 0.012 in
		
		Creates an SVG output file compatible with skeinforge	, in same directory as inputfile
	"""
def main(filename,sliceThickness):

	app = wx.PySimpleApp()
	wx.InitAllImageHandlers()
	
	ok = False;
	if filename.lower().endswith('stl'):
		theSolid = readSTLShape(filename);
		ok = True;
	
	if filename.lower().endswith('step') or filename.lower().endswith('stp'):
		theSolid = readStepShape(filename);
		ok = True;
	
	if not ok:
		printUsage();
		return;
	
	#compute output filename
	outFileName = filename[ : filename.rfind( '.' ) ] + '_sliced.svg'
	
	frame = AppFrame(None,filename,20,20)
	frame.canva.InitDriver()

	sliceFrame = AppFrame(None,"Slices of " + filename,420,20)
	sliceFrame.canva.InitDriver()
	sliceFrame.canva._display.SetModeWireFrame()
	sliceFrame.Show(True)
	
	
	analyzer = ShapeAnalyzer(theSolid);	
	shape = analyzer.translateToPositiveSpace();

	frame.showShape(shape);	
	frame.Show(True)			

	#slice it
	sliceSet = Slicer(shape);
	sliceSet.display = sliceFrame;	
	
	if not sliceThickness ==None:
		sliceSet.sliceHeight = float(sliceThickness)
		
	sliceSet.execute()
	
	#export to svg
	sexp = SVGExporter(sliceSet);

	sexp.title="RepRap Test";
	sexp.description = "Test Description";	
	sexp.export(outFileName);
	

	app.SetTopWindow(frame)
	app.MainLoop() 


	
if __name__=='__main__':
	nargs = len(sys.argv);
	sliceThickness = None;
	if nargs > 1:
		filename = sys.argv[1];
		if nargs > 2:
			sliceThickness = sys.argv[2];
		main(filename,sliceThickness);
	else:
		printUsage();
		
