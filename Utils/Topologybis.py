# -*- coding: iso-8859-1 -*-
#! /usr/bin/python

##Copyright 2008 Jelle Feringa
##
##jelle.feringa@gmail.com
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCasacde library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.

import OCC

class Topo(object):
    '''
    sketch for a pythonic topology wrapper
    note that `myShape` should be self, which is in return a occ.TopoShape
    
    with this 
    '''
    
    def __init__(self, myShape):
        # assert isinstance( myShape, occ.TopoShape), '% is not a TopoShape instance' % (myShape.__class__)
        self.myShape = myShape
    
    def __loop_topo(self, topologyType):
        '''
        this could be a faces generator for a python TopoShape class
        that way you can just do:
        for face in srf.faces:
            processFace(face)
        '''
        
        tds =  OCC.TopoDS()

        topoTypes = {   OCC.TopAbs_VERTEX:      tds.Vertex,
                        OCC.TopAbs_EDGE:        tds.Edge,
                        OCC.TopAbs_FACE:        tds.Face,
                        OCC.TopAbs_WIRE:        tds.Wire,
                        #OCC.TopAbs_SHAPE:       tds.Shape,
                        OCC.TopAbs_SHELL:       tds.Shell,
                        OCC.TopAbs_SOLID:       tds.Solid,
                        OCC.TopAbs_COMPOUND:    tds.Compound,
                        OCC.TopAbs_COMPSOLID:   tds.CompSolid,
                }
        
        assert topologyType in topoTypes.keys(), '%s not one of %s' %( topologyType, topoTypes.keys() ) 
        
        topExp = OCC.TopExp_Explorer()
        topExp.Init(self.myShape, topologyType)
        
        while topExp.More():
            yield topoTypes[topologyType]( topExp.Current() )
            topExp.Next()
            
    def GetFaces(self):
        '''
        loops over all faces 
        '''
        return self.__loop_topo(OCC.TopAbs_FACE)
    
    
    def GetVertices(self):
        '''
        loops over all faces 
        '''
        return self.__loop_topo(OCC.TopAbs_VERTEX)
    
    def GetEdges(self):
        '''
        loops over all faces 
        '''
        return self.__loop_topo(OCC.TopAbs_EDGE)
    
    def GetWires(self):
        '''
        loops over all faces 
        '''
        return self.__loop_topo(OCC.TopAbs_WIRE)
    
    def GetShells(self):
        '''
        loops over all faces 
        '''
        return self.__loop_topo(OCC.TopAbs_SHELL)
    

    
        
