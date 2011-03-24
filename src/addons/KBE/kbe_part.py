from kbe_base import KbeObject

class Part(KbeObject):
    """An assembly is composed of a number of Part's"""

    def __init__(self, x):
        """Constructor for Part"""
        self.x = x

