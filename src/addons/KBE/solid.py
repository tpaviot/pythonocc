
class Solid(object):
    """high level Solid Api"""
    def __init__(self, arg):
        self.arg = arg

    def parameter_to_coordinate(self, coord):
        '''
        returns the index of the face closest to the world coordinate `coord`
        '''
        raise NotImplementedError

    #===============================================================================
    #    Solid.boolean
    #===============================================================================

    def add(self, other_solid):
        '''adds another_solid to self
        '''

    def cut(self, other_solid):
        '''cuts other_solid from self
        '''
    def intersect(self, other_solid):
        '''common space of self and other_solid
        '''

    #===============================================================================
    #    Solid.local_properties
    #===============================================================================

    #===============================================================================
    #    Solid.global_properties
    #===============================================================================

    def inertia(self):
        '''
        '''
        raise NotImplementedError

    def area(self):
        '''
        '''
        raise NotImplementedError

    def volume(self):
        '''
        '''
        raise NotImplementedError

#===============================================================================
#    Solid.graphic
#===============================================================================

    @property
    def color(self, color):
        '''color all the faces
        '''

    @property
    def tesselation(self, angle):
        '''descriptor of the parameter controlling the precision of the tesselation
        '''
        raise NotImplementedError

