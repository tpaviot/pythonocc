import imp

modules=['os','zlib','popo']

for module in modules:
    try:
        #m = imp.new_module(module)
        fp , pathname, description = imp.find_module(module)
        m = imp.load_module(module, fp, pathname, description)
        # Adding this module in locals
        locals()['%s'%module] = m
        print dir(m)
    except ImportError:
        print 'Module %s not found.'%module
 
del module
del modules
del m
del fp
del pathname
del description

