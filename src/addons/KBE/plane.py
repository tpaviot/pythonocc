##Copyright 2008-2013 Jelle Feringa (jelleferinga@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>

from OCC.Geom import Geom_Plane
from OCC.gp import gp_Pln


class Plane(object):  # HalfSpace
    def __init__(self, pln):

        self.pln = None
        self.geom_plane = None  # property

        if isinstance(pln, gp_Pln.__class__):
            self.pln = pln
        elif isinstance(pln, Geom_Plane):
            self.pln = pln.Pln()
            self.geom_plane = pln

    def intersect_curve():
        """
        any line!
        """
        raise NotImplementedError

    def intersect_surface():
        raise NotImplementedError

    def intersect_plane_plane(pln1, pln2):
        raise NotImplementedError

    def project_curve():
        raise NotImplementedError

    def project_surface():
        raise NotImplementedError
