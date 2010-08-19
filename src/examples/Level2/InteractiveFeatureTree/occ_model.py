#!/usr/bin/env python

##Copyright 2009-2010, Bryan Cole (bryancole.cam@googlemail.com)
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


from enthought.traits.api import (HasTraits, Property, Bool, 
                        on_trait_change, cached_property, Instance,
                        List, Str, Enum)

from enthought.traits.ui.api import View, Item

from utils import Tuple, EditorTraits, Int, Float, Range

from OCC import TDF, TopoDS, BRepPrimAPI, BRepAlgoAPI, gp, BRepFilletAPI,\
        TNaming, TopTools
        
from OCC.Utils.Topology import Topo

###defining an dedicated trait for filter inputs means 
###we can track input changes easily
Input = Instance(klass="ProcessObject", process_input=True)
    

class ProcessObject(HasTraits):
    """
    Base class for all model component objects
    """
    name = Str
    
    #
    #This flag indicates if the object parameters have changed
    #
    modified = Bool(True)
    
    #
    #We could link each process-object to a node in an OCAF document
    #Not used yet.
    #
    label = Instance(TDF.TDF_Label)
    
    #
    #Parent TDF_label under which this label will be created
    #
    parent_label = Instance(TDF.TDF_Label)
    
    #
    #This is the output of the object. The property calls the execute method
    #to evaluate the result (which in turn calls up the tree)
    #
    shape = Property(Instance(TopoDS.TopoDS_Shape))
    
    #
    #Shadow trait which stores the cached shape
    #
    _shape = Instance(TopoDS.TopoDS_Shape)

    #
    #A list of all inputs, for the benefit of the TreeEditor
    #
    _inputs = List
      
    #
    #We hook up listeners to each input to listen to changes in their
    #modification trait. Hence, modifications propagate down the tree
    #
    @on_trait_change("+process_input")
    def on_input_change(self, obj, name, vold, vnew):
        print "ch", vold, vnew
        if vold is not None:
            vold.on_trait_change(self.on_modify, 'modified', remove=True)
            if vold in self._input_set:
                del self._inputs[self._inputs.index(vold)]
        
        vnew.on_trait_change(self.on_modify, 'modified')
        self._inputs.append(vnew)
        
    def _parent_label_changed(self, old_label, new_label):
        ts = TDF.TDF_TagSource()
        self.label = ts.NewChild(new_label)
        
    def on_modify(self, vnew):
        if vnew:
            self.modified = False
            self.modified = True
        
    def _get_shape(self):
        if self.modified:
            shape = self.execute()
            self._shape = shape
            self.modified = False
            return shape
        else:
            return self._shape
        
    def execute(self):
        """return a TopoDS_Shape object"""
        raise NotImplementedError
    
    def update_naming(self, make_shape):
        """called within the Execute method, to update the Naming
        Structure. This is key to getting Topological Naming to work"""
        raise NotImplementedError
        
        
class TopologySource(ProcessObject):
    def update_naming(self, make_shape):
        """
        Create named shapes for the created primitive and all the
        sub-shapes we want to track. It seems sufficient to 
        track faces. TNaming_Selector automatically identifies
        other topology (edges, vertices) based on the faces to
        which they belong
        """
        label = self.label
        shape = make_shape.Shape()
        builder = TNaming.TNaming_Builder(label)
        builder.Generated(shape)
        for i, face in enumerate(Topo(shape).faces()):
            f_label = label.FindChild(i+1) #creates a new label if it is not found
            builder = TNaming.TNaming_Builder(f_label)
            builder.Generated(face)
            
            
class FilterSource(ProcessObject):
    def update_naming(self, make_shape):
        label = self.label
        shape = make_shape.Shape()
        
        input_shape = make_shape.Shape()
        
        builder = TNaming.TNaming_Builder(label)
        builder.Generated(input_shape, shape)
        
        #FindChild creates a new label, if one doesn't exist.
        #Label entry numbers are not necessarily incremental.
        #They are more like dictionary keys.
        gen_label = label.FindChild(1)
        mod_label = label.FindChild(2)
        del_label = label.FindChild(3)
        
        gen_builder = TNaming.TNaming_Builder(gen_label)
        mod_builder = TNaming.TNaming_Builder(mod_label)
        del_builder = TNaming.TNaming_Builder(del_label)
        
        topo = Topo(input_shape)
        
        for face in topo.faces():
            gen_shapes = make_shape.Generated(face)
            itr = TopTools.TopTools_ListIteratorOfListOfShape(gen_shapes)
            while itr.More():
                this = itr.Value()
                gen_builder.Generated(face, this)
                print "generated", face, this
                itr.Next()
                        
        for face in topo.faces():
            mod_shapes = make_shape.Modified(face)
            itr = TopTools.TopTools_ListIteratorOfListOfShape(mod_shapes)
            while itr.More():
                this = itr.Value()
                mod_builder.Modified(face, this)
                print "modified", face, this
                itr.Next()
                        
        for face in topo.faces():
            if make_shape.IsDeleted(face):
                del_builder.Delete(face)
      
      
class BlockSource(TopologySource):
    name = "Block"
    dims = Tuple(10.0,20.0,30.0, editor_traits={'cols':3})
    position = Tuple(0.,0.,0., editor_traits={'cols':3})
    x_axis = Tuple(1.,0.,0., editor_traits={'cols':3})
    z_axis = Tuple(0.,0.,1., editor_traits={'cols':3})
    
    traits_view = View('name',
                       'dims',
                       'position',
                       'x_axis',
                       'z_axis',
                       'modified')
    
    @on_trait_change("dims, position, x_axis, z_axis")
    def on_edit(self):
        self.modified = False
        self.modified = True

    def execute(self):
        ax = gp.gp_Ax2(gp.gp_Pnt(*self.position),
                        gp.gp_Dir(*self.z_axis),
                        gp.gp_Dir(*self.x_axis))
        m_box = BRepPrimAPI.BRepPrimAPI_MakeBox(ax, *self.dims)
        self.update_naming(m_box)
        return m_box.Shape()
        
        
class SphereSource(TopologySource):
    name="Sphere"
    radius = Float(5.0)
    position = Tuple(0.,0.,0., editor_traits={'cols':3})
    
    traits_view = View('name',
                       'radius',
                       'position',
                       'modified')
    
    @on_trait_change("radius, position")
    def on_edit(self):
        self.modified = False
        self.modified = True
        
    def execute(self):
        pt = gp.gp_Pnt(*self.position)
        R = self.radius
        sph = BRepPrimAPI.BRepPrimAPI_MakeSphere(pt, R)
        self.update_naming(sph)
        return sph.Shape()
        
        
class BooleanOpFilter(FilterSource):
    name = "Boolean Operation"
    input = Input
    tool = Input
    
    operation = Enum("cut", "fuse", "common")
    
    map = {'cut': BRepAlgoAPI.BRepAlgoAPI_Cut,
           'fuse': BRepAlgoAPI.BRepAlgoAPI_Fuse,
           'common': BRepAlgoAPI.BRepAlgoAPI_Common}
    
    traits_view = View('operation',
                       'modified')
    
    def _operation_changed(self, vnew):
        self.name = "Boolean Op: %s"%vnew
        self.modified = False
        self.modified = True
        
    def execute(self):
        builder = self.map[self.operation]
        s1 = self.input.shape
        s2 = self.tool.shape
        bld = builder(s1, s2)
        self.update_naming(bld)
        return bld.Shape()
        
    def update_naming(self, make_shape):
        label = self.label
        shape = make_shape.Shape()
        
        input_shape = make_shape.Shape1()
        tool_shape = make_shape.Shape2()
        
        builder = TNaming.TNaming_Builder(label)
        builder.Generated(input_shape, shape)
        builder.Generated(tool_shape, shape)
        
        gen_label = label.FindChild(1)
        mod_label = label.FindChild(2)
        del_label = label.FindChild(3)
        
        gen_builder = TNaming.TNaming_Builder(gen_label)
        mod_builder = TNaming.TNaming_Builder(mod_label)
        del_builder = TNaming.TNaming_Builder(del_label)
        
        if make_shape.HasGenerated():
            for in_shape in [input_shape, tool_shape]:
                for face in Topo(in_shape).faces():
                    gen_shapes = make_shape.Generated(face)
                    itr = TopTools.TopTools_ListIteratorOfListOfShape(gen_shapes)
                    while itr.More():
                        this = itr.Value()
                        gen_builder.Generated(face, this)
                        print "generated", face, this
                        itr.Next()
                        
        if make_shape.HasModified():
            for face in Topo(input_shape).faces():
                mod_shapes = make_shape.Modified(face)
                itr = TopTools.TopTools_ListIteratorOfListOfShape(mod_shapes)
                while itr.More():
                    this = itr.Value()
                    mod_builder.Modify(face, this)
                    print "modified", face, this
                    itr.Next()
                    
            for face in Topo(tool_shape).faces():
                mod_shapes = make_shape.Modified2(face)
                itr = TopTools.TopTools_ListIteratorOfListOfShape(mod_shapes)
                while itr.More():
                    this = itr.Value()
                    mod_builder.Modify(face, this)
                    print "modified2", face, this
                    itr.Next()
                        
        if make_shape.HasDeleted():
            for face in Topo(input_shape).faces():
                if make_shape.IsDeleted(face):
                    del_builder.Delete(face)
            for face in Topo(tool_shape).faces():
                if make_shape.IsDeleted(face):
                    del_builder.Delete(face)
    
    
class ChamferFilter(FilterSource):
    name = "Chamfer Filter"

    input = Input
    
    size = Float(1.0)
    
    _n_edges = Int(4)
    
    _low = Int(0)
    
    edge_id = Range(low='_low', high='_n_edges')
    
    selector = Instance(TNaming.TNaming_Selector)
    
    traits_view = View(Item('edge_id'),
                       'size',
                       'modified')
    
    def _size_changed(self, new_size):
        self.modified = False
        self.modified = True
    
    @on_trait_change("input, edge_id, label")
    def on_change_selection(self):
        new_id = self.edge_id
        input = self.input
        label = self.label
        
        if not all((input, label)): return
        
        input_shape = input.shape
        
        sel_label = self.label.FindChild(4)
        selector = TNaming.TNaming_Selector(sel_label)
        
        self.selector = selector
        
        topo = Topo(input_shape)
        self._n_edges = topo.number_of_edges()
        for i,edge in enumerate(topo.edges()):
            if i==new_id:
                selector.Select(edge, input_shape)
                print "got selection!"
                break
        else:
            print "no selection"
            
        self.modified = False
        self.modified = True
            
            
    def execute(self):
        input_shape = self.input.shape
        
        topo = Topo(input_shape)
        self._n_edges = topo.number_of_edges()
        
        builder = BRepFilletAPI.BRepFilletAPI_MakeChamfer(input_shape)
        
        Map = TDF.TDF_LabelMap()
        itr = TDF.TDF_ChildIterator(self.parent_label, True)
        while itr.More():
            sub_label = itr.Value()
            Map.Add(sub_label)
            itr.Next()
            
        selector = self.selector
        ret = selector.Solve(Map)
        
        if not ret:
            raise Exception("Failed to solve for edge")
            #print "Failed to solve for edge"
        
        nt = TNaming.TNaming_Tool()
        selected_shape = nt.CurrentShape(selector.NamedShape())
        
        selected_edge = TopoDS.TopoDS().Edge(selected_shape)
        
        try:
            face = Topo(input_shape).faces_from_edge(selected_edge).next()
        except RuntimeError:
            raise #not sure how to handle this
        size = self.size
        builder.Add(size, size, selected_edge, face)
        
        self.update_naming(builder)
        return builder.Shape()
