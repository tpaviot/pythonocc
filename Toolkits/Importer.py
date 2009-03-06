import imp

def Importer(modules):
    for module in modules:
        try:
            #m = imp.new_module(module)
            fp , pathname, description = imp.find_module('OCC.%s'%module)
            print fp, pathname, description
            locals()['%s'%module] = imp.load_module(module, fp, pathname, description)
        except ImportError:
            print 'Module %s not found.'%module
     
    del module
    del modules
    #del m
    del fp
    del pathname
    del description
    #del imp

