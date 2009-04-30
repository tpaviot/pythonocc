#!/usr/bin/env python

##Copyright 2009, Bryan Cole (bryancole.cam@googlemail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.


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