'''
Created on Jan 21, 2011

@author: henrik
'''
from builder.templates import BaseTemplate




class PythonClass(BaseTemplate):
    '''
class ${name}(${base}):
    def __init__(*args, **kwargs):
        super(${base}, self).__init__(*args, **kwargs)
    
    *${methods}
        
'''

class PythonClassMethod(BaseTemplate):
    '''
    def ${name}(self${arguments}):
        ${added_code}
        return self.${wrapped_name}($argument_names)
'''
    
    
    
    