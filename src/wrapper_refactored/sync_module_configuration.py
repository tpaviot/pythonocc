'''
Created on Jan 20, 2011

@author: henrik
'''




import sys

sys.path.append("../wrapper")

import Modules
def modules_to_dict(modules):
    items = {}
    for module in modules:
        item = {}
        name, item['include'], item['exclude'] = module[:3]
        
        if len(module) > 3:
            item['excluded_members'] = module[3]
        items[name] = item
    return items
    
common = modules_to_dict(Modules.COMMON_MODULES)
     

win32 = modules_to_dict(Modules.WIN32_MODULES)
    

nix =  modules_to_dict(Modules.NIX_MODULES)


        
import yaml
file = open("configuration.yml", 'w')
print yaml.dump({'common':common, 'win32':win32, 'nix':nix}, file)

        