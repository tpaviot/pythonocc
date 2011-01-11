.. method:: Geom_BSplineSurface.Bounds(U1,U2,V1,V2)

   Returns the parametric bounds of the surface.
   
   
   
   Warnings : 
   These parametric values are the bounds of the array of 
   knots UKnots and VKnots only if the first knots and the 
   last knots have a multiplicity equal to UDegree + 1 or 
   VDegree + 1 
   
   

.. method:: Geom_BSplineSurface.CheckAndSegment(U1,U2,V1,V2)

   Substitutes the UKnots of range UIndex with K.
   
   
   
   Raised if UIndex < 1 or UIndex > NbUKnots 
   Raised if K >= UKnots(UIndex+1) or K <= UKnots(UIndex-1) 
   
   

.. method:: Geom_BSplineSurface.Continuity()

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
   
   

.. method:: Geom_BSplineSurface.Copy()

   Creates a new object which is a copy of this BSpline surface. 
   
   

.. method:: Geom_BSplineSurface.D0(U,V,P)

   
   
   

.. method:: Geom_BSplineSurface.D1(U,V,P,D1U,D1V)

   Raised if the continuity of the surface is not C1. 
   
   

.. method:: Geom_BSplineSurface.D2(D1U,D1V,D2U,D2UV,D2V,P,U,V)

   Raised if the continuity of the surface is not C2. 
   
   

.. method:: Geom_BSplineSurface.D3(D1U,D1V,D2U,D2UV,D2V,D3U,D3UUV,D3UVV,D3V,P,U,V)

   Raised if the continuity of the surface is not C3. 
   
   

.. method:: Geom_BSplineSurface.DN(Nu,Nv,U,V)

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
   
   

.. method:: Geom_BSplineSurface.DynamicType()

   
   
   

.. method:: Geom_BSplineSurface.ExchangeUV()

   Exchanges the u and v parametric directions on 
   this BSpline surface.
   
   
   
   As a consequence: 
   
   - the poles and weights tables are transposed, 
   - the knots and multiplicities tables are exchanged, 
   - degrees of continuity, and rational, periodic and 
     uniform characteristics are exchanged, and 
   - the orientation of the surface is inverted. 
     

.. method:: Geom_BSplineSurface.FirstUKnotIndex()

   Computes the Index of the UKnots which gives the first 
   parametric value of the surface in the U direction.
   
   
   
   The UIso curve corresponding to this value is a 
   boundary curve of the surface. 
   
   

.. method:: Geom_BSplineSurface.FirstVKnotIndex()

   Computes the Index of the VKnots which gives the 
   first parametric value of the surface in the V direction.
   
   
   
   The VIso curve corresponding to this knot is a boundary 
   curve of the surface. 
   
   

.. method:: Geom_BSplineSurface.IncreaseDegree(UDegree,VDegree)

   Increases the degrees of this BSpline surface to 
   UDegree and VDegree in the u and v parametric 
   directions respectively. As a result, the tables of poles, 
   weights and multiplicities are modified. The tables of 
   knots is not changed.
   
   
   
   Note: Nothing is done if the given degree is less than 
   or equal to the current degree in the corresponding 
   parametric direction.
   
   
   
   Exceptions 
   -----------
   ref:`Standard_ConstructionError` if UDegree or 
   VDegree is greater than 
   ref:`Geom_BSplineSurface`::MaxDegree(). 
   
   

.. method:: Geom_BSplineSurface.IncrementUMultiplicity(FromI1,Step,ToI2)

   Increases until order M the multiplicity of the set of knots 
   FromI1,...., ToI2 in the V direction. This method can be used to 
   make a BSplineSurface into a PiecewiseBezier B_spline 
   surface. If <me> was uniform, it can become non-uniform.
   
   
   
   Raised if FromI1 or ToI2 is out of the range [FirstVKnotIndex, 
   LastVKnotIndex] given by the methods with the same name.
   
   
   
   M should be greater than the previous multiplicity of the 
   all the knots FromI1,..., ToI2 and lower or equal to the 
   Degree of the surface in the V parametric direction. 
   
   

.. method:: Geom_BSplineSurface.IncrementVMultiplicity(FromI1,Step,ToI2)

   Increments the multiplicity of the consecutives vknots FromI1..ToI2 
   by step.  The multiplicity of each knot FromI1,.....,ToI2 must be 
   lower or equal to the VDegree of the B_spline.
   
   
   
   Raised if FromI1 or ToI2 is not in the range 
   [FirstVKnotIndex, LastVKnotIndex] 
   Raised if one knot has a multiplicity greater than VDegree. 
   
   

.. method:: Geom_BSplineSurface.InsertUKnot(Add,M,ParametricTolerance,U)

   Inserts a knot value in the sequence of UKnots. If U is a knot 
   value this method increases the multiplicity of the knot if the 
   previous multiplicity was lower than M else it does nothing. The 
   tolerance criterion is ParametricTolerance. ParametricTolerance 
   should be greater or equal than Resolution from package gp.
   
   
   
   Raised if U is out of the bounds [U1, U2] given by the methods 
   Bounds, the criterion ParametricTolerance is used.
   
   
   
   Raised if M is not in the range [1, UDegree]. 
   
   

.. method:: Geom_BSplineSurface.InsertUKnots(Add,Knots,Mults,ParametricTolerance)

   
   
   

.. method:: Geom_BSplineSurface.InsertVKnot(Add,M,ParametricTolerance,V)

   Inserts a knot value in the sequence of VKnots. If V is a knot 
   value this method increases the multiplicity of the knot if the 
   previous multiplicity was lower than M otherwise it does nothing.
   
   
   
   The tolerance criterion is ParametricTolerance.
   
   
   
   ParametricTolerance should be greater or equal than Resolution 
   from package gp. 
   raises if V is out of the Bounds [V1, V2] given by the methods 
   Bounds, the criterion ParametricTolerance is used. 
   raises if M is not in the range [1, VDegree]. 
   
   

.. method:: Geom_BSplineSurface.InsertVKnots(Add,Knots,Mults,ParametricTolerance)

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
   ref:`Standard_Real`::Epsilon(val), where val is the knot value to be inserted.
   
   
   
   Warning 
   --------
   
   - If a given multiplicity coefficient is null, or negative, nothing is done. 
   - The new multiplicity of a knot is limited to the degree of this BSpline surface in the 
     corresponding parametric direction.
     
   
   Exceptions 
   -----------
   ref:`Standard_ConstructionError` if a knot value to 
   insert is outside the bounds of this BSpline surface in 
   the specified parametric direction. The comparison 
   uses the precision criterion ParametricTolerance. 
   
   

.. method:: Geom_BSplineSurface.InvalidateCache()

   Invalidates the cache. This has to be private this has to be private 
   
   

.. method:: Geom_BSplineSurface.IsCNu(N)

   Returns True if the order of continuity of the surface in the 
   U direction  is N.  Raised if N < 0. 
   
   

.. method:: Geom_BSplineSurface.IsCNv(N)

   Returns True if the order of continuity of the surface 
   in the V direction  is N.  Raised if N < 0. 
   
   

.. method:: Geom_BSplineSurface.IsCacheValid(UParameter,VParameter)

   Tells whether the Cache is valid for the 
   given parameter 
   Warnings : the parameter must be normalized within 
   the period if the curve is periodic. Otherwise 
   the answer will be false 
   
   
   

.. method:: Geom_BSplineSurface.IsUClosed()

   Returns true if the first control points row and the last 
   control points row are identical. The tolerance criterion 
   is Resolution from package gp. 
   
   

.. method:: Geom_BSplineSurface.IsUPeriodic()

   Returns True if the surface is closed in the U direction 
   and if the B-spline has been turned into a periodic surface 
   using the function SetUPeriodic. 
   
   

.. method:: Geom_BSplineSurface.IsURational()

   Returns False if for each row of weights all the weights 
   are identical.
   
   
   
   The tolerance criterion is resolution from package gp.
   
   
   
   Example : 
   |1.0, 1.0, 1.0| 
   if Weights =  |0.5, 0.5, 0.5|   returns False 
   |2.0, 2.0, 2.0| 
   
   

.. method:: Geom_BSplineSurface.IsVClosed()

   Returns true if the first control points column and the 
   last last control points column are identical.
   
   
   
   The tolerance criterion is Resolution from package gp. 
   
   

.. method:: Geom_BSplineSurface.IsVPeriodic()

   Returns True if the surface is closed in the V direction 
   and if the B-spline has been turned into a periodic 
   surface using the function SetVPeriodic. 
   
   

.. method:: Geom_BSplineSurface.IsVRational()

   Returns False if for each column of weights all the weights 
   are identical.
   
   
   
   The tolerance criterion is resolution from package gp.
   
   
   
   Examples : 
   |1.0, 2.0, 0.5| 
   if Weights =  |1.0, 2.0, 0.5|   returns False 
   |1.0, 2.0, 0.5| 
   
   

.. method:: Geom_BSplineSurface.LastUKnotIndex()

   Computes the Index of the UKnots which gives the 
   last parametric value of the surface in the U direction.
   
   
   
   The UIso curve corresponding to this knot is a boundary 
   curve of the surface. 
   
   

.. method:: Geom_BSplineSurface.LastVKnotIndex()

   Computes the Index of the VKnots which gives the 
   last parametric value of the surface in the V direction.
   
   
   
   The VIso curve corresponding to this knot is a 
   boundary curve of the surface. 
   
   

.. method:: Geom_BSplineSurface.LocalD0(FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)

   Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
   
   
   
   Raised if FromUK1, ToUK2 are not in the range [FirstUKnotIndex, 
   LastUKnotIndex] or if FromVK1, ToVK2 are not in the range 
   [FirstVKnotIndex, LastVKnotIndex] 
   
   

.. method:: Geom_BSplineSurface.LocalD1(D1U,D1V,FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)

   Raised if the local continuity of the surface is not C1 
   between the knots FromUK1, ToUK2 and FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
   
   
   
   Raised if FromUK1, ToUK2 are not in the range [FirstUKnotIndex, 
   LastUKnotIndex] or if FromVK1, ToVK2 are not in the range 
   [FirstVKnotIndex, LastVKnotIndex] 
   
   

.. method:: Geom_BSplineSurface.LocalD2(D1U,D1V,D2U,D2UV,D2V,FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)

   Raised if the local continuity of the surface is not C2 
   between the knots FromUK1, ToUK2 and FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
   
   
   
   Raised if FromUK1, ToUK2 are not in the range [FirstUKnotIndex, 
   LastUKnotIndex] or if FromVK1, ToVK2 are not in the range 
   [FirstVKnotIndex, LastVKnotIndex] 
   
   

.. method:: Geom_BSplineSurface.LocalD3(D1U,D1V,D2U,D2UV,D2V,D3U,D3UUV,D3UVV,D3V,FromUK1,FromVK1,P,ToUK2,ToVK2,U,V)

   Raised if the local continuity of the surface is not C3 
   between the knots FromUK1, ToUK2 and FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
   
   
   
   Raised if FromUK1, ToUK2 are not in the range [FirstUKnotIndex, 
   LastUKnotIndex] or if FromVK1, ToVK2 are not in the range 
   [FirstVKnotIndex, LastVKnotIndex] 
   
   

.. method:: Geom_BSplineSurface.LocalDN(FromUK1,FromVK1,Nu,Nv,ToUK2,ToVK2,U,V)

   Raised if the local continuity of the surface is not CNu 
   between the knots FromUK1, ToUK2 and CNv between the knots 
   FromVK1, ToVK2.  Raised if FromUK1 = ToUK2 or FromVK1 = ToVK2.
   
   
   
   Raised if FromUK1, ToUK2 are not in the range [FirstUKnotIndex, 
   LastUKnotIndex] or if FromVK1, ToVK2 are not in the range 
   [FirstVKnotIndex, LastVKnotIndex] 
   
   

.. method:: Geom_BSplineSurface.LocalValue(FromUK1,FromVK1,ToUK2,ToVK2,U,V)

   Computes the V isoparametric curve.
   -----------------------------------
   
   
   
   If CheckRational=False, no try to make it non-rational.
   
   
   
   A B-spline curve is returned.  transformations 
   
   

.. method:: Geom_BSplineSurface.LocateU(I1,I2,ParametricTolerance,U,WithKnotRepetition)

   Locates the parametric value U in the sequence of UKnots.
   
   
   
   If *WithKnotRepetition* is True we consider the knot's 
   representation with repetition of multiple knot value, 
   otherwise  we consider the knot's representation with 
   no repetition of multiple knot values.
   
   
   
   UKnots (I1) <= U <= UKnots (I2) 
   
   1. if I1 = I2  U is a knot value (the tolerance criterion 
      ParametricTolerance is used). 
   2. if I1 < 1  => U < UKnots(1) - Abs(ParametricTolerance) 
   3. if I2 > NbUKnots => U > UKnots(NbUKnots)+Abs(ParametricTolerance) 
   

.. method:: Geom_BSplineSurface.LocateV(I1,I2,ParametricTolerance,V,WithKnotRepetition)

   Changes a row of poles or a part of this row.  Raised if Uindex < 1 or UIndex > NbUPoles.
   
   
   
   Raised if CPoles.Lower() < 1 or CPoles.Upper() > NbVPoles. 
   
   

.. method:: Geom_BSplineSurface.MaxDegree()

   Returns the value of the maximum degree of the normalized 
   B-spline basis functions in the u and v directions. 
   
   

.. method:: Geom_BSplineSurface.MovePoint(U,V,P,UIndex1,UIndex2,VIndex1,VIndex2,UFirstIndex,ULastIndex,VFirstIndex,VLastIndex)

   Move a point with parameter U and V to P. 
   given u,v  as parameters)  to  reach a  new position 
   UIndex1, UIndex2, VIndex1, VIndex2: 
   indicates the poles which can be moved 
   if Problem in BSplineBasis calculation, no change 
   for the curve and 
   UFirstIndex, VLastIndex = 0 
   VFirstIndex, VLastIndex = 0 
   Raised if UIndex1 < UIndex2 or VIndex1 < VIndex2 or 
   UIndex1 < 1 || UIndex1 > NbUPoles or 
   UIndex2 < 1 || UIndex2 > NbUPoles 
   VIndex1 < 1 || VIndex1 > NbVPoles or 
   VIndex2 < 1 || VIndex2 > NbVPoles  characteristics of the surface 
   
   

.. method:: Geom_BSplineSurface.NbUKnots()

   Returns the number of knots in the U direction. 
   
   

.. method:: Geom_BSplineSurface.NbUPoles()

   Returns number of poles in the U direction. 
   
   

.. method:: Geom_BSplineSurface.NbVKnots()

   Returns the number of knots in the V direction. 
   
   

.. method:: Geom_BSplineSurface.NbVPoles()

   Returns the number of poles in the V direction. 
   
   

.. method:: Geom_BSplineSurface.PeriodicNormalization(U,V)

   returns the parameter normalized within 
   ----------------------------------------
   the period if the surface is periodic : otherwise 
   does not do anything 
   
   

.. method:: Geom_BSplineSurface.Pole(UIndex,VIndex)

   Returns the pole of range (UIndex, VIndex).
   
   
   
   Raised if UIndex < 1 or UIndex > NbUPoles or VIndex < 1 or 
   VIndex > NbVPoles. 
   
   

.. method:: Geom_BSplineSurface.Poles(P)

   Returns the poles of the B-spline surface.
   
   
   
   Raised if the length of P in the U and V direction 
   is not equal to NbUpoles and NbVPoles. 
   
   

.. method:: Geom_BSplineSurface.RemoveUKnot(Index,M,Tolerance)

   
   
   

.. method:: Geom_BSplineSurface.RemoveVKnot(Index,M,Tolerance)

   Increases until order M the multiplicity of the set of knots 
   FromI1,...., ToI2 in the U direction. This method can be used 
   to make a B_spline surface into a PiecewiseBezier B_spline 
   surface.
   
   
   
   If <me> was uniform, it can become non uniform.
   
   
   
   Raised if FromI1 or ToI2 is out of the range [FirstUKnotIndex, 
   LastUKnotIndex].
   
   
   
   M should be greater than the previous multiplicity of the 
   all the knots FromI1,..., ToI2 and lower or equal to the 
   Degree of the surface in the U parametric direction. 
   
   

.. method:: Geom_BSplineSurface.Resolution(Tolerance3D,UTolerance,VTolerance)

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
   
   

.. method:: Geom_BSplineSurface.Segment(U1,U2,V1,V2)

   Segments the surface between U1 and U2 in the U-Direction. 
   between V1 and V2 in the V-Direction.
   
   
   
   The control points are modified, the first and the last point 
   are not the same.
   
   
   
   Warnings : 
   Even if <me> is not closed it can become closed after the 
   segmentation for example if U1 or U2 are out of the bounds 
   of the surface <me> or if the surface makes loop.  raises if U2 < U1 or V2 < V1 
   
   

.. method:: Geom_BSplineSurface.SetUKnots(UK)

   Substitutes the VKnots of range VIndex with K.
   
   
   
   Raised if VIndex < 1 or VIndex > NbVKnots 
   Raised if K >= VKnots(VIndex+1) or K <= VKnots(VIndex-1) 
   
   

.. method:: Geom_BSplineSurface.SetUNotPeriodic()

   
   
   

.. method:: Geom_BSplineSurface.SetUOrigin(Index)

   Assigns the knot of index Index in the knots table in 
   the corresponding parametric direction to be the 
   origin of this periodic BSpline surface. As a 
   consequence, the knots and poles tables are modified.
   
   
   
   Exceptions 
   -----------
   ref:`Standard_NoSuchObject` if this BSpline surface is 
   not periodic in the given parametric direction. 
   ref:`Standard_DomainError` if Index is outside the 
   bounds of the knots table in the given parametric direction. 
   
   

.. method:: Geom_BSplineSurface.SetUPeriodic()

   Sets the surface U periodic. 
   
   

.. method:: Geom_BSplineSurface.SetVKnots(VK)

   Changes the value of the VKnots of range VIndex and increases 
   its multiplicity.
   
   
   
   Raised if VIndex is not in the range [FirstVKnotIndex, 
   LastVKnotIndex] given by the methods with the same name.
   
   
   
   Raised if K >= VKnots(VIndex+1) or K <= VKnots(VIndex-1) 
   M must be lower than VDegree and greater than the previous 
   multiplicity of the knot of range VIndex. 
   
   

.. method:: Geom_BSplineSurface.SetVNotPeriodic()

   Modifies this surface to be periodic in the u (or v) parametric direction.
   
   
   
   To become periodic in a given parametric direction a 
   surface must be closed in that parametric direction, 
   and the knot sequence relative to that direction must be periodic.
   
   
   
   To generate this periodic sequence of knots, the 
   functions FirstUKnotIndex and LastUKnotIndex (or 
   FirstVKnotIndex and LastVKnotIndex) are used to 
   compute I1 and I2. These are the indexes, in the 
   knot array associated with the given parametric 
   direction, of the knots that correspond to the first and 
   last parameters of this BSpline surface in the given 
   parametric direction. Hence the period is: 
   Knots(I1) - Knots(I2) 
   As a result, the knots and poles tables are modified.
   
   
   
   Exceptions 
   -----------
   ref:`Standard_ConstructionError` if the surface is not 
   closed in the given parametric direction. 
   
   

.. method:: Geom_BSplineSurface.SetVOrigin(Index)

   Assigns the knot of index Index in the knots table in 
   the corresponding parametric direction to be the 
   origin of this periodic BSpline surface. As a 
   consequence, the knots and poles tables are modified.
   
   
   
   Exceptions 
   -----------
   ref:`Standard_NoSuchObject` if this BSpline surface is 
   not periodic in the given parametric direction. 
   ref:`Standard_DomainError` if Index is outside the 
   bounds of the knots table in the given parametric direction. 
   
   

.. method:: Geom_BSplineSurface.SetVPeriodic()

   Modifies this surface to be periodic in the u (or v) 
   parametric direction.
   
   
   
   To become periodic in a given parametric direction a 
   surface must be closed in that parametric direction, 
   and the knot sequence relative to that direction must be periodic.
   
   
   
   To generate this periodic sequence of knots, the 
   functions FirstUKnotIndex and LastUKnotIndex (or 
   FirstVKnotIndex and LastVKnotIndex) are used to 
   compute I1 and I2. These are the indexes, in the 
   knot array associated with the given parametric 
   direction, of the knots that correspond to the first and 
   last parameters of this BSpline surface in the given 
   parametric direction. Hence the period is: 
   Knots(I1) - Knots(I2) 
   As a result, the knots and poles tables are modified.
   
   
   
   Exceptions 
   -----------
   ref:`Standard_ConstructionError` if the surface is not 
   closed in the given parametric direction. 
   
   

.. method:: Geom_BSplineSurface.SetWeight(UIndex,VIndex,Weight)

   Changes the weight of the pole of range UIndex, VIndex.
   
   
   
   If the surface was non rational it can become rational.
   
   
   
   If the surface was rational it can become non rational.
   
   
   
   Raised if UIndex < 1 or UIndex > NbUPoles or VIndex < 1 or 
   VIndex > NbVPoles 
   Raised if weight is lower or equal to Resolution from 
   package gp 
   
   

.. method:: Geom_BSplineSurface.SetWeightCol(CPoleWeights,VIndex)

   Changes a column of weights of a part of this column.
   
   
   
   Raised if VIndex < 1 or VIndex > NbVPoles 
   Raised if CPoleWeights.Lower() < 1 or 
   CPoleWeights.Upper() > NbUPoles.
   
   
   
   Raised if a weight value is lower or equal to Resolution 
   from package gp. 
   
   

.. method:: Geom_BSplineSurface.SetWeightRow(CPoleWeights,UIndex)

   Changes a row of weights or a part of this row.
   
   
   
   Raised if UIndex < 1 or UIndex > NbUPoles 
   Raised if CPoleWeights.Lower() < 1 or 
   CPoleWeights.Upper() > NbVPoles.
   
   
   
   Raised  if a weight value is lower or equal to Resolution 
   from package gp. 
   
   

.. method:: Geom_BSplineSurface.Transform(T)

   Applies the transformation T to this BSpline surface. 
   
   

.. method:: Geom_BSplineSurface.UDegree()

   Returns the degree of the normalized B-splines Ni,n in the U 
   direction. 
   
   

.. method:: Geom_BSplineSurface.UKnot(UIndex)

   Returns the Knot value of range UIndex.  Raised if UIndex < 1 or UIndex > NbUKnots 
   
   

.. method:: Geom_BSplineSurface.UKnotDistribution()

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
     The tolerance criterion is Resolution from package gp. 
     

.. method:: Geom_BSplineSurface.UKnotSequence(Ku)

   Returns the uknots sequence.
   ----------------------------
   
   
   
   In this sequence the knots with a multiplicity greater than 1 
   are repeated.
   
   
   
   Example : 
   Ku = {k1, k1, k1, k2, k3, k3, k4, k4, k4} 
   Raised if the length of Ku is not equal to NbUPoles + UDegree + 1 
   
   

.. method:: Geom_BSplineSurface.UKnots(Ku)

   Returns the knots in the U direction.
   -------------------------------------
   
   
   
   Raised if the length of Ku is not equal to the number of knots 
   in the U direction. 
   
   

.. method:: Geom_BSplineSurface.UMultiplicities(Mu)

   Returns the multiplicities of the knots in the U direction.
   
   
   
   Raised if the length of Mu is not equal to the number of 
   knots in the U direction. 
   
   

.. method:: Geom_BSplineSurface.UMultiplicity(UIndex)

   Returns the multiplicity value of knot of range UIndex in 
   the u direction.  Raised if UIndex < 1 or UIndex > NbUKnots. 
   
   

.. method:: Geom_BSplineSurface.UReverse()

   
   
   

.. method:: Geom_BSplineSurface.UReversedParameter(U)

   
   
   

.. method:: Geom_BSplineSurface.UpdateUKnots()

   Recompute  the  flatknots,  the knotsdistribution, the 
   continuity for U. 
   
   

.. method:: Geom_BSplineSurface.UpdateVKnots()

   Recompute  the  flatknots,  the knotsdistribution, the 
   continuity for V. 
   
   

.. method:: Geom_BSplineSurface.VDegree()

   Returns the degree of the normalized B-splines Ni,d in the 
   V direction. 
   
   

.. method:: Geom_BSplineSurface.VKnot(VIndex)

   Returns the Knot value of range VIndex. 
   
   

.. method:: Geom_BSplineSurface.VKnotDistribution()

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
     
   
   The tolerance criterion is Resolution from package gp. 
   
   

.. method:: Geom_BSplineSurface.VKnotSequence(Kv)

   Returns the vknots sequence.
   ----------------------------
   
   
   
   In this sequence the knots with a multiplicity greater than 1 
   are repeated.
   
   
   
   Example : 
   Kv = {k1, k1, k1, k2, k3, k3, k4, k4, k4} 
   Raised if the length of Kv is not equal to NbVPoles + VDegree + 1 
   
   

.. method:: Geom_BSplineSurface.VKnots(Kv)

   Returns the knots in the V direction.
   -------------------------------------
   
   
   
   Raised if the length of Kv is not equal to the number of 
   knots in the V direction. 
   
   

.. method:: Geom_BSplineSurface.VMultiplicities(Mv)

   Returns the multiplicities of the knots in the V direction.
   
   
   
   Raised if the length of Mv is not equal to the number of 
   knots in the V direction. 
   
   

.. method:: Geom_BSplineSurface.VMultiplicity(VIndex)

   Returns the multiplicity value of knot of range VIndex in 
   the v direction.  Raised if VIndex < 1 or VIndex > NbVKnots 
   
   

.. method:: Geom_BSplineSurface.VReverse()

   Changes the orientation of this BSpline surface in the 
   u (or v) parametric direction. The bounds of the 
   surface are not changed but the given parametric 
   direction is reversed. Hence the orientation of the 
   surface is reversed.
   
   
   
   The knots and poles tables are modified. 
   
   

.. method:: Geom_BSplineSurface.VReversedParameter(V)

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
     

.. method:: Geom_BSplineSurface.ValidateCache(UParameter,VParameter)

   updates the cache and validates it 
   -----------------------------------
   
   

.. method:: Geom_BSplineSurface.Weight(UIndex,VIndex)

   Returns the weight value of range UIndex, VIndex.
   
   
   
   Raised if UIndex < 1 or UIndex > NbUPoles or VIndex < 1 
   or VIndex > NbVPoles. 
   
   

.. method:: Geom_BSplineSurface.Weights(W)

   Returns the weights of the B-spline surface.
   
   
   
   Raised if the length of W in the U and V direction is 
   not equal to NbUPoles and NbVPoles.  value and derivatives computation 
   
   