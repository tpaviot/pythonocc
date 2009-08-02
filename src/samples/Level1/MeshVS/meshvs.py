#    http://www.opencascade.org/org/forum/thread_9793/
#     Handle(StlMesh_Mesh) aSTLMesh = RWStl::ReadFile(aFile);
#     Handle( MeshVS_Mesh ) aMesh = new MeshVS_Mesh();
#     Handle( XSDRAWSTLVRML_DataSource ) aDS = new XSDRAWSTLVRML_DataSource( aSTLMesh );
#
#     aMesh->SetDataSource(aDS);
#     aMesh->AddBuilder( new MeshVS_MeshPrsBuilder( aMesh), Standard_True );//False -> No selection 
#
#     aMesh->GetDrawer()->SetBoolean(MeshVS_DA_DisplayNodes,Standard_False); //MeshVS_DrawerAttribute
#     aMesh->GetDrawer()->SetBoolean(MeshVS_DA_ShowEdges,Standard_False);
#     aMesh->GetDrawer()->SetMaterial(MeshVS_DA_FrontMaterial,DEFAULT_MATERIAL);
#
#
#     aMesh->SetColor(Quantity_NOC_AZURE);
#     aMesh->SetDisplayMode( MeshVS_DMF_Shading ); // Mode as defaut
#     aMesh->SetHilightMode( MeshVS_DMF_WireFrame ); // Wireframe as default hilight mode
#
#     myDoc->m_AISContext->Display(aMesh);
