import os
from OCC.RWStl import RWStl
from OCC.MeshVS import MeshVS_Mesh
from OCC.OSD import OSD_Path


#===============================================================================
# adapted from: http://www.opencascade.org/org/forum/thread_9793/?forum=3
#===============================================================================

_stl_file = '/Users/localadmin/Documents/workspace/pythonocc/data/_3dmodels/aube_pleine.stl'

from OCC.TCollection import TCollection_AsciiString

def load_stl_data(_pth):
    assert os.path.isfile(_pth), 'not a valid path {0}'.format(_pth)
    _ascii_str = TCollection_AsciiString(_stl_file)
    _osd_pth = OSD_Path(_ascii_str)
    aSTLMesh = RWStl.ReadFile(_osd_pth).GetObject()
    return aSTLMesh


def build_meshvs_from_stl(_myMesh):


    #XSDRAWSTLVRML_DataSource::XSDRAWSTLVRML_DataSource( const Handle( StlMesh_Mesh )& aMesh )
    #    {
    #    myMesh = aMesh;
    #



    if not myMesh.IsNull():
        aCoords = _myMesh.Vertices()

    #    {
    #    const TColgp_SequenceOfXYZ& aCoords = myMesh->Vertices();
    #Standard_Integer len = aCoords.Length(), i, j;
    #myNodeCoords = new TColStd_HArray2OfReal(1, len, 1, 3);
    #cout << "Nodes : " << len << endl;
    #
    #gp_XYZ xyz;
    #
    #for( i = 1; i <= len; i++ )
    #    {
    #    myNodes.Add( i );
    #xyz = aCoords(i);
    #
    #myNodeCoords->SetValue(i, 1, xyz.X());
    #myNodeCoords->SetValue(i, 2, xyz.Y());
    #myNodeCoords->SetValue(i, 3, xyz.Z());
    #}
    #
    #const StlMesh_SequenceOfMeshTriangle& aSeq = myMesh->Triangles();
    #len = aSeq.Length();
    #myElemNormals = new TColStd_HArray2OfReal(1, len, 1, 3);
    #myElemNodes = new TColStd_HArray2OfInteger(1, len, 1, 3);
    #
    #cout << "Elements : " << len << endl;
    #
    #for( i = 1; i <= len; i++ )
    #    {
    #    myElements.Add( i );
    #Handle( StlMesh_MeshTriangle ) aTriangle = aSeq.Value( i );
    #Standard_Integer V[3]; Standard_Real nx, ny, nz;
    #
    #aTriangle->GetVertexAndOrientation( V[0], V[1], V[2], nx, ny, nz );
    #
    #for( j = 0; j < 3; j++ )
    #    {
    #    myElemNodes->SetValue(i, j+1, V[j]);
    #}
    #
    #myElemNormals->SetValue(i, 1, nx);
    #myElemNormals->SetValue(i, 2, ny);
    #myElemNormals->SetValue(i, 3, nz);
    #}
    #}
    #cout << "Construction is finished" << endl;
    #}
    pass

_stl_data = load_stl_data(_stl_file)

msh = MeshVS_Mesh()



#aMesh = new MeshVS_Mesh();
#Handle( XSDRAWSTLVRML_DataSource ) aDS = new XSDRAWSTLVRML_DataSource( aSTLMesh );
#
#aMesh->SetDataSource(aDS);
#aMesh->AddBuilder( new MeshVS_MeshPrsBuilder( aMesh), Standard_True );//False -> No selection
#
#aMesh->GetDrawer()->SetBoolean(MeshVS_DA_DisplayNodes,Standard_False); //MeshVS_DrawerAttribute
#aMesh->GetDrawer()->SetBoolean(MeshVS_DA_ShowEdges,Standard_False);
#aMesh->GetDrawer()->SetMaterial(MeshVS_DA_FrontMaterial,DEFAULT_MATERIAL);
#
#
#aMesh->SetColor(Quantity_NOC_AZURE);
#aMesh->SetDisplayMode( MeshVS_DMF_Shading ); // Mode as defaut
#aMesh->SetHilightMode( MeshVS_DMF_WireFrame ); // Wireframe as default hilight mode
#
#myDoc->m_AISContext->Display(aMesh);
