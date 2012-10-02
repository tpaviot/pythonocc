# dir variable for easy change of Makefile.am locations
# geomdir = ./

# copy some files
targetdir = $(prefix)
dist_target_DATA = LICENCE.lgpl

resourcedir = $(prefix)/resources
dist_resource_DATA = $(srcdir)/resources/GUID.txt $(srcdir)/resources/ImportExport $(srcdir)/resources/Resources $(srcdir)/resources/ShHealing



#AM_CPPFLAGS = -fpermissive -ffriend-injection -I$(CASROOT)/inc -I$(srcdir)/$(geomdir)inc/ -I$(srcdir)/$(geomdir)src/GEOMAlgo -I$(srcdir)/$(geomdir)src/BlockFix -I$(srcdir)/$(geomdir)src/GEOM -I$(srcdir)/$(geomdir)src/NMTTools -I$(srcdir)/$(geomdir)src/NMTDS

# set compiler flags and include directories, -fpermissive and -ffriend-injection not needed for occ6.3
AM_CPPFLAGS = -I$(CASROOT)/inc -I$(srcdir)/$(geomdir)inc/ -I$(srcdir)/$(geomdir)src/GEOMAlgo -I$(srcdir)/$(geomdir)src/BlockFix -I$(srcdir)/$(geomdir)src/GEOM -I$(srcdir)/$(geomdir)src/NMTTools -I$(srcdir)/$(geomdir)src/NMTDS

# set library names
lib_LTLIBRARIES = libExchangeCSFDB.la libArchimede.la libNMTDS.la libNMTTools.la libGEOMAlgo.la libGEOMImpl.la libGEOM.la libExchangeBREP.la libExchangeIGES.la libExchangeSTEP.la libExchangeSTL.la libExchangeVRML.la libPartition.la libShHealOper.la libSketcher.la

# set global linker flags
AM_LDFLAGS = -version-info 1:0:0

uninstall-local:
	-rm -rf $(DESTDIR)$(libdir)
	-rm -rf $(DESTDIR)$(includedir)
	-rm -rf $(DESTDIR)$(prefix)/resources
	-rm $(DESTDIR)$(prefix)/env_geom.sh

install-exec-local:
	test -z "$(DESTDIR)$(prefix)" || $(mkdir_p) "$(DESTDIR)$(prefix)"
	@echo "#!/bin/bash" 											> $(DESTDIR)$(prefix)/env_geom.sh
	@echo "export GEOMROOT="$(prefix) 								>> $(DESTDIR)$(prefix)/env_geom.sh
	@echo "export CSF_ResourcesDefaults="$(prefix)/resources 		>> $(DESTDIR)$(prefix)/env_geom.sh
	@echo "if [ -z "LD_LIBRARY_PATH" ];" 							>> $(DESTDIR)$(prefix)/env_geom.sh
	@echo "then LD_LIBRARY_PATH="$(libdir)";" 						>> $(DESTDIR)$(prefix)/env_geom.sh
	@echo "else LD_LIBRARY_PATH="$(libdir)":\$$LD_LIBRARY_PATH;" 	>> $(DESTDIR)$(prefix)/env_geom.sh 
	@echo "fi" 														>> $(DESTDIR)$(prefix)/env_geom.sh 
	chmod a+x $(DESTDIR)$(prefix)/env_geom.sh
	test -z "$(DESTDIR)$(prefix)/resources" || $(mkdir_p) "$(DESTDIR)$(prefix)/resources"
	cp $(srcdir)/resources/GUID.txt "$(DESTDIR)$(prefix)/resources"
	cp $(srcdir)/resources/ImportExport "$(DESTDIR)$(prefix)/resources"
	cp $(srcdir)/resources/Resources "$(DESTDIR)$(prefix)/resources"
	cp $(srcdir)/resources/ShHealing "$(DESTDIR)$(prefix)/resources"

# set ARCHIMDE sources
libArchimede_la_SOURCES =  $(srcdir)/$(geomdir)src/Archimede/Archimede_VolumeSection.cpp

# set GEOMAlgo sources
libGEOMAlgo_la_SOURCES =  $(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Algo.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder_1.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder_2.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder_3.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder_4.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderArea.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderFace.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderShape.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderSolid.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderTools.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfBox.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Clsf.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSolid.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSurf.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_CoupleOfShapes.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapNodeOfDataMapOfShapeReal_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapOfPassKeyInteger_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapOfPassKeyShapeShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapOfRealListOfShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapOfShapeReal_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_DataMapOfShapeShapeSet_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn1.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn2.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOnQuad.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_GlueAnalyser.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer1.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_HAlgo.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapOfIntegerShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapOfPassKeyListOfShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapOfShapeBox_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapOfShapeShapeInfo_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_IndexedDataMapOfShapeState_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ListIteratorOfListOfCoupleOfShapes_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ListIteratorOfListOfPnt_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ListNodeOfListOfCoupleOfShapes_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ListNodeOfListOfPnt_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ListOfCoupleOfShapes_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ListOfPnt_0.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKey.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyMapHasher.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShape.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShapeMapHasher.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeAlgo.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfo.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfoFiller_1.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfoFiller.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSet.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSolid.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShellSolid.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SolidSolid.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Splitter.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_StateCollector.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SurfaceTools.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools3D.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_VertexSolid.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WESCorrector.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireEdgeSet.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSolid.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSplitter.cpp \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Algo.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderArea.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderFace.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderShape.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderSolid.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderTools.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfBox.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Clsf.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSolid.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSurf.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_CoupleOfShapes.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn1.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn2.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_GlueAnalyser.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer1.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_HAlgo.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKey.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyMapHasher.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShape.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShapeMapHasher.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeAlgo.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfoFiller.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfo.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSet.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSolid.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShellSolid.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SolidSolid.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Splitter.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_StateCollector.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SurfaceTools.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools3D.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_VertexSolid.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WESCorrector.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireEdgeSet.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSolid.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSplitter.ixx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Algo.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderArea.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderFace.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderShape.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderSolid.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderTools.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfBox.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Clsf.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSolid.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSurf.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_CoupleOfShapes.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn1.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn2.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_GlueAnalyser.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer1.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_HAlgo.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKey.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyMapHasher.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShape.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShapeMapHasher.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeAlgo.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfoFiller.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfo.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSet.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSolid.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShellSolid.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SolidSolid.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Splitter.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_StateCollector.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SurfaceTools.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools3D.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_VertexSolid.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WESCorrector.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireEdgeSet.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSolid.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSplitter.jxx \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Algo.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderArea.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Builder.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderFace.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderShape.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderSolid.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_BuilderTools.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfBox.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Clsf.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSolid.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ClsfSurf.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_CoupleOfShapes.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn1.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn2.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_FinderShapeOn.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_GlueAnalyser.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer1.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Gluer.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_HAlgo.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKey.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyMapHasher.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShape.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_PassKeyShapeMapHasher.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeAlgo.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfo.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeInfoFiller.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSet.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShapeSolid.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_ShellSolid.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SolidSolid.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Splitter.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_StateCollector.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_SurfaceTools.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools3D.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_Tools.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_VertexSolid.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WESCorrector.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireEdgeSet.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSolid.cdl \
$(srcdir)/$(geomdir)src/GEOMAlgo/GEOMAlgo_WireSplitter.cdl \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_BlockFixAPI.cpp \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_CheckTool.cpp \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix.cpp \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_PeriodicSurfaceModifier.cpp \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_SphereSpaceModifier.cpp \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionEdges.cpp \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionFaces.cpp \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_BlockFixAPI.ixx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_CheckTool.ixx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix.ixx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_PeriodicSurfaceModifier.ixx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_SphereSpaceModifier.ixx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionEdges.ixx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionFaces.ixx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_BlockFixAPI.jxx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_CheckTool.jxx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix.jxx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_PeriodicSurfaceModifier.jxx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_SphereSpaceModifier.jxx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionEdges.jxx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionFaces.jxx \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_BlockFixAPI.cdl \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix.cdl \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_CheckTool.cdl \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_PeriodicSurfaceModifier.cdl \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_SphereSpaceModifier.cdl \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionEdges.cdl \
$(srcdir)/$(geomdir)src/BlockFix/BlockFix_UnionFaces.cdl



# set GEOMImpl sources
libGEOMImpl_la_SOURCES =  $(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_3DSketcherDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ArcDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ArchimedeDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_Block6Explorer.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_BlockDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_BooleanDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_BoxDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ChamferDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_CircleDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ConeDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_CopyDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_CurveDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_CylinderDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_DiskDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_DraftDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_EllipseDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ExportDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_FaceDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_FilletDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_FillingDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_Gen.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_GlueDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_HealingDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_I3DPrimOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IBasicOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IBlocksOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IBooleanOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ICurvesOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IGroupOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IHealingOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IInsertOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ILocalOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IMeasureOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ImportDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_IShapesOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ITransformOperations.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_LineDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_MarkerDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_MeasureDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_MirrorDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_OffsetDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PartitionDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PipeDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PlateDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PlaneDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PointDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PolylineDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PositionDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_PrismDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_RevolutionDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_RotateDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ScaleDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ShapeDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_SketcherDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_SphereDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_SplineDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ThickSolidDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_ThruSectionsDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_TorusDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_TranslateDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_VariableFilletDriver.cpp \
$(srcdir)/$(geomdir)src/GEOMImpl/GEOMImpl_VectorDriver.cpp

# set GEOM sources
libGEOM_la_SOURCES =  $(srcdir)/$(geomdir)src/GEOM/GEOM_Application.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient_0.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_DataMapNodeOfDataMapOfAsciiStringTransient_0.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_DataMapOfAsciiStringTransient_0.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_Engine.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_Function.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_IOperations.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_Object.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_Parameter.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_PythonDump.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_Solver.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_SubShapeDriver.cpp \
$(srcdir)/$(geomdir)src/GEOM/GEOM_Application.ixx \
$(srcdir)/$(geomdir)src/GEOM/GEOM_Application.jxx


# set ExchangeBREP sources
libExchangeBREP_la_SOURCES =  $(srcdir)/$(geomdir)src/ExchangeBREP/ExchangeBREP_Export.cpp \
$(srcdir)/$(geomdir)src/ExchangeBREP/ExchangeBREP_Import.cpp

# # set ExchangeCSFDB sources
libExchangeCSFDB_la_SOURCES =  $(srcdir)/$(geomdir)src/ExchangeCSFDB/ExchangeCSFDB_Export.cpp \
$(srcdir)/$(geomdir)src/ExchangeCSFDB/ExchangeCSFDB_Import.cpp

# set ExchangeIGES sources
libExchangeIGES_la_SOURCES =  $(srcdir)/$(geomdir)src/ExchangeIGES/ExchangeIGES_Export.cpp \
$(srcdir)/$(geomdir)src/ExchangeIGES/ExchangeIGES_Import.cpp

# set ExchangeSTEP sources
libExchangeSTEP_la_SOURCES =  $(srcdir)/$(geomdir)src/ExchangeSTEP/ExchangeSTEP_Export.cpp \
$(srcdir)/$(geomdir)src/ExchangeSTEP/ExchangeSTEP_Import.cpp

# set ExchangeSTL sources
libExchangeSTL_la_SOURCES =  $(srcdir)/$(geomdir)src/ExchangeSTL/ExchangeSTL_Export.cpp

# set ExchangeVRML sources
libExchangeVRML_la_SOURCES =  $(srcdir)/$(geomdir)src/ExchangeVRML/ExchangeVRML_Export.cpp

# set NMTDS sources
libNMTDS_la_SOURCES =  $(srcdir)/$(geomdir)src/NMTDS/NMTDS_BoxBndTree.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_CArray1OfIndexRange_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexedDataMapOfIntegerShape_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexedDataMapOfShapeBox_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexRange.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Iterator.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListIteratorOfListOfPassKey_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListIteratorOfListOfPassKeyBoolean_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListNodeOfListOfPassKey_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListNodeOfListOfPassKeyBoolean_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListOfPassKey_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ListOfPassKeyBoolean_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_MapIteratorOfMapOfPassKey_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_MapIteratorOfMapOfPassKeyBoolean_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_MapOfPassKey_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_MapOfPassKeyBoolean_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyBoolean.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKey.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyMapHasher.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ShapesDataStructure.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_StdMapNodeOfMapOfPassKey_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_StdMapNodeOfMapOfPassKeyBoolean_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexRange.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Iterator.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyBoolean.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKey.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyMapHasher.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ShapesDataStructure.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexRange.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Iterator.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyBoolean.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKey.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyMapHasher.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ShapesDataStructure.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IndexRange.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Iterator.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyBoolean.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKey.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyMapHasher.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_ShapesDataStructure.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_DataMapOfIntegerMapOfInteger_0.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_InterfPool.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_InterfPool.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_InterfPool.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_InterfPool.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IteratorCheckerSI.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IteratorCheckerSI.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IteratorCheckerSI.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_IteratorCheckerSI.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShape.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShape.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShape.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShape.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShapeMapHasher.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShapeMapHasher.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShapeMapHasher.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_PassKeyShapeMapHasher.jxx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Tools.cdl \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Tools.cpp \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Tools.ixx \
$(srcdir)/$(geomdir)src/NMTDS/NMTDS_Tools.jxx

# set NMTTools sources
libNMTTools_la_SOURCES =  $(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlockAPI.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlock.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlockPool_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CoupleOfShape.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_DataMapOfIntegerListOfPaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_DEProcessor.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IndexedDataMapOfIndexedMapOfInteger_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IndexedDataMapOfShapeIndexedMapOfShape_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IndexedDataMapOfShapePaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IteratorOfCoupleOfShape.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_ListIteratorOfListOfCommonBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_ListIteratorOfListOfCoupleOfShape_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_ListNodeOfListOfCommonBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_ListNodeOfListOfCoupleOfShape_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_ListOfCommonBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_ListOfCoupleOfShape_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_MapIteratorOfMapOfPaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_MapOfPaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_1.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_2.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_3.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_4.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_5.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_6.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_7.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_8.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller_9.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_StdMapNodeOfMapOfPaveBlock_0.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_Tools.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlockAPI.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlock.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CoupleOfShape.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_DEProcessor.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IteratorOfCoupleOfShape.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_Tools.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlockAPI.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlock.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CoupleOfShape.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_DEProcessor.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IteratorOfCoupleOfShape.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_Tools.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlockAPI.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CommonBlock.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CoupleOfShape.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_DEProcessor.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_IteratorOfCoupleOfShape.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_PaveFiller.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_Tools.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CheckerSI.cdl \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CheckerSI.cpp \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CheckerSI.ixx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CheckerSI.jxx \
$(srcdir)/$(geomdir)src/NMTTools/NMTTools_CheckerSI_1.cpp


# set Partition sources
libPartition_la_SOURCES = $(srcdir)/$(geomdir)src/Partition/Partition_Inter2d.cpp  \
$(srcdir)/$(geomdir)src/Partition/Partition_Inter3d.cpp  \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop2d.cpp   \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop3d.cpp   \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop.cpp \
$(srcdir)/$(geomdir)src/Partition/Partition_Spliter.cpp \
$(srcdir)/$(geomdir)src/Partition/Partition_Spliter.ixx \
$(srcdir)/$(geomdir)src/Partition/Partition_Inter2d.ixx \
$(srcdir)/$(geomdir)src/Partition/Partition_Inter3d.ixx \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop2d.ixx \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop3d.ixx \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop.ixx \
$(srcdir)/$(geomdir)src/Partition/Partition_Spliter.ixx \
$(srcdir)/$(geomdir)src/Partition/Partition_Inter2d.jxx \
$(srcdir)/$(geomdir)src/Partition/Partition_Inter3d.jxx \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop2d.jxx \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop3d.jxx \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop.jxx \
$(srcdir)/$(geomdir)src/Partition/Partition_Spliter.jxx \
$(srcdir)/$(geomdir)src/Partition/Partition.cdl \
$(srcdir)/$(geomdir)src/Partition/Partition_Inter2d.cdl \
$(srcdir)/$(geomdir)src/Partition/Partition_Inter3d.cdl \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop2d.cdl \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop3d.cdl \
$(srcdir)/$(geomdir)src/Partition/Partition_Loop.cdl \
$(srcdir)/$(geomdir)src/Partition/Partition_Spliter.cdl


# set ShHealOper sources
libShHealOper_la_SOURCES =  $(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_ChangeOrientation.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_CloseContour.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_EdgeDivide.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_FillHoles.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_RemoveFace.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_RemoveInternalWires.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_Sewing.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_ShapeProcess.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_SplitCurve2d.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_SplitCurve3d.cpp \
$(srcdir)/$(geomdir)src/ShHealOper/ShHealOper_Tool.cpp

# set Sketcher sources
libSketcher_la_SOURCES = $(srcdir)/$(geomdir)src/Sketcher/Sketcher_Profile.cpp

# libArchimede_la_LDFLAGS         = -version-info 0:0:0
# libGEOMAlgo_la_LDFLAGS         = -version-info 0:0:0
# libGEOMImpl_la_LDFLAGS         = -version-info 0:0:0
# libGEOM_la_LDFLAGS              = -version-info 0:0:0
# libExchangeBREP_la_LDFLAGS      = -version-info 0:0:0
# libExchangeCSFDB_la_LDFLAGS     = -version-info 0:0:0
# libExchangeIGES_la_LDFLAGS      = -version-info 0:0:0
# libExchangeSTEP_la_LDFLAGS      = -version-info 0:0:0
# libExchangeSTL_la_LDFLAGS       = -version-info 0:0:0
# libExchangeVRML_la_LDFLAGS      = -version-info 0:0:0
# libNMTDS_la_LDFLAGS            = -version-info 0:0:0
# libNMTTools_la_LDFLAGS         = -version-info 0:0:0
# libPartition_la_LDFLAGS         = -version-info 0:0:0
# libShHealOper_la_LDFLAGS        = -version-info 0:0:0
# libSketcher_la_LDFLAGS          = -version-info 0:0:0

# include files to be copied to installdir/inc
include_HEADERS =  $(srcdir)/$(geomdir)inc/Archimede_VolumeSection.hxx \
$(srcdir)/$(geomdir)inc/BlockFix_BlockFixAPI.hxx \
$(srcdir)/$(geomdir)inc/BlockFix_BlockFixAPI.lxx \
$(srcdir)/$(geomdir)inc/BlockFix_CheckTool.hxx \
$(srcdir)/$(geomdir)inc/BlockFix.hxx \
$(srcdir)/$(geomdir)inc/BlockFix_PeriodicSurfaceModifier.hxx \
$(srcdir)/$(geomdir)inc/BlockFix_SphereSpaceModifier.hxx \
$(srcdir)/$(geomdir)inc/BlockFix_UnionEdges.hxx \
$(srcdir)/$(geomdir)inc/BlockFix_UnionFaces.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Algo.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_BuilderArea.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_BuilderFace.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Builder.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_BuilderShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_BuilderSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_BuilderTools.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ClsfBox.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Clsf.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ClsfSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ClsfSurf.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_CoupleOfShapes.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyInteger.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapIteratorOfDataMapOfPassKeyShapeShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapIteratorOfDataMapOfRealListOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapIteratorOfDataMapOfShapeReal.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapIteratorOfDataMapOfShapeShapeSet.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapOfPassKeyInteger.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapOfPassKeyShapeShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapOfRealListOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapOfShapeReal.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_DataMapOfShapeShapeSet.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_FinderShapeOn1.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_FinderShapeOn2.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_FinderShapeOn.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_FinderShapeOnQuad.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_GlueAnalyser.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Gluer1.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Gluer.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_HAlgo.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapOfIntegerShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapOfPassKeyListOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapOfPassKeyShapeListOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapOfShapeBox.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapOfShapeShapeInfo.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_IndexedDataMapOfShapeState.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_KindOfBounds.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_KindOfClosed.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_KindOfName.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_KindOfShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ListIteratorOfListOfCoupleOfShapes.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ListIteratorOfListOfPnt.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ListNodeOfListOfPnt.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ListOfCoupleOfShapes.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ListOfPnt.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_PassKey.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_PassKeyMapHasher.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_PassKeyShape.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_PassKeyShapeMapHasher.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_PWireEdgeSet.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ShapeAlgo.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ShapeInfoFiller.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ShapeInfo.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ShapeSet.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ShapeSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_ShellSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_SolidSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Splitter.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_StateCollector.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_State.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_SurfaceTools.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Tools3D.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_Tools.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_VertexSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_WESCorrector.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_WireEdgeSet.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_WireSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMAlgo_WireSplitter.hxx \
$(srcdir)/$(geomdir)inc/GEOM_Application.hxx \
$(srcdir)/$(geomdir)inc/GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient.hxx \
$(srcdir)/$(geomdir)inc/GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx \
$(srcdir)/$(geomdir)inc/GEOM_DataMapOfAsciiStringTransient.hxx \
$(srcdir)/$(geomdir)inc/GEOM_Engine.hxx \
$(srcdir)/$(geomdir)inc/GEOM_Function.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_3DSketcherDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ArcDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ArchimedeDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_Block6Explorer.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_BlockDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_BooleanDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_BoxDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ChamferDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_CircleDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ConeDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_CopyDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_CurveDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_CylinderDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_DiskDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_DraftDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_EllipseDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ExportDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_FaceDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_FilletDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_FillingDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_Gen.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_GlueDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_HealingDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_I3DPrimOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_I3DSketcher.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IArchimede.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IArc.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IBasicOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IBlocks.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IBlocksOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IBlockTrsf.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IBoolean.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IBooleanOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IBox.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IChamfer.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ICircle.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ICone.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ICopy.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ICurve.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ICurvesOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ICylinder.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IDisk.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IDraft.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IEllipse.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IFace.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IFillet.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IFilling.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IGlue.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IGroupOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IHealing.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IHealingOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IImportExport.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IInsertOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ILine.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ILocalOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IMarker.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IMeasure.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IMeasureOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IMirror.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ImportDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IOffset.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPartition.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPipeDiffSect.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPipe.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPipeShellSect.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPlate.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPlane.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPoint.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPolyline.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPosition.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPrism.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IRevolution.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IRotate.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IScale.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IShapes.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IShapesOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ISketcher.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ISphere.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ISpline.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IThickSolid.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IThruSections.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ITorus.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ITransformOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ITranslate.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IVariableFillet.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IVector.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_LineDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_MarkerDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_MeasureDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_MirrorDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_OffsetDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PartitionDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PipeDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PlateDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PlaneDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PointDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PolylineDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PositionDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_PrismDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_RevolutionDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_RotateDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ScaleDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ShapeDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_SketcherDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_SphereDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_SplineDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ThickSolidDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_ThruSectionsDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_TorusDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_TranslateDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_Types.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_VariableFilletDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_VectorDriver.hxx \
$(srcdir)/$(geomdir)inc/GEOMImpl_IPipeBiNormal.hxx \
$(srcdir)/$(geomdir)inc/GEOM_IOperations.hxx \
$(srcdir)/$(geomdir)inc/GEOM_ISubShape.hxx \
$(srcdir)/$(geomdir)inc/GEOM_Object.hxx \
$(srcdir)/$(geomdir)inc/GEOM_Parameter.hxx \
$(srcdir)/$(geomdir)inc/GEOM_PythonDump.hxx \
$(srcdir)/$(geomdir)inc/GEOM_Solver.hxx \
$(srcdir)/$(geomdir)inc/GEOM_SubShapeDriver.hxx \
$(srcdir)/$(geomdir)inc/Handle_BlockFix_BlockFixAPI.hxx \
$(srcdir)/$(geomdir)inc/Handle_BlockFix_PeriodicSurfaceModifier.hxx \
$(srcdir)/$(geomdir)inc/Handle_BlockFix_SphereSpaceModifier.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_ClsfBox.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_Clsf.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_ClsfSolid.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_ClsfSurf.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyInteger.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_DataMapNodeOfDataMapOfPassKeyShapeShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_DataMapNodeOfDataMapOfRealListOfShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeReal.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_DataMapNodeOfDataMapOfShapeShapeSet.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_HAlgo.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyListOfShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfPassKeyShapeListOfShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeShapeInfo.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_IndexedDataMapNodeOfIndexedDataMapOfShapeState.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_ListNodeOfListOfCoupleOfShapes.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOMAlgo_ListNodeOfListOfPnt.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOM_Application.hxx \
$(srcdir)/$(geomdir)inc/Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_ListNodeOfListOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_ListNodeOfListOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_StdMapNodeOfMapOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTTools_ListNodeOfListOfCommonBlock.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTTools_ListNodeOfListOfCoupleOfShape.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTTools_StdMapNodeOfMapOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_BoxBndTree.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_CArray1OfIndexRange.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IndexedDataMapNodeOfIndexedDataMapOfShapeBox.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IndexedDataMapOfIntegerIndexedDataMapOfShapeInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IndexedDataMapOfIntegerShape.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IndexedDataMapOfShapeBox.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IndexRange.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_Iterator.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListIteratorOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListIteratorOfListOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListIteratorOfListOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListNodeOfListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListNodeOfListOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListNodeOfListOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListOfIndexedDataMapOfShapeAncestorsSuccessors.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ListOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_MapIteratorOfMapOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_MapIteratorOfMapOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_MapOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_MapOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PassKey.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PassKeyMapHasher.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PShapesDataStructure.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_ShapesDataStructure.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_StdMapNodeOfMapOfPassKeyBoolean.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_StdMapNodeOfMapOfPassKey.hxx \
$(srcdir)/$(geomdir)inc/Handle_NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_DataMapIteratorOfDataMapOfIntegerMapOfInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_DataMapNodeOfDataMapOfIntegerMapOfInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_DataMapOfIntegerMapOfInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_InterfPool.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_InterfType.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_IteratorCheckerSI.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PassKeyShape.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PassKeyShapeMapHasher.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PInterfPool.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_PIterator.hxx \
$(srcdir)/$(geomdir)inc/NMTDS_Tools.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_CommonBlockAPI.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_CommonBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_CommonBlockPool.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_CoupleOfShape.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_DataMapIteratorOfDataMapOfIntegerListOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_DataMapNodeOfDataMapOfIntegerListOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_DataMapOfIntegerListOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_DEProcessor.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_IndexedDataMapNodeOfIndexedDataMapOfIndexedMapOfInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapeIndexedMapOfShape.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_IndexedDataMapNodeOfIndexedDataMapOfShapePaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_IndexedDataMapOfIndexedMapOfInteger.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_IndexedDataMapOfShapeIndexedMapOfShape.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_IndexedDataMapOfShapePaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_IteratorOfCoupleOfShape.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_ListIteratorOfListOfCommonBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_ListIteratorOfListOfCoupleOfShape.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_ListNodeOfListOfCommonBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_ListNodeOfListOfCoupleOfShape.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_ListOfCommonBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_ListOfCoupleOfShape.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_MapIteratorOfMapOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_MapOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_PaveFiller.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_PPaveFiller.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_StdMapNodeOfMapOfPaveBlock.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_Tools.hxx \
$(srcdir)/$(geomdir)inc/NMTTools_CheckerSI.hxx \
$(srcdir)/$(geomdir)inc/Partition_Inter2d.hxx \
$(srcdir)/$(geomdir)inc/Partition_Inter3d.hxx \
$(srcdir)/$(geomdir)inc/Partition_Loop2d.hxx \
$(srcdir)/$(geomdir)inc/Partition_Loop3d.hxx \
$(srcdir)/$(geomdir)inc/Partition_Loop.hxx \
$(srcdir)/$(geomdir)inc/Partition_Spliter.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_ChangeOrientation.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_CloseContour.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_EdgeDivide.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_FillHoles.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_RemoveFace.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_RemoveInternalWires.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_Sewing.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_ShapeProcess.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_SplitCurve2d.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_SplitCurve3d.hxx \
$(srcdir)/$(geomdir)inc/ShHealOper_Tool.hxx \
$(srcdir)/$(geomdir)inc/Sketcher_Profile.hxx \
$(srcdir)/$(geomdir)inc/utilities.h
