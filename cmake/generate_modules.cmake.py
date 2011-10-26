import sys
sys.path.append('../src/wrapper')
import Modules

# create Modules.cmake file
fp = open("OCE_Modules.cmake","w")
fp.write("LIST(APPEND OCC_MODULES\n")
# write all module names
for module in Modules.MODULES:
    module_name = module[0]
    fp.write("\t%s\n"%module_name)
fp.write(")\n")
fp.close()

    
