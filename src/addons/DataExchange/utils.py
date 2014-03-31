
from OCC.IGESControl import *
from OCC.STEPControl import *
import os


def shape_to_file(shape, pth, filename, format='iges'):
    '''write a Shape to a .iges .brep .stl or .step file'''
    _pth = os.path.join(pth, filename)
    assert not os.path.isdir(_pth), 'wrong path, filename'
    _file = "%s.%s" % (_pth, format)
    
    _formats = ['iges', 'igs', 'step','stp', 'brep', 'stl']
    assert format in _formats, '%s is not a readable format, should be one of %s ' % ( format, _formats)
    
    if format in ['iges', 'igs']:
        i = IGESControl_Controller()
        i.Init()
        writer = IGESControl_Writer() 
        writer.AddShape(shape)
        writer.Write(_file)
        return _file

    elif format in ['step','stp']:
        i = STEPControl_Controller()
        i.Init()
        writer = STEPControl_Writer()
        writer.Transfer(shape, STEPControl_AsIs)
        writer.Write(_file)
        return _file
        
    elif format == 'brep':
        from OCC import TopoDS, BRep, BRepTools
        #shape = TopoDS.TopoDS_Shape()
        builder = BRep.BRep_Builder()
        BRepTools.BRepTools().Write(shape, _file)
    
    elif format == 'stl':
        from OCC import TopoDS, StlAPI
        #shape = TopoDS.TopoDS_Shape()
        stl_reader = StlAPI.StlAPI_Writer()
        stl_reader.Read(shape,_file)
        
    else:
        raise TypeError('format should be one of [iges,igs], [step,stp], brep, stl\ngot %s' % (format))

def file_to_shape(pth):
    '''get a Shape from an .iges or .step file'''
    assert os.path.isfile(pth), '%s is not a valid file' % (pth)
    ext = os.path.splitext(pth)[1].lower()
    print 'ext', ext
    assert ext in ['.iges', '.igs', '.stp', '.step', '.brep', '.stl'], '%s is not an readable format' % ( ext )
    
    if ext in ['.iges', '.igs']:
        __i = IGESControl_Controller(); __i.Init()
        reader = IGESControl_Reader()
    
    elif ext in ['.step','.stp']:
        reader = STEPControl_Reader()
    
    elif ext == '.brep':
        from OCC import TopoDS, BRep, BRepTools
        shape = TopoDS.TopoDS_Shape()
        builder = BRep.BRep_Builder()
        BRepTools.BRepTools().Read(shape,pth,builder)
        return shape
    
    elif ext == '.stl':
        from OCC import TopoDS, StlAPI
        shape = TopoDS.TopoDS_Shape()
        stl_reader = StlAPI.StlAPI_Reader()
        stl_reader.Read(shape,pth)
        return shape    

    reader.ReadFile(pth)
    n_translated = reader.TransferRoots()
    shape = reader.OneShape()
    del reader    
    return shape
        
