:class:`Geom_BSplineSurface`---Describes a BSpline surface.
===========================================================
Describes a BSpline surface.



In each parametric direction, a BSpline surface can be: 

- uniform or non-uniform, 
- rational or non-rational, 
- periodic or non-periodic.
  

A BSpline surface is defined by: 

- its degrees, in the u and v parametric directions, 
- its periodic characteristic, in the u and v parametric directions, 
- a table of poles, also called control points (together 
  with the associated weights if the surface is rational), and 
- a table of knots, together with the associated multiplicities.
  

The degree of a :class:`Geom_BSplineSurface` is limited to 
a value (25) which is defined and controlled by the 
system. This value is returned by the function :meth:`MaxDegree`. 
:meth:`Poles` and :meth:`Weights` 
:meth:`Poles` and :meth:`Weights` are manipulated using two associative double arrays: 

- the poles table, which is a double array of :class:`gp_Pnt` points, and 
- the weights table, which is a double array of reals.
  

The bounds of the poles and weights arrays are: 

- 1 and :meth:`NbUPoles` for the row bounds (provided 
  that the BSpline surface is not periodic in the u 
  parametric direction), where :meth:`NbUPoles` is the 
  number of poles of the surface in the u parametric direction, and 
- 1 and :meth:`NbVPoles` for the column bounds (provided 
  that the BSpline surface is not periodic in the v 
  parametric direction), where :meth:`NbVPoles` is the 
  number of poles of the surface in the v parametric direction.
  

The poles of the surface are the points used to shape 
and reshape the surface. They comprise a rectangular network.



If the surface is not periodic: 

- The points (1, 1), (NbUPoles, 1), (1, 
  NbVPoles), and (NbUPoles, NbVPoles) 
  are the four parametric *corners* of the surface. 
- The first column of poles and the last column of 
  poles define two BSpline curves which delimit the 
  surface in the v parametric direction. These are the 
  v isoparametric curves corresponding to the two 
  bounds of the v parameter. 
- The first row of poles and the last row of poles 
  define two BSpline curves which delimit the surface 
  in the u parametric direction. These are the u 
  isoparametric curves corresponding to the two bounds of the u parameter.
  

If the surface is periodic, these geometric properties are not verified.



It is more difficult to define a geometrical significance 
for the weights. However they are useful for 
representing a quadric surface precisely. Moreover, if 
the weights of all the poles are equal, the surface has 
a polynomial equation, and hence is a *non-rational surface*.



The non-rational surface is a special, but frequently 
used, case, where all poles have identical weights.



The weights are defined and used only in the case of 
a rational surface. The rational characteristic is 
defined in each parametric direction. A surface can be 
rational in the u parametric direction, and 
non-rational in the v parametric direction.



Knots and Multiplicities 
For a :class:`Geom_BSplineSurface` the table of knots is 
made up of two increasing sequences of reals, without 
repetition, one for each parametric direction. The 
multiplicities define the repetition of the knots.



A BSpline surface comprises multiple contiguous 
patches, which are themselves polynomial or rational 
surfaces. The knots are the parameters of the 
isoparametric curves which limit these contiguous 
patches. The multiplicity of a knot on a BSpline 
surface (in a given parametric direction) is related to 
the degree of continuity of the surface at that knot in 
that parametric direction: 
Degree of continuity at knot(i) = Degree - Multi(i) where: 

- Degree is the degree of the BSpline surface in 
  the given parametric direction, and 
- Multi(i) is the multiplicity of knot number i in 
  the given parametric direction.
  

There are some special cases, where the knots are 
regularly spaced in one parametric direction (i.e. the 
difference between two consecutive knots is a constant). 

- *Uniform*: all the multiplicities are equal to 1. 
- *Quasi-uniform*: all the multiplicities are equal to 1, 
  except for the first and last knots in this parametric 
  direction, and these are equal to Degree + 1. 
- *Piecewise Bezier*: all the multiplicities are equal to 
  Degree except for the first and last knots, which 
  are equal to Degree + 1. This surface is a 
  concatenation of Bezier patches in the given 
  parametric direction.
  

If the BSpline surface is not periodic in a given 
parametric direction, the bounds of the knots and 
multiplicities tables are 1 and NbKnots, where 
NbKnots is the number of knots of the BSpline 
surface in that parametric direction.



If the BSpline surface is periodic in a given parametric 
direction, and there are k periodic knots and p 
periodic poles in that parametric direction: 

- the period is such that: 
  period = Knot(k+1) - Knot(1), and 
- the poles and knots tables in that parametric 
  direction can be considered as infinite tables, such that: 
  Knot(i+k) = Knot(i) + period, and 
  Pole(i+p) = Pole(i.
  

Note: The data structure tables for a periodic BSpline 
surface are more complex than those of a non-periodic one.



References : 

1. A survey of curve and surface methods in CADG Wolfgang BOHM 
   CAGD 1 (1984) 
2. On de Boor-like algorithms and blossoming Wolfgang BOEHM 
   cagd 5 (1988) 
3. Blossoming and knot insertion algorithms for B-spline curves 
   Ronald N. GOLDMAN 
4. Modelisation des surfaces en CAO, Henri GIAUME Peugeot SA 
5. Curves and Surfaces for Computer Aided Geometric Design, 
   a practical guide Gerald Farin 

.. class::Geom_BSplineSurface

.. method:: Bounds(U1,U2,V1,V2)
   
      :param U1:
      :type U1: :class:`Standard_Real`
      :param U2:
      :type U2: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`Standard_Real`
      :param V2:
      :type V2: :class:`Standard_Real`
   
      Returns the parametric bounds of the surface.
      
      
      
      .. warning::
         These parametric values are the bounds of the array of 
         knots :meth:`UKnots` and :meth:`VKnots` only if the first knots and the 
         last knots have a multiplicity equal to :meth:`UDegree` + 1 or 
         :meth:`VDegree` + 1 
         
         

   .. method:: CheckAndSegment(U1,U2,V1,V2)
   
      :param U1:
      :type U1: :class:`Standard_Real`
      :param U2:
      :type U2: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`Standard_Real`
      :param V2:
      :type V2: :class:`Standard_Real`
   
      Substitutes the :meth:`UKnots` of range UIndex with K.
      
      
      
      Raised if UIndex < 1 or UIndex > :meth:`NbUKnots` 
      Raised if K >= UKnots(UIndex+1) or K <= UKnots(UIndex-1) 
      
      

   .. method:: Continuity()
   
      :rtype: :class:`GeomAbs_Shape`
   
      Returns the continuity of the surface : 
      C0 : only geometric continuity, 
      C1 : continuity of the first derivative all along the Surface, 
      C2 : continuity of the second derivative all along the Surface, 
      C3 : continuity of the third derivative all along the Surface, 
      CN : the order of continuity is infinite.
      
      
      
      A B-spline surface is infinitely continuously differentiable 
      for the couple of parameters U, V such thats U != UKnots(i) 
      and V != VKnots(i). The continuity of the surface at a knot 
      value depends on the multiplicity of this knot.
      
      
      
      Example : 
      If the surface is C1 in the V direction and C2 in the U 
      direction this function returns Shape = C1. 
      
      

   .. method:: Copy()
   
      :rtype: :class:`Handle_Geom_Geometry`
   
      Creates a new object which is a copy of this BSpline surface. 
      
      

   .. method:: D0(U,V,P)
   
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
      :param P:
      :type P: :class:`gp_Pnt`
   
      
      
      

   .. method:: D1(U,V,P,D1U,D1V)
   
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
      :param P:
      :type P: :class:`gp_Pnt`
      :param D1U:
      :type D1U: :class:`gp_Vec`
      :param D1V:
      :type D1V: :class:`gp_Vec`
   
      Raised if the continuity of the surface is not C1. 
      
      

   .. method:: D2(D1U,D1V,D2U,D2UV,D2V,P,U,V)
   
      :param D1U:
      :type D1U: :class:`gp_Vec`
      :param D1V:
      :type D1V: :class:`gp_Vec`
      :param D2U:
      :type D2U: :class:`gp_Vec`
      :param D2UV:
      :type D2UV: :class:`gp_Vec`
      :param D2V:
      :type D2V: :class:`gp_Vec`
      :param P:
      :type P: :class:`gp_Pnt`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      Raised if the continuity of the surface is not C2. 
      
      

   .. method:: D3(D1U,D1V,D2U,D2UV,D2V,D3U,D3UUV,D3UVV,D3V,P,U,V)
   
      :param D1U:
      :type D1U: :class:`gp_Vec`
      :param D1V:
      :type D1V: :class:`gp_Vec`
      :param D2U:
      :type D2U: :class:`gp_Vec`
      :param D2UV:
      :type D2UV: :class:`gp_Vec`
      :param D2V:
      :type D2V: :class:`gp_Vec`
      :param D3U:
      :type D3U: :class:`gp_Vec`
      :param D3UUV:
      :type D3UUV: :class:`gp_Vec`
      :param D3UVV:
      :type D3UVV: :class:`gp_Vec`
      :param D3V:
      :type D3V: :class:`gp_Vec`
      :param P:
      :type P: :class:`gp_Pnt`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      Raised if the continuity of the surface is not C3. 
      
      

   .. method:: DN(Nu,Nv,U,V)
   
      :param Nu:
      :type Nu: :class:`Standard_Integer`
      :param Nv:
      :type Nv: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
      :rtype: :class:`gp_Vec`
   
      Nu is the order of derivation in the U parametric direction and 
      Nv is the order of derivation in the V parametric direction.
      
      
      
      Raised if the continuity of the surface is not CNu in the U 
      direction and CNv in the V direction.
      
      
      
      Raised if Nu + Nv < 1 or Nu < 0 or Nv < 0.
      
      
      
      The following functions computes the point for the 
      parametric values (U, V) and the derivatives at 
      this point on the B-spline surface patch delimited 
      with the knots FromUK1, FromVK1 and the knots ToUK2, 
      ToVK2.  (U, V) can be out of these parametric bounds 
      but for the computation we only use the definition 
      of the surface between these knots. This method is 
      useful to compute local derivative, if the order of 
      continuity of the whole surface is not greater enough.
      
      
      
      Inside the parametric knot's domain previously defined 
      the evaluations are the same as if we consider the whole 
      definition of the surface. Of course the evaluations are 
      different outside this parametric domain. 
      
      

   .. method:: DynamicType()
   
      :rtype: :class:`Handle_Standard_Type`
   
      
      
      

   .. method:: ExchangeUV()
   
      Exchanges the u and v parametric directions on 
      this BSpline surface.
      
      
      
      As a consequence: 
      
      - the poles and weights tables are transposed, 
      - the knots and multiplicities tables are exchanged, 
      - degrees of continuity, and rational, periodic and 
        uniform characteristics are exchanged, and 
      - the orientation of the surface is inverted. 
        

   .. method:: FirstUKnotIndex()
   
      :rtype: :class:`Standard_Integer`
   
      Computes the Index of the :meth:`UKnots` which gives the first 
      parametric value of the surface in the U direction.
      
      
      
      The :meth:`UIso` curve corresponding to this value is a 
      boundary curve of the surface. 
      
      

   .. method:: FirstVKnotIndex()
   
      :rtype: :class:`Standard_Integer`
   
      Computes the Index of the :meth:`VKnots` which gives the 
      first parametric value of the surface in the V direction.
      
      
      
      The :meth:`VIso` curve corresponding to this knot is a boundary 
      curve of the surface. 
      
      

   .. method:: IncreaseDegree(UDegree,VDegree)
   
      :param UDegree:
      :type UDegree: :class:`Standard_Integer`
      :param VDegree:
      :type VDegree: :class:`Standard_Integer`
   
      Increases the degrees of this BSpline surface to 
      :meth:`UDegree` and :meth:`VDegree` in the u and v parametric 
      directions respectively. As a result, the tables of poles, 
      weights and multiplicities are modified. The tables of 
      knots is not changed.
      
      
      
      Note: Nothing is done if the given degree is less than 
      or equal to the current degree in the corresponding 
      parametric direction.
      
      
      
      Exceptions 
      :class:`Standard_ConstructionError` if :meth:`UDegree` or 
      :meth:`VDegree` is greater than 
      :meth:`Geom_BSplineSurface.MaxDegree()`. 
      
      

   .. method:: IncrementUMultiplicity(FromI1,Step,ToI2)
   
      :param FromI1:
      :type FromI1: :class:`Standard_Integer`
      :param Step:
      :type Step: :class:`Standard_Integer`
      :param ToI2:
      :type ToI2: :class:`Standard_Integer`
   
      Increases until order M the multiplicity of the set of knots 
      FromI1,...., ToI2 in the V direction. This method can be used to 
      make a BSplineSurface into a PiecewiseBezier B_spline 
      surface. If ``me`` was uniform, it can become non-uniform.
      
      
      
      Raised if FromI1 or ToI2 is out of the range [:meth:`FirstVKnotIndex`, 
      :meth:`LastVKnotIndex`] given by the methods with the same name.
      
      
      
      M should be greater than the previous multiplicity of the 
      all the knots FromI1,..., ToI2 and lower or equal to the 
      Degree of the surface in the V parametric direction. 
      
      

   .. method:: IncrementVMultiplicity(FromI1,Step,ToI2)
   
      :param FromI1:
      :type FromI1: :class:`Standard_Integer`
      :param Step:
      :type Step: :class:`Standard_Integer`
      :param ToI2:
      :type ToI2: :class:`Standard_Integer`
   
      Increments the multiplicity of the consecutives vknots FromI1..ToI2 
      by step.  The multiplicity of each knot FromI1,.....,ToI2 must be 
      lower or equal to the :meth:`VDegree` of the B_spline.
      
      
      
      Raised if FromI1 or ToI2 is not in the range 
      [:meth:`FirstVKnotIndex`, :meth:`LastVKnotIndex`] 
      Raised if one knot has a multiplicity greater than :meth:`VDegree`. 
      
      

   .. method:: InsertUKnot(Add,M,ParametricTolerance,U)
   
      :param Add:
      :type Add: :class:`Standard_Boolean`
      :param M:
      :type M: :class:`Standard_Integer`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
      :param U:
      :type U: :class:`Standard_Real`
   
      Inserts a knot value in the sequence of :meth:`UKnots`. If U is a knot 
      value this method increases the multiplicity of the knot if the 
      previous multiplicity was lower than M else it does nothing. The 
      tolerance criterion is ParametricTolerance. ParametricTolerance 
      should be greater or equal than :meth:`Resolution` from package gp.
      
      
      
      Raised if U is out of the bounds [U1, U2] given by the methods 
      :meth:`Bounds`, the criterion ParametricTolerance is used.
      
      
      
      Raised if M is not in the range [1, :meth:`UDegree`]. 
      
      

   .. method:: InsertUKnots(Add,Knots,Mults,ParametricTolerance)
   
      :param Add:
      :type Add: :class:`Standard_Boolean`
      :param Knots:
      :type Knots: :class:`TColStd_Array1OfReal`
      :param Mults:
      :type Mults: :class:`TColStd_Array1OfInteger`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
   
      
      
      

   .. method:: InsertVKnot(Add,M,ParametricTolerance,V)
   
      :param Add:
      :type Add: :class:`Standard_Boolean`
      :param M:
      :type M: :class:`Standard_Integer`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      Inserts a knot value in the sequence of :meth:`VKnots`. If V is a knot 
      value this method increases the multiplicity of the knot if the 
      previous multiplicity was lower than M otherwise it does nothing.
      
      
      
      The tolerance criterion is ParametricTolerance.
      
      
      
      ParametricTolerance should be greater or equal than :meth:`Resolution` 
      from package gp. 
      raises if V is out of the :meth:`Bounds` [V1, V2] given by the methods 
      :meth:`Bounds`, the criterion ParametricTolerance is used. 
      raises if M is not in the range [1, :meth:`VDegree`]. 
      
      

   .. method:: InsertVKnots(Add,Knots,Mults,ParametricTolerance)
   
      :param Add:
      :type Add: :class:`Standard_Boolean`
      :param Knots:
      :type Knots: :class:`TColStd_Array1OfReal`
      :param Mults:
      :type Mults: :class:`TColStd_Array1OfInteger`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
   
      Inserts into the knots table for the corresponding 
      parametric direction of this BSpline surface: 
      
      - the value U, or V, with the multiplicity M (defaulted to 1), or 
      - the values of the array Knots, with their respective 
        multiplicities, Mults.
        
      
      If the knot value to insert already exists in the table, its multiplicity is: 
      
      - increased by M, if Add is true (the default), or 
      - increased to M, if Add is false.
        
      
      The tolerance criterion used to check the equality of 
      the knots is the larger of the values ParametricTolerance and 
      Standard_Real::Epsilon(val), where val is the knot value to be inserted.
      
      
      
      .. warning::
         
         - If a given multiplicity coefficient is null, or negative, nothing is done. 
         - The new multiplicity of a knot is limited to the degree of this BSpline surface in the 
           corresponding parametric direction.
           
      
      Exceptions 
      :class:`Standard_ConstructionError` if a knot value to 
      insert is outside the bounds of this BSpline surface in 
      the specified parametric direction. The comparison 
      uses the precision criterion ParametricTolerance. 
      
      

   .. method:: InvalidateCache()
   
      Invalidates the cache. This has to be private this has to be private 
      
      

   .. method:: IsCNu(N)
   
      :param N:
      :type N: :class:`Standard_Integer`
      :rtype: :class:`Standard_Boolean`
   
      Returns True if the order of continuity of the surface in the 
      U direction  is N.  Raised if N < 0. 
      
      

   .. method:: IsCNv(N)
   
      :param N:
      :type N: :class:`Standard_Integer`
      :rtype: :class:`Standard_Boolean`
   
      Returns True if the order of continuity of the surface 
      in the V direction  is N.  Raised if N < 0. 
      
      

   .. method:: IsCacheValid(UParameter,VParameter)
   
      :param UParameter:
      :type UParameter: :class:`Standard_Real`
      :param VParameter:
      :type VParameter: :class:`Standard_Real`
      :rtype: :class:`Standard_Boolean`
   
      Tells whether the Cache is valid for the 
      given parameter 
      Warnings : the parameter must be normalized within 
      the period if the curve is periodic. Otherwise 
      the answer will be false 
      
      
      

   .. method:: IsUClosed()
   
      :rtype: :class:`Standard_Boolean`
   
      Returns true if the first control points row and the last 
      control points row are identical. The tolerance criterion 
      is :meth:`Resolution` from package gp. 
      
      

   .. method:: IsUPeriodic()
   
      :rtype: :class:`Standard_Boolean`
   
      Returns True if the surface is closed in the U direction 
      and if the B-spline has been turned into a periodic surface 
      using the function :meth:`SetUPeriodic`. 
      
      

   .. method:: IsURational()
   
      :rtype: :class:`Standard_Boolean`
   
      Returns False if for each row of weights all the weights 
      are identical.
      
      
      
      The tolerance criterion is resolution from package gp.
      
      
      
      Example : 
      |1.0, 1.0, 1.0| 
      if :meth:`Weights` =  |0.5, 0.5, 0.5|   returns False 
      |2.0, 2.0, 2.0| 
      
      

   .. method:: IsVClosed()
   
      :rtype: :class:`Standard_Boolean`
   
      Returns true if the first control points column and the 
      last last control points column are identical.
      
      
      
      The tolerance criterion is :meth:`Resolution` from package gp. 
      
      

   .. method:: IsVPeriodic()
   
      :rtype: :class:`Standard_Boolean`
   
      Returns True if the surface is closed in the V direction 
      and if the B-spline has been turned into a periodic 
      surface using the function :meth:`SetVPeriodic`. 
      
      

   .. method:: IsVRational()
   
      :rtype: :class:`Standard_Boolean`
   
      Returns False if for each column of weights all the weights 
      are identical.
      
      
      
      The tolerance criterion is resolution from package gp.
      
      
      
      Examples : 
      |1.0, 2.0, 0.5| 
      if :meth:`Weights` =  |1.0, 2.0, 0.5|   returns False 
      |1.0, 2.0, 0.5| 
      
      

   .. method:: LastUKnotIndex()
   
      :rtype: :class:`Standard_Integer`
   
      Computes the Index of the :meth:`UKnots` which gives the 
      last parametric value of the surface in the U direction.
      
      
      
      The :meth:`UIso` curve corresponding to this knot is a boundary 
      curve of the surface. 
      
      

   .. method:: LastVKnotIndex()
   
      :rtype: :class:`Standard_Integer`
   
      Computes the Index of the :meth:`VKnots` which gives the 
      last parametric value of the surface in the V direction.
      
      
      
      The :meth:`VIso` curve corresponding to this knot is a 
      boundary curve of the surface. 
      
      

   .. method:: LocalD0(FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)
   
      :param FromUK1:
      :type FromUK1: :class:`Standard_Integer`
      :param FromVK1:
      :type FromVK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToUK2:
      :type ToUK2: :class:`Standard_Integer`
      :param ToVK2:
      :type ToVK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
      
      
      
      Raised if FromUK1, ToUK2 are not in the range [:meth:`FirstUKnotIndex`, 
      :meth:`LastUKnotIndex`] or if FromVK1, ToVK2 are not in the range 
      [:meth:`FirstVKnotIndex`, :meth:`LastVKnotIndex`] 
      
      

   .. method:: LocalD1(D1U,D1V,FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)
   
      :param D1U:
      :type D1U: :class:`gp_Vec`
      :param D1V:
      :type D1V: :class:`gp_Vec`
      :param FromUK1:
      :type FromUK1: :class:`Standard_Integer`
      :param FromVK1:
      :type FromVK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToUK2:
      :type ToUK2: :class:`Standard_Integer`
      :param ToVK2:
      :type ToVK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      Raised if the local continuity of the surface is not C1 
      between the knots FromUK1, ToUK2 and FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
      
      
      
      Raised if FromUK1, ToUK2 are not in the range [:meth:`FirstUKnotIndex`, 
      :meth:`LastUKnotIndex`] or if FromVK1, ToVK2 are not in the range 
      [:meth:`FirstVKnotIndex`, :meth:`LastVKnotIndex`] 
      
      

   .. method:: LocalD2(D1U,D1V,D2U,D2UV,D2V,FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)
   
      :param D1U:
      :type D1U: :class:`gp_Vec`
      :param D1V:
      :type D1V: :class:`gp_Vec`
      :param D2U:
      :type D2U: :class:`gp_Vec`
      :param D2UV:
      :type D2UV: :class:`gp_Vec`
      :param D2V:
      :type D2V: :class:`gp_Vec`
      :param FromUK1:
      :type FromUK1: :class:`Standard_Integer`
      :param FromVK1:
      :type FromVK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToUK2:
      :type ToUK2: :class:`Standard_Integer`
      :param ToVK2:
      :type ToVK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      Raised if the local continuity of the surface is not C2 
      between the knots FromUK1, ToUK2 and FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
      
      
      
      Raised if FromUK1, ToUK2 are not in the range [:meth:`FirstUKnotIndex`, 
      :meth:`LastUKnotIndex`] or if FromVK1, ToVK2 are not in the range 
      [:meth:`FirstVKnotIndex`, :meth:`LastVKnotIndex`] 
      
      

   .. method:: LocalD3(D1U,D1V,D2U,D2UV,D2V,D3U,D3UUV,D3UVV,D3V,FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)
   
      :param D1U:
      :type D1U: :class:`gp_Vec`
      :param D1V:
      :type D1V: :class:`gp_Vec`
      :param D2U:
      :type D2U: :class:`gp_Vec`
      :param D2UV:
      :type D2UV: :class:`gp_Vec`
      :param D2V:
      :type D2V: :class:`gp_Vec`
      :param D3U:
      :type D3U: :class:`gp_Vec`
      :param D3UUV:
      :type D3UUV: :class:`gp_Vec`
      :param D3UVV:
      :type D3UVV: :class:`gp_Vec`
      :param D3V:
      :type D3V: :class:`gp_Vec`
      :param FromUK1:
      :type FromUK1: :class:`Standard_Integer`
      :param FromVK1:
      :type FromVK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToUK2:
      :type ToUK2: :class:`Standard_Integer`
      :param ToVK2:
      :type ToVK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      Raised if the local continuity of the surface is not C3 
      between the knots FromUK1, ToUK2 and FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
      
      
      
      Raised if FromUK1, ToUK2 are not in the range [:meth:`FirstUKnotIndex`, 
      :meth:`LastUKnotIndex`] or if FromVK1, ToVK2 are not in the range 
      [:meth:`FirstVKnotIndex`, :meth:`LastVKnotIndex`] 
      
      

   .. method:: LocalDN(FromUK1,FromVK1,Nu,Nv,ToUK2,ToVK2,U,V)
   
      :param FromUK1:
      :type FromUK1: :class:`Standard_Integer`
      :param FromVK1:
      :type FromVK1: :class:`Standard_Integer`
      :param Nu:
      :type Nu: :class:`Standard_Integer`
      :param Nv:
      :type Nv: :class:`Standard_Integer`
      :param ToUK2:
      :type ToUK2: :class:`Standard_Integer`
      :param ToVK2:
      :type ToVK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
      :rtype: :class:`gp_Vec`
   
      Raised if the local continuity of the surface is not CNu 
      between the knots FromUK1, ToUK2 and CNv between the knots 
      FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
      
      
      
      Raised if FromUK1, ToUK2 are not in the range [:meth:`FirstUKnotIndex`, 
      :meth:`LastUKnotIndex`] or if FromVK1, ToVK2 are not in the range 
      [:meth:`FirstVKnotIndex`, :meth:`LastVKnotIndex`] 
      
      

   .. method:: LocalValue(FromUK1,FromVK1,ToUK2,ToVK2,U,V)
   
      :param FromUK1:
      :type FromUK1: :class:`Standard_Integer`
      :param FromVK1:
      :type FromVK1: :class:`Standard_Integer`
      :param ToUK2:
      :type ToUK2: :class:`Standard_Integer`
      :param ToVK2:
      :type ToVK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
      :rtype: :class:`gp_Pnt`
   
      Computes the V isoparametric curve.
      
      
      
      If CheckRational=False, no try to make it non-rational.
      
      
      
      A B-spline curve is returned.  transformations 
      
      

   .. method:: LocateU(I1,I2,ParametricTolerance,U,WithKnotRepetition)
   
      :param I1:
      :type I1: :class:`Standard_Integer`
      :param I2:
      :type I2: :class:`Standard_Integer`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
      :param U:
      :type U: :class:`Standard_Real`
      :param WithKnotRepetition:
      :type WithKnotRepetition: :class:`Standard_Boolean`
   
      Locates the parametric value U in the sequence of :meth:`UKnots`.
      
      
      
      If *WithKnotRepetition* is True we consider the knot's 
      representation with repetition of multiple knot value, 
      otherwise  we consider the knot's representation with 
      no repetition of multiple knot values. 
      :meth:`UKnots` (I1) <= U <= :meth:`UKnots` (I2) 
      
      1. if I1 = I2  U is a knot value (the tolerance criterion 
         ParametricTolerance is used). 
      2. if I1 < 1  => U < UKnots(1) - Abs(ParametricTolerance) 
      3. if I2 > :meth:`NbUKnots` => U > UKnots(NbUKnots)+Abs(ParametricTolerance) 
      

   .. method:: LocateV(I1,I2,ParametricTolerance,V,WithKnotRepetition)
   
      :param I1:
      :type I1: :class:`Standard_Integer`
      :param I2:
      :type I2: :class:`Standard_Integer`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
      :param WithKnotRepetition:
      :type WithKnotRepetition: :class:`Standard_Boolean`
   
      Changes a row of poles or a part of this row.  Raised if Uindex < 1 or UIndex > :meth:`NbUPoles`.
      
      
      
      Raised if CPoles.Lower() < 1 or CPoles.Upper() > :meth:`NbVPoles`. 
      
      

   .. method:: MaxDegree()
   
      :rtype: :class:`Standard_Integer`
   
      Returns the value of the maximum degree of the normalized 
      B-spline basis functions in the u and v directions. 
      
      

   .. method:: MovePoint(U,V,P,UIndex1,UIndex2,VIndex1,VIndex2,UFirstIndex,ULastIndex,VFirstIndex,VLastIndex)
   
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
      :param P:
      :type P: :class:`gp_Pnt`
      :param UIndex1:
      :type UIndex1: :class:`Standard_Integer`
      :param UIndex2:
      :type UIndex2: :class:`Standard_Integer`
      :param VIndex1:
      :type VIndex1: :class:`Standard_Integer`
      :param VIndex2:
      :type VIndex2: :class:`Standard_Integer`
      :param UFirstIndex:
      :type UFirstIndex: :class:`Standard_Integer`
      :param ULastIndex:
      :type ULastIndex: :class:`Standard_Integer`
      :param VFirstIndex:
      :type VFirstIndex: :class:`Standard_Integer`
      :param VLastIndex:
      :type VLastIndex: :class:`Standard_Integer`
   
      Move a point with parameter U and V to P. 
      given u,v  as parameters)  to  reach a  new position 
      UIndex1, UIndex2, VIndex1, VIndex2: 
      indicates the poles which can be moved 
      if Problem in BSplineBasis calculation, no change 
      for the curve and 
      UFirstIndex, VLastIndex = 0 
      VFirstIndex, VLastIndex = 0 
      Raised if UIndex1 < UIndex2 or VIndex1 < VIndex2 or 
      UIndex1 < 1 || UIndex1 > :meth:`NbUPoles` or 
      UIndex2 < 1 || UIndex2 > :meth:`NbUPoles` 
      VIndex1 < 1 || VIndex1 > :meth:`NbVPoles` or 
      VIndex2 < 1 || VIndex2 > :meth:`NbVPoles`  characteristics of the surface 
      
      

   .. method:: NbUKnots()
   
      :rtype: :class:`Standard_Integer`
   
      Returns the number of knots in the U direction. 
      
      

   .. method:: NbUPoles()
   
      :rtype: :class:`Standard_Integer`
   
      Returns number of poles in the U direction. 
      
      

   .. method:: NbVKnots()
   
      :rtype: :class:`Standard_Integer`
   
      Returns the number of knots in the V direction. 
      
      

   .. method:: NbVPoles()
   
      :rtype: :class:`Standard_Integer`
   
      Returns the number of poles in the V direction. 
      
      

   .. method:: PeriodicNormalization(U,V)
   
      :param U:
      :type U: :class:`Standard_Real`
      :param V:
      :type V: :class:`Standard_Real`
   
      returns the parameter normalized within 
      the period if the surface is periodic : otherwise 
      does not do anything 
      
      

   .. method:: Pole(UIndex,VIndex)
   
      :param UIndex:
      :type UIndex: :class:`Standard_Integer`
      :param VIndex:
      :type VIndex: :class:`Standard_Integer`
      :rtype: :class:`gp_Pnt`
   
      Returns the pole of range (UIndex, VIndex).
      
      
      
      Raised if UIndex < 1 or UIndex > :meth:`NbUPoles` or VIndex < 1 or 
      VIndex > :meth:`NbVPoles`. 
      
      

   .. method:: Poles(P)
   
      :param P:
      :type P: :class:`TColgp_Array2OfPnt`
   
      Returns the poles of the B-spline surface.
      
      
      
      Raised if the length of P in the U and V direction 
      is not equal to NbUpoles and :meth:`NbVPoles`. 
      
      

   .. method:: RemoveUKnot(Index,M,Tolerance)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :param M:
      :type M: :class:`Standard_Integer`
      :param Tolerance:
      :type Tolerance: :class:`Standard_Real`
      :rtype: :class:`Standard_Boolean`
   
      
      
      

   .. method:: RemoveVKnot(Index,M,Tolerance)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :param M:
      :type M: :class:`Standard_Integer`
      :param Tolerance:
      :type Tolerance: :class:`Standard_Real`
      :rtype: :class:`Standard_Boolean`
   
      Increases until order M the multiplicity of the set of knots 
      FromI1,...., ToI2 in the U direction. This method can be used 
      to make a B_spline surface into a PiecewiseBezier B_spline 
      surface.
      
      
      
      If ``me`` was uniform, it can become non uniform.
      
      
      
      Raised if FromI1 or ToI2 is out of the range [:meth:`FirstUKnotIndex`, 
      :meth:`LastUKnotIndex`].
      
      
      
      M should be greater than the previous multiplicity of the 
      all the knots FromI1,..., ToI2 and lower or equal to the 
      Degree of the surface in the U parametric direction. 
      
      

   .. method:: Resolution(Tolerance3D,UTolerance,VTolerance)
   
      :param Tolerance3D:
      :type Tolerance3D: :class:`Standard_Real`
      :param UTolerance:
      :type UTolerance: :class:`Standard_Real`
      :param VTolerance:
      :type VTolerance: :class:`Standard_Real`
   
      Computes two tolerance values for this BSpline 
      surface, based on the given tolerance in 3D space 
      Tolerance3D. The tolerances computed are: 
      
      - UTolerance in the u parametric direction, and 
      - VTolerance in the v parametric direction.
        
      
      If f(u,v) is the equation of this BSpline surface, 
      UTolerance and VTolerance guarantee that : 
      | u1 - u0 | < UTolerance and 
      | v1 - v0 | < VTolerance 
      ====> |f (u1,v1) - f (u0,v0)| < Tolerance3D 
      
      

   .. method:: Segment(U1,U2,V1,V2)
   
      :param U1:
      :type U1: :class:`Standard_Real`
      :param U2:
      :type U2: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`Standard_Real`
      :param V2:
      :type V2: :class:`Standard_Real`
   
      Segments the surface between U1 and U2 in the U-Direction. 
      between V1 and V2 in the V-Direction.
      
      
      
      The control points are modified, the first and the last point 
      are not the same.
      
      
      
      .. warning::
         Even if ``me`` is not closed it can become closed after the 
         segmentation for example if U1 or U2 are out of the bounds 
         of the surface ``me`` or if the surface makes loop.  raises if U2 < U1 or V2 < V1 
         
         

   .. method:: SetUKnots(UK)
   
      :param UK:
      :type UK: :class:`TColStd_Array1OfReal`
   
      Substitutes the :meth:`VKnots` of range VIndex with K.
      
      
      
      Raised if VIndex < 1 or VIndex > :meth:`NbVKnots` 
      Raised if K >= VKnots(VIndex+1) or K <= VKnots(VIndex-1) 
      
      

   .. method:: SetUNotPeriodic()
   
      
      
      

   .. method:: SetUOrigin(Index)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
   
      Assigns the knot of index Index in the knots table in 
      the corresponding parametric direction to be the 
      origin of this periodic BSpline surface. As a 
      consequence, the knots and poles tables are modified.
      
      
      
      Exceptions 
      :class:`Standard_NoSuchObject` if this BSpline surface is 
      not periodic in the given parametric direction. 
      :class:`Standard_DomainError` if Index is outside the 
      bounds of the knots table in the given parametric direction. 
      
      

   .. method:: SetUPeriodic()
   
      Sets the surface U periodic. 
      
      

   .. method:: SetVKnots(VK)
   
      :param VK:
      :type VK: :class:`TColStd_Array1OfReal`
   
      Changes the value of the :meth:`VKnots` of range VIndex and increases 
      its multiplicity.
      
      
      
      Raised if VIndex is not in the range [:meth:`FirstVKnotIndex`, 
      :meth:`LastVKnotIndex`] given by the methods with the same name.
      
      
      
      Raised if K >= VKnots(VIndex+1) or K <= VKnots(VIndex-1.
      
      
      
      M must be lower than :meth:`VDegree` and greater than the previous 
      multiplicity of the knot of range VIndex. 
      
      

   .. method:: SetVNotPeriodic()
   
      Modifies this surface to be periodic in the u (or v) parametric direction.
      
      
      
      To become periodic in a given parametric direction a 
      surface must be closed in that parametric direction, 
      and the knot sequence relative to that direction must be periodic.
      
      
      
      To generate this periodic sequence of knots, the 
      functions :meth:`FirstUKnotIndex` and :meth:`LastUKnotIndex` (or 
      :meth:`FirstVKnotIndex` and LastVKnotIndex) are used to 
      compute I1 and I2. These are the indexes, in the 
      knot array associated with the given parametric 
      direction, of the knots that correspond to the first and 
      last parameters of this BSpline surface in the given 
      parametric direction. Hence the period is: 
      Knots(I1) - Knots(I2.
      
      
      
      As a result, the knots and poles tables are modified.
      
      
      
      Exceptions 
      :class:`Standard_ConstructionError` if the surface is not 
      closed in the given parametric direction. 
      
      

   .. method:: SetVOrigin(Index)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
   
      Assigns the knot of index Index in the knots table in 
      the corresponding parametric direction to be the 
      origin of this periodic BSpline surface. As a 
      consequence, the knots and poles tables are modified.
      
      
      
      Exceptions 
      :class:`Standard_NoSuchObject` if this BSpline surface is 
      not periodic in the given parametric direction. 
      :class:`Standard_DomainError` if Index is outside the 
      bounds of the knots table in the given parametric direction. 
      
      

   .. method:: SetVPeriodic()
   
      Modifies this surface to be periodic in the u (or v) 
      parametric direction.
      
      
      
      To become periodic in a given parametric direction a 
      surface must be closed in that parametric direction, 
      and the knot sequence relative to that direction must be periodic.
      
      
      
      To generate this periodic sequence of knots, the 
      functions :meth:`FirstUKnotIndex` and :meth:`LastUKnotIndex` (or 
      :meth:`FirstVKnotIndex` and LastVKnotIndex) are used to 
      compute I1 and I2. These are the indexes, in the 
      knot array associated with the given parametric 
      direction, of the knots that correspond to the first and 
      last parameters of this BSpline surface in the given 
      parametric direction. Hence the period is: 
      Knots(I1) - Knots(I2.
      
      
      
      As a result, the knots and poles tables are modified.
      
      
      
      Exceptions 
      :class:`Standard_ConstructionError` if the surface is not 
      closed in the given parametric direction. 
      
      

   .. method:: SetWeight(UIndex,VIndex,Weight)
   
      :param UIndex:
      :type UIndex: :class:`Standard_Integer`
      :param VIndex:
      :type VIndex: :class:`Standard_Integer`
      :param Weight:
      :type Weight: :class:`Standard_Real`
   
      Changes the weight of the pole of range UIndex, VIndex.
      
      
      
      If the surface was non rational it can become rational.
      
      
      
      If the surface was rational it can become non rational.
      
      
      
      Raised if UIndex < 1 or UIndex > :meth:`NbUPoles` or VIndex < 1 or 
      VIndex > :meth:`NbVPoles` 
      Raised if weight is lower or equal to :meth:`Resolution` from 
      package gp 
      
      

   .. method:: SetWeightCol(CPoleWeights,VIndex)
   
      :param CPoleWeights:
      :type CPoleWeights: :class:`TColStd_Array1OfReal`
      :param VIndex:
      :type VIndex: :class:`Standard_Integer`
   
      Changes a column of weights of a part of this column.
      
      
      
      Raised if VIndex < 1 or VIndex > :meth:`NbVPoles` 
      Raised if CPoleWeights.Lower() < 1 or 
      CPoleWeights.Upper() > :meth:`NbUPoles`.
      
      
      
      Raised if a weight value is lower or equal to :meth:`Resolution` 
      from package gp. 
      
      

   .. method:: SetWeightRow(CPoleWeights,UIndex)
   
      :param CPoleWeights:
      :type CPoleWeights: :class:`TColStd_Array1OfReal`
      :param UIndex:
      :type UIndex: :class:`Standard_Integer`
   
      Changes a row of weights or a part of this row.
      
      
      
      Raised if UIndex < 1 or UIndex > :meth:`NbUPoles` 
      Raised if CPoleWeights.Lower() < 1 or 
      CPoleWeights.Upper() > :meth:`NbVPoles`.
      
      
      
      Raised  if a weight value is lower or equal to :meth:`Resolution` 
      from package gp. 
      
      

   .. method:: Transform(T)
   
      :param T:
      :type T: :class:`gp_Trsf`
   
      Applies the transformation T to this BSpline surface. 
      
      

   .. method:: UDegree()
   
      :rtype: :class:`Standard_Integer`
   
      Returns the degree of the normalized B-splines Ni,n in the U 
      direction. 
      
      

   .. method:: UKnot(UIndex)
   
      :param UIndex:
      :type UIndex: :class:`Standard_Integer`
      :rtype: :class:`Standard_Real`
   
      Returns the Knot value of range UIndex.  Raised if UIndex < 1 or UIndex > :meth:`NbUKnots` 
      
      

   .. method:: UKnotDistribution()
   
      :rtype: :class:`GeomAbs_BSplKnotDistribution`
   
      Returns NonUniform or Uniform or QuasiUniform or 
      PiecewiseBezier.  If all the knots differ by a 
      positive constant from the preceding knot in the U 
      direction the B-spline surface can be : 
      
      - Uniform if all the knots are of multiplicity 1, 
      - QuasiUniform if all the knots are of multiplicity 1 
        except for the first and last knot which are of 
        multiplicity Degree + 1, 
      - PiecewiseBezier if the first and last knots have 
        multiplicity Degree + 1 and if interior knots have 
        multiplicity Degree 
        otherwise the surface is non uniform in the U direction 
        The tolerance criterion is :meth:`Resolution` from package gp. 
        

   .. method:: UKnotSequence(Ku)
   
      :param Ku:
      :type Ku: :class:`TColStd_Array1OfReal`
   
      Returns the uknots sequence.
      
      
      
      In this sequence the knots with a multiplicity greater than 1 
      are repeated.
      
      
      
      Example : 
      Ku = {k1, k1, k1, k2, k3, k3, k4, k4, k4} 
      Raised if the length of Ku is not equal to :meth:`NbUPoles` + :meth:`UDegree` + 1 
      
      

   .. method:: UKnots(Ku)
   
      :param Ku:
      :type Ku: :class:`TColStd_Array1OfReal`
   
      Returns the knots in the U direction.
      
      
      
      Raised if the length of Ku is not equal to the number of knots 
      in the U direction. 
      
      

   .. method:: UMultiplicities(Mu)
   
      :param Mu:
      :type Mu: :class:`TColStd_Array1OfInteger`
   
      Returns the multiplicities of the knots in the U direction.
      
      
      
      Raised if the length of Mu is not equal to the number of 
      knots in the U direction. 
      
      

   .. method:: UMultiplicity(UIndex)
   
      :param UIndex:
      :type UIndex: :class:`Standard_Integer`
      :rtype: :class:`Standard_Integer`
   
      Returns the multiplicity value of knot of range UIndex in 
      the u direction.  Raised if UIndex < 1 or UIndex > :meth:`NbUKnots`. 
      
      

   .. method:: UReverse()
   
      
      
      

   .. method:: UReversedParameter(U)
   
      :param U:
      :type U: :class:`Standard_Real`
      :rtype: :class:`Standard_Real`
   
      
      
      

   .. method:: UpdateUKnots()
   
      Recompute  the  flatknots,  the knotsdistribution, the 
      continuity for U. 
      
      

   .. method:: UpdateVKnots()
   
      Recompute  the  flatknots,  the knotsdistribution, the 
      continuity for V. 
      
      

   .. method:: VDegree()
   
      :rtype: :class:`Standard_Integer`
   
      Returns the degree of the normalized B-splines Ni,d in the 
      V direction. 
      
      

   .. method:: VKnot(VIndex)
   
      :param VIndex:
      :type VIndex: :class:`Standard_Integer`
      :rtype: :class:`Standard_Real`
   
      Returns the Knot value of range VIndex. 
      
      

   .. method:: VKnotDistribution()
   
      :rtype: :class:`GeomAbs_BSplKnotDistribution`
   
      Returns NonUniform or Uniform or QuasiUniform or 
      PiecewiseBezier. If all the knots differ by a positive 
      constant from the preceding knot in the V direction the 
      B-spline surface can be : 
      
      - Uniform if all the knots are of multiplicity 1, 
      - QuasiUniform if all the knots are of multiplicity 1 
        except for the first and last knot which are of 
        multiplicity Degree + 1, 
      - PiecewiseBezier if the first and last knots have 
        multiplicity  Degree + 1 and if interior knots have 
        multiplicity Degree 
        otherwise the surface is non uniform in the V direction.
        
      
      The tolerance criterion is :meth:`Resolution` from package gp. 
      
      

   .. method:: VKnotSequence(Kv)
   
      :param Kv:
      :type Kv: :class:`TColStd_Array1OfReal`
   
      Returns the vknots sequence.
      
      
      
      In this sequence the knots with a multiplicity greater than 1 
      are repeated.
      
      
      
      Example : 
      Kv = {k1, k1, k1, k2, k3, k3, k4, k4, k4} 
      Raised if the length of Kv is not equal to :meth:`NbVPoles` + :meth:`VDegree` + 1 
      
      

   .. method:: VKnots(Kv)
   
      :param Kv:
      :type Kv: :class:`TColStd_Array1OfReal`
   
      Returns the knots in the V direction.
      
      
      
      Raised if the length of Kv is not equal to the number of 
      knots in the V direction. 
      
      

   .. method:: VMultiplicities(Mv)
   
      :param Mv:
      :type Mv: :class:`TColStd_Array1OfInteger`
   
      Returns the multiplicities of the knots in the V direction.
      
      
      
      Raised if the length of Mv is not equal to the number of 
      knots in the V direction. 
      
      

   .. method:: VMultiplicity(VIndex)
   
      :param VIndex:
      :type VIndex: :class:`Standard_Integer`
      :rtype: :class:`Standard_Integer`
   
      Returns the multiplicity value of knot of range VIndex in 
      the v direction.  Raised if VIndex < 1 or VIndex > :meth:`NbVKnots` 
      
      

   .. method:: VReverse()
   
      Changes the orientation of this BSpline surface in the 
      u (or v) parametric direction. The bounds of the 
      surface are not changed but the given parametric 
      direction is reversed. Hence the orientation of the 
      surface is reversed.
      
      
      
      The knots and poles tables are modified. 
      
      

   .. method:: VReversedParameter(V)
   
      :param V:
      :type V: :class:`Standard_Real`
      :rtype: :class:`Standard_Real`
   
      Computes the u (or v) parameter on the modified 
      surface, produced by reversing its u (or v) parametric 
      direction, for the point of u parameter U, (or of v 
      parameter V) on this BSpline surface.
      
      
      
      For a BSpline surface, these functions return respectively: 
      
      - UFirst + ULast - U, or 
      - VFirst + VLast - V, 
        where UFirst, ULast, VFirst and VLast are 
        the values of the first and last parameters of this 
        BSpline surface, in the u and v parametric directions. 
        

   .. method:: ValidateCache(UParameter,VParameter)
   
      :param UParameter:
      :type UParameter: :class:`Standard_Real`
      :param VParameter:
      :type VParameter: :class:`Standard_Real`
   
      updates the cache and validates it 
      
      

   .. method:: Weight(UIndex,VIndex)
   
      :param UIndex:
      :type UIndex: :class:`Standard_Integer`
      :param VIndex:
      :type VIndex: :class:`Standard_Integer`
      :rtype: :class:`Standard_Real`
   
      Returns the weight value of range UIndex, VIndex.
      
      
      
      Raised if UIndex < 1 or UIndex > :meth:`NbUPoles` or VIndex < 1 
      or VIndex > :meth:`NbVPoles`. 
      
      

   .. method:: Weights(W)
   
      :param W:
      :type W: :class:`TColStd_Array2OfReal`
   
      Returns the weights of the B-spline surface.
      
      
      
      Raised if the length of W in the U and V direction is 
      not equal to :meth:`NbUPoles` and :meth:`NbVPoles`.  value and derivatives computation 
      
      