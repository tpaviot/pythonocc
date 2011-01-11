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
 
%module gp
       
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i


%pythoncode {
import GarbageCollector
};
%include gp_dependencies.i

enum gp_TrsfForm {
gp_Identity,
    gp_Rotation,
    gp_Translation,
    gp_PntMirror,
    gp_Ax1Mirror,
    gp_Ax2Mirror,
    gp_Scale,
    gp_CompoundTrsf,
    gp_Other
};

   
%nodefaultctor Handle_gp_VectorWithNullMagnitude;

class Handle_gp_VectorWithNullMagnitude : public Handle_Standard_DomainError {
    public:

        %feature("autodoc", "1");
        Handle_gp_VectorWithNullMagnitude();
        %feature("autodoc", "1");
        Handle_gp_VectorWithNullMagnitude(Handle_gp_VectorWithNullMagnitude const & aHandle);
        %feature("autodoc", "1");
        Handle_gp_VectorWithNullMagnitude(gp_VectorWithNullMagnitude const * anItem);
        %feature("autodoc", "1");
        Handle_gp_VectorWithNullMagnitude const DownCast(Handle_Standard_Transient const & AnObject); 
};

%feature("shadow") Handle_gp_VectorWithNullMagnitude::~Handle_gp_VectorWithNullMagnitude {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend Handle_gp_VectorWithNullMagnitude {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend Handle_gp_VectorWithNullMagnitude {
    gp_VectorWithNullMagnitude* GetObject() {
        return (gp_VectorWithNullMagnitude*)$self->Access();
    }
};
   
%nodefaultctor gp_VectorWithNullMagnitude;

class gp_VectorWithNullMagnitude : public Standard_DomainError {
    public:

        %feature("autodoc", "1");
        gp_VectorWithNullMagnitude(gp_VectorWithNullMagnitude const & arg0);
        %feature("autodoc", "1");
        gp_VectorWithNullMagnitude();
        %feature("autodoc", "1");
        gp_VectorWithNullMagnitude(char const * AString);
        %feature("autodoc", "1");
        void Raise(char const * aMessage="");
        %feature("autodoc", "1");
        void Raise(Standard_SStream & aReason);
        %feature("autodoc", "1");
        Handle_gp_VectorWithNullMagnitude NewInstance(char const * aMessage);
        %feature("autodoc", "1");
        virtual Handle_Standard_Type const & DynamicType() const;
        %feature("autodoc", "1");
        virtual void Throw() const; 
};

%feature("shadow") gp_VectorWithNullMagnitude::~gp_VectorWithNullMagnitude {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_VectorWithNullMagnitude {
    void _kill_pointed() {
        delete self;
    }                    
};
%extend gp_VectorWithNullMagnitude {
    Handle_gp_VectorWithNullMagnitude* GetHandle(){
        return (Handle_gp_VectorWithNullMagnitude*)$self;
    }
};
   
%nodefaultctor gp_Ax1;

class gp_Ax1  {
    public:

        %feature("autodoc", "1");
        gp_Ax1(gp_Ax1 const & arg0);
        %feature("autodoc", "1");
        gp_Ax1();
        %feature("autodoc", "1");
        gp_Ax1(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Dir const & Direction() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        Standard_Boolean IsCoaxial(gp_Ax1 const & Other, Standard_Real const AngularTolerance, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsNormal(gp_Ax1 const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsOpposite(gp_Ax1 const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsParallel(gp_Ax1 const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Ax1 const & Other) const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Ax1 Reversed() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Ax1 Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Ax1 Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Ax1 Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Ax1 Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Ax1 Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Ax1 Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Ax1 Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Ax1 Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Pnt const & _CSFDB_Getgp_Ax1loc() const;
        %feature("autodoc", "1");
        gp_Dir const & _CSFDB_Getgp_Ax1vdir() const; 
};
//Var: gp_Pnt loc
//Get: None
//Set: None
//Var: gp_Dir vdir
//Get: None
//Set: None
%feature("shadow") gp_Ax1::~gp_Ax1 {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Ax1 {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Ax2;

class gp_Ax2  {
    public:

        %feature("autodoc", "1");
        gp_Ax2(gp_Ax2 const & arg0);
        %feature("autodoc", "1");
        gp_Ax2();
        %feature("autodoc", "1");
        gp_Ax2(gp_Pnt const & P, gp_Dir const & N, gp_Dir const & Vx);
        %feature("autodoc", "1");
        gp_Ax2(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetXDirection(gp_Dir const & Vx);
        %feature("autodoc", "1");
        void SetYDirection(gp_Dir const & Vy);
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Ax2 const & Other) const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        gp_Dir const & Direction() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Dir const & XDirection() const;
        %feature("autodoc", "1");
        gp_Dir const & YDirection() const;
        %feature("autodoc", "1");
        Standard_Boolean IsCoplanar(gp_Ax2 const & Other, Standard_Real const LinearTolerance, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsCoplanar(gp_Ax1 const & A, Standard_Real const LinearTolerance, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Ax2 Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Ax2 Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Ax2 Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Ax2 Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Ax2 Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Ax2 Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Ax2 Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Ax2 Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax1 const & _CSFDB_Getgp_Ax2axis() const;
        %feature("autodoc", "1");
        gp_Dir const & _CSFDB_Getgp_Ax2vydir() const;
        %feature("autodoc", "1");
        gp_Dir const & _CSFDB_Getgp_Ax2vxdir() const; 
};
//Var: gp_Ax1 axis
//Get: None
//Set: None
//Var: gp_Dir vydir
//Get: None
//Set: None
//Var: gp_Dir vxdir
//Get: None
//Set: None
%feature("shadow") gp_Ax2::~gp_Ax2 {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Ax2 {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Ax22d;

class gp_Ax22d  {
    public:

        %feature("autodoc", "1");
        gp_Ax22d(gp_Ax22d const & arg0);
        %feature("autodoc", "1");
        gp_Ax22d();
        %feature("autodoc", "1");
        gp_Ax22d(gp_Pnt2d const & P, gp_Dir2d const & Vx, gp_Dir2d const & Vy);
        %feature("autodoc", "1");
        gp_Ax22d(gp_Pnt2d const & P, gp_Dir2d const & Vx, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        gp_Ax22d(gp_Ax2d const & A, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax22d const & A1);
        %feature("autodoc", "1");
        void SetXAxis(gp_Ax2d const & A1);
        %feature("autodoc", "1");
        void SetYAxis(gp_Ax2d const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetXDirection(gp_Dir2d const & Vx);
        %feature("autodoc", "1");
        void SetYDirection(gp_Dir2d const & Vy);
        %feature("autodoc", "1");
        gp_Ax2d XAxis() const;
        %feature("autodoc", "1");
        gp_Ax2d YAxis() const;
        %feature("autodoc", "1");
        gp_Pnt2d const & Location() const;
        %feature("autodoc", "1");
        gp_Dir2d const & XDirection() const;
        %feature("autodoc", "1");
        gp_Dir2d const & YDirection() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Ax22d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Ax22d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Ax22d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Ax22d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Ax22d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Ax22d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Ax22d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_Pnt2d const & _CSFDB_Getgp_Ax22dpoint() const;
        %feature("autodoc", "1");
        gp_Dir2d const & _CSFDB_Getgp_Ax22dvydir() const;
        %feature("autodoc", "1");
        gp_Dir2d const & _CSFDB_Getgp_Ax22dvxdir() const; 
};
//Var: gp_Pnt2d point
//Get: None
//Set: None
//Var: gp_Dir2d vydir
//Get: None
//Set: None
//Var: gp_Dir2d vxdir
//Get: None
//Set: None
%feature("shadow") gp_Ax22d::~gp_Ax22d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Ax22d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Ax2d;

class gp_Ax2d  {
    public:

        %feature("autodoc", "1");
        gp_Ax2d(gp_Ax2d const & arg0);
        %feature("autodoc", "1");
        gp_Ax2d();
        %feature("autodoc", "1");
        gp_Ax2d(gp_Pnt2d const & P, gp_Dir2d const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir2d const & V);
        %feature("autodoc", "1");
        gp_Pnt2d const & Location() const;
        %feature("autodoc", "1");
        gp_Dir2d const & Direction() const;
        %feature("autodoc", "1");
        Standard_Boolean IsCoaxial(gp_Ax2d const & Other, Standard_Real const AngularTolerance, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsNormal(gp_Ax2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsOpposite(gp_Ax2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsParallel(gp_Ax2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Ax2d const & Other) const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Ax2d Reversed() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Ax2d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Ax2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Ax2d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Ax2d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Ax2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Ax2d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Ax2d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_Pnt2d const & _CSFDB_Getgp_Ax2dloc() const;
        %feature("autodoc", "1");
        gp_Dir2d const & _CSFDB_Getgp_Ax2dvdir() const; 
};
//Var: gp_Pnt2d loc
//Get: None
//Set: None
//Var: gp_Dir2d vdir
//Get: None
//Set: None
%feature("shadow") gp_Ax2d::~gp_Ax2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Ax2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Ax3;

class gp_Ax3  {
    public:

        %feature("autodoc", "1");
        gp_Ax3(gp_Ax3 const & arg0);
        %feature("autodoc", "1");
        gp_Ax3();
        %feature("autodoc", "1");
        gp_Ax3(gp_Ax2 const & A);
        %feature("autodoc", "1");
        gp_Ax3(gp_Pnt const & P, gp_Dir const & N, gp_Dir const & Vx);
        %feature("autodoc", "1");
        gp_Ax3(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        void XReverse();
        %feature("autodoc", "1");
        void YReverse();
        %feature("autodoc", "1");
        void ZReverse();
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetXDirection(gp_Dir const & Vx);
        %feature("autodoc", "1");
        void SetYDirection(gp_Dir const & Vy);
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Ax3 const & Other) const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        gp_Ax2 Ax2() const;
        %feature("autodoc", "1");
        gp_Dir const & Direction() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Dir const & XDirection() const;
        %feature("autodoc", "1");
        gp_Dir const & YDirection() const;
        %feature("autodoc", "1");
        Standard_Boolean Direct() const;
        %feature("autodoc", "1");
        Standard_Boolean IsCoplanar(gp_Ax3 const & Other, Standard_Real const LinearTolerance, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsCoplanar(gp_Ax1 const & A1, Standard_Real const LinearTolerance, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Ax3 Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Ax3 Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Ax3 Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Ax3 Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Ax3 Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Ax3 Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Ax3 Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Ax3 Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax1 const & _CSFDB_Getgp_Ax3axis() const;
        %feature("autodoc", "1");
        gp_Dir const & _CSFDB_Getgp_Ax3vydir() const;
        %feature("autodoc", "1");
        gp_Dir const & _CSFDB_Getgp_Ax3vxdir() const; 
};
//Var: gp_Ax1 axis
//Get: None
//Set: None
//Var: gp_Dir vydir
//Get: None
//Set: None
//Var: gp_Dir vxdir
//Get: None
//Set: None
%feature("shadow") gp_Ax3::~gp_Ax3 {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Ax3 {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Circ;

class gp_Circ  {
    public:

        %feature("autodoc", "1");
        gp_Circ(gp_Circ const & arg0);
        %feature("autodoc", "1");
        gp_Circ();
        %feature("autodoc", "1");
        gp_Circ(gp_Ax2 const & A2, Standard_Real const R);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        Standard_Real Length() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax2 const & Position() const;
        %feature("autodoc", "1");
        Standard_Real Radius() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(gp_Pnt const & P, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Circ Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Circ Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Circ Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Circ Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Circ Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Circ Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Circ Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Circ Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax2 const & _CSFDB_Getgp_Circpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Circradius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Circradius(Standard_Real const p); 
};
//Var: gp_Ax2 pos
//Get: None
//Set: None
//Var: Standard_Real radius
//Get: None
//Set: None
%feature("shadow") gp_Circ::~gp_Circ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Circ {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Circ2d;

class gp_Circ2d  {
    public:

        %feature("autodoc", "1");
        gp_Circ2d(gp_Circ2d const & arg0);
        %feature("autodoc", "1");
        gp_Circ2d();
        %feature("autodoc", "1");
        gp_Circ2d(gp_Ax2d const & XAxis, Standard_Real const Radius, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        gp_Circ2d(gp_Ax22d const & Axis, Standard_Real const Radius);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetXAxis(gp_Ax2d const & A);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax22d const & A);
        %feature("autodoc", "1");
        void SetYAxis(gp_Ax2d const & A);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const Radius);
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A, Standard_Real & B, Standard_Real & C, Standard_Real & D, Standard_Real & E, Standard_Real & F) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(gp_Pnt2d const & P, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        Standard_Real Length() const;
        %feature("autodoc", "1");
        gp_Pnt2d const & Location() const;
        %feature("autodoc", "1");
        Standard_Real Radius() const;
        %feature("autodoc", "1");
        gp_Ax22d const & Axis() const;
        %feature("autodoc", "1");
        gp_Ax22d const & Position() const;
        %feature("autodoc", "1");
        gp_Ax2d XAxis() const;
        %feature("autodoc", "1");
        gp_Ax2d YAxis() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Circ2d Reversed() const;
        %feature("autodoc", "1");
        Standard_Boolean IsDirect() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Circ2d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Circ2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Circ2d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Circ2d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Circ2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Circ2d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Circ2d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_Ax22d const & _CSFDB_Getgp_Circ2dpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Circ2dradius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Circ2dradius(Standard_Real const p); 
};
//Var: gp_Ax22d pos
//Get: None
//Set: None
//Var: Standard_Real radius
//Get: None
//Set: None
%feature("shadow") gp_Circ2d::~gp_Circ2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Circ2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Cone;

class gp_Cone  {
    public:

        %feature("autodoc", "1");
        gp_Cone(gp_Cone const & arg0);
        %feature("autodoc", "1");
        gp_Cone();
        %feature("autodoc", "1");
        gp_Cone(gp_Ax3 const & A3, Standard_Real const Ang, Standard_Real const Radius);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & Loc);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void SetSemiAngle(Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Pnt Apex() const;
        %feature("autodoc", "1");
        void UReverse();
        %feature("autodoc", "1");
        void VReverse();
        %feature("autodoc", "1");
        Standard_Boolean Direct() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A1, Standard_Real & A2, Standard_Real & A3, Standard_Real & B1, Standard_Real & B2, Standard_Real & B3, Standard_Real & C1, Standard_Real & C2, Standard_Real & C3, Standard_Real & D) const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax3 const & Position() const;
        %feature("autodoc", "1");
        Standard_Real RefRadius() const;
        %feature("autodoc", "1");
        Standard_Real SemiAngle() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Cone Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Cone Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Cone Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Cone Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Cone Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Cone Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Cone Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Cone Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax3 const & _CSFDB_Getgp_Conepos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Coneradius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Coneradius(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_ConesemiAngle() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_ConesemiAngle(Standard_Real const p); 
};
//Var: gp_Ax3 pos
//Get: None
//Set: None
//Var: Standard_Real radius
//Get: None
//Set: None
//Var: Standard_Real semiAngle
//Get: None
//Set: None
%feature("shadow") gp_Cone::~gp_Cone {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Cone {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Cylinder;

class gp_Cylinder  {
    public:

        %feature("autodoc", "1");
        gp_Cylinder(gp_Cylinder const & arg0);
        %feature("autodoc", "1");
        gp_Cylinder();
        %feature("autodoc", "1");
        gp_Cylinder(gp_Ax3 const & A3, Standard_Real const Radius);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & Loc);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void UReverse();
        %feature("autodoc", "1");
        void VReverse();
        %feature("autodoc", "1");
        Standard_Boolean Direct() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A1, Standard_Real & A2, Standard_Real & A3, Standard_Real & B1, Standard_Real & B2, Standard_Real & B3, Standard_Real & C1, Standard_Real & C2, Standard_Real & C3, Standard_Real & D) const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax3 const & Position() const;
        %feature("autodoc", "1");
        Standard_Real Radius() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Cylinder Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Cylinder Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Cylinder Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Cylinder Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Cylinder Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Cylinder Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Cylinder Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Cylinder Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax3 const & _CSFDB_Getgp_Cylinderpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Cylinderradius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Cylinderradius(Standard_Real const p); 
};
//Var: gp_Ax3 pos
//Get: None
//Set: None
//Var: Standard_Real radius
//Get: None
//Set: None
%feature("shadow") gp_Cylinder::~gp_Cylinder {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Cylinder {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Dir;

class gp_Dir  {
    public:

        %feature("autodoc", "1");
        gp_Dir(gp_Dir const & arg0);
        %feature("autodoc", "1");
        gp_Dir();
        %feature("autodoc", "1");
        gp_Dir(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Dir(gp_XYZ const & XYZ);
        %feature("autodoc", "1");
        gp_Dir(Standard_Real const Xv, Standard_Real const Yv, Standard_Real const Zv);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const Index, Standard_Real const Xi);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const Xv, Standard_Real const Yv, Standard_Real const Zv);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetZ(Standard_Real const Z);
        %feature("autodoc", "1");
        void SetXYZ(gp_XYZ const & XYZ);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & Xv, Standard_Real & Yv, Standard_Real & Zv) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        Standard_Real Z() const;
        %feature("autodoc", "1");
        gp_XYZ const & XYZ() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_Dir const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsNormal(gp_Dir const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsOpposite(gp_Dir const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsParallel(gp_Dir const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Dir const & Other) const;
        %feature("autodoc", "1");
        Standard_Real AngleWithRef(gp_Dir const & Other, gp_Dir const & VRef) const;
        %feature("autodoc", "1");
        void Cross(gp_Dir const & Right);
        %feature("autodoc", "1");
        gp_Dir Crossed(gp_Dir const & Right) const;
        %feature("autodoc", "1");
        void CrossCross(gp_Dir const & V1, gp_Dir const & V2);
        %feature("autodoc", "1");
        gp_Dir CrossCrossed(gp_Dir const & V1, gp_Dir const & V2) const;
        %feature("autodoc", "1");
        Standard_Real Dot(gp_Dir const & Other) const;
        %feature("autodoc", "1");
        Standard_Real DotCross(gp_Dir const & V1, gp_Dir const & V2) const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Dir Reversed() const;
        %feature("autodoc", "1");
        void Mirror(gp_Dir const & V);
        %feature("autodoc", "1");
        gp_Dir Mirrored(gp_Dir const & V) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Dir Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Dir Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Dir Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Dir Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        gp_XYZ const & _CSFDB_Getgp_Dircoord() const; 
};
//Var: gp_XYZ coord
//Get: None
//Set: None
%feature("shadow") gp_Dir::~gp_Dir {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Dir {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Dir2d;

class gp_Dir2d  {
    public:

        %feature("autodoc", "1");
        gp_Dir2d(gp_Dir2d const & arg0);
        %feature("autodoc", "1");
        gp_Dir2d();
        %feature("autodoc", "1");
        gp_Dir2d(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Dir2d(gp_XY const & XY);
        %feature("autodoc", "1");
        gp_Dir2d(Standard_Real const Xv, Standard_Real const Yv);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const Index, Standard_Real const Xi);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const Xv, Standard_Real const Yv);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetXY(gp_XY const & XY);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & Xv, Standard_Real & Yv) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        gp_XY const & XY() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_Dir2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsNormal(gp_Dir2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsOpposite(gp_Dir2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsParallel(gp_Dir2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Dir2d const & Other) const;
        %feature("autodoc", "1");
        Standard_Real Crossed(gp_Dir2d const & Right) const;
        %feature("autodoc", "1");
        Standard_Real Dot(gp_Dir2d const & Other) const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Dir2d Reversed() const;
        %feature("autodoc", "1");
        void Mirror(gp_Dir2d const & V);
        %feature("autodoc", "1");
        gp_Dir2d Mirrored(gp_Dir2d const & V) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Dir2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Dir2d Rotated(Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Dir2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        gp_XY const & _CSFDB_Getgp_Dir2dcoord() const; 
};
//Var: gp_XY coord
//Get: None
//Set: None
%feature("shadow") gp_Dir2d::~gp_Dir2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Dir2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Elips;

class gp_Elips  {
    public:

        %feature("autodoc", "1");
        gp_Elips(gp_Elips const & arg0);
        %feature("autodoc", "1");
        gp_Elips();
        %feature("autodoc", "1");
        gp_Elips(gp_Ax2 const & A2, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix1() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix2() const;
        %feature("autodoc", "1");
        Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt Focus1() const;
        %feature("autodoc", "1");
        gp_Pnt Focus2() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        gp_Ax2 const & Position() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Elips Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Elips Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Elips Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Elips Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Elips Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Elips Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Elips Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Elips Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax2 const & _CSFDB_Getgp_Elipspos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_ElipsmajorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_ElipsmajorRadius(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_ElipsminorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_ElipsminorRadius(Standard_Real const p); 
};
//Var: gp_Ax2 pos
//Get: None
//Set: None
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") gp_Elips::~gp_Elips {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Elips {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Elips2d;

class gp_Elips2d  {
    public:

        %feature("autodoc", "1");
        gp_Elips2d(gp_Elips2d const & arg0);
        %feature("autodoc", "1");
        gp_Elips2d();
        %feature("autodoc", "1");
        gp_Elips2d(gp_Ax2d const & MajorAxis, Standard_Real const MajorRadius, Standard_Real const MinorRadius, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        gp_Elips2d(gp_Ax22d const & A, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const MajorRadius);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax22d const & A);
        %feature("autodoc", "1");
        void SetXAxis(gp_Ax2d const & A);
        %feature("autodoc", "1");
        void SetYAxis(gp_Ax2d const & A);
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A, Standard_Real & B, Standard_Real & C, Standard_Real & D, Standard_Real & E, Standard_Real & F) const;
        %feature("autodoc", "1");
        gp_Ax2d Directrix1() const;
        %feature("autodoc", "1");
        gp_Ax2d Directrix2() const;
        %feature("autodoc", "1");
        Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt2d Focus1() const;
        %feature("autodoc", "1");
        gp_Pnt2d Focus2() const;
        %feature("autodoc", "1");
        gp_Pnt2d const & Location() const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        gp_Ax22d const & Axis() const;
        %feature("autodoc", "1");
        gp_Ax2d XAxis() const;
        %feature("autodoc", "1");
        gp_Ax2d YAxis() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Elips2d Reversed() const;
        %feature("autodoc", "1");
        Standard_Boolean IsDirect() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Elips2d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Elips2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Elips2d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Elips2d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Elips2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Elips2d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Elips2d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_Ax22d const & _CSFDB_Getgp_Elips2dpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Elips2dmajorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Elips2dmajorRadius(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Elips2dminorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Elips2dminorRadius(Standard_Real const p); 
};
//Var: gp_Ax22d pos
//Get: None
//Set: None
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") gp_Elips2d::~gp_Elips2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Elips2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_GTrsf;

class gp_GTrsf  {
    public:

        %feature("autodoc", "1");
        gp_GTrsf(gp_GTrsf const & arg0);
        %feature("autodoc", "1");
        gp_GTrsf();
        %feature("autodoc", "1");
        gp_GTrsf(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_GTrsf(gp_Mat const & M, gp_XYZ const & V);
        %feature("autodoc", "1");
        void SetAffinity(gp_Ax1 const & A1, Standard_Real const Ratio);
        %feature("autodoc", "1");
        void SetAffinity(gp_Ax2 const & A2, Standard_Real const Ratio);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Real const Value);
        %feature("autodoc", "1");
        void SetVectorialPart(gp_Mat const & Matrix);
        %feature("autodoc", "1");
        void SetTranslationPart(gp_XYZ const & Coord);
        %feature("autodoc", "1");
        void SetTrsf(gp_Trsf const & T);
        %feature("autodoc", "1");
        Standard_Boolean IsNegative() const;
        %feature("autodoc", "1");
        Standard_Boolean IsSingular() const;
        %feature("autodoc", "1");
        gp_TrsfForm Form() const;
        %feature("autodoc", "1");
        void SetForm();
        %feature("autodoc", "1");
        gp_XYZ const & TranslationPart() const;
        %feature("autodoc", "1");
        gp_Mat const & VectorialPart() const;
        %feature("autodoc", "1");
        Standard_Real Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        void Invert();
        %feature("autodoc", "1");
        gp_GTrsf Inverted() const;
        %feature("autodoc", "1");
        void Multiply(gp_GTrsf const & T);
        %feature("autodoc", "1");
        gp_GTrsf Multiplied(gp_GTrsf const & T) const;
        %feature("autodoc", "1");
        void PreMultiply(gp_GTrsf const & T);
        %feature("autodoc", "1");
        void Power(Standard_Integer const N);
        %feature("autodoc", "1");
        gp_GTrsf Powered(Standard_Integer const N) const;
        %feature("autodoc", "1");
        void Transforms(gp_XYZ & Coord) const;
        %feature("autodoc", "1");
        void Transforms(Standard_Real & X, Standard_Real & Y, Standard_Real & Z) const;
        %feature("autodoc", "1");
        gp_Trsf Trsf() const;
        %feature("autodoc", "1");
        gp_Mat const & _CSFDB_Getgp_GTrsfmatrix() const;
        %feature("autodoc", "1");
        gp_XYZ const & _CSFDB_Getgp_GTrsfloc() const;
        %feature("autodoc", "1");
        gp_TrsfForm _CSFDB_Getgp_GTrsfshape() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_GTrsfshape(gp_TrsfForm const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_GTrsfscale() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_GTrsfscale(Standard_Real const p); 
};
//Var: gp_Mat matrix
//Get: None
//Set: None
//Var: gp_XYZ loc
//Get: None
//Set: None
//Var: gp_TrsfForm shape
//Get: None
//Set: None
//Var: Standard_Real scale
//Get: None
//Set: None
%feature("shadow") gp_GTrsf::~gp_GTrsf {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_GTrsf {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_GTrsf2d;

class gp_GTrsf2d  {
    public:

        %feature("autodoc", "1");
        gp_GTrsf2d(gp_GTrsf2d const & arg0);
        %feature("autodoc", "1");
        gp_GTrsf2d();
        %feature("autodoc", "1");
        gp_GTrsf2d(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_GTrsf2d(gp_Mat2d const & M, gp_XY const & V);
        %feature("autodoc", "1");
        void SetAffinity(gp_Ax2d const & A, Standard_Real const Ratio);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Real const Value);
        %feature("autodoc", "1");
        void SetTranslationPart(gp_XY const & Coord);
        %feature("autodoc", "1");
        void SetTrsf2d(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        void SetVectorialPart(gp_Mat2d const & Matrix);
        %feature("autodoc", "1");
        Standard_Boolean IsNegative() const;
        %feature("autodoc", "1");
        Standard_Boolean IsSingular() const;
        %feature("autodoc", "1");
        gp_TrsfForm Form() const;
        %feature("autodoc", "1");
        gp_XY const & TranslationPart() const;
        %feature("autodoc", "1");
        gp_Mat2d const & VectorialPart() const;
        %feature("autodoc", "1");
        Standard_Real Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        void Invert();
        %feature("autodoc", "1");
        gp_GTrsf2d Inverted() const;
        %feature("autodoc", "1");
        void Multiply(gp_GTrsf2d const & T);
        %feature("autodoc", "1");
        gp_GTrsf2d Multiplied(gp_GTrsf2d const & T) const;
        %feature("autodoc", "1");
        void PreMultiply(gp_GTrsf2d const & T);
        %feature("autodoc", "1");
        void Power(Standard_Integer const N);
        %feature("autodoc", "1");
        gp_GTrsf2d Powered(Standard_Integer const N) const;
        %feature("autodoc", "1");
        void Transforms(gp_XY & Coord) const;
        %feature("autodoc", "1");
        gp_XY Transformed(gp_XY const & Coord) const;
        %feature("autodoc", "1");
        void Transforms(Standard_Real & X, Standard_Real & Y) const;
        %feature("autodoc", "1");
        gp_Trsf2d Trsf2d() const;
        %feature("autodoc", "1");
        gp_Mat2d const & _CSFDB_Getgp_GTrsf2dmatrix() const;
        %feature("autodoc", "1");
        gp_XY const & _CSFDB_Getgp_GTrsf2dloc() const;
        %feature("autodoc", "1");
        gp_TrsfForm _CSFDB_Getgp_GTrsf2dshape() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_GTrsf2dshape(gp_TrsfForm const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_GTrsf2dscale() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_GTrsf2dscale(Standard_Real const p); 
};
//Var: gp_Mat2d matrix
//Get: None
//Set: None
//Var: gp_XY loc
//Get: None
//Set: None
//Var: gp_TrsfForm shape
//Get: None
//Set: None
//Var: Standard_Real scale
//Get: None
//Set: None
%feature("shadow") gp_GTrsf2d::~gp_GTrsf2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_GTrsf2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Hypr;

class gp_Hypr  {
    public:

        %feature("autodoc", "1");
        gp_Hypr(gp_Hypr const & arg0);
        %feature("autodoc", "1");
        gp_Hypr();
        %feature("autodoc", "1");
        gp_Hypr(gp_Ax2 const & A2, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const R);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Ax1 Asymptote1() const;
        %feature("autodoc", "1");
        gp_Ax1 Asymptote2() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        gp_Hypr ConjugateBranch1() const;
        %feature("autodoc", "1");
        gp_Hypr ConjugateBranch2() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix1() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix2() const;
        %feature("autodoc", "1");
        Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt Focus1() const;
        %feature("autodoc", "1");
        gp_Pnt Focus2() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        gp_Hypr OtherBranch() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        gp_Ax2 const & Position() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Hypr Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Hypr Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Hypr Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Hypr Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Hypr Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Hypr Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Hypr Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Hypr Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax2 const & _CSFDB_Getgp_Hyprpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_HyprmajorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_HyprmajorRadius(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_HyprminorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_HyprminorRadius(Standard_Real const p); 
};
//Var: gp_Ax2 pos
//Get: None
//Set: None
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") gp_Hypr::~gp_Hypr {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Hypr {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Hypr2d;

class gp_Hypr2d  {
    public:

        %feature("autodoc", "1");
        gp_Hypr2d(gp_Hypr2d const & arg0);
        %feature("autodoc", "1");
        gp_Hypr2d();
        %feature("autodoc", "1");
        gp_Hypr2d(gp_Ax2d const & MajorAxis, Standard_Real const MajorRadius, Standard_Real const MinorRadius, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        gp_Hypr2d(gp_Ax22d const & A, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const MajorRadius);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax22d const & A);
        %feature("autodoc", "1");
        void SetXAxis(gp_Ax2d const & A);
        %feature("autodoc", "1");
        void SetYAxis(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Ax2d Asymptote1() const;
        %feature("autodoc", "1");
        gp_Ax2d Asymptote2() const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A, Standard_Real & B, Standard_Real & C, Standard_Real & D, Standard_Real & E, Standard_Real & F) const;
        %feature("autodoc", "1");
        gp_Hypr2d ConjugateBranch1() const;
        %feature("autodoc", "1");
        gp_Hypr2d ConjugateBranch2() const;
        %feature("autodoc", "1");
        gp_Ax2d Directrix1() const;
        %feature("autodoc", "1");
        gp_Ax2d Directrix2() const;
        %feature("autodoc", "1");
        Standard_Real Eccentricity() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt2d Focus1() const;
        %feature("autodoc", "1");
        gp_Pnt2d Focus2() const;
        %feature("autodoc", "1");
        gp_Pnt2d const & Location() const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        gp_Hypr2d OtherBranch() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        gp_Ax22d const & Axis() const;
        %feature("autodoc", "1");
        gp_Ax2d XAxis() const;
        %feature("autodoc", "1");
        gp_Ax2d YAxis() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Hypr2d Reversed() const;
        %feature("autodoc", "1");
        Standard_Boolean IsDirect() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Hypr2d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Hypr2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Hypr2d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Hypr2d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Hypr2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Hypr2d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Hypr2d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_Ax22d const & _CSFDB_Getgp_Hypr2dpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Hypr2dmajorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Hypr2dmajorRadius(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Hypr2dminorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Hypr2dminorRadius(Standard_Real const p); 
};
//Var: gp_Ax22d pos
//Get: None
//Set: None
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") gp_Hypr2d::~gp_Hypr2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Hypr2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Lin;

class gp_Lin  {
    public:

        %feature("autodoc", "1");
        gp_Lin(gp_Lin const & arg0);
        %feature("autodoc", "1");
        gp_Lin();
        %feature("autodoc", "1");
        gp_Lin(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Lin(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Lin Reversed() const;
        %feature("autodoc", "1");
        void SetDirection(gp_Dir const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Dir const & Direction() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Position() const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Lin const & Other) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(gp_Pnt const & P, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Lin const & Other) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Lin const & Other) const;
        %feature("autodoc", "1");
        gp_Lin Normal(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Lin Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Lin Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Lin Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Lin Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Lin Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Lin Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Lin Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Lin Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax1 const & _CSFDB_Getgp_Linpos() const; 
};
//Var: gp_Ax1 pos
//Get: None
//Set: None
%feature("shadow") gp_Lin::~gp_Lin {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Lin {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Lin2d;

class gp_Lin2d  {
    public:

        %feature("autodoc", "1");
        gp_Lin2d(gp_Lin2d const & arg0);
        %feature("autodoc", "1");
        gp_Lin2d();
        %feature("autodoc", "1");
        gp_Lin2d(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Lin2d(gp_Pnt2d const & P, gp_Dir2d const & V);
        %feature("autodoc", "1");
        gp_Lin2d(Standard_Real const A, Standard_Real const B, Standard_Real const C);
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Lin2d Reversed() const;
        %feature("autodoc", "1");
        void SetDirection(gp_Dir2d const & V);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax2d const & A);
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A, Standard_Real & B, Standard_Real & C) const;
        %feature("autodoc", "1");
        gp_Dir2d const & Direction() const;
        %feature("autodoc", "1");
        gp_Pnt2d const & Location() const;
        %feature("autodoc", "1");
        gp_Ax2d const & Position() const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Lin2d const & Other) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(gp_Pnt2d const & P, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Lin2d const & Other) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Lin2d const & Other) const;
        %feature("autodoc", "1");
        gp_Lin2d Normal(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Lin2d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Lin2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Lin2d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Lin2d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Lin2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Lin2d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Lin2d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_Ax2d const & _CSFDB_Getgp_Lin2dpos() const; 
};
//Var: gp_Ax2d pos
//Get: None
//Set: None
%feature("shadow") gp_Lin2d::~gp_Lin2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Lin2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Mat;

class gp_Mat  {
    public:

        %feature("autodoc", "1");
        gp_Mat(gp_Mat const & arg0);
        %feature("autodoc", "1");
        gp_Mat();
        %feature("autodoc", "1");
        gp_Mat(Standard_Real const a11, Standard_Real const a12, Standard_Real const a13, Standard_Real const a21, Standard_Real const a22, Standard_Real const a23, Standard_Real const a31, Standard_Real const a32, Standard_Real const a33);
        %feature("autodoc", "1");
        gp_Mat(gp_XYZ const & Col1, gp_XYZ const & Col2, gp_XYZ const & Col3);
        %feature("autodoc", "1");
        void SetCol(Standard_Integer const Col, gp_XYZ const & Value);
        %feature("autodoc", "1");
        void SetCols(gp_XYZ const & Col1, gp_XYZ const & Col2, gp_XYZ const & Col3);
        %feature("autodoc", "1");
        void SetCross(gp_XYZ const & Ref);
        %feature("autodoc", "1");
        void SetDiagonal(Standard_Real const X1, Standard_Real const X2, Standard_Real const X3);
        %feature("autodoc", "1");
        void SetDot(gp_XYZ const & Ref);
        %feature("autodoc", "1");
        void SetIdentity();
        %feature("autodoc", "1");
        void SetRotation(gp_XYZ const & Axis, Standard_Real const Ang);
        %feature("autodoc", "1");
        void SetRow(Standard_Integer const Row, gp_XYZ const & Value);
        %feature("autodoc", "1");
        void SetRows(gp_XYZ const & Row1, gp_XYZ const & Row2, gp_XYZ const & Row3);
        %feature("autodoc", "1");
        void SetScale(Standard_Real const S);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Real const Value);
        %feature("autodoc", "1");
        gp_XYZ Column(Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Real Determinant() const;
        %feature("autodoc", "1");
        gp_XYZ Diagonal() const;
        %feature("autodoc", "1");
        gp_XYZ Row(Standard_Integer const Row) const;
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        Standard_Boolean IsSingular() const;
        %feature("autodoc", "1");
        void Add(gp_Mat const & Other);
        %feature("autodoc", "1");
        gp_Mat Added(gp_Mat const & Other) const;
        %feature("autodoc", "1");
        void Divide(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_Mat Divided(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Invert();
        %feature("autodoc", "1");
        gp_Mat Inverted() const;
        %feature("autodoc", "1");
        gp_Mat Multiplied(gp_Mat const & Other) const;
        %feature("autodoc", "1");
        void Multiply(gp_Mat const & Other);
        %feature("autodoc", "1");
        void PreMultiply(gp_Mat const & Other);
        %feature("autodoc", "1");
        gp_Mat Multiplied(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Multiply(Standard_Real const Scalar);
        %feature("autodoc", "1");
        void Power(Standard_Integer const N);
        %feature("autodoc", "1");
        gp_Mat Powered(Standard_Integer const N) const;
        %feature("autodoc", "1");
        void Subtract(gp_Mat const & Other);
        %feature("autodoc", "1");
        gp_Mat Subtracted(gp_Mat const & Other) const;
        %feature("autodoc", "1");
        void Transpose();
        %feature("autodoc", "1");
        gp_Mat Transposed() const;
        %feature("autodoc", "1");
        Standard_Real & _CSFDB_Getgp_Matmatrix(Standard_Integer const i1, Standard_Integer const i2); 
};
//Var: Standard_Real[3][3] matrix
//Get: None
//Set: None
%feature("shadow") gp_Mat::~gp_Mat {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Mat {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Mat2d;

class gp_Mat2d  {
    public:

        %feature("autodoc", "1");
        gp_Mat2d(gp_Mat2d const & arg0);
        %feature("autodoc", "1");
        gp_Mat2d();
        %feature("autodoc", "1");
        gp_Mat2d(gp_XY const & Col1, gp_XY const & Col2);
        %feature("autodoc", "1");
        void SetCol(Standard_Integer const Col, gp_XY const & Value);
        %feature("autodoc", "1");
        void SetCols(gp_XY const & Col1, gp_XY const & Col2);
        %feature("autodoc", "1");
        void SetDiagonal(Standard_Real const X1, Standard_Real const X2);
        %feature("autodoc", "1");
        void SetIdentity();
        %feature("autodoc", "1");
        void SetRotation(Standard_Real const Ang);
        %feature("autodoc", "1");
        void SetRow(Standard_Integer const Row, gp_XY const & Value);
        %feature("autodoc", "1");
        void SetRows(gp_XY const & Row1, gp_XY const & Row2);
        %feature("autodoc", "1");
        void SetScale(Standard_Real const S);
        %feature("autodoc", "1");
        void SetValue(Standard_Integer const Row, Standard_Integer const Col, Standard_Real const Value);
        %feature("autodoc", "1");
        gp_XY Column(Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Real Determinant() const;
        %feature("autodoc", "1");
        gp_XY Diagonal() const;
        %feature("autodoc", "1");
        gp_XY Row(Standard_Integer const Row) const;
        %feature("autodoc", "1");
        Standard_Real const & Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        Standard_Real & ChangeValue(Standard_Integer const Row, Standard_Integer const Col);
        %feature("autodoc", "1");
        Standard_Boolean IsSingular() const;
        %feature("autodoc", "1");
        void Add(gp_Mat2d const & Other);
        %feature("autodoc", "1");
        gp_Mat2d Added(gp_Mat2d const & Other) const;
        %feature("autodoc", "1");
        void Divide(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_Mat2d Divided(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Invert();
        %feature("autodoc", "1");
        gp_Mat2d Inverted() const;
        %feature("autodoc", "1");
        gp_Mat2d Multiplied(gp_Mat2d const & Other) const;
        %feature("autodoc", "1");
        void Multiply(gp_Mat2d const & Other);
        %feature("autodoc", "1");
        void PreMultiply(gp_Mat2d const & Other);
        %feature("autodoc", "1");
        gp_Mat2d Multiplied(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Multiply(Standard_Real const Scalar);
        %feature("autodoc", "1");
        void Power(Standard_Integer const N);
        %feature("autodoc", "1");
        gp_Mat2d Powered(Standard_Integer const N) const;
        %feature("autodoc", "1");
        void Subtract(gp_Mat2d const & Other);
        %feature("autodoc", "1");
        gp_Mat2d Subtracted(gp_Mat2d const & Other) const;
        %feature("autodoc", "1");
        void Transpose();
        %feature("autodoc", "1");
        gp_Mat2d Transposed() const;
        %feature("autodoc", "1");
        Standard_Real & _CSFDB_Getgp_Mat2dmatrix(Standard_Integer const i1, Standard_Integer const i2); 
};
//Var: Standard_Real[2][2] matrix
//Get: None
//Set: None
%feature("shadow") gp_Mat2d::~gp_Mat2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Mat2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Parab;

class gp_Parab  {
    public:

        %feature("autodoc", "1");
        gp_Parab(gp_Parab const & arg0);
        %feature("autodoc", "1");
        gp_Parab();
        %feature("autodoc", "1");
        gp_Parab(gp_Ax2 const & A2, Standard_Real const Focal);
        %feature("autodoc", "1");
        gp_Parab(gp_Ax1 const & D, gp_Pnt const & F);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetFocal(Standard_Real const Focal);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        gp_Ax1 Directrix() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt Focus() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        gp_Ax2 const & Position() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Parab Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Parab Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Parab Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Parab Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Parab Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Parab Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Parab Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Parab Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax2 const & _CSFDB_Getgp_Parabpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_ParabfocalLength() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_ParabfocalLength(Standard_Real const p); 
};
//Var: gp_Ax2 pos
//Get: None
//Set: None
//Var: Standard_Real focalLength
//Get: None
//Set: None
%feature("shadow") gp_Parab::~gp_Parab {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Parab {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Parab2d;

class gp_Parab2d  {
    public:

        %feature("autodoc", "1");
        gp_Parab2d(gp_Parab2d const & arg0);
        %feature("autodoc", "1");
        gp_Parab2d();
        %feature("autodoc", "1");
        gp_Parab2d(gp_Ax2d const & MirrorAxis, Standard_Real const Focal, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        gp_Parab2d(gp_Ax22d const & A, Standard_Real const Focal);
        %feature("autodoc", "1");
        gp_Parab2d(gp_Ax2d const & D, gp_Pnt2d const & F, Standard_Boolean const Sense=1);
        %feature("autodoc", "1");
        gp_Parab2d(gp_Ax22d const & D, gp_Pnt2d const & F);
        %feature("autodoc", "1");
        void SetFocal(Standard_Real const Focal);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetMirrorAxis(gp_Ax2d const & A);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax22d const & A);
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A, Standard_Real & B, Standard_Real & C, Standard_Real & D, Standard_Real & E, Standard_Real & F) const;
        %feature("autodoc", "1");
        gp_Ax2d Directrix() const;
        %feature("autodoc", "1");
        Standard_Real Focal() const;
        %feature("autodoc", "1");
        gp_Pnt2d Focus() const;
        %feature("autodoc", "1");
        gp_Pnt2d Location() const;
        %feature("autodoc", "1");
        gp_Ax2d MirrorAxis() const;
        %feature("autodoc", "1");
        gp_Ax22d Axis() const;
        %feature("autodoc", "1");
        Standard_Real Parameter() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Parab2d Reversed() const;
        %feature("autodoc", "1");
        Standard_Boolean IsDirect() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Parab2d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Parab2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Parab2d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Parab2d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Parab2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Parab2d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Parab2d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_Ax22d const & _CSFDB_Getgp_Parab2dpos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Parab2dfocalLength() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Parab2dfocalLength(Standard_Real const p); 
};
//Var: gp_Ax22d pos
//Get: None
//Set: None
//Var: Standard_Real focalLength
//Get: None
//Set: None
%feature("shadow") gp_Parab2d::~gp_Parab2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Parab2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Pln;

class gp_Pln  {
    public:

        %feature("autodoc", "1");
        gp_Pln(gp_Pln const & arg0);
        %feature("autodoc", "1");
        gp_Pln();
        %feature("autodoc", "1");
        gp_Pln(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        gp_Pln(gp_Pnt const & P, gp_Dir const & V);
        %feature("autodoc", "1");
        gp_Pln(Standard_Real const A, Standard_Real const B, Standard_Real const C, Standard_Real const D);
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A, Standard_Real & B, Standard_Real & C, Standard_Real & D) const;
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & Loc);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        void UReverse();
        %feature("autodoc", "1");
        void VReverse();
        %feature("autodoc", "1");
        Standard_Boolean Direct() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax3 const & Position() const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Lin const & L) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pln const & Other) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Lin const & L) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pln const & Other) const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(gp_Pnt const & P, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean Contains(gp_Lin const & L, Standard_Real const LinearTolerance, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Pln Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Pln Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Pln Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Pln Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Pln Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Pln Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Pln Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Pln Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax3 const & _CSFDB_Getgp_Plnpos() const; 
};
//Var: gp_Ax3 pos
//Get: None
//Set: None
%feature("shadow") gp_Pln::~gp_Pln {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Pln {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Pnt;

class gp_Pnt  {
    public:

        %feature("autodoc", "1");
        gp_Pnt(gp_Pnt const & arg0);
        %feature("autodoc", "1");
        gp_Pnt();
        %feature("autodoc", "1");
        gp_Pnt(gp_XYZ const & Coordinates);
        %feature("autodoc", "1");
        gp_Pnt(Standard_Real const Xp, Standard_Real const Yp, Standard_Real const Zp);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const Index, Standard_Real const Xi);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const Xp, Standard_Real const Yp, Standard_Real const Zp);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetZ(Standard_Real const Z);
        %feature("autodoc", "1");
        void SetXYZ(gp_XYZ const & Coordinates);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & Xp, Standard_Real & Yp, Standard_Real & Zp) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        Standard_Real Z() const;
        %feature("autodoc", "1");
        gp_XYZ const & XYZ() const;
        %feature("autodoc", "1");
        gp_XYZ const & Coord() const;
        %feature("autodoc", "1");
        gp_XYZ & ChangeCoord();
        %feature("autodoc", "1");
        void BaryCenter(Standard_Real const A, gp_Pnt const & P, Standard_Real const B);
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_Pnt const & Other, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pnt const & Other) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pnt const & Other) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Pnt Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Pnt Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Pnt Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Pnt Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Pnt Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Pnt Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Pnt Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Pnt Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_XYZ const & _CSFDB_Getgp_Pntcoord() const; 
};
//Var: gp_XYZ coord
//Get: None
//Set: None
%feature("shadow") gp_Pnt::~gp_Pnt {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Pnt {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Pnt2d;

class gp_Pnt2d  {
    public:

        %feature("autodoc", "1");
        gp_Pnt2d(gp_Pnt2d const & arg0);
        %feature("autodoc", "1");
        gp_Pnt2d();
        %feature("autodoc", "1");
        gp_Pnt2d(gp_XY const & Coordinates);
        %feature("autodoc", "1");
        gp_Pnt2d(Standard_Real const Xp, Standard_Real const Yp);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const Index, Standard_Real const Xi);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const Xp, Standard_Real const Yp);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetXY(gp_XY const & Coordinates);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & Xp, Standard_Real & Yp) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        gp_XY const & XY() const;
        %feature("autodoc", "1");
        gp_XY const & Coord() const;
        %feature("autodoc", "1");
        gp_XY & ChangeCoord();
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_Pnt2d const & Other, Standard_Real const LinearTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Distance(gp_Pnt2d const & Other) const;
        %feature("autodoc", "1");
        Standard_Real SquareDistance(gp_Pnt2d const & Other) const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        gp_Pnt2d Mirrored(gp_Pnt2d const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        gp_Pnt2d Mirrored(gp_Ax2d const & A) const;
        %feature("autodoc", "1");
        void Rotate(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Pnt2d Rotated(gp_Pnt2d const & P, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Pnt2d Scaled(gp_Pnt2d const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Pnt2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Pnt2d Translated(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        gp_Pnt2d Translated(gp_Pnt2d const & P1, gp_Pnt2d const & P2) const;
        %feature("autodoc", "1");
        gp_XY const & _CSFDB_Getgp_Pnt2dcoord() const; 
};
//Var: gp_XY coord
//Get: None
//Set: None
%feature("shadow") gp_Pnt2d::~gp_Pnt2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Pnt2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Sphere;

class gp_Sphere  {
    public:

        %feature("autodoc", "1");
        gp_Sphere(gp_Sphere const & arg0);
        %feature("autodoc", "1");
        gp_Sphere();
        %feature("autodoc", "1");
        gp_Sphere(gp_Ax3 const & A3, Standard_Real const Radius);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & Loc);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        void SetRadius(Standard_Real const R);
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        void Coefficients(Standard_Real & A1, Standard_Real & A2, Standard_Real & A3, Standard_Real & B1, Standard_Real & B2, Standard_Real & B3, Standard_Real & C1, Standard_Real & C2, Standard_Real & C3, Standard_Real & D) const;
        %feature("autodoc", "1");
        void UReverse();
        %feature("autodoc", "1");
        void VReverse();
        %feature("autodoc", "1");
        Standard_Boolean Direct() const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax3 const & Position() const;
        %feature("autodoc", "1");
        Standard_Real Radius() const;
        %feature("autodoc", "1");
        Standard_Real Volume() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Sphere Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Sphere Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Sphere Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Sphere Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Sphere Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Sphere Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Sphere Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Sphere Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax3 const & _CSFDB_Getgp_Spherepos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Sphereradius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Sphereradius(Standard_Real const p); 
};
//Var: gp_Ax3 pos
//Get: None
//Set: None
//Var: Standard_Real radius
//Get: None
//Set: None
%feature("shadow") gp_Sphere::~gp_Sphere {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Sphere {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Torus;

class gp_Torus  {
    public:

        %feature("autodoc", "1");
        gp_Torus(gp_Torus const & arg0);
        %feature("autodoc", "1");
        gp_Torus();
        %feature("autodoc", "1");
        gp_Torus(gp_Ax3 const & A3, Standard_Real const MajorRadius, Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetAxis(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetLocation(gp_Pnt const & Loc);
        %feature("autodoc", "1");
        void SetMajorRadius(Standard_Real const MajorRadius);
        %feature("autodoc", "1");
        void SetMinorRadius(Standard_Real const MinorRadius);
        %feature("autodoc", "1");
        void SetPosition(gp_Ax3 const & A3);
        %feature("autodoc", "1");
        Standard_Real Area() const;
        %feature("autodoc", "1");
        void UReverse();
        %feature("autodoc", "1");
        void VReverse();
        %feature("autodoc", "1");
        Standard_Boolean Direct() const;
        %feature("autodoc", "1");
        gp_Ax1 const & Axis() const;
        %feature("autodoc", "1");
        void Coefficients(TColStd_Array1OfReal & Coef) const;
        %feature("autodoc", "1");
        gp_Pnt const & Location() const;
        %feature("autodoc", "1");
        gp_Ax3 const & Position() const;
        %feature("autodoc", "1");
        Standard_Real MajorRadius() const;
        %feature("autodoc", "1");
        Standard_Real MinorRadius() const;
        %feature("autodoc", "1");
        Standard_Real Volume() const;
        %feature("autodoc", "1");
        gp_Ax1 XAxis() const;
        %feature("autodoc", "1");
        gp_Ax1 YAxis() const;
        %feature("autodoc", "1");
        void Mirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        gp_Torus Mirrored(gp_Pnt const & P) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Torus Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Torus Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Torus Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        gp_Torus Scaled(gp_Pnt const & P, Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Torus Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Translate(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Torus Translated(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Translate(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        gp_Torus Translated(gp_Pnt const & P1, gp_Pnt const & P2) const;
        %feature("autodoc", "1");
        gp_Ax3 const & _CSFDB_Getgp_Toruspos() const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_TorusmajorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_TorusmajorRadius(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_TorusminorRadius() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_TorusminorRadius(Standard_Real const p); 
};
//Var: gp_Ax3 pos
//Get: None
//Set: None
//Var: Standard_Real majorRadius
//Get: None
//Set: None
//Var: Standard_Real minorRadius
//Get: None
//Set: None
%feature("shadow") gp_Torus::~gp_Torus {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Torus {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Trsf;

class gp_Trsf  {
    public:

        %feature("autodoc", "1");
        gp_Trsf(gp_Trsf const & arg0);
        %feature("autodoc", "1");
        gp_Trsf();
        %feature("autodoc", "1");
        gp_Trsf(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        void SetMirror(gp_Pnt const & P);
        %feature("autodoc", "1");
        void SetMirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        void SetMirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        void SetRotation(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        void SetScale(gp_Pnt const & P, Standard_Real const S);
        %feature("autodoc", "1");
        void SetDisplacement(gp_Ax3 const & FromSystem1, gp_Ax3 const & ToSystem2);
        %feature("autodoc", "1");
        void SetTransformation(gp_Ax3 const & FromSystem1, gp_Ax3 const & ToSystem2);
        %feature("autodoc", "1");
        void SetTransformation(gp_Ax3 const & ToSystem);
        %feature("autodoc", "1");
        void SetTranslation(gp_Vec const & V);
        %feature("autodoc", "1");
        void SetTranslation(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        void SetTranslationPart(gp_Vec const & V);
        %feature("autodoc", "1");
        void SetScaleFactor(Standard_Real const S);
        %feature("autodoc", "1");
        void SetValues(Standard_Real const a11, Standard_Real const a12, Standard_Real const a13, Standard_Real const a14, Standard_Real const a21, Standard_Real const a22, Standard_Real const a23, Standard_Real const a24, Standard_Real const a31, Standard_Real const a32, Standard_Real const a33, Standard_Real const a34, Standard_Real const Tolang, Standard_Real const TolDist);
        %feature("autodoc", "1");
        Standard_Boolean IsNegative() const;
        %feature("autodoc", "1");
        gp_TrsfForm Form() const;
        %feature("autodoc", "1");
        Standard_Real ScaleFactor() const;
        %feature("autodoc", "1");
        gp_XYZ const & TranslationPart() const;
        %feature("autodoc", "1");
        Standard_Boolean GetRotation(gp_XYZ & theAxis, Standard_Real & theAngle) const;
        %feature("autodoc", "1");
        gp_Mat VectorialPart() const;
        %feature("autodoc", "1");
        gp_Mat const & HVectorialPart() const;
        %feature("autodoc", "1");
        Standard_Real Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        void Invert();
        %feature("autodoc", "1");
        gp_Trsf Inverted() const;
        %feature("autodoc", "1");
        gp_Trsf Multiplied(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        void Multiply(gp_Trsf const & T);
        %feature("autodoc", "1");
        void PreMultiply(gp_Trsf const & T);
        %feature("autodoc", "1");
        void Power(Standard_Integer const N);
        %feature("autodoc", "1");
        gp_Trsf Powered(Standard_Integer const N);
        %feature("autodoc", "1");
        void Transforms(Standard_Real & X, Standard_Real & Y, Standard_Real & Z) const;
        %feature("autodoc", "1");
        void Transforms(gp_XYZ & Coord) const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Trsfscale() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Trsfscale(Standard_Real const p);
        %feature("autodoc", "1");
        gp_TrsfForm _CSFDB_Getgp_Trsfshape() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Trsfshape(gp_TrsfForm const p);
        %feature("autodoc", "1");
        gp_Mat const & _CSFDB_Getgp_Trsfmatrix() const;
        %feature("autodoc", "1");
        gp_XYZ const & _CSFDB_Getgp_Trsfloc() const; 
};
//Var: Standard_Real scale
//Get: None
//Set: None
//Var: gp_TrsfForm shape
//Get: None
//Set: None
//Var: gp_Mat matrix
//Get: None
//Set: None
//Var: gp_XYZ loc
//Get: None
//Set: None
%feature("shadow") gp_Trsf::~gp_Trsf {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Trsf {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Trsf2d;

class gp_Trsf2d  {
    public:

        %feature("autodoc", "1");
        gp_Trsf2d(gp_Trsf2d const & arg0);
        %feature("autodoc", "1");
        gp_Trsf2d();
        %feature("autodoc", "1");
        gp_Trsf2d(gp_Trsf const & T);
        %feature("autodoc", "1");
        void SetMirror(gp_Pnt2d const & P);
        %feature("autodoc", "1");
        void SetMirror(gp_Ax2d const & A);
        %feature("autodoc", "1");
        void SetRotation(gp_Pnt2d const & P, Standard_Real const Ang);
        %feature("autodoc", "1");
        void SetScale(gp_Pnt2d const & P, Standard_Real const S);
        %feature("autodoc", "1");
        void SetTransformation(gp_Ax2d const & FromSystem1, gp_Ax2d const & ToSystem2);
        %feature("autodoc", "1");
        void SetTransformation(gp_Ax2d const & ToSystem);
        %feature("autodoc", "1");
        void SetTranslation(gp_Vec2d const & V);
        %feature("autodoc", "1");
        void SetTranslation(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        void SetTranslationPart(gp_Vec2d const & V);
        %feature("autodoc", "1");
        void SetScaleFactor(Standard_Real const S);
        %feature("autodoc", "1");
        Standard_Boolean IsNegative() const;
        %feature("autodoc", "1");
        gp_TrsfForm Form() const;
        %feature("autodoc", "1");
        Standard_Real ScaleFactor() const;
        %feature("autodoc", "1");
        gp_XY const & TranslationPart() const;
        %feature("autodoc", "1");
        gp_Mat2d VectorialPart() const;
        %feature("autodoc", "1");
        gp_Mat2d const & HVectorialPart() const;
        %feature("autodoc", "1");
        Standard_Real RotationPart() const;
        %feature("autodoc", "1");
        Standard_Real Value(Standard_Integer const Row, Standard_Integer const Col) const;
        %feature("autodoc", "1");
        void Invert();
        %feature("autodoc", "1");
        gp_Trsf2d Inverted() const;
        %feature("autodoc", "1");
        gp_Trsf2d Multiplied(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        void Multiply(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        void PreMultiply(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        void Power(Standard_Integer const N);
        %feature("autodoc", "1");
        gp_Trsf2d Powered(Standard_Integer const N);
        %feature("autodoc", "1");
        void Transforms(Standard_Real & X, Standard_Real & Y) const;
        %feature("autodoc", "1");
        void Transforms(gp_XY & Coord) const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_Trsf2dscale() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Trsf2dscale(Standard_Real const p);
        %feature("autodoc", "1");
        gp_TrsfForm _CSFDB_Getgp_Trsf2dshape() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_Trsf2dshape(gp_TrsfForm const p);
        %feature("autodoc", "1");
        gp_Mat2d const & _CSFDB_Getgp_Trsf2dmatrix() const;
        %feature("autodoc", "1");
        gp_XY const & _CSFDB_Getgp_Trsf2dloc() const; 
};
//Var: Standard_Real scale
//Get: None
//Set: None
//Var: gp_TrsfForm shape
//Get: None
//Set: None
//Var: gp_Mat2d matrix
//Get: None
//Set: None
//Var: gp_XY loc
//Get: None
//Set: None
%feature("shadow") gp_Trsf2d::~gp_Trsf2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Trsf2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Vec;

class gp_Vec  {
    public:

        %feature("autodoc", "1");
        gp_Vec(gp_Vec const & arg0);
        %feature("autodoc", "1");
        gp_Vec();
        %feature("autodoc", "1");
        gp_Vec(gp_Dir const & V);
        %feature("autodoc", "1");
        gp_Vec(gp_XYZ const & Coord);
        %feature("autodoc", "1");
        gp_Vec(Standard_Real const Xv, Standard_Real const Yv, Standard_Real const Zv);
        %feature("autodoc", "1");
        gp_Vec(gp_Pnt const & P1, gp_Pnt const & P2);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const Index, Standard_Real const Xi);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const Xv, Standard_Real const Yv, Standard_Real const Zv);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetZ(Standard_Real const Z);
        %feature("autodoc", "1");
        void SetXYZ(gp_XYZ const & Coord);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & Xv, Standard_Real & Yv, Standard_Real & Zv) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        Standard_Real Z() const;
        %feature("autodoc", "1");
        gp_XYZ const & XYZ() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_Vec const & Other, Standard_Real const LinearTolerance, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsNormal(gp_Vec const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsOpposite(gp_Vec const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsParallel(gp_Vec const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Vec const & Other) const;
        %feature("autodoc", "1");
        Standard_Real AngleWithRef(gp_Vec const & Other, gp_Vec const & Vref) const;
        %feature("autodoc", "1");
        Standard_Real Magnitude() const;
        %feature("autodoc", "1");
        Standard_Real SquareMagnitude() const;
        %feature("autodoc", "1");
        void Add(gp_Vec const & Other);
        %feature("autodoc", "1");
        gp_Vec Added(gp_Vec const & Other) const;
        %feature("autodoc", "1");
        void Subtract(gp_Vec const & Right);
        %feature("autodoc", "1");
        gp_Vec Subtracted(gp_Vec const & Right) const;
        %feature("autodoc", "1");
        void Multiply(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_Vec Multiplied(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Divide(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_Vec Divided(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Cross(gp_Vec const & Right);
        %feature("autodoc", "1");
        gp_Vec Crossed(gp_Vec const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossMagnitude(gp_Vec const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossSquareMagnitude(gp_Vec const & Right) const;
        %feature("autodoc", "1");
        void CrossCross(gp_Vec const & V1, gp_Vec const & V2);
        %feature("autodoc", "1");
        gp_Vec CrossCrossed(gp_Vec const & V1, gp_Vec const & V2) const;
        %feature("autodoc", "1");
        Standard_Real Dot(gp_Vec const & Other) const;
        %feature("autodoc", "1");
        Standard_Real DotCross(gp_Vec const & V1, gp_Vec const & V2) const;
        %feature("autodoc", "1");
        void Normalize();
        %feature("autodoc", "1");
        gp_Vec Normalized() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Vec Reversed() const;
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_Vec const & V1, Standard_Real const A2, gp_Vec const & V2, Standard_Real const A3, gp_Vec const & V3, gp_Vec const & V4);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_Vec const & V1, Standard_Real const A2, gp_Vec const & V2, Standard_Real const A3, gp_Vec const & V3);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_Vec const & V1, Standard_Real const A2, gp_Vec const & V2, gp_Vec const & V3);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_Vec const & Left, Standard_Real const R, gp_Vec const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_Vec const & Left, gp_Vec const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(gp_Vec const & Left, gp_Vec const & Right);
        %feature("autodoc", "1");
        void Mirror(gp_Vec const & V);
        %feature("autodoc", "1");
        gp_Vec Mirrored(gp_Vec const & V) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax1 const & A1);
        %feature("autodoc", "1");
        gp_Vec Mirrored(gp_Ax1 const & A1) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2 const & A2);
        %feature("autodoc", "1");
        gp_Vec Mirrored(gp_Ax2 const & A2) const;
        %feature("autodoc", "1");
        void Rotate(gp_Ax1 const & A1, Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Vec Rotated(gp_Ax1 const & A1, Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(Standard_Real const S);
        %feature("autodoc", "1");
        gp_Vec Scaled(Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf const & T);
        %feature("autodoc", "1");
        gp_Vec Transformed(gp_Trsf const & T) const;
        %feature("autodoc", "1");
        gp_XYZ const & _CSFDB_Getgp_Veccoord() const; 
};
//Var: gp_XYZ coord
//Get: None
//Set: None
%feature("shadow") gp_Vec::~gp_Vec {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Vec {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_Vec2d;

class gp_Vec2d  {
    public:

        %feature("autodoc", "1");
        gp_Vec2d(gp_Vec2d const & arg0);
        %feature("autodoc", "1");
        gp_Vec2d();
        %feature("autodoc", "1");
        gp_Vec2d(gp_Dir2d const & V);
        %feature("autodoc", "1");
        gp_Vec2d(gp_XY const & Coord);
        %feature("autodoc", "1");
        gp_Vec2d(Standard_Real const Xv, Standard_Real const Yv);
        %feature("autodoc", "1");
        gp_Vec2d(gp_Pnt2d const & P1, gp_Pnt2d const & P2);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const Index, Standard_Real const Xi);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const Xv, Standard_Real const Yv);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetXY(gp_XY const & Coord);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const Index) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & Xv, Standard_Real & Yv) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        gp_XY const & XY() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_Vec2d const & Other, Standard_Real const LinearTolerance, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsNormal(gp_Vec2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsOpposite(gp_Vec2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Boolean IsParallel(gp_Vec2d const & Other, Standard_Real const AngularTolerance) const;
        %feature("autodoc", "1");
        Standard_Real Angle(gp_Vec2d const & Other) const;
        %feature("autodoc", "1");
        Standard_Real Magnitude() const;
        %feature("autodoc", "1");
        Standard_Real SquareMagnitude() const;
        %feature("autodoc", "1");
        void Add(gp_Vec2d const & Other);
        %feature("autodoc", "1");
        gp_Vec2d Added(gp_Vec2d const & Other) const;
        %feature("autodoc", "1");
        Standard_Real Crossed(gp_Vec2d const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossMagnitude(gp_Vec2d const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossSquareMagnitude(gp_Vec2d const & Right) const;
        %feature("autodoc", "1");
        void Divide(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_Vec2d Divided(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        Standard_Real Dot(gp_Vec2d const & Other) const;
        %feature("autodoc", "1");
        void Multiply(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_Vec2d Multiplied(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        void Normalize();
        %feature("autodoc", "1");
        gp_Vec2d Normalized() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_Vec2d Reversed() const;
        %feature("autodoc", "1");
        void Subtract(gp_Vec2d const & Right);
        %feature("autodoc", "1");
        gp_Vec2d Subtracted(gp_Vec2d const & Right) const;
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_Vec2d const & V1, Standard_Real const A2, gp_Vec2d const & V2, gp_Vec2d const & V3);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_Vec2d const & Left, Standard_Real const R, gp_Vec2d const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_Vec2d const & Left, gp_Vec2d const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(gp_Vec2d const & Left, gp_Vec2d const & Right);
        %feature("autodoc", "1");
        void Mirror(gp_Vec2d const & V);
        %feature("autodoc", "1");
        gp_Vec2d Mirrored(gp_Vec2d const & V) const;
        %feature("autodoc", "1");
        void Mirror(gp_Ax2d const & A1);
        %feature("autodoc", "1");
        gp_Vec2d Mirrored(gp_Ax2d const & A1) const;
        %feature("autodoc", "1");
        void Rotate(Standard_Real const Ang);
        %feature("autodoc", "1");
        gp_Vec2d Rotated(Standard_Real const Ang) const;
        %feature("autodoc", "1");
        void Scale(Standard_Real const S);
        %feature("autodoc", "1");
        gp_Vec2d Scaled(Standard_Real const S) const;
        %feature("autodoc", "1");
        void Transform(gp_Trsf2d const & T);
        %feature("autodoc", "1");
        gp_Vec2d Transformed(gp_Trsf2d const & T) const;
        %feature("autodoc", "1");
        gp_XY const & _CSFDB_Getgp_Vec2dcoord() const; 
};
//Var: gp_XY coord
//Get: None
//Set: None
%feature("shadow") gp_Vec2d::~gp_Vec2d {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_Vec2d {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_XY;

class gp_XY  {
    public:

        %feature("autodoc", "1");
        gp_XY(gp_XY const & arg0);
        %feature("autodoc", "1");
        gp_XY();
        %feature("autodoc", "1");
        gp_XY(Standard_Real const X, Standard_Real const Y);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const i, Standard_Real const X);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const X, Standard_Real const Y);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const i) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & X, Standard_Real & Y) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        Standard_Real Modulus() const;
        %feature("autodoc", "1");
        Standard_Real SquareModulus() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_XY const & Other, Standard_Real const Tolerance) const;
        %feature("autodoc", "1");
        void Add(gp_XY const & Other);
        %feature("autodoc", "1");
        gp_XY Added(gp_XY const & Other) const;
        %feature("autodoc", "1");
        Standard_Real Crossed(gp_XY const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossMagnitude(gp_XY const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossSquareMagnitude(gp_XY const & Right) const;
        %feature("autodoc", "1");
        void Divide(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_XY Divided(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        Standard_Real Dot(gp_XY const & Other) const;
        %feature("autodoc", "1");
        void Multiply(Standard_Real const Scalar);
        %feature("autodoc", "1");
        void Multiply(gp_XY const & Other);
        %feature("autodoc", "1");
        void Multiply(gp_Mat2d const & Matrix);
        %feature("autodoc", "1");
        gp_XY Multiplied(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        gp_XY Multiplied(gp_XY const & Other) const;
        %feature("autodoc", "1");
        gp_XY Multiplied(gp_Mat2d const & Matrix) const;
        %feature("autodoc", "1");
        void Normalize();
        %feature("autodoc", "1");
        gp_XY Normalized() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_XY Reversed() const;
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_XY const & Left, Standard_Real const R, gp_XY const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_XY const & XY1, Standard_Real const A2, gp_XY const & XY2, gp_XY const & XY3);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_XY const & Left, gp_XY const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(gp_XY const & Left, gp_XY const & Right);
        %feature("autodoc", "1");
        void Subtract(gp_XY const & Right);
        %feature("autodoc", "1");
        gp_XY Subtracted(gp_XY const & Right) const;
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_XYx() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_XYx(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_XYy() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_XYy(Standard_Real const p); 
};
//Var: Standard_Real x
//Get: None
//Set: None
//Var: Standard_Real y
//Get: None
//Set: None
%feature("shadow") gp_XY::~gp_XY {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_XY {
    void _kill_pointed() {
        delete self;
    }                    
};
   
%nodefaultctor gp_XYZ;

class gp_XYZ  {
    public:

        %feature("autodoc", "1");
        gp_XYZ(gp_XYZ const & arg0);
        %feature("autodoc", "1");
        gp_XYZ();
        %feature("autodoc", "1");
        gp_XYZ(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        void SetCoord(Standard_Real const X, Standard_Real const Y, Standard_Real const Z);
        %feature("autodoc", "1");
        void SetCoord(Standard_Integer const i, Standard_Real const X);
        %feature("autodoc", "1");
        void SetX(Standard_Real const X);
        %feature("autodoc", "1");
        void SetY(Standard_Real const Y);
        %feature("autodoc", "1");
        void SetZ(Standard_Real const Z);
        %feature("autodoc", "1");
        Standard_Real Coord(Standard_Integer const i) const;
        %feature("autodoc", "1");
        void Coord(Standard_Real & X, Standard_Real & Y, Standard_Real & Z) const;
        %feature("autodoc", "1");
        Standard_Real X() const;
        %feature("autodoc", "1");
        Standard_Real Y() const;
        %feature("autodoc", "1");
        Standard_Real Z() const;
        %feature("autodoc", "1");
        Standard_Real Modulus() const;
        %feature("autodoc", "1");
        Standard_Real SquareModulus() const;
        %feature("autodoc", "1");
        Standard_Boolean IsEqual(gp_XYZ const & Other, Standard_Real const Tolerance) const;
        %feature("autodoc", "1");
        void Add(gp_XYZ const & Other);
        %feature("autodoc", "1");
        gp_XYZ Added(gp_XYZ const & Other) const;
        %feature("autodoc", "1");
        void Cross(gp_XYZ const & Right);
        %feature("autodoc", "1");
        gp_XYZ Crossed(gp_XYZ const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossMagnitude(gp_XYZ const & Right) const;
        %feature("autodoc", "1");
        Standard_Real CrossSquareMagnitude(gp_XYZ const & Right) const;
        %feature("autodoc", "1");
        void CrossCross(gp_XYZ const & Coord1, gp_XYZ const & Coord2);
        %feature("autodoc", "1");
        gp_XYZ CrossCrossed(gp_XYZ const & Coord1, gp_XYZ const & Coord2) const;
        %feature("autodoc", "1");
        void Divide(Standard_Real const Scalar);
        %feature("autodoc", "1");
        gp_XYZ Divided(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        Standard_Real Dot(gp_XYZ const & Other) const;
        %feature("autodoc", "1");
        Standard_Real DotCross(gp_XYZ const & Coord1, gp_XYZ const & Coord2) const;
        %feature("autodoc", "1");
        void Multiply(Standard_Real const Scalar);
        %feature("autodoc", "1");
        void Multiply(gp_XYZ const & Other);
        %feature("autodoc", "1");
        void Multiply(gp_Mat const & Matrix);
        %feature("autodoc", "1");
        gp_XYZ Multiplied(Standard_Real const Scalar) const;
        %feature("autodoc", "1");
        gp_XYZ Multiplied(gp_XYZ const & Other) const;
        %feature("autodoc", "1");
        gp_XYZ Multiplied(gp_Mat const & Matrix) const;
        %feature("autodoc", "1");
        void Normalize();
        %feature("autodoc", "1");
        gp_XYZ Normalized() const;
        %feature("autodoc", "1");
        void Reverse();
        %feature("autodoc", "1");
        gp_XYZ Reversed() const;
        %feature("autodoc", "1");
        void Subtract(gp_XYZ const & Right);
        %feature("autodoc", "1");
        gp_XYZ Subtracted(gp_XYZ const & Right) const;
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_XYZ const & XYZ1, Standard_Real const A2, gp_XYZ const & XYZ2, Standard_Real const A3, gp_XYZ const & XYZ3, gp_XYZ const & XYZ4);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_XYZ const & XYZ1, Standard_Real const A2, gp_XYZ const & XYZ2, Standard_Real const A3, gp_XYZ const & XYZ3);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const A1, gp_XYZ const & XYZ1, Standard_Real const A2, gp_XYZ const & XYZ2, gp_XYZ const & XYZ3);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_XYZ const & Left, Standard_Real const R, gp_XYZ const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(Standard_Real const L, gp_XYZ const & Left, gp_XYZ const & Right);
        %feature("autodoc", "1");
        void SetLinearForm(gp_XYZ const & Left, gp_XYZ const & Right);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_XYZx() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_XYZx(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_XYZy() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_XYZy(Standard_Real const p);
        %feature("autodoc", "1");
        Standard_Real _CSFDB_Getgp_XYZz() const;
        %feature("autodoc", "1");
        void _CSFDB_Setgp_XYZz(Standard_Real const p); 
};
//Var: Standard_Real x
//Get: None
//Set: None
//Var: Standard_Real y
//Get: None
//Set: None
//Var: Standard_Real z
//Get: None
//Set: None
%feature("shadow") gp_XYZ::~gp_XYZ {
    def __del__(self):
        try:
            self.thisown = False
            GarbageCollector.garbage.collect_object(self)
        except:
            pass

};
%extend gp_XYZ {
    void _kill_pointed() {
        delete self;
    }                    
};