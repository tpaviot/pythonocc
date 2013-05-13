import os
from OCC.RWStl import RWStl
from OCC.OSD import OSD_Path
from OCC.TCollection import TCollection_AsciiString
from OCC.Graphic3d import Graphic3d_MaterialAspect, Graphic3d_NOM_SATIN
from OCC.MeshVS import MeshVS_Mesh, MeshVS_MeshPrsBuilder, MeshVS_DA_FrontMaterial, MeshVS_DA_DisplayNodes, MeshVS_DA_ShowEdges, MeshVS_DA_SmoothShading, MeshVS_DA_Reflection
try:
    from OCC.SMESH import SMESH_Gen, SMESH_MeshVSLink
except ImportError:
    raise AssertionError("SMESH wrapper is required to use the STL_fast module")

#===============================================================================
# Currently -alas- the fast STL mesh loader relies on SMESH as a dependency
# It would be _very_ fortunate to wrap "XSDRAWSTLVRML_DataSource"
# since that would allow to do away with this dependency injection
# also, this is the "right" choice in terms of API...
# adapted from: http://www.opencascade.org/org/forum/thread_9793/?forum=3
#===============================================================================


# _stl_file = '/Users/localadmin/Documents/workspace/pythonocc/data/_3dmodels/aube_pleine.stl'
# def _load_stl_data(_pth):
#
#     assert os.path.isfile(_stl_file), 'not a valid path {0}'.format(_stl_file)
#
#     _ascii_str = TCollection_AsciiString(_stl_file)
#     _osd_pth = OSD_Path(_ascii_str)
#     aSTLMesh = RWStl.ReadFile(_osd_pth).GetObject()
#     return aSTLMesh

# def draw_stl_file(display):
#
#
#    Handle(StlMesh_Mesh) aSTLMesh = RWStl::ReadFile(aFile);
#      Handle( MeshVS_Mesh ) aMesh = new MeshVS_Mesh();
#      Handle( XSDRAWSTLVRML_DataSource ) aDS = new XSDRAWSTLVRML_DataSource( aSTLMesh );
#
#      aMesh->SetDataSource(aDS);
#      aMesh->AddBuilder( new MeshVS_MeshPrsBuilder( aMesh), Standard_True );//False -> No selection
#
#      aMesh->GetDrawer()->SetBoolean(MeshVS_DA_DisplayNodes,Standard_False); //MeshVS_DrawerAttribute
#      aMesh->GetDrawer()->SetBoolean(MeshVS_DA_ShowEdges,Standard_False);
#      aMesh->GetDrawer()->SetMaterial(MeshVS_DA_FrontMaterial,DEFAULT_MATERIAL);
#
#
#      aMesh->SetColor(Quantity_NOC_AZURE);
#      aMesh->SetDisplayMode( MeshVS_DMF_Shading ); // Mode as defaut
#      aMesh->SetHilightMode( MeshVS_DMF_WireFrame ); // Wireframe as default hilight mode
#
#      myDoc->m_AISContext->Display(aMesh);

def get_fast_stl_mesh_from_path(_path):
    """
    open/parse STL file and get the resulting TopoDS_Shape instance
    """
    gen = SMESH_Gen()
    mesh = gen.CreateMesh(0, True)
    # .STLToMesh does a poor job in catching errors, so let's check the path...
    if not os.path.isfile(_path):
        raise ValueError("{0} is not a valid path".format(_path))
    mesh.STLToMesh(_path)
    # test for a minimal number of mesh vertices
    if mesh.NbNodes() < 1:
        raise ValueError("stl file {0} contains no geometry".format(_path))
    aDS = SMESH_MeshVSLink(mesh)
    aMeshVS = MeshVS_Mesh(True)
    DMF = 2 # to wrap; 1 is wireframe
    MeshVS_BP_Mesh       =  5 # To wrap!
    aPrsBuilder = MeshVS_MeshPrsBuilder(aMeshVS.GetHandle(),DMF,aDS.GetHandle()) #,0,MeshVS_BP_Mesh)

    aMeshVS.SetDataSource(aDS.GetHandle())
    aMeshVS.AddBuilder(aPrsBuilder.GetHandle(),False)
    MeshVS_DMF_HilightPrs = int(0x0400)
    MeshVS_DMF_Wireframe = int(0x0001)
    MeshVS_DMF_Shading = int(0x0002)
    aMeshVS.SetDisplayMode(MeshVS_DMF_Shading) # 1 -> wireframe, 2 -> shaded
#    aMeshVS.SetDisplayMode(MeshVS_DMF_Wireframe) # 1 -> wireframe, 2 -> shaded
    #    aMeshVS.SetColor(Quantity_NOC_AZURE)
    #Create the graphic window and display the mesh
    mesh_to_display = aMeshVS.GetHandle()
    # display the mesh edges in black
    mesh_drawer = aMeshVS.GetDrawer().GetObject()
    # Edges in black
    #    mesh_drawer.SetColor(3,Quantity_Color(Quantity_NOC_BLACK))# 3 means Edge color
    # Markers in green
    #    mesh_drawer.SetColor(13,Quantity_Color(Quantity_NOC_GREEN))
    mesh_drawer.SetMaterial(MeshVS_DA_FrontMaterial, Graphic3d_MaterialAspect(Graphic3d_NOM_SATIN))
    mesh_drawer.SetBoolean( MeshVS_DA_DisplayNodes, False)
    mesh_drawer.SetBoolean( MeshVS_DA_ShowEdges, False)
    mesh_drawer.SetBoolean( MeshVS_DA_SmoothShading, True)
    mesh_drawer.SetBoolean( MeshVS_DA_Reflection, True)
    #    mesh_drawer.SetColor( MeshVS_DA_InteriorColor, Quantity_Color(Quantity_NOC_AZURE))
    #    mesh_drawer.SetBoolean(MeshVS_DA_ColorReflection, True)
    msh = mesh_to_display.GetObject()
    return msh
