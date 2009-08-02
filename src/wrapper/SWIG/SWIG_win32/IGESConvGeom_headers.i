/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<IGESConvGeom.hxx>
#include<IGESConvGeom_GeomBuilder.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<IGESConvGeom.hxx>
#include<Handle_IGESGeom_SplineCurve.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<Handle_IGESGeom_SplineSurface.hxx>
#include<Handle_Geom_BSplineSurface.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>
#include<Handle_IGESGeom_CopiousData.hxx>
#include<Handle_TColgp_HArray1OfXY.hxx>
#include<Handle_TColgp_HArray1OfXYZ.hxx>
#include<gp_Trsf.hxx>
#include<gp_Ax3.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax1.hxx>
#include<Handle_IGESGeom_TransformationMatrix.hxx>
%}
