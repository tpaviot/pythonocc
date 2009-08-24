/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module GEOMImpl

%include GEOMImpl_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GEOMImpl_dependencies.i


%include GEOMImpl_headers.i




%nodefaultctor Handle_GEOMImpl_ConeDriver;
class Handle_GEOMImpl_ConeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver(const Handle_GEOMImpl_ConeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver(const GEOMImpl_ConeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver & operator=(const Handle_GEOMImpl_ConeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver & operator=(const GEOMImpl_ConeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ConeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ConeDriver {
	GEOMImpl_ConeDriver* GetObject() {
	return (GEOMImpl_ConeDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ConeDriver {
	~Handle_GEOMImpl_ConeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ConeDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_CircleDriver;
class Handle_GEOMImpl_CircleDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver(const Handle_GEOMImpl_CircleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver(const GEOMImpl_CircleDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver & operator=(const Handle_GEOMImpl_CircleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver & operator=(const GEOMImpl_CircleDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CircleDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_CircleDriver {
	GEOMImpl_CircleDriver* GetObject() {
	return (GEOMImpl_CircleDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_CircleDriver {
	~Handle_GEOMImpl_CircleDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_CircleDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_MeasureDriver;
class Handle_GEOMImpl_MeasureDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver(const Handle_GEOMImpl_MeasureDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver(const GEOMImpl_MeasureDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver & operator=(const Handle_GEOMImpl_MeasureDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver & operator=(const GEOMImpl_MeasureDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MeasureDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_MeasureDriver {
	GEOMImpl_MeasureDriver* GetObject() {
	return (GEOMImpl_MeasureDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_MeasureDriver {
	~Handle_GEOMImpl_MeasureDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_MeasureDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_FillingDriver;
class Handle_GEOMImpl_FillingDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver(const Handle_GEOMImpl_FillingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver(const GEOMImpl_FillingDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver & operator=(const Handle_GEOMImpl_FillingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver & operator=(const GEOMImpl_FillingDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FillingDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_FillingDriver {
	GEOMImpl_FillingDriver* GetObject() {
	return (GEOMImpl_FillingDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_FillingDriver {
	~Handle_GEOMImpl_FillingDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_FillingDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PositionDriver;
class Handle_GEOMImpl_PositionDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver(const Handle_GEOMImpl_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver(const GEOMImpl_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver & operator=(const Handle_GEOMImpl_PositionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver & operator=(const GEOMImpl_PositionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PositionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PositionDriver {
	GEOMImpl_PositionDriver* GetObject() {
	return (GEOMImpl_PositionDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PositionDriver {
	~Handle_GEOMImpl_PositionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PositionDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PlaneDriver;
class Handle_GEOMImpl_PlaneDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver(const Handle_GEOMImpl_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver(const GEOMImpl_PlaneDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver & operator=(const Handle_GEOMImpl_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver & operator=(const GEOMImpl_PlaneDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlaneDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PlaneDriver {
	GEOMImpl_PlaneDriver* GetObject() {
	return (GEOMImpl_PlaneDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PlaneDriver {
	~Handle_GEOMImpl_PlaneDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PlaneDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_DiskDriver;
class Handle_GEOMImpl_DiskDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver(const Handle_GEOMImpl_DiskDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver(const GEOMImpl_DiskDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver & operator=(const Handle_GEOMImpl_DiskDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver & operator=(const GEOMImpl_DiskDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DiskDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_DiskDriver {
	GEOMImpl_DiskDriver* GetObject() {
	return (GEOMImpl_DiskDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_DiskDriver {
	~Handle_GEOMImpl_DiskDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_DiskDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ThickSolidDriver;
class Handle_GEOMImpl_ThickSolidDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThickSolidDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThickSolidDriver(const Handle_GEOMImpl_ThickSolidDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThickSolidDriver(const GEOMImpl_ThickSolidDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThickSolidDriver & operator=(const Handle_GEOMImpl_ThickSolidDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThickSolidDriver & operator=(const GEOMImpl_ThickSolidDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThickSolidDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ThickSolidDriver {
	GEOMImpl_ThickSolidDriver* GetObject() {
	return (GEOMImpl_ThickSolidDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ThickSolidDriver {
	~Handle_GEOMImpl_ThickSolidDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ThickSolidDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ThruSectionsDriver;
class Handle_GEOMImpl_ThruSectionsDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver(const Handle_GEOMImpl_ThruSectionsDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver(const GEOMImpl_ThruSectionsDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver & operator=(const Handle_GEOMImpl_ThruSectionsDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver & operator=(const GEOMImpl_ThruSectionsDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ThruSectionsDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ThruSectionsDriver {
	GEOMImpl_ThruSectionsDriver* GetObject() {
	return (GEOMImpl_ThruSectionsDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ThruSectionsDriver {
	~Handle_GEOMImpl_ThruSectionsDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ThruSectionsDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_DraftDriver;
class Handle_GEOMImpl_DraftDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_DraftDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_DraftDriver(const Handle_GEOMImpl_DraftDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DraftDriver(const GEOMImpl_DraftDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DraftDriver & operator=(const Handle_GEOMImpl_DraftDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DraftDriver & operator=(const GEOMImpl_DraftDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_DraftDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_DraftDriver {
	GEOMImpl_DraftDriver* GetObject() {
	return (GEOMImpl_DraftDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_DraftDriver {
	~Handle_GEOMImpl_DraftDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_DraftDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_VariableFilletDriver;
class Handle_GEOMImpl_VariableFilletDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_VariableFilletDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_VariableFilletDriver(const Handle_GEOMImpl_VariableFilletDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VariableFilletDriver(const GEOMImpl_VariableFilletDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VariableFilletDriver & operator=(const Handle_GEOMImpl_VariableFilletDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VariableFilletDriver & operator=(const GEOMImpl_VariableFilletDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VariableFilletDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_VariableFilletDriver {
	GEOMImpl_VariableFilletDriver* GetObject() {
	return (GEOMImpl_VariableFilletDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_VariableFilletDriver {
	~Handle_GEOMImpl_VariableFilletDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_VariableFilletDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ImportDriver;
class Handle_GEOMImpl_ImportDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver(const Handle_GEOMImpl_ImportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver(const GEOMImpl_ImportDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver & operator=(const Handle_GEOMImpl_ImportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver & operator=(const GEOMImpl_ImportDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ImportDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ImportDriver {
	GEOMImpl_ImportDriver* GetObject() {
	return (GEOMImpl_ImportDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ImportDriver {
	~Handle_GEOMImpl_ImportDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ImportDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_SphereDriver;
class Handle_GEOMImpl_SphereDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver(const Handle_GEOMImpl_SphereDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver(const GEOMImpl_SphereDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver & operator=(const Handle_GEOMImpl_SphereDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver & operator=(const GEOMImpl_SphereDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SphereDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_SphereDriver {
	GEOMImpl_SphereDriver* GetObject() {
	return (GEOMImpl_SphereDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_SphereDriver {
	~Handle_GEOMImpl_SphereDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_SphereDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_MirrorDriver;
class Handle_GEOMImpl_MirrorDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver(const Handle_GEOMImpl_MirrorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver(const GEOMImpl_MirrorDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver & operator=(const Handle_GEOMImpl_MirrorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver & operator=(const GEOMImpl_MirrorDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MirrorDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_MirrorDriver {
	GEOMImpl_MirrorDriver* GetObject() {
	return (GEOMImpl_MirrorDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_MirrorDriver {
	~Handle_GEOMImpl_MirrorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_MirrorDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_EllipseDriver;
class Handle_GEOMImpl_EllipseDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver(const Handle_GEOMImpl_EllipseDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver(const GEOMImpl_EllipseDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver & operator=(const Handle_GEOMImpl_EllipseDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver & operator=(const GEOMImpl_EllipseDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_EllipseDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_EllipseDriver {
	GEOMImpl_EllipseDriver* GetObject() {
	return (GEOMImpl_EllipseDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_EllipseDriver {
	~Handle_GEOMImpl_EllipseDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_EllipseDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PointDriver;
class Handle_GEOMImpl_PointDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver(const Handle_GEOMImpl_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver(const GEOMImpl_PointDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver & operator=(const Handle_GEOMImpl_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver & operator=(const GEOMImpl_PointDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PointDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PointDriver {
	GEOMImpl_PointDriver* GetObject() {
	return (GEOMImpl_PointDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PointDriver {
	~Handle_GEOMImpl_PointDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PointDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_BoxDriver;
class Handle_GEOMImpl_BoxDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver(const Handle_GEOMImpl_BoxDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver(const GEOMImpl_BoxDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver & operator=(const Handle_GEOMImpl_BoxDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver & operator=(const GEOMImpl_BoxDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BoxDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_BoxDriver {
	GEOMImpl_BoxDriver* GetObject() {
	return (GEOMImpl_BoxDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_BoxDriver {
	~Handle_GEOMImpl_BoxDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_BoxDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ChamferDriver;
class Handle_GEOMImpl_ChamferDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver(const Handle_GEOMImpl_ChamferDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver(const GEOMImpl_ChamferDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver & operator=(const Handle_GEOMImpl_ChamferDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver & operator=(const GEOMImpl_ChamferDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ChamferDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ChamferDriver {
	GEOMImpl_ChamferDriver* GetObject() {
	return (GEOMImpl_ChamferDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ChamferDriver {
	~Handle_GEOMImpl_ChamferDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ChamferDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_CopyDriver;
class Handle_GEOMImpl_CopyDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver(const Handle_GEOMImpl_CopyDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver(const GEOMImpl_CopyDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver & operator=(const Handle_GEOMImpl_CopyDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver & operator=(const GEOMImpl_CopyDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CopyDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_CopyDriver {
	GEOMImpl_CopyDriver* GetObject() {
	return (GEOMImpl_CopyDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_CopyDriver {
	~Handle_GEOMImpl_CopyDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_CopyDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ArcDriver;
class Handle_GEOMImpl_ArcDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver(const Handle_GEOMImpl_ArcDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver(const GEOMImpl_ArcDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver & operator=(const Handle_GEOMImpl_ArcDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver & operator=(const GEOMImpl_ArcDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArcDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ArcDriver {
	GEOMImpl_ArcDriver* GetObject() {
	return (GEOMImpl_ArcDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ArcDriver {
	~Handle_GEOMImpl_ArcDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ArcDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_MarkerDriver;
class Handle_GEOMImpl_MarkerDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver(const Handle_GEOMImpl_MarkerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver(const GEOMImpl_MarkerDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver & operator=(const Handle_GEOMImpl_MarkerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver & operator=(const GEOMImpl_MarkerDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_MarkerDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_MarkerDriver {
	GEOMImpl_MarkerDriver* GetObject() {
	return (GEOMImpl_MarkerDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_MarkerDriver {
	~Handle_GEOMImpl_MarkerDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_MarkerDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_FilletDriver;
class Handle_GEOMImpl_FilletDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver(const Handle_GEOMImpl_FilletDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver(const GEOMImpl_FilletDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver & operator=(const Handle_GEOMImpl_FilletDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver & operator=(const GEOMImpl_FilletDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FilletDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_FilletDriver {
	GEOMImpl_FilletDriver* GetObject() {
	return (GEOMImpl_FilletDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_FilletDriver {
	~Handle_GEOMImpl_FilletDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_FilletDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_VectorDriver;
class Handle_GEOMImpl_VectorDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver(const Handle_GEOMImpl_VectorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver(const GEOMImpl_VectorDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver & operator=(const Handle_GEOMImpl_VectorDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver & operator=(const GEOMImpl_VectorDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_VectorDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_VectorDriver {
	GEOMImpl_VectorDriver* GetObject() {
	return (GEOMImpl_VectorDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_VectorDriver {
	~Handle_GEOMImpl_VectorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_VectorDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_OffsetDriver;
class Handle_GEOMImpl_OffsetDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver(const Handle_GEOMImpl_OffsetDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver(const GEOMImpl_OffsetDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver & operator=(const Handle_GEOMImpl_OffsetDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver & operator=(const GEOMImpl_OffsetDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_OffsetDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_OffsetDriver {
	GEOMImpl_OffsetDriver* GetObject() {
	return (GEOMImpl_OffsetDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_OffsetDriver {
	~Handle_GEOMImpl_OffsetDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_OffsetDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ScaleDriver;
class Handle_GEOMImpl_ScaleDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver(const Handle_GEOMImpl_ScaleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver(const GEOMImpl_ScaleDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver & operator=(const Handle_GEOMImpl_ScaleDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver & operator=(const GEOMImpl_ScaleDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ScaleDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ScaleDriver {
	GEOMImpl_ScaleDriver* GetObject() {
	return (GEOMImpl_ScaleDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ScaleDriver {
	~Handle_GEOMImpl_ScaleDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ScaleDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_FaceDriver;
class Handle_GEOMImpl_FaceDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver(const Handle_GEOMImpl_FaceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver(const GEOMImpl_FaceDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver & operator=(const Handle_GEOMImpl_FaceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver & operator=(const GEOMImpl_FaceDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_FaceDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_FaceDriver {
	GEOMImpl_FaceDriver* GetObject() {
	return (GEOMImpl_FaceDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_FaceDriver {
	~Handle_GEOMImpl_FaceDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_FaceDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_BooleanDriver;
class Handle_GEOMImpl_BooleanDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver(const Handle_GEOMImpl_BooleanDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver(const GEOMImpl_BooleanDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver & operator=(const Handle_GEOMImpl_BooleanDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver & operator=(const GEOMImpl_BooleanDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BooleanDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_BooleanDriver {
	GEOMImpl_BooleanDriver* GetObject() {
	return (GEOMImpl_BooleanDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_BooleanDriver {
	~Handle_GEOMImpl_BooleanDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_BooleanDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PartitionDriver;
class Handle_GEOMImpl_PartitionDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver(const Handle_GEOMImpl_PartitionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver(const GEOMImpl_PartitionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver & operator=(const Handle_GEOMImpl_PartitionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver & operator=(const GEOMImpl_PartitionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PartitionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PartitionDriver {
	GEOMImpl_PartitionDriver* GetObject() {
	return (GEOMImpl_PartitionDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PartitionDriver {
	~Handle_GEOMImpl_PartitionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PartitionDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_CylinderDriver;
class Handle_GEOMImpl_CylinderDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver(const Handle_GEOMImpl_CylinderDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver(const GEOMImpl_CylinderDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver & operator=(const Handle_GEOMImpl_CylinderDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver & operator=(const GEOMImpl_CylinderDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CylinderDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_CylinderDriver {
	GEOMImpl_CylinderDriver* GetObject() {
	return (GEOMImpl_CylinderDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_CylinderDriver {
	~Handle_GEOMImpl_CylinderDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_CylinderDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PipeDriver;
class Handle_GEOMImpl_PipeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver(const Handle_GEOMImpl_PipeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver(const GEOMImpl_PipeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver & operator=(const Handle_GEOMImpl_PipeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver & operator=(const GEOMImpl_PipeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PipeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PipeDriver {
	GEOMImpl_PipeDriver* GetObject() {
	return (GEOMImpl_PipeDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PipeDriver {
	~Handle_GEOMImpl_PipeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PipeDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PolylineDriver;
class Handle_GEOMImpl_PolylineDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver(const Handle_GEOMImpl_PolylineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver(const GEOMImpl_PolylineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver & operator=(const Handle_GEOMImpl_PolylineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver & operator=(const GEOMImpl_PolylineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PolylineDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PolylineDriver {
	GEOMImpl_PolylineDriver* GetObject() {
	return (GEOMImpl_PolylineDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PolylineDriver {
	~Handle_GEOMImpl_PolylineDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PolylineDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PrismDriver;
class Handle_GEOMImpl_PrismDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver(const Handle_GEOMImpl_PrismDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver(const GEOMImpl_PrismDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver & operator=(const Handle_GEOMImpl_PrismDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver & operator=(const GEOMImpl_PrismDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PrismDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PrismDriver {
	GEOMImpl_PrismDriver* GetObject() {
	return (GEOMImpl_PrismDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PrismDriver {
	~Handle_GEOMImpl_PrismDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PrismDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_GlueDriver;
class Handle_GEOMImpl_GlueDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver(const Handle_GEOMImpl_GlueDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver(const GEOMImpl_GlueDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver & operator=(const Handle_GEOMImpl_GlueDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver & operator=(const GEOMImpl_GlueDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_GlueDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_GlueDriver {
	GEOMImpl_GlueDriver* GetObject() {
	return (GEOMImpl_GlueDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_GlueDriver {
	~Handle_GEOMImpl_GlueDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_GlueDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ExportDriver;
class Handle_GEOMImpl_ExportDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver(const Handle_GEOMImpl_ExportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver(const GEOMImpl_ExportDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver & operator=(const Handle_GEOMImpl_ExportDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver & operator=(const GEOMImpl_ExportDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ExportDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ExportDriver {
	GEOMImpl_ExportDriver* GetObject() {
	return (GEOMImpl_ExportDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ExportDriver {
	~Handle_GEOMImpl_ExportDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ExportDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_RotateDriver;
class Handle_GEOMImpl_RotateDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver(const Handle_GEOMImpl_RotateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver(const GEOMImpl_RotateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver & operator=(const Handle_GEOMImpl_RotateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver & operator=(const GEOMImpl_RotateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RotateDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_RotateDriver {
	GEOMImpl_RotateDriver* GetObject() {
	return (GEOMImpl_RotateDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_RotateDriver {
	~Handle_GEOMImpl_RotateDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_RotateDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_TorusDriver;
class Handle_GEOMImpl_TorusDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver(const Handle_GEOMImpl_TorusDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver(const GEOMImpl_TorusDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver & operator=(const Handle_GEOMImpl_TorusDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver & operator=(const GEOMImpl_TorusDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TorusDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_TorusDriver {
	GEOMImpl_TorusDriver* GetObject() {
	return (GEOMImpl_TorusDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_TorusDriver {
	~Handle_GEOMImpl_TorusDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_TorusDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_RevolutionDriver;
class Handle_GEOMImpl_RevolutionDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver(const Handle_GEOMImpl_RevolutionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver(const GEOMImpl_RevolutionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver & operator=(const Handle_GEOMImpl_RevolutionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver & operator=(const GEOMImpl_RevolutionDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_RevolutionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_RevolutionDriver {
	GEOMImpl_RevolutionDriver* GetObject() {
	return (GEOMImpl_RevolutionDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_RevolutionDriver {
	~Handle_GEOMImpl_RevolutionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_RevolutionDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_BlockDriver;
class Handle_GEOMImpl_BlockDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver(const Handle_GEOMImpl_BlockDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver(const GEOMImpl_BlockDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver & operator=(const Handle_GEOMImpl_BlockDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver & operator=(const GEOMImpl_BlockDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_BlockDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_BlockDriver {
	GEOMImpl_BlockDriver* GetObject() {
	return (GEOMImpl_BlockDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_BlockDriver {
	~Handle_GEOMImpl_BlockDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_BlockDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_PlateDriver;
class Handle_GEOMImpl_PlateDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlateDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlateDriver(const Handle_GEOMImpl_PlateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlateDriver(const GEOMImpl_PlateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlateDriver & operator=(const Handle_GEOMImpl_PlateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlateDriver & operator=(const GEOMImpl_PlateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_PlateDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_PlateDriver {
	GEOMImpl_PlateDriver* GetObject() {
	return (GEOMImpl_PlateDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_PlateDriver {
	~Handle_GEOMImpl_PlateDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_PlateDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_3DSketcherDriver;
class Handle_GEOMImpl_3DSketcherDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver(const Handle_GEOMImpl_3DSketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver(const GEOMImpl_3DSketcherDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver & operator=(const Handle_GEOMImpl_3DSketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver & operator=(const GEOMImpl_3DSketcherDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_3DSketcherDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_3DSketcherDriver {
	GEOMImpl_3DSketcherDriver* GetObject() {
	return (GEOMImpl_3DSketcherDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_3DSketcherDriver {
	~Handle_GEOMImpl_3DSketcherDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_3DSketcherDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ArchimedeDriver;
class Handle_GEOMImpl_ArchimedeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver(const Handle_GEOMImpl_ArchimedeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver(const GEOMImpl_ArchimedeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver & operator=(const Handle_GEOMImpl_ArchimedeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver & operator=(const GEOMImpl_ArchimedeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ArchimedeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ArchimedeDriver {
	GEOMImpl_ArchimedeDriver* GetObject() {
	return (GEOMImpl_ArchimedeDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ArchimedeDriver {
	~Handle_GEOMImpl_ArchimedeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ArchimedeDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_LineDriver;
class Handle_GEOMImpl_LineDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver(const Handle_GEOMImpl_LineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver(const GEOMImpl_LineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver & operator=(const Handle_GEOMImpl_LineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver & operator=(const GEOMImpl_LineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_LineDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_LineDriver {
	GEOMImpl_LineDriver* GetObject() {
	return (GEOMImpl_LineDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_LineDriver {
	~Handle_GEOMImpl_LineDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_LineDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_SplineDriver;
class Handle_GEOMImpl_SplineDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver(const Handle_GEOMImpl_SplineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver(const GEOMImpl_SplineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver & operator=(const Handle_GEOMImpl_SplineDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver & operator=(const GEOMImpl_SplineDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SplineDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_SplineDriver {
	GEOMImpl_SplineDriver* GetObject() {
	return (GEOMImpl_SplineDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_SplineDriver {
	~Handle_GEOMImpl_SplineDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_SplineDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_ShapeDriver;
class Handle_GEOMImpl_ShapeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver(const Handle_GEOMImpl_ShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver(const GEOMImpl_ShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver & operator=(const Handle_GEOMImpl_ShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver & operator=(const GEOMImpl_ShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_ShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_ShapeDriver {
	GEOMImpl_ShapeDriver* GetObject() {
	return (GEOMImpl_ShapeDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_ShapeDriver {
	~Handle_GEOMImpl_ShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_ShapeDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_HealingDriver;
class Handle_GEOMImpl_HealingDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver(const Handle_GEOMImpl_HealingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver(const GEOMImpl_HealingDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver & operator=(const Handle_GEOMImpl_HealingDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver & operator=(const GEOMImpl_HealingDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_HealingDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_HealingDriver {
	GEOMImpl_HealingDriver* GetObject() {
	return (GEOMImpl_HealingDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_HealingDriver {
	~Handle_GEOMImpl_HealingDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_HealingDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_TranslateDriver;
class Handle_GEOMImpl_TranslateDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver(const Handle_GEOMImpl_TranslateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver(const GEOMImpl_TranslateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver & operator=(const Handle_GEOMImpl_TranslateDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver & operator=(const GEOMImpl_TranslateDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_TranslateDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_TranslateDriver {
	GEOMImpl_TranslateDriver* GetObject() {
	return (GEOMImpl_TranslateDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_TranslateDriver {
	~Handle_GEOMImpl_TranslateDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_TranslateDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_SketcherDriver;
class Handle_GEOMImpl_SketcherDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver(const Handle_GEOMImpl_SketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver(const GEOMImpl_SketcherDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver & operator=(const Handle_GEOMImpl_SketcherDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver & operator=(const GEOMImpl_SketcherDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_SketcherDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_SketcherDriver {
	GEOMImpl_SketcherDriver* GetObject() {
	return (GEOMImpl_SketcherDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_SketcherDriver {
	~Handle_GEOMImpl_SketcherDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_SketcherDriver\n");}
	}
};


%nodefaultctor Handle_GEOMImpl_CurveDriver;
class Handle_GEOMImpl_CurveDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOMImpl_CurveDriver();
		%feature("autodoc", "1");
		Handle_GEOMImpl_CurveDriver(const Handle_GEOMImpl_CurveDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CurveDriver(const GEOMImpl_CurveDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CurveDriver & operator=(const Handle_GEOMImpl_CurveDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CurveDriver & operator=(const GEOMImpl_CurveDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOMImpl_CurveDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOMImpl_CurveDriver {
	GEOMImpl_CurveDriver* GetObject() {
	return (GEOMImpl_CurveDriver*)$self->Access();
	}
};
%extend Handle_GEOMImpl_CurveDriver {
	~Handle_GEOMImpl_CurveDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOMImpl_CurveDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IShapes;
class GEOMImpl_IShapes {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IShapes(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShapes(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapes();
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		void SetIsPlanar(const Standard_Boolean isPlanarWanted);
		%feature("autodoc", "1");
		Standard_Boolean GetIsPlanar();
		%feature("autodoc", "1");
		void SetSubShapeType(const Standard_Integer theType);
		%feature("autodoc", "1");
		Standard_Integer GetSubShapeType();
		%feature("autodoc", "1");
		void SetIndices(const Handle_TColStd_HArray1OfInteger &theIndices);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetIndices();
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theValue);
		%feature("autodoc", "1");
		Standard_Real GetTolerance();

};
%extend GEOMImpl_IShapes {
	~GEOMImpl_IShapes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IShapes\n");}
	}
};


%nodefaultctor GEOMImpl_MarkerDriver;
class GEOMImpl_MarkerDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_MarkerDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_MarkerDriver {
	Handle_GEOMImpl_MarkerDriver GetHandle() {
	return *(Handle_GEOMImpl_MarkerDriver*) &$self;
	}
};
%extend GEOMImpl_MarkerDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_MarkerDriver {
	~GEOMImpl_MarkerDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_MarkerDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IVariableFillet;
class GEOMImpl_IVariableFillet {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IVariableFillet(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetEdgesArray(const Handle_TColStd_HArray1OfInteger &theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetEdgesArray();
		%feature("autodoc", "1");
		void SetParamsArray(const Handle_TColStd_HArray1OfReal &theArray);
		%feature("autodoc", "1");
		void SetParamsArray(const Handle_TColStd_HArray1OfAsciiString &theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetParamsArray();
		%feature("autodoc", "1");
		void SetRadiusArray(const Handle_TColStd_HArray1OfReal &theArray);
		%feature("autodoc", "1");
		void SetRadiusArray(const Handle_TColStd_HArray1OfAsciiString &theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetRadiusArray();

};
%extend GEOMImpl_IVariableFillet {
	~GEOMImpl_IVariableFillet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IVariableFillet\n");}
	}
};


%nodefaultctor GEOMImpl_IMirror;
class GEOMImpl_IMirror {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IMirror(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetAxis(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPlane();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetAxis();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();

};
%extend GEOMImpl_IMirror {
	~GEOMImpl_IMirror() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IMirror\n");}
	}
};


%nodefaultctor GEOMImpl_IScale;
class GEOMImpl_IScale {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IScale(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetFactor(double );
		%feature("autodoc", "1");
		void SetFactor(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		double GetFactor();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		void SetFactorX(double );
		%feature("autodoc", "1");
		void SetFactorX(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		void SetFactorY(double );
		%feature("autodoc", "1");
		void SetFactorY(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		void SetFactorZ(double );
		%feature("autodoc", "1");
		void SetFactorZ(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		double GetFactorX();
		%feature("autodoc", "1");
		double GetFactorY();
		%feature("autodoc", "1");
		double GetFactorZ();

};
%extend GEOMImpl_IScale {
	~GEOMImpl_IScale() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IScale\n");}
	}
};


%nodefaultctor GEOMImpl_ICurve;
class GEOMImpl_ICurve {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICurve(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetEdge(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetTool(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPar(double );
		%feature("autodoc", "1");
		void SetPar(const TCollection_AsciiString &theP);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetEdge();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetTool();
		%feature("autodoc", "1");
		double GetPar();

};
%extend GEOMImpl_ICurve {
	~GEOMImpl_ICurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ICurve\n");}
	}
};


%nodefaultctor GEOMImpl_ScaleDriver;
class GEOMImpl_ScaleDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ScaleDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ScaleDriver {
	Handle_GEOMImpl_ScaleDriver GetHandle() {
	return *(Handle_GEOMImpl_ScaleDriver*) &$self;
	}
};
%extend GEOMImpl_ScaleDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ScaleDriver {
	~GEOMImpl_ScaleDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ScaleDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IShapesOperations;
class GEOMImpl_IShapesOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IShapesOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeEdge(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeWire(std::list<Handle_GEOM_Object>, const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFace(Handle_GEOM_Object , const bool isPlanarWanted);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceWires(std::list<Handle_GEOM_Object>, const bool isPlanarWanted);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeShell(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSolidShell(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSolidShells(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCompound(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeGlueFaces(Handle_GEOM_Object , const Standard_Real theTolerance, const Standard_Boolean doKeepNonSolids);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetGlueFaces(Handle_GEOM_Object , const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeGlueFacesByList(Handle_GEOM_Object , const Standard_Real theTolerance, std::list<Handle_GEOM_Object>, const Standard_Boolean doKeepNonSolids);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient MakeExplode(Handle_GEOM_Object , const Standard_Integer theShapeType, const Standard_Boolean isSorted);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger SubShapeAllIDs(Handle_GEOM_Object , const Standard_Integer theShapeType, const Standard_Boolean isSorted);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetSubShape(Handle_GEOM_Object , const Standard_Integer theID);
		%feature("autodoc", "1");
		Standard_Integer GetSubShapeIndex(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Standard_Integer GetTopologyIndex(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		TCollection_AsciiString GetShapeTypeString(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Standard_Integer NumberOfSubShapes(Handle_GEOM_Object , const Standard_Integer theShapeType);
		%feature("autodoc", "1");
		Handle_GEOM_Object ReverseShape(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetFreeFacesIDs(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetSharedShapes(Handle_GEOM_Object , Handle_GEOM_Object , const Standard_Integer theShapeType);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnPlane(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnPlaneWithLocation(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const Handle_GEOM_Object &thePnt, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnCylinder(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAxis, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnSphere(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theCenter, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnPlaneIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnPlaneWithLocationIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAx1, const Handle_GEOM_Object &thePnt, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnCylinderIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theAxis, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnSphereIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theCenter, const Standard_Real theRadius, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnQuadrangle(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theTopLeftPoint, const Handle_GEOM_Object &theTopRigthPoint, const Handle_GEOM_Object &theBottomLeftPoint, const Handle_GEOM_Object &theBottomRigthPoint, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnQuadrangleIDs(const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, const Handle_GEOM_Object &theTopLeftPoint, const Handle_GEOM_Object &theTopRigthPoint, const Handle_GEOM_Object &theBottomLeftPoint, const Handle_GEOM_Object &theBottomRigthPoint, const GEOMAlgo_State theState);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetInPlace(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetInPlaceByHistory(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetSame(const Handle_GEOM_Object &theShapeWhere, const Handle_GEOM_Object &theShapeWhat);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnBoxIDs(const Handle_GEOM_Object &theBox, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnBox(const Handle_GEOM_Object &theBox, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger GetShapesOnShapeIDs(const Handle_GEOM_Object &theCheckShape, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapesOnShape(const Handle_GEOM_Object &theCheckShape, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetShapesOnShapeAsCompound(const Handle_GEOM_Object &theCheckShape, const Handle_GEOM_Object &theShape, const Standard_Integer theShapeType, GEOMAlgo_State );
		%feature("autodoc", "1");
		void SortShapes(TopTools_ListOfShape & SL);
		%feature("autodoc", "1");
		TopoDS_Shape CompsolidToCompound(const TopoDS_Shape &theCompsolid);
		%feature("autodoc", "1");
		bool CheckTriangulation(const TopoDS_Shape &theShape);

};
%extend GEOMImpl_IShapesOperations {
	~GEOMImpl_IShapesOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IShapesOperations\n");}
	}
};


%nodefaultctor GEOMImpl_IGlue;
class GEOMImpl_IGlue {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IGlue(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Standard_Real GetTolerance();
		%feature("autodoc", "1");
		void SetFaces(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetFaces();
		%feature("autodoc", "1");
		void SetKeepNonSolids(Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean GetKeepNonSolids();

};
%extend GEOMImpl_IGlue {
	~GEOMImpl_IGlue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IGlue\n");}
	}
};


%nodefaultctor GEOMImpl_IPartition;
class GEOMImpl_IPartition {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPartition(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLimit(int );
		%feature("autodoc", "1");
		void SetShapes(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetTools(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetKeepIns(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetRemoveIns(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		void SetMaterials(const Handle_TColStd_HArray1OfInteger &theMaterials);
		%feature("autodoc", "1");
		int GetLimit();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapes();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetTools();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetKeepIns();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetRemoveIns();
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetMaterials();
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPlane();
		%feature("autodoc", "1");
		void SetKeepNonlimitShapes(int );
		%feature("autodoc", "1");
		int GetKeepNonlimitShapes();

};
%extend GEOMImpl_IPartition {
	~GEOMImpl_IPartition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPartition\n");}
	}
};


%nodefaultctor GEOMImpl_RevolutionDriver;
class GEOMImpl_RevolutionDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_RevolutionDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_RevolutionDriver {
	Handle_GEOMImpl_RevolutionDriver GetHandle() {
	return *(Handle_GEOMImpl_RevolutionDriver*) &$self;
	}
};
%extend GEOMImpl_RevolutionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_RevolutionDriver {
	~GEOMImpl_RevolutionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_RevolutionDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IPipe;
class GEOMImpl_IPipe {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipe(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPath(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPath();

};
%extend GEOMImpl_IPipe {
	~GEOMImpl_IPipe() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPipe\n");}
	}
};


%nodefaultctor GEOMImpl_IPipeDiffSect;
class GEOMImpl_IPipeDiffSect : public GEOMImpl_IPipe {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipeDiffSect(const Handle_GEOM_Function &theFunction);
		%feature("autodoc", "1");
		void SetBases(const Handle_TColStd_HSequenceOfTransient &theBases);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetBases();
		%feature("autodoc", "1");
		void SetLocations(const Handle_TColStd_HSequenceOfTransient &theLocations);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetLocations();
		%feature("autodoc", "1");
		void SetWithContactMode(int );
		%feature("autodoc", "1");
		int GetWithContactMode();
		%feature("autodoc", "1");
		void SetWithCorrectionMode(int );
		%feature("autodoc", "1");
		int GetWithCorrectionMode();

};
%extend GEOMImpl_IPipeDiffSect {
	~GEOMImpl_IPipeDiffSect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPipeDiffSect\n");}
	}
};


%nodefaultctor GEOMImpl_IPipeShellSect;
class GEOMImpl_IPipeShellSect : public GEOMImpl_IPipeDiffSect {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipeShellSect(const Handle_GEOM_Function &theFunction);
		%feature("autodoc", "1");
		void SetSubBases(const Handle_TColStd_HSequenceOfTransient &theSubBases);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetSubBases();

};
%extend GEOMImpl_IPipeShellSect {
	~GEOMImpl_IPipeShellSect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPipeShellSect\n");}
	}
};


%nodefaultctor GEOMImpl_IHealingOperations;
class GEOMImpl_IHealingOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IHealingOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object ShapeProcess(Handle_GEOM_Object , const Handle_TColStd_HArray1OfExtendedString &theOperations, const Handle_TColStd_HArray1OfExtendedString &theParams, const Handle_TColStd_HArray1OfExtendedString &theValues);
		%feature("autodoc", "1");
		void GetShapeProcessParameters(std::list<std::string>, std::list<std::string>, std::list<std::string>);
		%feature("autodoc", "1");
		bool GetOperatorParameters(const std::string theOperation, std::list<std::string>, std::list<std::string>);
		%feature("autodoc", "1");
		bool GetParameters(const std::string theOperation, std::list<std::string>);
		%feature("autodoc", "1");
		Handle_GEOM_Object SuppressFaces(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theFaces);
		%feature("autodoc", "1");
		Handle_GEOM_Object CloseContour(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theWires, bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object RemoveIntWires(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theWires);
		%feature("autodoc", "1");
		Handle_GEOM_Object FillHoles(Handle_GEOM_Object , const Handle_TColStd_HArray1OfInteger &theWires);
		%feature("autodoc", "1");
		Handle_GEOM_Object Sew(Handle_GEOM_Object , double );
		%feature("autodoc", "1");
		Handle_GEOM_Object DivideEdge(Handle_GEOM_Object , int , double , bool );
		%feature("autodoc", "1");
		bool GetFreeBoundary(Handle_GEOM_Object , Handle_TColStd_HSequenceOfTransient & theOutClosedWires, Handle_TColStd_HSequenceOfTransient & theOutOpenWires);
		%feature("autodoc", "1");
		Handle_GEOM_Object ChangeOrientation(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object ChangeOrientationCopy(Handle_GEOM_Object );

};
%extend GEOMImpl_IHealingOperations {
	~GEOMImpl_IHealingOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IHealingOperations\n");}
	}
};


%nodefaultctor GEOMImpl_IPolyline;
class GEOMImpl_IPolyline {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPolyline(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetPoint(int , Handle_GEOM_Function );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint(int );

};
%extend GEOMImpl_IPolyline {
	~GEOMImpl_IPolyline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPolyline\n");}
	}
};


%nodefaultctor GEOMImpl_MirrorDriver;
class GEOMImpl_MirrorDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_MirrorDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_MirrorDriver {
	Handle_GEOMImpl_MirrorDriver GetHandle() {
	return *(Handle_GEOMImpl_MirrorDriver*) &$self;
	}
};
%extend GEOMImpl_MirrorDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_MirrorDriver {
	~GEOMImpl_MirrorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_MirrorDriver\n");}
	}
};


%nodefaultctor GEOMImpl_VectorDriver;
class GEOMImpl_VectorDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_VectorDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_VectorDriver {
	Handle_GEOMImpl_VectorDriver GetHandle() {
	return *(Handle_GEOMImpl_VectorDriver*) &$self;
	}
};
%extend GEOMImpl_VectorDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_VectorDriver {
	~GEOMImpl_VectorDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_VectorDriver\n");}
	}
};


%nodefaultctor GEOMImpl_PrismDriver;
class GEOMImpl_PrismDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PrismDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PrismDriver {
	Handle_GEOMImpl_PrismDriver GetHandle() {
	return *(Handle_GEOMImpl_PrismDriver*) &$self;
	}
};
%extend GEOMImpl_PrismDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PrismDriver {
	~GEOMImpl_PrismDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PrismDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IPipeBiNormal;
class GEOMImpl_IPipeBiNormal : public GEOMImpl_IPipe {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPipeBiNormal(Handle_GEOM_Function & theFunction);
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();

};
%extend GEOMImpl_IPipeBiNormal {
	~GEOMImpl_IPipeBiNormal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPipeBiNormal\n");}
	}
};


%nodefaultctor GEOMImpl_IMeasureOperations;
class GEOMImpl_IMeasureOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IMeasureOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		GEOMImpl_IMeasureOperations::ShapeKind KindOfShape(Handle_GEOM_Object , Handle_TColStd_HSequenceOfInteger & theIntegers, Handle_TColStd_HSequenceOfReal & theDoubles);
		%feature("autodoc","GetPosition()->[Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void GetPosition(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetCentreOfMass(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetNormal(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","GetBasicProperties()->[Standard_Real, Standard_Real, Standard_Real]");
		void GetBasicProperties(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetInertia()->[Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void GetInertia(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetBoundingBox()->[Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void GetBoundingBox(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","GetTolerance()->[Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		void GetTolerance(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		bool CheckShape(Handle_GEOM_Object , const Standard_Boolean theIsCheckGeom, TCollection_AsciiString & theDump);
		%feature("autodoc", "1");
		TCollection_AsciiString WhatIs(Handle_GEOM_Object );
		%feature("autodoc","GetMinDistance()->[Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");
		Standard_Real GetMinDistance(Handle_GEOM_Object , Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","PointCoordinates()->[Standard_Real, Standard_Real, Standard_Real]");
		void PointCoordinates(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real GetAngle(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","CurveCurvatureByParam()->Standard_Real");
		Standard_Real CurveCurvatureByParam(Handle_GEOM_Object , Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real CurveCurvatureByPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","MaxSurfaceCurvatureByParam()->[Standard_Real, Standard_Real]");
		Standard_Real MaxSurfaceCurvatureByParam(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real MaxSurfaceCurvatureByPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","MinSurfaceCurvatureByParam()->[Standard_Real, Standard_Real]");
		Standard_Real MinSurfaceCurvatureByParam(Handle_GEOM_Object , Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real MinSurfaceCurvatureByPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		gp_Ax3 GetPosition(const TopoDS_Shape &theShape);

};
%extend GEOMImpl_IMeasureOperations {
	~GEOMImpl_IMeasureOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IMeasureOperations\n");}
	}
};


%nodefaultctor GEOMImpl_IFilling;
class GEOMImpl_IFilling {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFilling(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetTol2D(double );
		%feature("autodoc", "1");
		void SetTol3D(double );
		%feature("autodoc", "1");
		double GetTol2D();
		%feature("autodoc", "1");
		double GetTol3D();
		%feature("autodoc", "1");
		void SetMinDeg(int );
		%feature("autodoc", "1");
		void SetMaxDeg(int );
		%feature("autodoc", "1");
		int GetMinDeg();
		%feature("autodoc", "1");
		int GetMaxDeg();
		%feature("autodoc", "1");
		void SetNbIter(int );
		%feature("autodoc", "1");
		int GetNbIter();
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetApprox(bool );
		%feature("autodoc", "1");
		bool GetApprox();

};
%extend GEOMImpl_IFilling {
	~GEOMImpl_IFilling() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IFilling\n");}
	}
};


%nodefaultctor GEOMImpl_IVector;
class GEOMImpl_IVector {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetDX(const TCollection_AsciiString &theDX);
		%feature("autodoc", "1");
		void SetDY(const TCollection_AsciiString &theDY);
		%feature("autodoc", "1");
		void SetDZ(const TCollection_AsciiString &theDZ);
		%feature("autodoc", "1");
		void SetDX(const double &theDX);
		%feature("autodoc", "1");
		void SetDY(const double &theDY);
		%feature("autodoc", "1");
		void SetDZ(const double &theDZ);
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		double GetDZ();
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		void SetCurve(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCurve();
		%feature("autodoc", "1");
		void SetParameter(const TCollection_AsciiString &theParam);
		%feature("autodoc", "1");
		double GetParameter();

};
%extend GEOMImpl_IVector {
	~GEOMImpl_IVector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IVector\n");}
	}
};


%nodefaultctor GEOMImpl_I3DSketcher;
class GEOMImpl_I3DSketcher {
	public:
		%feature("autodoc", "1");
		GEOMImpl_I3DSketcher(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCoordinates(const Handle_TColStd_HArray1OfAsciiString &theValue);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetCoordinates();

};
%extend GEOMImpl_I3DSketcher {
	~GEOMImpl_I3DSketcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_I3DSketcher\n");}
	}
};


%nodefaultctor GEOMImpl_IArc;
class GEOMImpl_IArc {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IArc(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetSense(bool );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		bool GetSense();

};
%extend GEOMImpl_IArc {
	~GEOMImpl_IArc() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IArc\n");}
	}
};


%nodefaultctor GEOMImpl_PlaneDriver;
class GEOMImpl_PlaneDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PlaneDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PlaneDriver {
	Handle_GEOMImpl_PlaneDriver GetHandle() {
	return *(Handle_GEOMImpl_PlaneDriver*) &$self;
	}
};
%extend GEOMImpl_PlaneDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PlaneDriver {
	~GEOMImpl_PlaneDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PlaneDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ThickSolidDriver;
class GEOMImpl_ThickSolidDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ThickSolidDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ThickSolidDriver {
	Handle_GEOMImpl_ThickSolidDriver GetHandle() {
	return *(Handle_GEOMImpl_ThickSolidDriver*) &$self;
	}
};
%extend GEOMImpl_ThickSolidDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ThickSolidDriver {
	~GEOMImpl_ThickSolidDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ThickSolidDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ITransformOperations;
class GEOMImpl_ITransformOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ITransformOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateTwoPoints(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateTwoPointsCopy(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateDXDYDZ(Handle_GEOM_Object , const GEOM_Parameter &theX, const GEOM_Parameter &theY, const GEOM_Parameter &theZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateDXDYDZCopy(Handle_GEOM_Object , const GEOM_Parameter &theX, const GEOM_Parameter &theY, const GEOM_Parameter &theZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateVector(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateVectorCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateVectorDistance(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theDistance, bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object Translate1D(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theStep, const GEOM_Parameter &theNbTimes);
		%feature("autodoc", "1");
		Handle_GEOM_Object Translate2D(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theStep1, const GEOM_Parameter &theNbTimes1, Handle_GEOM_Object , const GEOM_Parameter &theStep2, const GEOM_Parameter &theNbTimes2);
		%feature("autodoc", "1");
		Handle_GEOM_Object TranslateAlongRail(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theStep, const GEOM_Parameter &theNbTimes, const GEOM_Parameter &theType);
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPlane(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPlaneCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorAxis(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorAxisCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MirrorPointCopy(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object OffsetShape(Handle_GEOM_Object , const GEOM_Parameter &theOffset, const GEOM_Parameter &theHeightOffset, bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object OffsetShapeCopy(Handle_GEOM_Object , const GEOM_Parameter &theOffset, const GEOM_Parameter &theHeightOffset, bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object ScaleShape(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theFactor);
		%feature("autodoc", "1");
		Handle_GEOM_Object ScaleShapeCopy(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theFactor);
		%feature("autodoc", "1");
		Handle_GEOM_Object ScaleShapeAffine(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theFactor);
		%feature("autodoc", "1");
		Handle_GEOM_Object ScaleShapeAffineCopy(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theFactor);
		%feature("autodoc", "1");
		Handle_GEOM_Object PositionShape(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object PositionShapeCopy(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object Rotate(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theAngle);
		%feature("autodoc", "1");
		Handle_GEOM_Object RotateCopy(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theAngle);
		%feature("autodoc", "1");
		Handle_GEOM_Object Rotate1D(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theNbTimes);
		%feature("autodoc", "1");
		Handle_GEOM_Object Rotate2D(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theAngle, const GEOM_Parameter &theNbTimes1, const GEOM_Parameter &theStep, const GEOM_Parameter &theNbTimes2);
		%feature("autodoc", "1");
		Handle_GEOM_Object RotateThreePoints(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object RotateThreePointsCopy(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );

};
%extend GEOMImpl_ITransformOperations {
	~GEOMImpl_ITransformOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ITransformOperations\n");}
	}
};


%nodefaultctor GEOMImpl_TranslateDriver;
class GEOMImpl_TranslateDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_TranslateDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_TranslateDriver {
	Handle_GEOMImpl_TranslateDriver GetHandle() {
	return *(Handle_GEOMImpl_TranslateDriver*) &$self;
	}
};
%extend GEOMImpl_TranslateDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_TranslateDriver {
	~GEOMImpl_TranslateDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_TranslateDriver\n");}
	}
};


%nodefaultctor GEOMImpl_CopyDriver;
class GEOMImpl_CopyDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_CopyDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_CopyDriver {
	Handle_GEOMImpl_CopyDriver GetHandle() {
	return *(Handle_GEOMImpl_CopyDriver*) &$self;
	}
};
%extend GEOMImpl_CopyDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_CopyDriver {
	~GEOMImpl_CopyDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_CopyDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ExportDriver;
class GEOMImpl_ExportDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ExportDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ExportDriver {
	Handle_GEOMImpl_ExportDriver GetHandle() {
	return *(Handle_GEOMImpl_ExportDriver*) &$self;
	}
};
%extend GEOMImpl_ExportDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ExportDriver {
	~GEOMImpl_ExportDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ExportDriver\n");}
	}
};


%nodefaultctor GEOMImpl_BooleanDriver;
class GEOMImpl_BooleanDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_BooleanDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_BooleanDriver {
	Handle_GEOMImpl_BooleanDriver GetHandle() {
	return *(Handle_GEOMImpl_BooleanDriver*) &$self;
	}
};
%extend GEOMImpl_BooleanDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_BooleanDriver {
	~GEOMImpl_BooleanDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_BooleanDriver\n");}
	}
};


%nodefaultctor GEOMImpl_3DSketcherDriver;
class GEOMImpl_3DSketcherDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_3DSketcherDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_3DSketcherDriver {
	Handle_GEOMImpl_3DSketcherDriver GetHandle() {
	return *(Handle_GEOMImpl_3DSketcherDriver*) &$self;
	}
};
%extend GEOMImpl_3DSketcherDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_3DSketcherDriver {
	~GEOMImpl_3DSketcherDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_3DSketcherDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IHealing;
class GEOMImpl_IHealing {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IHealing(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOperators(const Handle_TColStd_HArray1OfExtendedString &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetOperators();
		%feature("autodoc", "1");
		void SetParameters(const Handle_TColStd_HArray1OfExtendedString &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetParameters();
		%feature("autodoc", "1");
		void SetValues(const Handle_TColStd_HArray1OfExtendedString &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetValues();
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function & f);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetFaces(const Handle_TColStd_HArray1OfInteger &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetFaces();
		%feature("autodoc", "1");
		void SetWires(const Handle_TColStd_HArray1OfInteger &arr);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetWires();
		%feature("autodoc", "1");
		void SetIsCommonVertex(Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean GetIsCommonVertex();
		%feature("autodoc", "1");
		void SetIsByParameter(Standard_Boolean );
		%feature("autodoc", "1");
		Standard_Boolean GetIsByParameter();
		%feature("autodoc", "1");
		void SetTolerance(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetTolerance();
		%feature("autodoc", "1");
		void SetDevideEdgeValue(Standard_Real );
		%feature("autodoc", "1");
		Standard_Real GetDevideEdgeValue();
		%feature("autodoc", "1");
		void SetIndex(Standard_Integer );
		%feature("autodoc", "1");
		Standard_Integer GetIndex();

};
%extend GEOMImpl_IHealing {
	~GEOMImpl_IHealing() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IHealing\n");}
	}
};


%nodefaultctor GEOMImpl_IFillet;
class GEOMImpl_IFillet {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFillet(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetR(const double &theR);
		%feature("autodoc", "1");
		void SetR(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetLength(const TCollection_AsciiString &theLen);
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		void SetEdge(int , int );
		%feature("autodoc", "1");
		void SetFace(int , int );
		%feature("autodoc", "1");
		void SetVertex(int , int );
		%feature("autodoc", "1");
		int GetEdge(int );
		%feature("autodoc", "1");
		int GetFace(int );
		%feature("autodoc", "1");
		int GetVertex(int );
		%feature("autodoc", "1");
		void SetR1(double );
		%feature("autodoc", "1");
		void SetR2(double );
		%feature("autodoc", "1");
		void SetR1(const TCollection_AsciiString &theR1);
		%feature("autodoc", "1");
		void SetR2(const TCollection_AsciiString &theR2);
		%feature("autodoc", "1");
		double GetR1();
		%feature("autodoc", "1");
		double GetR2();

};
%extend GEOMImpl_IFillet {
	~GEOMImpl_IFillet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IFillet\n");}
	}
};


%nodefaultctor GEOMImpl_CurveDriver;
class GEOMImpl_CurveDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_CurveDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_CurveDriver {
	Handle_GEOMImpl_CurveDriver GetHandle() {
	return *(Handle_GEOMImpl_CurveDriver*) &$self;
	}
};
%extend GEOMImpl_CurveDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_CurveDriver {
	~GEOMImpl_CurveDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_CurveDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ISketcher;
class GEOMImpl_ISketcher {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ISketcher(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCommand(const TCollection_AsciiString &theCommand);
		%feature("autodoc", "1");
		TCollection_AsciiString GetCommand();
		%feature("autodoc", "1");
		void SetWorkingPlane(int , double );
		%feature("autodoc", "1");
		void SetWorkingPlane(int , const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		double GetWorkingPlane(int );
		%feature("autodoc", "1");
		void SetWorkingPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetWorkingPlane();

};
%extend GEOMImpl_ISketcher {
	~GEOMImpl_ISketcher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ISketcher\n");}
	}
};


%nodefaultctor GEOMImpl_TorusDriver;
class GEOMImpl_TorusDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_TorusDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_TorusDriver {
	Handle_GEOMImpl_TorusDriver GetHandle() {
	return *(Handle_GEOMImpl_TorusDriver*) &$self;
	}
};
%extend GEOMImpl_TorusDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_TorusDriver {
	~GEOMImpl_TorusDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_TorusDriver\n");}
	}
};


%nodefaultctor GEOMImpl_FaceDriver;
class GEOMImpl_FaceDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_FaceDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_FaceDriver {
	Handle_GEOMImpl_FaceDriver GetHandle() {
	return *(Handle_GEOMImpl_FaceDriver*) &$self;
	}
};
%extend GEOMImpl_FaceDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_FaceDriver {
	~GEOMImpl_FaceDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_FaceDriver\n");}
	}
};


%nodefaultctor GEOMImpl_RotateDriver;
class GEOMImpl_RotateDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_RotateDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_RotateDriver {
	Handle_GEOMImpl_RotateDriver GetHandle() {
	return *(Handle_GEOMImpl_RotateDriver*) &$self;
	}
};
%extend GEOMImpl_RotateDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_RotateDriver {
	~GEOMImpl_RotateDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_RotateDriver\n");}
	}
};


%nodefaultctor GEOMImpl_MeasureDriver;
class GEOMImpl_MeasureDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_MeasureDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_MeasureDriver {
	Handle_GEOMImpl_MeasureDriver GetHandle() {
	return *(Handle_GEOMImpl_MeasureDriver*) &$self;
	}
};
%extend GEOMImpl_MeasureDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_MeasureDriver {
	~GEOMImpl_MeasureDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_MeasureDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ChamferDriver;
class GEOMImpl_ChamferDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ChamferDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ChamferDriver {
	Handle_GEOMImpl_ChamferDriver GetHandle() {
	return *(Handle_GEOMImpl_ChamferDriver*) &$self;
	}
};
%extend GEOMImpl_ChamferDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ChamferDriver {
	~GEOMImpl_ChamferDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ChamferDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IBlockTrsf;
class GEOMImpl_IBlockTrsf {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBlockTrsf(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetFace1U(int );
		%feature("autodoc", "1");
		void SetFace2U(int );
		%feature("autodoc", "1");
		void SetFace1V(int );
		%feature("autodoc", "1");
		void SetFace2V(int );
		%feature("autodoc", "1");
		void SetNbIterU(int );
		%feature("autodoc", "1");
		void SetNbIterV(int );
		%feature("autodoc", "1");
		void SetNbIterU(const TCollection_AsciiString &theNbIter);
		%feature("autodoc", "1");
		void SetNbIterV(const TCollection_AsciiString &theNbIter);
		%feature("autodoc", "1");
		void SetOptimumNbFaces(int );
		%feature("autodoc", "1");
		int GetFace1U();
		%feature("autodoc", "1");
		int GetFace2U();
		%feature("autodoc", "1");
		int GetFace1V();
		%feature("autodoc", "1");
		int GetFace2V();
		%feature("autodoc", "1");
		int GetNbIterU();
		%feature("autodoc", "1");
		int GetNbIterV();
		%feature("autodoc", "1");
		int GetOptimumNbFaces();

};
%extend GEOMImpl_IBlockTrsf {
	~GEOMImpl_IBlockTrsf() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IBlockTrsf\n");}
	}
};


%nodefaultctor GEOMImpl_DraftDriver;
class GEOMImpl_DraftDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_DraftDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_DraftDriver {
	Handle_GEOMImpl_DraftDriver GetHandle() {
	return *(Handle_GEOMImpl_DraftDriver*) &$self;
	}
};
%extend GEOMImpl_DraftDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_DraftDriver {
	~GEOMImpl_DraftDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_DraftDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ICircle;
class GEOMImpl_ICircle {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICircle(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRadius(double );
		%feature("autodoc", "1");
		void SetRadius(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRadius();

};
%extend GEOMImpl_ICircle {
	~GEOMImpl_ICircle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ICircle\n");}
	}
};


%nodefaultctor GEOMImpl_IGroupOperations;
class GEOMImpl_IGroupOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IGroupOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object CreateGroup(Handle_GEOM_Object , TopAbs_ShapeEnum );
		%feature("autodoc", "1");
		void AddObject(Handle_GEOM_Object , int );
		%feature("autodoc", "1");
		void RemoveObject(Handle_GEOM_Object , int );
		%feature("autodoc", "1");
		void UnionList(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theSubShapes);
		%feature("autodoc", "1");
		void DifferenceList(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theSubShapes);
		%feature("autodoc", "1");
		void UnionIDs(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfInteger &theSubShapes);
		%feature("autodoc", "1");
		void DifferenceIDs(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfInteger &theSubShapes);
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetType(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetMainShape(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetObjects(Handle_GEOM_Object );

};
%extend GEOMImpl_IGroupOperations {
	~GEOMImpl_IGroupOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IGroupOperations\n");}
	}
};


%nodefaultctor GEOMImpl_IImportExport;
class GEOMImpl_IImportExport {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IImportExport(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetFileName(const TCollection_AsciiString &theFileName);
		%feature("autodoc", "1");
		TCollection_AsciiString GetFileName();
		%feature("autodoc", "1");
		void SetPluginName(const TCollection_AsciiString &thePluginLibName);
		%feature("autodoc", "1");
		TCollection_AsciiString GetPluginName();
		%feature("autodoc", "1");
		void SetFormatName(const TCollection_AsciiString &theFormatName);
		%feature("autodoc", "1");
		TCollection_AsciiString GetFormatName();

};
%extend GEOMImpl_IImportExport {
	~GEOMImpl_IImportExport() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IImportExport\n");}
	}
};


%nodefaultctor GEOMImpl_ICylinder;
class GEOMImpl_ICylinder {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICylinder(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetR(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetR(const double &theR);
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		void SetH(const TCollection_AsciiString &theH);
		%feature("autodoc", "1");
		void SetH(const double &theH);
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetAngle(const double &theAngle);
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();

};
%extend GEOMImpl_ICylinder {
	~GEOMImpl_ICylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ICylinder\n");}
	}
};


%nodefaultctor GEOMImpl_DiskDriver;
class GEOMImpl_DiskDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_DiskDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_DiskDriver {
	Handle_GEOMImpl_DiskDriver GetHandle() {
	return *(Handle_GEOMImpl_DiskDriver*) &$self;
	}
};
%extend GEOMImpl_DiskDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_DiskDriver {
	~GEOMImpl_DiskDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_DiskDriver\n");}
	}
};


%nodefaultctor GEOMImpl_OffsetDriver;
class GEOMImpl_OffsetDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_OffsetDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_OffsetDriver {
	Handle_GEOMImpl_OffsetDriver GetHandle() {
	return *(Handle_GEOMImpl_OffsetDriver*) &$self;
	}
};
%extend GEOMImpl_OffsetDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_OffsetDriver {
	~GEOMImpl_OffsetDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_OffsetDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ArchimedeDriver;
class GEOMImpl_ArchimedeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ArchimedeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ArchimedeDriver {
	Handle_GEOMImpl_ArchimedeDriver GetHandle() {
	return *(Handle_GEOMImpl_ArchimedeDriver*) &$self;
	}
};
%extend GEOMImpl_ArchimedeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ArchimedeDriver {
	~GEOMImpl_ArchimedeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ArchimedeDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ShapeDriver;
class GEOMImpl_ShapeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ShapeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ShapeDriver {
	Handle_GEOMImpl_ShapeDriver GetHandle() {
	return *(Handle_GEOMImpl_ShapeDriver*) &$self;
	}
};
%extend GEOMImpl_ShapeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ShapeDriver {
	~GEOMImpl_ShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ShapeDriver\n");}
	}
};


%nodefaultctor GEOMImpl_PolylineDriver;
class GEOMImpl_PolylineDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PolylineDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PolylineDriver {
	Handle_GEOMImpl_PolylineDriver GetHandle() {
	return *(Handle_GEOMImpl_PolylineDriver*) &$self;
	}
};
%extend GEOMImpl_PolylineDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PolylineDriver {
	~GEOMImpl_PolylineDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PolylineDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IMeasure;
class GEOMImpl_IMeasure {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IMeasure(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();

};
%extend GEOMImpl_IMeasure {
	~GEOMImpl_IMeasure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IMeasure\n");}
	}
};


%nodefaultctor GEOMImpl_IEllipse;
class GEOMImpl_IEllipse {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IEllipse(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRMajor(double );
		%feature("autodoc", "1");
		void SetRMinor(double );
		%feature("autodoc", "1");
		void SetRMajor(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetRMinor(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetVectorMajor(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPMajor(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPMinor(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRMajor();
		%feature("autodoc", "1");
		double GetRMinor();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPMajor();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPMinor();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVectorMajor();

};
%extend GEOMImpl_IEllipse {
	~GEOMImpl_IEllipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IEllipse\n");}
	}
};


%nodefaultctor GEOMImpl_PipeDriver;
class GEOMImpl_PipeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PipeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PipeDriver {
	Handle_GEOMImpl_PipeDriver GetHandle() {
	return *(Handle_GEOMImpl_PipeDriver*) &$self;
	}
};
%extend GEOMImpl_PipeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PipeDriver {
	~GEOMImpl_PipeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PipeDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ThruSectionsDriver;
class GEOMImpl_ThruSectionsDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ThruSectionsDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ThruSectionsDriver {
	Handle_GEOMImpl_ThruSectionsDriver GetHandle() {
	return *(Handle_GEOMImpl_ThruSectionsDriver*) &$self;
	}
};
%extend GEOMImpl_ThruSectionsDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ThruSectionsDriver {
	~GEOMImpl_ThruSectionsDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ThruSectionsDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IBox;
class GEOMImpl_IBox {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBox(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetDX(const TCollection_AsciiString &theX);
		%feature("autodoc", "1");
		void SetDX(const double &theX);
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		void SetDY(const TCollection_AsciiString &theY);
		%feature("autodoc", "1");
		void SetDY(const double &theY);
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		void SetDZ(const TCollection_AsciiString &theZ);
		%feature("autodoc", "1");
		void SetDZ(const double &theZ);
		%feature("autodoc", "1");
		double GetDZ();
		%feature("autodoc", "1");
		void SetRef1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef1();
		%feature("autodoc", "1");
		void SetRef2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef2();

};
%extend GEOMImpl_IBox {
	~GEOMImpl_IBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IBox\n");}
	}
};


%nodefaultctor GEOMImpl_HealingDriver;
class GEOMImpl_HealingDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_HealingDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_HealingDriver {
	Handle_GEOMImpl_HealingDriver GetHandle() {
	return *(Handle_GEOMImpl_HealingDriver*) &$self;
	}
};
%extend GEOMImpl_HealingDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_HealingDriver {
	~GEOMImpl_HealingDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_HealingDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IBasicOperations;
class GEOMImpl_IBasicOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBasicOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointXYZ(const GEOM_Parameter &theX, const GEOM_Parameter &theY, const GEOM_Parameter &theZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointWithReference(Handle_GEOM_Object , const GEOM_Parameter &theX, const GEOM_Parameter &theY, const GEOM_Parameter &theZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnCurve(Handle_GEOM_Object , const GEOM_Parameter &theParameter);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnLinesIntersection(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePointOnSurface(Handle_GEOM_Object , const GEOM_Parameter &theUParameter, const GEOM_Parameter &theVParameter);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeVectorDXDYDZ(const GEOM_Parameter &theDX, const GEOM_Parameter &theDY, const GEOM_Parameter &theDZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeVectorTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTangentOnCurve(const Handle_GEOM_Object &theCurve, const GEOM_Parameter &theParameter);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeVectorPntDXDYDZ(Handle_GEOM_Object , const GEOM_Parameter &theDX, const GEOM_Parameter &theDY, const GEOM_Parameter &theDZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeLineTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeLineTwoFaces(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeLine(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlaneThreePnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theSize);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlanePntVec(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theSize);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlaneFace(Handle_GEOM_Object , const GEOM_Parameter &theSize);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlane2Vec(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theSize);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlaneLCS(Handle_GEOM_Object , const GEOM_Parameter &theSize, const GEOM_Parameter &theOrientation);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMarker(const GEOM_Parameter &theOX, const GEOM_Parameter &theOY, const GEOM_Parameter &theOZ, const GEOM_Parameter &theXDX, const GEOM_Parameter &theXDY, const GEOM_Parameter &theXDZ, const GEOM_Parameter &theYDX, const GEOM_Parameter &theYDY, const GEOM_Parameter &theYDZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTangentPlaneOnFace(const Handle_GEOM_Object &theFace, const GEOM_Parameter &theParamU, const GEOM_Parameter &theParamV, const GEOM_Parameter &theSize);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceThreePnt(const Handle_GEOM_Object thePnt1, const Handle_GEOM_Object thePnt2, const Handle_GEOM_Object thePnt3);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceFourPnt(const Handle_GEOM_Object thePnt1, const Handle_GEOM_Object thePnt2, const Handle_GEOM_Object thePnt3, const Handle_GEOM_Object thePnt4);

};
%extend GEOMImpl_IBasicOperations {
	~GEOMImpl_IBasicOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IBasicOperations\n");}
	}
};


%nodefaultctor GEOMImpl_PartitionDriver;
class GEOMImpl_PartitionDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PartitionDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PartitionDriver {
	Handle_GEOMImpl_PartitionDriver GetHandle() {
	return *(Handle_GEOMImpl_PartitionDriver*) &$self;
	}
};
%extend GEOMImpl_PartitionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PartitionDriver {
	~GEOMImpl_PartitionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PartitionDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ICurvesOperations;
class GEOMImpl_ICurvesOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICurvesOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePolyline(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCircleThreePnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCircleCenter2Pnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCirclePntVecR(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theR);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeEllipse(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theRMajor, const GEOM_Parameter &theRMinor, Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeEllipseThreePnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArc(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArcCenter(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArcOfEllipse(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSplineBezier(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSplineInterpolation(std::list<Handle_GEOM_Object>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSketcher(const TCollection_AsciiString &theCommand, std::list<GEOM_Parameter>);
		%feature("autodoc", "1");
		Handle_GEOM_Object Make3DSketcher(std::list<TCollection_AsciiString>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSketcherOnPlane(const TCollection_AsciiString &theCommand, Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCurveSplitByParam(Handle_GEOM_Object , const GEOM_Parameter &thePar);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCurveSplitByCurve(Handle_GEOM_Object , Handle_GEOM_Object );

};
%extend GEOMImpl_ICurvesOperations {
	~GEOMImpl_ICurvesOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ICurvesOperations\n");}
	}
};


%nodefaultctor GEOMImpl_IDisk;
class GEOMImpl_IDisk {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IDisk(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRadius(double );
		%feature("autodoc", "1");
		void SetRadius(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetOrientation(double );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRadius();
		%feature("autodoc", "1");
		double GetOrientation();

};
%extend GEOMImpl_IDisk {
	~GEOMImpl_IDisk() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IDisk\n");}
	}
};


%nodefaultctor GEOMImpl_ISphere;
class GEOMImpl_ISphere {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ISphere(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetR(const double &theR);
		%feature("autodoc", "1");
		void SetR(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		double GetR();
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetAngle(const double &theAngle);
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetVCoordStart(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetVCoordStart(const double &theAngle);
		%feature("autodoc", "1");
		double GetVCoordStart();
		%feature("autodoc", "1");
		void SetVCoordEnd(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetVCoordEnd(const double &theAngle);
		%feature("autodoc", "1");
		double GetVCoordEnd();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();

};
%extend GEOMImpl_ISphere {
	~GEOMImpl_ISphere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ISphere\n");}
	}
};


%nodefaultctor GEOMImpl_FilletDriver;
class GEOMImpl_FilletDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_FilletDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_FilletDriver {
	Handle_GEOMImpl_FilletDriver GetHandle() {
	return *(Handle_GEOMImpl_FilletDriver*) &$self;
	}
};
%extend GEOMImpl_FilletDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_FilletDriver {
	~GEOMImpl_FilletDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_FilletDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IPoint;
class GEOMImpl_IPoint {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetX(const TCollection_AsciiString &theX);
		%feature("autodoc", "1");
		void SetY(const TCollection_AsciiString &theY);
		%feature("autodoc", "1");
		void SetZ(const TCollection_AsciiString &theZ);
		%feature("autodoc", "1");
		void SetX(const double theX);
		%feature("autodoc", "1");
		void SetY(const double theY);
		%feature("autodoc", "1");
		void SetZ(const double theZ);
		%feature("autodoc", "1");
		double GetX();
		%feature("autodoc", "1");
		double GetY();
		%feature("autodoc", "1");
		double GetZ();
		%feature("autodoc", "1");
		void SetRef(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef();
		%feature("autodoc", "1");
		void SetCurve(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCurve();
		%feature("autodoc", "1");
		void SetParameter(const double &theParam);
		%feature("autodoc", "1");
		void SetParameter(const TCollection_AsciiString &theParam);
		%feature("autodoc", "1");
		double GetParameter();
		%feature("autodoc", "1");
		void SetSurface(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLine1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLine2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetSurface();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLine1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLine2();
		%feature("autodoc", "1");
		void SetParameter2(double );
		%feature("autodoc", "1");
		void SetParameter2(const TCollection_AsciiString &theParam);
		%feature("autodoc", "1");
		double GetParameter2();

};
%extend GEOMImpl_IPoint {
	~GEOMImpl_IPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPoint\n");}
	}
};


%nodefaultctor GEOMImpl_ITranslate;
class GEOMImpl_ITranslate {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ITranslate(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetStep1(double );
		%feature("autodoc", "1");
		void SetStep1(const TCollection_AsciiString &theStep);
		%feature("autodoc", "1");
		double GetStep1();
		%feature("autodoc", "1");
		void SetNbIter1(int );
		%feature("autodoc", "1");
		void SetNbIter1(const TCollection_AsciiString &theNbIter);
		%feature("autodoc", "1");
		int GetNbIter1();
		%feature("autodoc", "1");
		void SetStep2(double );
		%feature("autodoc", "1");
		void SetStep2(const TCollection_AsciiString &theStep);
		%feature("autodoc", "1");
		double GetStep2();
		%feature("autodoc", "1");
		void SetNbIter2(int );
		%feature("autodoc", "1");
		void SetNbIter2(const TCollection_AsciiString &theNbIter);
		%feature("autodoc", "1");
		int GetNbIter2();
		%feature("autodoc", "1");
		void SetVector2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector2();
		%feature("autodoc", "1");
		void SetDX(double );
		%feature("autodoc", "1");
		void SetDX(const TCollection_AsciiString &theDX);
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		void SetDY(double );
		%feature("autodoc", "1");
		void SetDY(const TCollection_AsciiString &theDY);
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		void SetDZ(double );
		%feature("autodoc", "1");
		void SetDZ(const TCollection_AsciiString &theDZ);
		%feature("autodoc", "1");
		double GetDZ();
		%feature("autodoc", "1");
		void SetDistance(double );
		%feature("autodoc", "1");
		void SetDistance(const TCollection_AsciiString &theDistance);
		%feature("autodoc", "1");
		double GetDistance();
		%feature("autodoc", "1");
		void SetRailShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRailShape();

};
%extend GEOMImpl_ITranslate {
	~GEOMImpl_ITranslate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ITranslate\n");}
	}
};


%nodefaultctor GEOMImpl_IFace;
class GEOMImpl_IFace {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IFace(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint4(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint4();
		%feature("autodoc", "1");
		void SetRef1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetRef1();
		%feature("autodoc", "1");
		void SetOrientation(int );
		%feature("autodoc", "1");
		int GetOrientation();
		%feature("autodoc", "1");
		void SetH(double );
		%feature("autodoc", "1");
		void SetH(const TCollection_AsciiString &theH);
		%feature("autodoc", "1");
		void SetW(double );
		%feature("autodoc", "1");
		void SetW(const TCollection_AsciiString &SetW);
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		double GetW();

};
%extend GEOMImpl_IFace {
	~GEOMImpl_IFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IFace\n");}
	}
};


%nodefaultctor GEOMImpl_IRotate;
class GEOMImpl_IRotate {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IRotate(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCentPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCentPoint();
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		void SetAngle(Standard_Real );
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		Standard_Real GetAngle();
		%feature("autodoc", "1");
		void SetAxis(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetAxis();
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();
		%feature("autodoc", "1");
		void SetStep(double );
		%feature("autodoc", "1");
		void SetStep(const TCollection_AsciiString &theStep);
		%feature("autodoc", "1");
		double GetStep();
		%feature("autodoc", "1");
		void SetNbIter1(int );
		%feature("autodoc", "1");
		void SetNbIter1(const TCollection_AsciiString &theNbIter);
		%feature("autodoc", "1");
		int GetNbIter1();
		%feature("autodoc", "1");
		void SetNbIter2(int );
		%feature("autodoc", "1");
		void SetNbIter2(const TCollection_AsciiString &theNbIter);
		%feature("autodoc", "1");
		int GetNbIter2();

};
%extend GEOMImpl_IRotate {
	~GEOMImpl_IRotate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IRotate\n");}
	}
};


%nodefaultctor GEOMImpl_IThruSections;
class GEOMImpl_IThruSections {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IThruSections(const Handle_GEOM_Function &theFunction);
		%feature("autodoc", "1");
		void SetSections(const Handle_TColStd_HSequenceOfTransient &theSections);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetSections();
		%feature("autodoc", "1");
		void SetSolidMode(int );
		%feature("autodoc", "1");
		int GetSolidMode();
		%feature("autodoc", "1");
		void SetPrecision(double );
		%feature("autodoc", "1");
		double GetPrecision();

};
%extend GEOMImpl_IThruSections {
	~GEOMImpl_IThruSections() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IThruSections\n");}
	}
};


%nodefaultctor GEOMImpl_IThickSolid;
class GEOMImpl_IThickSolid {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IThickSolid(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetOffset(const double &theOffset);
		%feature("autodoc", "1");
		void SetOffset(const TCollection_AsciiString &theOffset);
		%feature("autodoc", "1");
		double GetOffset();
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetLength(const TCollection_AsciiString &theLen);
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		void SetFace(int , int );
		%feature("autodoc", "1");
		int GetFace(int );

};
%extend GEOMImpl_IThickSolid {
	~GEOMImpl_IThickSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IThickSolid\n");}
	}
};


%nodefaultctor GEOMImpl_ISpline;
class GEOMImpl_ISpline {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ISpline(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetPoint(int , Handle_GEOM_Function );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint(int );

};
%extend GEOMImpl_ISpline {
	~GEOMImpl_ISpline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ISpline\n");}
	}
};


%nodefaultctor GEOMImpl_GlueDriver;
class GEOMImpl_GlueDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_GlueDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		TopoDS_Shape GlueFaces(const TopoDS_Shape &theShape, const Standard_Real theTolerance, const Standard_Boolean doKeepNonSolids=1);
		%feature("autodoc", "1");
		TopoDS_Shape GlueFacesWithWarnings(const TopoDS_Shape &theShape, const Standard_Real theTolerance, Standard_Boolean , TCollection_AsciiString & theWarning) const;
		%feature("autodoc", "1");
		TopoDS_Shape GlueFacesByList(const TopoDS_Shape &theShape, const Standard_Real theTolerance, Standard_Boolean , const TopTools_MapOfShape &aFaces);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_GlueDriver {
	Handle_GEOMImpl_GlueDriver GetHandle() {
	return *(Handle_GEOMImpl_GlueDriver*) &$self;
	}
};
%extend GEOMImpl_GlueDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_GlueDriver {
	~GEOMImpl_GlueDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_GlueDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IBoolean;
class GEOMImpl_IBoolean {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBoolean(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape2();

};
%extend GEOMImpl_IBoolean {
	~GEOMImpl_IBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IBoolean\n");}
	}
};


%nodefaultctor GEOMImpl_ICopy;
class GEOMImpl_ICopy {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICopy(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOriginal(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetOriginal();

};
%extend GEOMImpl_ICopy {
	~GEOMImpl_ICopy() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ICopy\n");}
	}
};


%nodefaultctor GEOMImpl_IRevolution;
class GEOMImpl_IRevolution {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IRevolution(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetAngle(const double &theAngle);
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetConeAngle(const double &theAngle);
		%feature("autodoc", "1");
		void SetConeAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		double GetConeAngle();
		%feature("autodoc", "1");
		void SetOffset(const double &theOffset);
		%feature("autodoc", "1");
		void SetOffset(const TCollection_AsciiString &theOffset);
		%feature("autodoc", "1");
		double GetOffset();
		%feature("autodoc", "1");
		void SetAxis(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetAxis();
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();

};
%extend GEOMImpl_IRevolution {
	~GEOMImpl_IRevolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IRevolution\n");}
	}
};


%nodefaultctor GEOMImpl_IDraft;
class GEOMImpl_IDraft {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IDraft(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPlane();
		%feature("autodoc", "1");
		void SetStationary(int );
		%feature("autodoc", "1");
		int GetStationary();
		%feature("autodoc", "1");
		void SetAngle(const double &theAngle);
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		void SetFace(int , int );
		%feature("autodoc", "1");
		int GetFace(int );

};
%extend GEOMImpl_IDraft {
	~GEOMImpl_IDraft() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IDraft\n");}
	}
};


%nodefaultctor GEOMImpl_IOffset;
class GEOMImpl_IOffset {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IOffset(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetValue(double );
		%feature("autodoc", "1");
		void SetValue(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		double GetValue();
		%feature("autodoc", "1");
		void SetAltValue(double );
		%feature("autodoc", "1");
		void SetAltValue(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		double GetAltValue();

};
%extend GEOMImpl_IOffset {
	~GEOMImpl_IOffset() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IOffset\n");}
	}
};


%nodefaultctor GEOMImpl_SplineDriver;
class GEOMImpl_SplineDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_SplineDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_SplineDriver {
	Handle_GEOMImpl_SplineDriver GetHandle() {
	return *(Handle_GEOMImpl_SplineDriver*) &$self;
	}
};
%extend GEOMImpl_SplineDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_SplineDriver {
	~GEOMImpl_SplineDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_SplineDriver\n");}
	}
};


%nodefaultctor GEOMImpl_Gen;
class GEOMImpl_Gen : public GEOM_Engine {
	public:
		%feature("autodoc", "1");
		GEOMImpl_Gen();
		%feature("autodoc", "1");
		GEOMImpl_IBasicOperations * GetIBasicOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_ITransformOperations * GetITransformOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_I3DPrimOperations * GetI3DPrimOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IShapesOperations * GetIShapesOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IBlocksOperations * GetIBlocksOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IMeasureOperations * GetIMeasureOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IBooleanOperations * GetIBooleanOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_ICurvesOperations * GetICurvesOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_ILocalOperations * GetILocalOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IInsertOperations * GetIInsertOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IHealingOperations * GetIHealingOperations(int );
		%feature("autodoc", "1");
		GEOMImpl_IGroupOperations * GetIGroupOperations(int );

};
%extend GEOMImpl_Gen {
	~GEOMImpl_Gen() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_Gen\n");}
	}
};


%nodefaultctor GEOMImpl_LineDriver;
class GEOMImpl_LineDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_LineDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_LineDriver {
	Handle_GEOMImpl_LineDriver GetHandle() {
	return *(Handle_GEOMImpl_LineDriver*) &$self;
	}
};
%extend GEOMImpl_LineDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_LineDriver {
	~GEOMImpl_LineDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_LineDriver\n");}
	}
};


%nodefaultctor GEOMImpl_FillingDriver;
class GEOMImpl_FillingDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_FillingDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_FillingDriver {
	Handle_GEOMImpl_FillingDriver GetHandle() {
	return *(Handle_GEOMImpl_FillingDriver*) &$self;
	}
};
%extend GEOMImpl_FillingDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_FillingDriver {
	~GEOMImpl_FillingDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_FillingDriver\n");}
	}
};


%nodefaultctor GEOMImpl_SphereDriver;
class GEOMImpl_SphereDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_SphereDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_SphereDriver {
	Handle_GEOMImpl_SphereDriver GetHandle() {
	return *(Handle_GEOMImpl_SphereDriver*) &$self;
	}
};
%extend GEOMImpl_SphereDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_SphereDriver {
	~GEOMImpl_SphereDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_SphereDriver\n");}
	}
};


%nodefaultctor GEOMImpl_VariableFilletDriver;
class GEOMImpl_VariableFilletDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_VariableFilletDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_VariableFilletDriver {
	Handle_GEOMImpl_VariableFilletDriver GetHandle() {
	return *(Handle_GEOMImpl_VariableFilletDriver*) &$self;
	}
};
%extend GEOMImpl_VariableFilletDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_VariableFilletDriver {
	~GEOMImpl_VariableFilletDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_VariableFilletDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IBlocksOperations;
class GEOMImpl_IBlocksOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBlocksOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeQuad(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeQuad2Edges(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeQuad4Vertices(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeHexa(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeHexa2Faces(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBlockCompound(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetPoint(Handle_GEOM_Object , const Standard_Real theX, const Standard_Real theY, const Standard_Real theZ, const Standard_Real theEpsilon);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetEdge(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetEdgeNearPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceByPoints(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceByEdges(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetOppositeFace(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceNearPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetFaceByNormale(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc","IsCompoundOfBlocks(Standard_Integer theMinNbFaces, Standard_Integer theMaxNbFaces)->Standard_Integer");
		Standard_Boolean IsCompoundOfBlocks(Handle_GEOM_Object , const Standard_Integer theMinNbFaces, const Standard_Integer theMaxNbFaces, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CheckCompoundOfBlocksOld(Handle_GEOM_Object , std::list<GEOMImpl_IBlocksOperations::BCError>);
		%feature("autodoc", "1");
		Standard_Boolean CheckCompoundOfBlocks(Handle_GEOM_Object , std::list<GEOMImpl_IBlocksOperations::BCError>);
		%feature("autodoc", "1");
		TCollection_AsciiString PrintBCErrors(Handle_GEOM_Object , std::list<GEOMImpl_IBlocksOperations::BCError>);
		%feature("autodoc", "1");
		Handle_GEOM_Object RemoveExtraEdges(Handle_GEOM_Object , const Standard_Integer theOptimumNbFaces=6);
		%feature("autodoc", "1");
		Handle_GEOM_Object CheckAndImprove(Handle_GEOM_Object );
		%feature("autodoc", "1");
		void AddBlocksFrom(const TopoDS_Shape &theShape, TopTools_ListOfShape & BLO, TopTools_ListOfShape & NOT, TopTools_ListOfShape & EXT);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient ExplodeCompoundOfBlocks(Handle_GEOM_Object , const Standard_Integer theMinNbFaces, const Standard_Integer theMaxNbFaces);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetBlockNearPoint(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetBlockByParts(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theParts);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetBlocksByParts(Handle_GEOM_Object , const Handle_TColStd_HSequenceOfTransient &theParts);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMultiTransformation1D(Handle_GEOM_Object , const Standard_Integer theDirFace1, const Standard_Integer theDirFace2, const GEOM_Parameter &theNbTimes);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeMultiTransformation2D(Handle_GEOM_Object , const Standard_Integer theDirFace1U, const Standard_Integer theDirFace2U, const GEOM_Parameter &theNbTimesU, const Standard_Integer theDirFace1V, const Standard_Integer theDirFace2V, const GEOM_Parameter &theNbTimesV);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient Propagate(Handle_GEOM_Object );

};
%extend GEOMImpl_IBlocksOperations {
	~GEOMImpl_IBlocksOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IBlocksOperations\n");}
	}
};


%nodefaultctor GEOMImpl_IMarker;
class GEOMImpl_IMarker {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IMarker(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetOrigin(const TCollection_AsciiString &theX, const TCollection_AsciiString &theY, const TCollection_AsciiString &theZ);
		%feature("autodoc", "1");
		void SetXDir(const TCollection_AsciiString &theDX, const TCollection_AsciiString &theDY, const TCollection_AsciiString &theDZ);
		%feature("autodoc", "1");
		void SetYDir(const TCollection_AsciiString &theDX, const TCollection_AsciiString &theDY, const TCollection_AsciiString &theDZ);
		%feature("autodoc", "1");
		void SetOrigin(const double &theX, const double &theY, const double &theZ);
		%feature("autodoc", "1");
		void SetXDir(const double &theDX, const double &theDY, const double &theDZ);
		%feature("autodoc", "1");
		void SetYDir(const double &theDX, const double &theDY, const double &theDZ);
		%feature("autodoc", "1");
		void SetOX(const TCollection_AsciiString &theOX);
		%feature("autodoc", "1");
		void SetOY(const TCollection_AsciiString &theOY);
		%feature("autodoc", "1");
		void SetOZ(const TCollection_AsciiString &theOZ);
		%feature("autodoc", "1");
		void SetXDX(const TCollection_AsciiString &theXDX);
		%feature("autodoc", "1");
		void SetXDY(const TCollection_AsciiString &theXDY);
		%feature("autodoc", "1");
		void SetXDZ(const TCollection_AsciiString &theXDZ);
		%feature("autodoc", "1");
		void SetYDX(const TCollection_AsciiString &theYDX);
		%feature("autodoc", "1");
		void SetYDY(const TCollection_AsciiString &theYDY);
		%feature("autodoc", "1");
		void SetYDZ(const TCollection_AsciiString &theYDZ);
		%feature("autodoc", "1");
		void SetOX(const double &theOX);
		%feature("autodoc", "1");
		void SetOY(const double &theOY);
		%feature("autodoc", "1");
		void SetOZ(const double &theOZ);
		%feature("autodoc", "1");
		void SetXDX(const double &theXDX);
		%feature("autodoc", "1");
		void SetXDY(const double &theXDY);
		%feature("autodoc", "1");
		void SetXDZ(const double &theXDZ);
		%feature("autodoc", "1");
		void SetYDX(const double &theYDX);
		%feature("autodoc", "1");
		void SetYDY(const double &theYDY);
		%feature("autodoc", "1");
		void SetYDZ(const double &theYDZ);
		%feature("autodoc", "1");
		void GetOrigin(double & theX, double & theY, double & theZ);
		%feature("autodoc", "1");
		void GetXDir(double & theDX, double & theDY, double & theDZ);
		%feature("autodoc", "1");
		void GetYDir(double & theDX, double & theDY, double & theDZ);

};
%extend GEOMImpl_IMarker {
	~GEOMImpl_IMarker() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IMarker\n");}
	}
};


%nodefaultctor GEOMImpl_ILine;
class GEOMImpl_ILine {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ILine(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFace1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFace2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFace1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFace2();

};
%extend GEOMImpl_ILine {
	~GEOMImpl_ILine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ILine\n");}
	}
};


%nodefaultctor GEOMImpl_BoxDriver;
class GEOMImpl_BoxDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_BoxDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_BoxDriver {
	Handle_GEOMImpl_BoxDriver GetHandle() {
	return *(Handle_GEOMImpl_BoxDriver*) &$self;
	}
};
%extend GEOMImpl_BoxDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_BoxDriver {
	~GEOMImpl_BoxDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_BoxDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ITorus;
class GEOMImpl_ITorus {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ITorus(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetCenter(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetRMajor(const double &theR);
		%feature("autodoc", "1");
		void SetRMinor(const double &theR);
		%feature("autodoc", "1");
		void SetRMajor(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetRMinor(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetAngle(const double &theAngle);
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetVCoordStart(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetVCoordStart(const double &theAngle);
		%feature("autodoc", "1");
		double GetVCoordStart();
		%feature("autodoc", "1");
		void SetVCoordEnd(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetVCoordEnd(const double &theAngle);
		%feature("autodoc", "1");
		double GetVCoordEnd();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetCenter();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		double GetRMajor();
		%feature("autodoc", "1");
		double GetRMinor();

};
%extend GEOMImpl_ITorus {
	~GEOMImpl_ITorus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ITorus\n");}
	}
};


%nodefaultctor GEOMImpl_PositionDriver;
class GEOMImpl_PositionDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PositionDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PositionDriver {
	Handle_GEOMImpl_PositionDriver GetHandle() {
	return *(Handle_GEOMImpl_PositionDriver*) &$self;
	}
};
%extend GEOMImpl_PositionDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PositionDriver {
	~GEOMImpl_PositionDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PositionDriver\n");}
	}
};


%nodefaultctor GEOMImpl_BlockDriver;
class GEOMImpl_BlockDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_BlockDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_BlockDriver {
	Handle_GEOMImpl_BlockDriver GetHandle() {
	return *(Handle_GEOMImpl_BlockDriver*) &$self;
	}
};
%extend GEOMImpl_BlockDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_BlockDriver {
	~GEOMImpl_BlockDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_BlockDriver\n");}
	}
};


%nodefaultctor GEOMImpl_PointDriver;
class GEOMImpl_PointDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PointDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PointDriver {
	Handle_GEOMImpl_PointDriver GetHandle() {
	return *(Handle_GEOMImpl_PointDriver*) &$self;
	}
};
%extend GEOMImpl_PointDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PointDriver {
	~GEOMImpl_PointDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PointDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IPosition;
class GEOMImpl_IPosition {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPosition(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetStartLCS(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetStartLCS();
		%feature("autodoc", "1");
		void SetEndLCS(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetEndLCS();

};
%extend GEOMImpl_IPosition {
	~GEOMImpl_IPosition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPosition\n");}
	}
};


%nodefaultctor GEOMImpl_IInsertOperations;
class GEOMImpl_IInsertOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IInsertOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCopy(Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object Import(const TCollection_AsciiString &theFileName, const TCollection_AsciiString &theFormatType);
		%feature("autodoc", "1");
		void Export(const Handle_GEOM_Object theOriginal, const TCollection_AsciiString &theFileName, const TCollection_AsciiString &theFormatType);
		%feature("autodoc", "1");
		Standard_Boolean ImportTranslators(Handle_TColStd_HSequenceOfAsciiString & theFormats, Handle_TColStd_HSequenceOfAsciiString & thePatterns);
		%feature("autodoc", "1");
		Standard_Boolean ExportTranslators(Handle_TColStd_HSequenceOfAsciiString & theFormats, Handle_TColStd_HSequenceOfAsciiString & thePatterns);
		%feature("autodoc", "1");
		Standard_Boolean IsSupported(const Standard_Boolean isImport, const TCollection_AsciiString &theFormat, Handle_TCollection_HAsciiString & theLibName);

};
%extend GEOMImpl_IInsertOperations {
	~GEOMImpl_IInsertOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IInsertOperations\n");}
	}
};


%nodefaultctor GEOMImpl_SketcherDriver;
class GEOMImpl_SketcherDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_SketcherDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_SketcherDriver {
	Handle_GEOMImpl_SketcherDriver GetHandle() {
	return *(Handle_GEOMImpl_SketcherDriver*) &$self;
	}
};
%extend GEOMImpl_SketcherDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_SketcherDriver {
	~GEOMImpl_SketcherDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_SketcherDriver\n");}
	}
};


%nodefaultctor GEOMImpl_ConeDriver;
class GEOMImpl_ConeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ConeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ConeDriver {
	Handle_GEOMImpl_ConeDriver GetHandle() {
	return *(Handle_GEOMImpl_ConeDriver*) &$self;
	}
};
%extend GEOMImpl_ConeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ConeDriver {
	~GEOMImpl_ConeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ConeDriver\n");}
	}
};


%nodefaultctor GEOMImpl_I3DPrimOperations;
class GEOMImpl_I3DPrimOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_I3DPrimOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBoxDXDYDZ(const GEOM_Parameter &theDX, const GEOM_Parameter &theDY, const GEOM_Parameter &theDZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBoxTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceHW(const GEOM_Parameter &theH, const GEOM_Parameter &theW, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFaceObjHW(Handle_GEOM_Object , const GEOM_Parameter &theH, const GEOM_Parameter &theW);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDiskThreePnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDiskPntVecR(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theR);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDiskR(const GEOM_Parameter &theR, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCylinderRH(const GEOM_Parameter &theR, const GEOM_Parameter &theH, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeCylinderPntVecRH(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theR, const GEOM_Parameter &theH, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeConeR1R2H(const GEOM_Parameter &theR1, const GEOM_Parameter &theR2, const GEOM_Parameter &theH, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeConePntVecR1R2H(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theR1, const GEOM_Parameter &theR2, const GEOM_Parameter &theH, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSphereR(const GEOM_Parameter &theR, const GEOM_Parameter &theVmin=0.0, const GEOM_Parameter &theVmax=0.0, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeSpherePntR(Handle_GEOM_Object , const GEOM_Parameter &theR, const GEOM_Parameter &theVmin=0.0, const GEOM_Parameter &theVmax=0.0, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTorusRR(const GEOM_Parameter &theRMajor, const GEOM_Parameter &theRMinor, const GEOM_Parameter &theVmin=0.0, const GEOM_Parameter &theVmax=0.0, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeTorusPntVecRR(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theRMajor, const GEOM_Parameter &theRMinor, const GEOM_Parameter &theVmin=0.0, const GEOM_Parameter &theVmax=0.0, const GEOM_Parameter &theAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismVecH(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theH);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismVecH2Ways(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theH);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismTwoPnt(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismVecHAng(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theH, const GEOM_Parameter &theAng);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismTwoPnt2Ways(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismDXDYDZ(Handle_GEOM_Object , const GEOM_Parameter &theDX, const GEOM_Parameter &theDY, const GEOM_Parameter &theDZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePrismDXDYDZ2Ways(Handle_GEOM_Object , const GEOM_Parameter &theDX, const GEOM_Parameter &theDY, const GEOM_Parameter &theDZ);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipe(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeRigid(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeRevolutionAxisAngle(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theAngle);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeRevolutionAxisAngleOffset(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theAngle, const GEOM_Parameter &theOffset, const GEOM_Parameter &theConeAngle=0.0);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeRevolutionAxisAngle2Ways(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theAngle);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilling(Handle_GEOM_Object , int , int , double , double , int , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeThruSections(const Handle_TColStd_HSequenceOfTransient &theSeqSections, bool , double , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeWithDifferentSections(const Handle_TColStd_HSequenceOfTransient &theBases, const Handle_TColStd_HSequenceOfTransient &theLocations, const Handle_GEOM_Object &thePath, bool , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeWithShellSections(const Handle_TColStd_HSequenceOfTransient &theBases, const Handle_TColStd_HSequenceOfTransient &theSubBases, const Handle_TColStd_HSequenceOfTransient &theLocations, const Handle_GEOM_Object &thePath, bool , bool );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePlateWithShapesList(std::list<Handle_GEOM_Object>, Handle_GEOM_Object );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeShellsWithoutPath(const Handle_TColStd_HSequenceOfTransient &theBases, const Handle_TColStd_HSequenceOfTransient &theLocations);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePipeBiNormalAlongVector(Handle_GEOM_Object , Handle_GEOM_Object , Handle_GEOM_Object );

};
%extend GEOMImpl_I3DPrimOperations {
	~GEOMImpl_I3DPrimOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_I3DPrimOperations\n");}
	}
};


%nodefaultctor GEOMImpl_CylinderDriver;
class GEOMImpl_CylinderDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_CylinderDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_CylinderDriver {
	Handle_GEOMImpl_CylinderDriver GetHandle() {
	return *(Handle_GEOMImpl_CylinderDriver*) &$self;
	}
};
%extend GEOMImpl_CylinderDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_CylinderDriver {
	~GEOMImpl_CylinderDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_CylinderDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IBooleanOperations;
class GEOMImpl_IBooleanOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBooleanOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeBoolean(Handle_GEOM_Object , Handle_GEOM_Object , Standard_Integer );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakePartition(const Handle_TColStd_HSequenceOfTransient &theShapes, const Handle_TColStd_HSequenceOfTransient &theTools, const Handle_TColStd_HSequenceOfTransient &theKeepInside, const Handle_TColStd_HSequenceOfTransient &theRemoveInside, const Standard_Integer theLimit, const Standard_Boolean theRemoveWebs, const Handle_TColStd_HArray1OfInteger &theMaterials, const Standard_Integer theKeepNonlimitShapes, const Standard_Boolean thePerformSelfIntersections);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeHalfPartition(Handle_GEOM_Object , Handle_GEOM_Object );

};
%extend GEOMImpl_IBooleanOperations {
	~GEOMImpl_IBooleanOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IBooleanOperations\n");}
	}
};


%nodefaultctor GEOMImpl_IArchimede;
class GEOMImpl_IArchimede {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IArchimede(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetWeight(const double &theWeight);
		%feature("autodoc", "1");
		void SetWeight(const TCollection_AsciiString &theWeight);
		%feature("autodoc", "1");
		Standard_Real GetWeight();
		%feature("autodoc", "1");
		void SetDensity(const double &theDensity);
		%feature("autodoc", "1");
		void SetDensity(const TCollection_AsciiString &theDensity);
		%feature("autodoc", "1");
		Standard_Real GetDensity();
		%feature("autodoc", "1");
		void SetDeflection(const double &theDeflection);
		%feature("autodoc", "1");
		void SetDeflection(const TCollection_AsciiString &theDeflection);
		%feature("autodoc", "1");
		Standard_Real GetDeflection();
		%feature("autodoc", "1");
		void SetBasicShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBasicShape();

};
%extend GEOMImpl_IArchimede {
	~GEOMImpl_IArchimede() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IArchimede\n");}
	}
};


%nodefaultctor GEOMImpl_ArcDriver;
class GEOMImpl_ArcDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ArcDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ArcDriver {
	Handle_GEOMImpl_ArcDriver GetHandle() {
	return *(Handle_GEOMImpl_ArcDriver*) &$self;
	}
};
%extend GEOMImpl_ArcDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ArcDriver {
	~GEOMImpl_ArcDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ArcDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IPlane;
class GEOMImpl_IPlane {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPlane(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetSize(const double &theSize);
		%feature("autodoc", "1");
		void SetSize(const TCollection_AsciiString &theSize);
		%feature("autodoc", "1");
		double GetSize();
		%feature("autodoc", "1");
		void SetOrientation(double );
		%feature("autodoc", "1");
		void SetOrientation(const TCollection_AsciiString &theOrientation);
		%feature("autodoc", "1");
		double GetOrientation();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFace(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLCS(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint1(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint2(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetPoint3(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFace();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLCS();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint1();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint2();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint3();
		%feature("autodoc", "1");
		void SetParameterU(const double &theParamU);
		%feature("autodoc", "1");
		void SetParameterU(const TCollection_AsciiString &theParamU);
		%feature("autodoc", "1");
		double GetParameterU();
		%feature("autodoc", "1");
		void SetParameterV(const double &theParamV);
		%feature("autodoc", "1");
		void SetParameterV(const TCollection_AsciiString &theParamV);
		%feature("autodoc", "1");
		double GetParameterV();

};
%extend GEOMImpl_IPlane {
	~GEOMImpl_IPlane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPlane\n");}
	}
};


%nodefaultctor GEOMImpl_ICone;
class GEOMImpl_ICone {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ICone(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetR1(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetR1(const double &theR);
		%feature("autodoc", "1");
		double GetR1();
		%feature("autodoc", "1");
		void SetR2(const TCollection_AsciiString &theR);
		%feature("autodoc", "1");
		void SetR2(const double &theR);
		%feature("autodoc", "1");
		double GetR2();
		%feature("autodoc", "1");
		void SetH(const TCollection_AsciiString &theH);
		%feature("autodoc", "1");
		void SetH(const double &theH);
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		void SetAngle(const double &theAngle);
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetPoint();
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();

};
%extend GEOMImpl_ICone {
	~GEOMImpl_ICone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ICone\n");}
	}
};


%nodefaultctor GEOMImpl_IPlate;
class GEOMImpl_IPlate {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPlate(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		void SetShape(int , Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetInitialShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape(int );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetInitialShape();

};
%extend GEOMImpl_IPlate {
	~GEOMImpl_IPlate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPlate\n");}
	}
};


%nodefaultctor GEOMImpl_IBlocks;
class GEOMImpl_IBlocks {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IBlocks(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShapes(const Handle_TColStd_HSequenceOfTransient &theShapes);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetShapes();

};
%extend GEOMImpl_IBlocks {
	~GEOMImpl_IBlocks() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IBlocks\n");}
	}
};


%nodefaultctor GEOMImpl_ILocalOperations;
class GEOMImpl_ILocalOperations : public GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ILocalOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletAll(Handle_GEOM_Object , const GEOM_Parameter &theR);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletEdges(Handle_GEOM_Object , const GEOM_Parameter &theR, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletEdgesR1R2(Handle_GEOM_Object , const GEOM_Parameter &theR1, const GEOM_Parameter &theR2, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletFaces(Handle_GEOM_Object , const GEOM_Parameter &theR, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFilletFacesR1R2(Handle_GEOM_Object , const GEOM_Parameter &theR1, const GEOM_Parameter &theR2, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeVariableFillet(Handle_GEOM_Object , std::list<GEOM_Parameter>, std::list<GEOM_Parameter>, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeFillet2DVertices(Handle_GEOM_Object , const GEOM_Parameter &theR, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferAll(Handle_GEOM_Object , const GEOM_Parameter &theD);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdge(Handle_GEOM_Object , const GEOM_Parameter &theD1, const GEOM_Parameter &theD2, int , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferFaces(Handle_GEOM_Object , const GEOM_Parameter &theD1, const GEOM_Parameter &theD2, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamfer2DEdges(Handle_GEOM_Object , const GEOM_Parameter &theD1, const GEOM_Parameter &theD2, int , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferFacesAD(Handle_GEOM_Object , const GEOM_Parameter &theD, const GEOM_Parameter &theAngle, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdges(Handle_GEOM_Object , const GEOM_Parameter &theD1, const GEOM_Parameter &theD2, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdgesAD(Handle_GEOM_Object , const GEOM_Parameter &theD, const GEOM_Parameter &theAngle, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeChamferEdgeAD(Handle_GEOM_Object , const GEOM_Parameter &theD, const GEOM_Parameter &theAngle, int , int );
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeThickSolid(Handle_GEOM_Object , const GEOM_Parameter &theOffset, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDraftFacesAngle(Handle_GEOM_Object , Handle_GEOM_Object , const GEOM_Parameter &theAngle, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeDraftFacesAngleWithStationaryFace(Handle_GEOM_Object , int , const GEOM_Parameter &theAngle, std::list<int>);
		%feature("autodoc", "1");
		Handle_GEOM_Object MakeArchimede(Handle_GEOM_Object , const GEOM_Parameter &theWeight, const GEOM_Parameter &theWaterDensity, const GEOM_Parameter &theMeshingDeflection);
		%feature("autodoc", "1");
		Standard_Integer GetSubShapeIndex(Handle_GEOM_Object , Handle_GEOM_Object );
		%feature("autodoc", "1");
		bool GetSubShape(const TopoDS_Shape &theShape, const int theIndex, TopoDS_Shape & theSubShape);

};
%extend GEOMImpl_ILocalOperations {
	~GEOMImpl_ILocalOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ILocalOperations\n");}
	}
};


%nodefaultctor GEOMImpl_CircleDriver;
class GEOMImpl_CircleDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_CircleDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_CircleDriver {
	Handle_GEOMImpl_CircleDriver GetHandle() {
	return *(Handle_GEOMImpl_CircleDriver*) &$self;
	}
};
%extend GEOMImpl_CircleDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_CircleDriver {
	~GEOMImpl_CircleDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_CircleDriver\n");}
	}
};


%nodefaultctor GEOMImpl_EllipseDriver;
class GEOMImpl_EllipseDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_EllipseDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_EllipseDriver {
	Handle_GEOMImpl_EllipseDriver GetHandle() {
	return *(Handle_GEOMImpl_EllipseDriver*) &$self;
	}
};
%extend GEOMImpl_EllipseDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_EllipseDriver {
	~GEOMImpl_EllipseDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_EllipseDriver\n");}
	}
};


%nodefaultctor GEOMImpl_PlateDriver;
class GEOMImpl_PlateDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_PlateDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_PlateDriver {
	Handle_GEOMImpl_PlateDriver GetHandle() {
	return *(Handle_GEOMImpl_PlateDriver*) &$self;
	}
};
%extend GEOMImpl_PlateDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_PlateDriver {
	~GEOMImpl_PlateDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_PlateDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IChamfer;
class GEOMImpl_IChamfer {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IChamfer(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetShape();
		%feature("autodoc", "1");
		void SetD(const double &theD);
		%feature("autodoc", "1");
		void SetD1(const double &theD);
		%feature("autodoc", "1");
		void SetD2(const double &theD);
		%feature("autodoc", "1");
		void SetD(const TCollection_AsciiString &theD);
		%feature("autodoc", "1");
		void SetD1(const TCollection_AsciiString &theD);
		%feature("autodoc", "1");
		void SetD2(const TCollection_AsciiString &theD);
		%feature("autodoc", "1");
		double GetD();
		%feature("autodoc", "1");
		double GetD1();
		%feature("autodoc", "1");
		double GetD2();
		%feature("autodoc", "1");
		void SetLength(int );
		%feature("autodoc", "1");
		int GetLength();
		%feature("autodoc", "1");
		void SetFace(int , int );
		%feature("autodoc", "1");
		void SetFace1(int );
		%feature("autodoc", "1");
		void SetFace2(int );
		%feature("autodoc", "1");
		void Set2DEdge1(int );
		%feature("autodoc", "1");
		void Set2DEdge2(int );
		%feature("autodoc", "1");
		int GetFace(int );
		%feature("autodoc", "1");
		int GetFace1();
		%feature("autodoc", "1");
		int GetFace2();
		%feature("autodoc", "1");
		int Get2DEdge1();
		%feature("autodoc", "1");
		int Get2DEdge2();
		%feature("autodoc", "1");
		void SetAngle(double );
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetEdge(int , int );
		%feature("autodoc", "1");
		int GetEdge(int );

};
%extend GEOMImpl_IChamfer {
	~GEOMImpl_IChamfer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IChamfer\n");}
	}
};


%nodefaultctor GEOMImpl_ImportDriver;
class GEOMImpl_ImportDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOMImpl_ImportDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

};
%extend GEOMImpl_ImportDriver {
	Handle_GEOMImpl_ImportDriver GetHandle() {
	return *(Handle_GEOMImpl_ImportDriver*) &$self;
	}
};
%extend GEOMImpl_ImportDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend GEOMImpl_ImportDriver {
	~GEOMImpl_ImportDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_ImportDriver\n");}
	}
};


%nodefaultctor GEOMImpl_IPrism;
class GEOMImpl_IPrism {
	public:
		%feature("autodoc", "1");
		GEOMImpl_IPrism(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetBase(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetVector(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetFirstPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetLastPoint(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetBase();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetVector();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFirstPoint();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLastPoint();
		%feature("autodoc", "1");
		void SetH(const double &theH);
		%feature("autodoc", "1");
		void SetH(const TCollection_AsciiString &theH);
		%feature("autodoc", "1");
		void SetAngle(const double &theAngle);
		%feature("autodoc", "1");
		void SetAngle(const TCollection_AsciiString &theAngle);
		%feature("autodoc", "1");
		double GetH();
		%feature("autodoc", "1");
		double GetAngle();
		%feature("autodoc", "1");
		void SetDX(double );
		%feature("autodoc", "1");
		void SetDX(const TCollection_AsciiString &theDX);
		%feature("autodoc", "1");
		void SetDY(double );
		%feature("autodoc", "1");
		void SetDY(const TCollection_AsciiString &theDY);
		%feature("autodoc", "1");
		void SetDZ(double );
		%feature("autodoc", "1");
		void SetDZ(const TCollection_AsciiString &theDZ);
		%feature("autodoc", "1");
		double GetDX();
		%feature("autodoc", "1");
		double GetDY();
		%feature("autodoc", "1");
		double GetDZ();

};
%extend GEOMImpl_IPrism {
	~GEOMImpl_IPrism() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOMImpl_IPrism\n");}
	}
};
