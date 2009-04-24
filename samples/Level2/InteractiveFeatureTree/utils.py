##Copyright (c) 2009, Bryan Cole
##All rights reserved.
##
##Redistribution and use in source and binary forms, with or without
##modification, are permitted provided that the following conditions are met:
##    * Redistributions of source code must retain the above copyright
##      notice, this list of conditions and the following disclaimer.
##    * Redistributions in binary form must reproduce the above copyright
##      notice, this list of conditions and the following disclaimer in the
##      documentation and/or other materials provided with the distribution.
##    * Neither the name of the <organization> nor the
##      names of its contributors may be used to endorse or promote products
##      derived from this software without specific prior written permission.
##
##THIS SOFTWARE IS PROVIDED BY Bryan Cole ''AS IS'' AND ANY
##EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
##WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
##DISCLAIMED. IN NO EVENT SHALL Bryan Cole BE LIABLE FOR ANY
##DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
##(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
##LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
##ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
##(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
##SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


from enthought.traits.api import (Range as _Range, 
                                  Tuple as _Tuple,
                                  Int as _Int,
                                  Float as _Float)
from enthought.traits.ui.api import TupleEditor

class EditorTraits(object):
    """
    This mixin allows you to specify traits for the default trait editor
    in the trait declaration.
    
    I've also changed the defaults for auto_set = False, enter_set=True.
    'auto_set=True' gets really annoying.
    """
    def get_editor(self, *args, **kwds):
        e = super(EditorTraits, self).get_editor(*args, **kwds)
        editor_t = {'auto_set':False,
                    'enter_set':True}
        metadata = self._metadata
        if 'editor_traits' in metadata:
            editor_t.update(metadata['editor_traits'])
        e.set(**editor_t)
        return e

class Range(EditorTraits, _Range):
    pass
    
class Tuple(EditorTraits, _Tuple):
    pass

class Int(EditorTraits, _Int):
    pass

class Float(EditorTraits, _Float):
    pass