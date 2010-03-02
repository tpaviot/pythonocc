# -*- coding: iso-8859-1 -*-
#! /usr/bin/python

##Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)
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

import sys
import gc

# Init logging system
import logging
logging.basicConfig()
logger = logging.getLogger('GarbageCollector')

def set_debug():
    logger.setLevel(logging.DEBUG)
    
class GarbageCollector(object):
    """ Garbage collector for OCC objects
    """
    def __init__(self):
        #self._collected_objects = []
        self._handles = []
        self._transients = []
        self._misc = []
        
    def collect_object(self, obj_deleted):
        ''' This method is called whenever a pythonOCC instance is deleted.'''
        #self._collected_objects.append(obj_deleted)
        if hasattr(obj_deleted,'was_purged'):
            return False
        if obj_deleted.__class__.__name__.startswith('Handle'):
            self._handles.append(obj_deleted)
            logger.info('collected Handle')
        elif hasattr(obj_deleted,"GetHandle"):
            self._transients.append(obj_deleted)
            logger.info('collected transient')
        else:
            self._misc.append(obj_deleted)
            logger.info('collected misc')
    
    def smart_purge(self):
        # TODO: need to reverse the lists first in order
        # to start with the olders objects?
        # Remove Handles
        while len(self._handles)>0:
            handle = self._handles.pop()
            handle.Nullify()# decrement ref counting_kill_pointed()
            # after that, the reference counting of transients objects in 
            # the garbage should be 0
            handle.was_purged = True
        # Remove Transients
        for transient in self._transients:
            transient_must_be_purged = False
            if transient.GetRefCount()==0:
                transient_must_be_purged = True
            if transient_must_be_purged:
                transient._kill_pointed()
                transient.was_purged = True
                self._transients.remove(transient)
        # Remove other objects
        while len(self._misc)>0:
            misc = self._misc.pop()
            misc._kill_pointed()
            misc.was_purged = True

garbage = GarbageCollector()
