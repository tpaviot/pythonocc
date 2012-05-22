#!/usr/bin/env python

##Copyright 2009-2011 Thomas Paviot (tpaviot@gmail.com)
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

from OCC.StlAPI import *
from OCC.TopoDS import TopoDS_Shape
import os, warnings

class STLImporter(object):
    """
    Take notice that the STLImporter converts the mesh to a TopoDS_Shape structure
    This implies that the mesh is converted to a BREP datatype
    Inherently, this is a slow approach
    So, for merely displaying the mesh in the viewer
    consider using the FastSTLImporter
    """
    def __init__(self,filename):
        self.set_filename(filename)
        self._shape = None

    def set_filename(self, filename):
        if not os.path.isfile(filename):
            print "STEPImporter initialization Error: file %s not found."%filename
            self._filename = None
        else:
            self._filename = filename
        
    def read_file(self):
        """
        Read the STEP file and stores the result in a TopoDS_Shape
        """
        stl_reader = StlAPI()
        shp = TopoDS_Shape()
        stl_reader.Read(shp,self._filename)
        self._shape = shp

    def get_shape(self):
        if self._shape.IsNull():
            raise Assertion("Error: the shape is NULL")
        else:
            return self._shape


class FastSTLImporter(object):
    """
    This STL importer does not convert to a BREP datatype thus is considerably more optimized
    for displaying meshes.
    """
    def __init__(self,filename, display):
        """

        :param filename:
        :param display:
        """
        self.set_filename(filename)
        self._shape = None

    def set_filename(self, filename):
        if not os.path.isfile(filename):
            print "STEPImporter initialization Error: file %s not found."%filename
            self._filename = None
        else:
            self._filename = filename

    def read_file(self):
        from OCC.RWStl import RWStl
        self.stl_mesh = RWStl().ReadFile()
        #aSTLMesh = RWStl::ReadFile(aFile);

    def draw_mesh(self, display):
        from OCC.MeshVS import MeshVS_Mesh
        raise NotImplementedError('missing XSDRAWSTLVRML_DataSource class')
        #Handle(StlMesh_Mesh) aSTLMesh = RWStl::ReadFile(aFile);
        #Handle( MeshVS_Mesh ) aMesh = new MeshVS_Mesh();
        #Handle( XSDRAWSTLVRML_DataSource ) aDS = new XSDRAWSTLVRML_DataSource( aSTLMesh );
        #aMesh->SetDataSource(aDS);
        #aMesh->AddBuilder( new MeshVS_MeshPrsBuilder( aMesh), Standard_True );//False -> No selection
        #aMesh->GetDrawer()->SetBoolean(MeshVS_DA_DisplayNodes,Standard_False); //MeshVS_DrawerAttribute
        #aMesh->GetDrawer()->SetBoolean(MeshVS_DA_ShowEdges,Standard_False);
        #aMesh->GetDrawer()->SetMaterial(MeshVS_DA_FrontMaterial,DEFAULT_MATERIAL);
        #aMesh->SetColor(Quantity_NOC_AZURE);
        #aMesh->SetDisplayMode( MeshVS_DMF_Shading ); // Mode as defaut
        #aMesh->SetHilightMode( MeshVS_DMF_WireFrame ); // Wireframe as default hilight mode
        #myDoc->m_AISContext->Display(aMesh)


class STLExporter(object):
    """ A TopoDS_Shape to STL exporter. Default mode is ASCII
    """
    def __init__(self, filename=None,ASCIIMode=False):
        self._shape = None #only one shape can be exported
        self._ASCIIMode = ASCIIMode
        self.set_filename(filename)
    
    def set_shape(self, aShape):
        '''
        only a single shape can be exported...
        '''
        #First check the shape
        if aShape.IsNull():
            raise AssertionError("STLExporter Error: the shape is NULL")
        else: 
            self._shape = aShape

    def set_filename(self, filename):
        if os.path.isfile(filename):
            warnings.warn('will be overwriting file: %s' % filename)
        self._filename = filename
            
    def write_file(self):
        stl_writer = StlAPI()
        stl_writer.Write(self._shape,self._filename,self._ASCIIMode)

