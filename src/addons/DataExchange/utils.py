##Copyright 2008-2013 Thomas Paviot (tpaviot@gmail.com)
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

import os


def shape_to_file(shape, pth, filename, format='iges'):
    '''write a Shape to a .iges .brep .stl or .step file'''
    _pth = os.path.join(pth, filename)
    assert not os.path.isdir(_pth), 'wrong path, filename'
    _file = "%s.%s" % (_pth, format)

    _formats = ['iges', 'igs', 'step', 'stp', 'brep', 'stl']
    assert format in _formats, '%s is not a readable format, should be one of %s' % (format, _formats)

    if format in ['iges', 'igs']:
        from OCC.IGESControl import IGESControl_Controller, IGESControl_Writer
        i = IGESControl_Controller()
        i.Init()
        writer = IGESControl_Writer()
        writer.AddShape(shape)
        writer.Write(_file)
        return _file
    elif format in ['step', 'stp']:
        from OCC.STEPControl import STEPControl_Controller, STEPControl_Writer, STEPControl_AsIs
        i = STEPControl_Controller()
        i.Init()
        writer = STEPControl_Writer()
        writer.Transfer(shape, STEPControl_AsIs)
        writer.Write(_file)
        return _file
    elif format == 'brep':
        from OCC.BRepTools import BRepTools
        BRepTools().Write(shape, _file)
    elif format == 'stl':
        from OCC.StlAPI import StlAPI_Writer
        stl_writer = StlAPI_Writer()
        stl_writer.Write(shape, _file)
    else:
        raise TypeError('format should be one of [iges,igs], [step,stp], brep, stl\ngot %s' % (format))


def file_to_shape(pth):
    '''get a Shape from an .iges or .step file'''
    assert os.path.isfile(pth), '%s is not a valid file' % (pth)
    ext = os.path.splitext(pth)[1]
    assert ext in ['.iges', '.igs', '.stp', '.step', '.brep', '.stl'], '%s is not an readable format' % ext    
    if ext in ['.iges', '.igs']:
        from OCC.IGESControl import IGESControl_Controller, IGESControl_Reader
        __i = IGESControl_Controller()
        __i.Init()
        reader = IGESControl_Reader()
    elif ext in ['.step', '.stp']:
        from OCC.STEPControl import STEPControl_Reader
        reader = STEPControl_Reader()
    elif ext == '.brep':
        from OCC import TopoDS, BRep, BRepTools
        shape = TopoDS.TopoDS_Shape()
        builder = BRep.BRep_Builder()
        BRepTools.BRepTools().Read(shape, pth, builder)
        return shape
    elif ext == '.stl':
        from OCC.TopoDS import TopoDS_Shape
        from OCC.StlAPI import StlAPI_Reader
        shape = TopoDS_Shape()
        stl_reader = StlAPI_Reader()
        stl_reader.Read(shape, pth)
        return shape
    reader.ReadFile(pth)
    shape = reader.OneShape()
    return shape
