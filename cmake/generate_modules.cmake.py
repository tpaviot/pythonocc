import sys
sys.path.append('../src/wrapper')
import Modules

# create OCE_Modules_Unix.cmake file
fp = open("OCE_Modules_Unix.cmake","w")
fp.write("LIST(APPEND OCE_MODULES\n")
# write all module names
unix_module_names = []
for module in (Modules.COMMON_MODULES+Modules.UNIX_MODULES):
    unix_module_names.append(module[0])
unix_module_names.sort()
for module_name in unix_module_names:
    fp.write("\t%s\n"%module_name)
fp.write(")\n")
fp.close()

# create OCE_Modules_Win.cmake file
fp = open("OCE_Modules_Win.cmake","w")
fp.write("LIST(APPEND OCE_MODULES\n")
# write all module names
win_module_names = []
for module in (Modules.COMMON_MODULES+Modules.WIN_MODULES):
    win_module_names.append(module[0])
win_module_names.sort()
for module_name in win_module_names:
    fp.write("\t%s\n"%module_name)
fp.write(")\n")
fp.close()

# create GEOM_Modules.cmake file
fp = open("GEOM_Modules.cmake","w")
fp.write("LIST(APPEND GEOM_MODULES\n")
# write all module names
for module in Modules.SALOME_GEOM_MODULES:
    module_name = module[0]
    fp.write("\t%s\n"%module_name)
fp.write(")\n")
fp.close()

# create SMESH_Modules.cmake file
fp = open("SMESH_Modules.cmake","w")
fp.write("LIST(APPEND SMESH_MODULES\n")
# write all module names
for module in Modules.SALOME_SMESH_MODULES:
    module_name = module[0]
    fp.write("\t%s\n"%module_name)
fp.write(")\n")
fp.close()