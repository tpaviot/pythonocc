"""
 Defines some useful wrappers and utility functions
 Most of these make dealing with underlying APIs require less code,
 and behave more pythonically
 
"""
from OCC import BRep,gp,GeomAbs,GeomAPI,GCPnts,TopoDS,BRepTools,GeomAdaptor,TopAbs,TopTools,TopExp
from OCC import BRepGProp,BRepLProp, BRepBuilderAPI,BRepPrimAPI,GeomAdaptor,GeomAbs,BRepClass,GCPnts,BRepBuilderAPI,BRepOffsetAPI,BRepAdaptor
import time,os,sys,string,logging;
brepTool = BRep.BRep_Tool();
topoDS = TopoDS.TopoDS();

#topexp = TopExp.TopExp()
#texp = TopExp.TopExp_Explorer();
#brt = BRepTools.BRepTools();

log = logging.getLogger('Wrapper');

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

"""
	A floating point range generator
"""		
def frange6(*args):
    """A float range generator."""
    start = 0.0
    step = 1.0

    l = len(args)
    if l == 1:
        end = args[0]
    elif l == 2:
        start, end = args
    elif l == 3:
        start, end, step = args
        if step == 0.0:
            raise ValueError, "step must not be zero"
    else:
        raise TypeError, "frange expects 1-3 arguments, got %d" % l

    v = start
    while True:
        if (step > 0 and v >= end) or (step < 0 and v <= end):
            raise StopIteration
        yield v
        v += step	

def make_vertex(pnt):
	"make a vertex from a single point"
	s = BRepBuilderAPI.BRepBuilderAPI_MakeVertex(pnt);
	s.Build();
	return s.Shape();

def listFromHSequenceOfShape(seq, castToType):
	"return a list from a sequence o shape"
	newList = [];
	for i in range(1,seq.Length()+1):
		newList.append(cast(seq.Value(i),castToType));
	return newList;
	
def edgeFromTwoPoints(p1,p2):
	"make a linear edge from two points "
	builder = BRepBuilderAPI.BRepBuilderAPI_MakeEdge(p1,p2);
	builder.Build();
	if builder.IsDone():
		return builder.Edge();
	else:
		return None;
		
def findParameterOnCurve(point,handleCurve,tolerance):
	"return the closest parameter on the curve for the provided point"
	"returns none if a point is not within tolerance"
	#TODO: Extrema.Extrema_ExtPC will project a point onto an Adaptor_3d Curve
	#so we do not have to approximate with a bspline
	#BrepAdaptor.BrepAdaptor_CompCurve.Trim() will return a trimmed curve between two parameters
	#E1CLib can project points on elementary curves (lines and conics )
	gp = GeomAPI.GeomAPI_ProjectPointOnCurve(point,handleCurve);
	gp.Perform(point);
	if gp.NbPoints()>0:
		#log.debug( "Projection Success!" );
		return [point, gp.LowerDistanceParameter(),gp.LowerDistance()];
	else:
		#log.error( "Projection Failed.");
		return None;

		
def findPointOnCurve(point,handleCurve,tolerance):
	"return the closest parameter on the curve for the provided point"
	"returns none if a point is not within tolerance"
	gp = GeomAPI.GeomAPI_ProjectPointOnCurve(point,handleCurve);
	gp.Perform(point);
	if gp.NbPoints()>0 and gp.LowerDistance() <= tolerance:
		#log.debug( "Projection Success!" );
		return [gp.LowerDistanceParameter(),gp.NearestPoint()];
	else:
		#log.warn( "Projection Failed.");
		return None;

def makeWiresFromOffsetShape(shape):
	"get all the wires from the offset shape"
	resultWires = TopTools.TopTools_HSequenceOfShape();
	if shape.ShapeType() == TopAbs.TopAbs_WIRE:
		log.info( "offset result is a wire" );
		wire = topoDS.Wire(shape);
		#resultWires.append(wire);
		resultWires.Append(wire);
	elif shape.ShapeType() == TopAbs.TopAbs_COMPOUND:
		log.info( "offset result is a compound");

		bb = TopExp.TopExp_Explorer();
		bb.Init(shape,TopAbs.TopAbs_WIRE);
		while bb.More():
			w = topoDS.Wire(bb.Current());
						
			#resultWires.append(w);
			resultWires.Append(w);#
			#debugShape(w);
			bb.Next();
		
		bb.ReInit();	
	
	return resultWires;	
		
def edgeFromTwoPointsOnCurve(handleCurve,p1,p2):
	"make an edge from a curve and two parameters"
	builder = BRepBuilderAPI.BRepBuilderAPI_MakeEdge(handleCurve, p1,p2);
	builder.Build();
	if builder.IsDone():
		return builder.Edge();
	else:
		log.error( "Error building Edge: Error Number %d" % builder.Error());
		return None;
		
def cast(shape,type):
	"cast a shape as its correct type"
	if type == TopAbs.TopAbs_WIRE:
		return topoDS.Wire(shape);
	elif type == TopAbs.TopAbs_EDGE:
		return topoDS.Edge(shape);
	elif type == TopAbs.TopAbs_VERTEX:
		return topoDS.Vertex(shape);
	elif type == TopAbs.TopAbs_SOLID:
		return topoDS.Solid(shape);
	elif type == TopAbs.TopAbs_FACE:
		return topoDS.Face(shape);
	elif type == TopAbs.TopAbs_SHELL:
		return topoDS.Shell(shape);
	elif type == TopAbs.TopAbs_COMPOUND:
		return topoDS.Compound(shape);
	return shape;
	
"""
	Point
"""
class Point:
	def __init__(self,point):
		self.point = point;
		
	def __str__(self):
		return "[%0.3f %0.3f %0.3f]" % (self.point.X(), self.point.Y(), self.point.Z());
		
"""
  Edge: provides useful functions for dealing with an edge shape
"""
class Edge:
	def __init__(self,edge):
		self.edge = edge;		
		hc = brepTool.Curve(edge);		
		self.curve = GeomAdaptor.GeomAdaptor_Curve(hc[0]); 
		self.firstParameter = hc[1];
		self.lastParameter = hc[2];		
		
		p1 = self.curve.Value(self.firstParameter);
		p2 = self.curve.Value(self.lastParameter);

		#compute the first and last points, which are very commonly used		
		if edge.Orientation() == TopAbs.TopAbs_FORWARD:
			self.reversed = False;
			self.firstPoint = p1;
			self.lastPoint = p2;
		else:
			self.reversed = True;
			self.firstPoint = p2;
			self.lastPoint = p1;
		
	def isLine(self):
		return self.curve.GetType() == GeomAbs.GeomAbs_Line;
	
	def isCircle(self):
		return self.curve.GetType() == GeomAbs.GeomAbs_Circle;
	
	def discretePoints(self,deflection):
		"a generator for all the points on the edge, in forward order"
		gc = GCPnts.GCPnts_QuasiUniformDeflection(self.curve,deflection,self.firstParameter,self.lastParameter);
		print "Making Dicrete Points!"
		i = 1;
		numPts = gc.NbPoints();
		while i<=numPts:
			if self.reversed:
				yield gc.Value(numPts-i+1);
			else:
				yield gc.Value(i);
			i+=1;
			
	def __str__(self):
		if self.isLine():
			s = "Line:\t";
		elif self.isCircle():
			s  = "Circle:\t";
		else:
			s = "Curve:\t"; 
		return s + str(Point(self.firstPoint)) + "-->" + str(Point(self.lastPoint));
		
"""
	Follow a wire's edges in order
"""
class Wire():
	def __init__(self,wire):
		self.wire = wire;
		
	def edges(self):
		"a generator for edges"
		bwe = BRepTools.BRepTools_WireExplorer(self.wire);
		while bwe.More():
			edge = bwe.Current();
			yield edge;
			bwe.Next();
		bwe.Clear();
	
	def discretePoints(self,deflection):
		"discrete points for all of a wire"
		for e in self.edges():
			for m in Edge(e).discretePoints(deflection):
				yield m;
		
if __name__=='__main__':
	print "Basic Wrappers and Utilities Module"
	print "No Test Cases Yet";
