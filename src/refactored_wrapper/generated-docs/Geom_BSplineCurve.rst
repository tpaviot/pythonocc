:class:`Geom_BSplineCurve` --- Definition of the B_spline curve.
================================================================
Definition of the B_spline curve.



A B-spline curve can be 
Uniform  or non-uniform 
Rational or non-rational 
Periodic or non-periodic



a b-spline curve is defined by : 
its degree; the degree for a 
:class:`Geom_BSplineCurve` is limited to a value (25)



which is defined and controlled by the system.



This value is returned by the function :meth:`MaxDegree`; 

- its periodic or non-periodic nature; 
- a table of poles (also called control points), with 
  their associated weights if the BSpline curve is 
  rational. The poles of the curve are *control 
  points* used to deform the curve. If the curve is 
  non-periodic, the first pole is the start point of 
  the curve, and the last pole is the end point of 
  the curve. The segment which joins the first pole 
  to the second pole is the tangent to the curve at 
  its start point, and the segment which joins the 
  last pole to the second-from-last pole is the 
  tangent to the curve at its end point. If the curve 
  is periodic, these geometric properties are not 
  verified. It is more difficult to give a geometric 
  signification to the weights but are useful for 
  providing exact representations of the arcs of a 
  circle or ellipse. Moreover, if the weights of all the 
  poles are equal, the curve has a polynomial 
  equation; it is therefore a non-rational curve. 
- a table of knots with their multiplicities. For a 
  :class:`Geom_BSplineCurve`, the table of knots is an 
  increasing sequence of reals without repetition;
  

the multiplicities define the repetition of the knots.



A BSpline curve is a piecewise polynomial or 
rational curve. The knots are the parameters of 
junction points between two pieces. The 
multiplicity Mult(i) of the knot Knot(i) of 
the BSpline curve is related to the degree of 
continuity of the curve at the knot Knot(i), 
which is equal to :meth:`Degree` - Mult(i)



where :meth:`Degree` is the degree of the BSpline curve.



If the knots are regularly spaced (i.e. the difference 
between two consecutive knots is a constant), three 
specific and frequently used cases of knot 
distribution can be identified: 

- *uniform* if all multiplicities are equal to 1, 
- *quasi-uniform* if all multiplicities are equal to 1, 
  except the first and the last knot which have a 
  multiplicity of :meth:`Degree` + 1, where :meth:`Degree` is 
  the degree of the BSpline curve, 
- *Piecewise Bezier* if all multiplicities are equal to 
  :meth:`Degree` except the first and last knot which 
  have a multiplicity of :meth:`Degree` + 1, where 
  :meth:`Degree` is the degree of the BSpline curve. A 
  curve of this type is a concatenation of arcs of Bezier curves.
  

If the BSpline curve is not periodic: 

- the bounds of the :meth:`Poles` and :meth:`Weights` tables are 1 
  and :meth:`NbPoles`, where :meth:`NbPoles` is the number 
  of poles of the BSpline curve, 
- the bounds of the :meth:`Knots` and :meth:`Multiplicities` tables 
  are 1 and :meth:`NbKnots`, where :meth:`NbKnots` is the 
  number of knots of the BSpline curve.
  

If the BSpline curve is periodic, and if there are k 
periodic knots and p periodic poles, the period is: 
period = Knot(k + 1) - Knot(1)



and the poles and knots tables can be considered 
as infinite tables, verifying: 

- Knot(i+k) = Knot(i) + period 
- Pole(i+p) = Pole(i)
  

.. note::
   Data structures of a periodic bspline curve 
   are more complex than those of a non-periodic one.
   
   

.. warning::
   In this class, weight value is considered to be zero if 
   the weight is less than or equal to gp::Resolution().
   
   

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

.. class:: Geom_BSplineCurve

   .. method:: Continuity()
   
      :rtype: :class:`GeomAbs_Shape`
   
      :returns: The global continuity of the curve : ```` c0 : only geometric continuity, ```` c1 : continuity of the first derivative all along the curve, ```` c2 : continuity of the second derivative all along the curve, ```` c3 : continuity of the third derivative all along the curve, ```` cn : the order of continuity is infinite. ```` for a b-spline curve of degree d if a knot ui has a ```` multiplicity p the b-spline curve is only cd-p continuous ```` at ui. so the global continuity of the curve can't be greater ```` than cd-p where p is the maximum multiplicity of the interior ```` :meth:`knots`. in the interior of a knot span the curve is infinitely ```` continuously differentiable.  

   .. method:: Copy()
   
      :rtype: :class:`Handle_Geom_Geometry`
   
      Creates a new object which is a copy of this BSpline curve.
      
      

   .. method:: D0(P,U)
   
      :param P:
      :type P: :class:`gp_Pnt`
      :param U:
      :type U: :class:`Standard_Real`
   
      :returns: In ``p`` the point of parameter u.  

   .. method:: D1(P,U,V1)
   
      :param P:
      :type P: :class:`gp_Pnt`
      :param U:
      :type U: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`gp_Vec`
   
      :exception: If the continuity of the curve is not c1.  

   .. method:: D2(P,U,V1,V2)
   
      :param P:
      :type P: :class:`gp_Pnt`
      :param U:
      :type U: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`gp_Vec`
      :param V2:
      :type V2: :class:`gp_Vec`
   
      :exception: If the continuity of the curve is not c2.  

   .. method:: D3(P,U,V1,V2,V3)
   
      :param P:
      :type P: :class:`gp_Pnt`
      :param U:
      :type U: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`gp_Vec`
      :param V2:
      :type V2: :class:`gp_Vec`
      :param V3:
      :type V3: :class:`gp_Vec`
   
      :exception: If the continuity of the curve is not c3.  

   .. method:: DN(N,U)
   
      :param N:
      :type N: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :rtype: :class:`gp_Vec`
   
      For the point of parameter ``U`` of this BSpline curve, 
      computes the vector corresponding to the Nth derivative.
      
      
      
      .. warning::
         On a point where the continuity of the curve is not the 
         one requested, this function impacts the part defined 
         by the parameter with a value greater than U, i.e. the 
         part of the curve to the *right* of the singularity.
         
         
      
      Exceptions 
      :class:`Standard_RangeError` if ``N`` is less than 1.
      
      
      
      The following functions compute the point of parameter ``U`` 
      and the derivatives at this point on the B-spline curve 
      arc defined between the knot FromK1 and the knot ToK2. 
      ``U`` can be out of bounds [:meth:`Knot` (FromK1),  :meth:`Knot` (ToK2)] but 
      for the computation we only use the definition of the curve 
      between these two knots. This method is useful to compute 
      local derivative, if the order of continuity of the whole 
      curve is not greater enough.    Inside the parametric 
      domain :meth:`Knot` (FromK1), :meth:`Knot` (ToK2) the evaluations are 
      the same as if we consider the whole definition of the 
      curve. Of course the evaluations are different outside 
      this parametric domain.
      
      

   .. method:: Degree()
   
      :rtype: :class:`Standard_Integer`
   
      :returns: The degree of this bspline curve. ```` the degree of a :class:`geom_bsplinecurve` curve cannot ```` be greater than :meth:`geom_bsplinecurve.maxdegree()`. ```` computation of value and derivatives  

   .. method:: DynamicType()
   
      :rtype: :class:`Handle_Standard_Type`
   
      
      
      

   .. method:: EndPoint()
   
      :rtype: :class:`gp_Pnt`
   
      :returns: The last point of the curve. ```` warnings : ```` the last point of the curve is different from the last ```` pole of the curve if the multiplicity of the last knot ```` is lower than :meth:`degree`.  

   .. method:: FirstParameter()
   
      :rtype: :class:`Standard_Real`
   
      :returns: The value of the first parameter of this ```` bspline curve. this is a knot value. ```` the first parameter is the one of the start point of the bspline curve.  

   .. method:: FirstUKnotIndex()
   
      :rtype: :class:`Standard_Integer`
   
      :returns: The index in the knot array of the knot ```` corresponding to the first or last parameter of this bspline curve. ```` for a bspline curve, the first (or last) parameter ```` (which gives the start (or end) point of the curve) is a ```` knot value. however, if the multiplicity of the first (or ```` last) knot is less than :meth:`degree` + 1, where ```` :meth:`degree` is the degree of the curve, it is not the first ```` (or last) knot of the curve.  

   .. method:: IncreaseDegree(Degree)
   
      :param Degree:
      :type Degree: :class:`Standard_Integer`
   
      Increases  the  multiplicities   of  the knots  in 
      [I1,I2] to ``M``.
      
      
      
      For each knot if  ``M``  is  lower  or equal  to  the 
      current multiplicity  nothing  is  done. If ``M``  is 
      higher than the degree the degree is used.  If ``I1,I2`` are not in [:meth:`FirstUKnotIndex`, :meth:`LastUKnotIndex`]
      
      

   .. method:: IncrementMultiplicity(I1,I2,M)
   
      :param I1:
      :type I1: :class:`Standard_Integer`
      :param I2:
      :type I2: :class:`Standard_Integer`
      :param M:
      :type M: :class:`Standard_Integer`
   
      Increment  the  multiplicities   of  the knots  in 
      [I1,I2] by ``M``.
      
      
      
      If ``M`` is not positive nithing is done.
      
      
      
      For   each  knot   the resulting   multiplicity  is 
      limited to the :meth:`Degree`.  If ``I1,I2`` are not in [:meth:`FirstUKnotIndex`, :meth:`LastUKnotIndex`]
      
      

   .. method:: InsertKnot(Add,M,ParametricTolerance,U)
   
      :param Add:
      :type Add: :class:`Standard_Boolean`
      :param M:
      :type M: :class:`Standard_Integer`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
      :param U:
      :type U: :class:`Standard_Real`
   
      Inserts a knot value in the sequence of knots.  If 
      ``U``  is an  existing knot     the multiplicity  is 
      increased by ``M``.
      
      
      
      If ``U``  is  not  on the parameter  range  nothing is 
      done.
      
      
      
      If the multiplicity is negative or null nothing is 
      done. The  new   multiplicity  is limited  to  the 
      degree.
      
      
      
      The  tolerance criterion  for  knots  equality  is 
      the max of Epsilon(U) and ParametricTolerance.
      
      

   .. method:: InsertKnots(Add,Knots,Mults,ParametricTolerance)
   
      :param Add:
      :type Add: :class:`Standard_Boolean`
      :param Knots:
      :type Knots: :class:`TColStd_Array1OfReal`
      :param Mults:
      :type Mults: :class:`TColStd_Array1OfInteger`
      :param ParametricTolerance:
      :type ParametricTolerance: :class:`Standard_Real`
   
      Inserts a set of knots  values in  the sequence of 
      knots.
      
      
      
      For each U = Knots(i), M = Mults(i)
      
      
      
      If ``U``  is an existing  knot  the  multiplicity is 
      increased by  ``M`` if  ``Add``  is True, increased to 
      ``M`` if ``Add`` is False.
      
      
      
      If U  is  not  on the parameter  range  nothing is 
      done.
      
      
      
      If the multiplicity is negative or null nothing is 
      done. The  new   multiplicity  is limited  to  the 
      degree.
      
      
      
      The  tolerance criterion  for  knots  equality  is 
      the max of Epsilon(U) and ParametricTolerance.
      
      

   .. method:: InvalidateCache()
   
      Invalidates the cache. This has to be private ````
      this has to be private
      
      

   .. method:: IsCN(N)
   
      :param N:
      :type N: :class:`Standard_Integer`
      :rtype: :class:`Standard_Boolean`
   
      :returns: The continuity of the curve, the curve is at least c0.  
      
      :exception: If ``n`` < 0.  

   .. method:: IsCacheValid(Parameter)
   
      :param Parameter:
      :type Parameter: :class:`Standard_Real`
      :rtype: :class:`Standard_Boolean`
   
      Tells whether the Cache is valid for the 
      given parameter 
      Warnings : the parameter must be normalized within 
      the period if the curve is periodic. Otherwise 
      the answer will be false
      
      

   .. method:: IsClosed()
   
      :rtype: :class:`Standard_Boolean`
   
      :returns: True if the distance between the first point and the ```` last point of the curve is lower or equal to :meth:`resolution` ```` from package gp. ```` warnings : ```` the first and the last point can be different from the first ```` pole and the last pole of the curve.  

   .. method:: IsPeriodic()
   
      :rtype: :class:`Standard_Boolean`
   
      :returns: True if the curve is periodic.  

   .. method:: IsRational()
   
      :rtype: :class:`Standard_Boolean`
   
      :returns: True if the weights are not identical. ```` the tolerance criterion is epsilon of the class real.  

   .. method:: Knot(Index)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :rtype: :class:`Standard_Real`
   
      :returns: The knot of range index. when there is a knot  with a multiplicity greater than 1 the knot is not repeated.  
      
      The method :meth:`Multiplicity` can be used to get the multiplicity 
      of the :meth:`Knot`.
      
      
      
      :exception: If ``index`` < 1 or ``index`` > :meth:`nbknots`  

   .. method:: KnotDistribution()
   
      :rtype: :class:`GeomAbs_BSplKnotDistribution`
   
      :returns: Nonuniform or uniform or quasiuniform or piecewisebezier. ```` if all the knots differ by a positive constant from the ```` preceding knot the bspline curve can be : ````  - uniform if all the knots are of multiplicity 1, ```` - quasiuniform if all the knots are of multiplicity 1 except for ````   the first and last knot which are of multiplicity :meth:`degree` + 1, ```` - piecewisebezier if the first and last knots have multiplicity ````   :meth:`degree` + 1 and if interior knots have multiplicity :meth:`degree` ````   a piecewise bezier with only two knots is a beziercurve. ````   else the curve is non uniform. ````   the tolerance criterion is epsilon from class real.   

   .. method:: KnotSequence(K)
   
      :param K:
      :type K: :class:`TColStd_Array1OfReal`
   
      :returns: K, the knots sequence of this bspline curve.  
      
      In this sequence, knots with a multiplicity greater than 1 are repeated.
      
      
      
      In the case of a non-periodic curve the length of the 
      sequence must be equal to the sum of the :meth:`NbKnots` 
      multiplicities of the knots of the curve (where 
      :meth:`NbKnots` is the number of knots of this BSpline 
      curve). This sum is also equal to : :meth:`NbPoles` + :meth:`Degree` + 1 
      where :meth:`NbPoles` is the number of poles and 
      :meth:`Degree` the degree of this BSpline curve.
      
      
      
      In the case of a periodic curve, if there are k periodic 
      knots, the period is Knot(k+1) - Knot(1).
      
      
      
      The initial sequence is built by writing knots 1 to k+1, 
      which are repeated according to their corresponding multiplicities.
      
      
      
      If :meth:`Degree` is the degree of the curve, the degree of 
      continuity of the curve at the knot of index 1 (or k+1)
      
      
      
      is equal to c = :meth:`Degree` + 1 - Mult(1). c 
      knots are then inserted at the beginning and end of 
      the initial sequence: 
      
      - the c values of knots preceding the first item 
        Knot(k+1) in the initial sequence are inserted 
        at the beginning; the period is subtracted from these c values; 
      - the c values of knots following the last item 
        Knot(1) in the initial sequence are inserted at 
        the end; the period is added to these c values.
        
      
      The length of the sequence must therefore be equal to: 
      :meth:`NbPoles` + 2*:meth:`Degree` - Mult(1) + 2.
      
      
      
      Example 
      For a non-periodic BSpline curve of degree 2 where: 
      
      - the array of knots is: { k1 k2 k3 k4 }, 
      - with associated multiplicities: { 3 1 2 3 }, 
        the knot sequence is: 
        ``K`` = { k1 k1 k1 k2 k3 k3 k4 k4 k4 }
        
      
      For a periodic BSpline curve of degree 4 , which is 
      *C1* continuous at the first knot, and where : 
      
      - the periodic knots are: { k1 k2 k3 (k4) } 
        (3 periodic knots: the points of parameter k1 and k4 
        are identical, the period is p = k4 - k1), 
      - with associated multiplicities: { 3 1 2 (3) }, 
        the degree of continuity at knots k1 and k4 is: 
        :meth:`Degree` + 1 - Mult(i) = 2.
        
      
      2 supplementary knots are added at the beginning 
      and end of the sequence: 
      
      - at the beginning: the 2 knots preceding k4 minus 
        the period; in this example, this is k3 - p both times; 
      - at the end: the 2 knots following k1 plus the period;
        
      
      in this example, this is k2 + p and k3 + p.
      
      
      
      The knot sequence is therefore: 
      ``K`` = { k3-p k3-p k1 k1 k1 k2 k3 k3 
      k4 k4 k4 k2+p k3+p }
      
      
      
      Exceptions 
      :class:`Standard_DimensionError` if the array ``K`` is not of 
      the appropriate length.Returns the knots sequence.
      
      

   .. method:: Knots(K)
   
      :param K:
      :type K: :class:`TColStd_Array1OfReal`
   
      :returns: The knot values of the b-spline curve;  
      
      .. warning::
         A knot with a multiplicity greater than 1 is not 
         repeated in the knot table. The :meth:`Multiplicity` function 
         can be used to obtain the multiplicity of each knot.
         
         
      
      :exception: If the length of ``k`` is not equal to the number of knots.  

   .. method:: LastParameter()
   
      :rtype: :class:`Standard_Real`
   
      Computes the parametric value of the end point of the curve. ````
      It is a knot value.
      
      

   .. method:: LastUKnotIndex()
   
      :rtype: :class:`Standard_Integer`
   
      For a BSpline curve the last parameter (which gives the ````
      end point of the curve) is a knot value but if the ````
      multiplicity of the last knot index is lower than ````
      :meth:`Degree` + 1 it is not the last knot of the curve. This ````
      method computes the index of the knot corresponding to ````
      the last parameter.
      
      

   .. method:: LocalD0(FromK1,P,ToK2,U)
   
      :param FromK1:
      :type FromK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToK2:
      :type ToK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
   
      :exception: If ``fromk1`` = tok2.  
      
      :exception: If ``fromk1`` and ``tok2`` are not in the range  [:meth:`firstuknotindex`, :meth:`lastuknotindex`].  

   .. method:: LocalD1(FromK1,P,ToK2,U,V1)
   
      :param FromK1:
      :type FromK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToK2:
      :type ToK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`gp_Vec`
   
      :exception: If the local continuity of the curve is not c1  between the knot k1 and the knot k2.  
      
      :exception: If ``fromk1`` = tok2.  
      
      :exception: If ``fromk1`` and ``tok2`` are not in the range  [:meth:`firstuknotindex`, :meth:`lastuknotindex`].  

   .. method:: LocalD2(FromK1,P,ToK2,U,V1,V2)
   
      :param FromK1:
      :type FromK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToK2:
      :type ToK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`gp_Vec`
      :param V2:
      :type V2: :class:`gp_Vec`
   
      :exception: If the local continuity of the curve is not c2  between the knot k1 and the knot k2.  
      
      :exception: If ``fromk1`` = tok2.  
      
      :exception: If ``fromk1`` and ``tok2`` are not in the range  [:meth:`firstuknotindex`, :meth:`lastuknotindex`].  

   .. method:: LocalD3(FromK1,P,ToK2,U,V1,V2,V3)
   
      :param FromK1:
      :type FromK1: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param ToK2:
      :type ToK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :param V1:
      :type V1: :class:`gp_Vec`
      :param V2:
      :type V2: :class:`gp_Vec`
      :param V3:
      :type V3: :class:`gp_Vec`
   
      :exception: If the local continuity of the curve is not c3  between the knot k1 and the knot k2.  
      
      :exception: If ``fromk1`` = tok2.  
      
      :exception: If ``fromk1`` and ``tok2`` are not in the range  [:meth:`firstuknotindex`, :meth:`lastuknotindex`].  

   .. method:: LocalDN(FromK1,N,ToK2,U)
   
      :param FromK1:
      :type FromK1: :class:`Standard_Integer`
      :param N:
      :type N: :class:`Standard_Integer`
      :param ToK2:
      :type ToK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :rtype: :class:`gp_Vec`
   
      :exception: If the local continuity of the curve is not cn  between the knot k1 and the knot k2.  
      
      :exception: If ``fromk1`` = tok2.  
      
      :exception: If ``n`` < 1.  
      
      :exception: If ``fromk1`` and ``tok2`` are not in the range  [:meth:`firstuknotindex`, :meth:`lastuknotindex`].  

   .. method:: LocalValue(FromK1,ToK2,U)
   
      :param FromK1:
      :type FromK1: :class:`Standard_Integer`
      :param ToK2:
      :type ToK2: :class:`Standard_Integer`
      :param U:
      :type U: :class:`Standard_Real`
      :rtype: :class:`gp_Pnt`
   
      :exception: If ``fromk1`` = tok2.  
      
      :exception: If ``fromk1`` and ``tok2`` are not in the range  [:meth:`firstuknotindex`, :meth:`lastuknotindex`].  

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
   
      Locates the parametric value ``U`` in the sequence of knots.
      
      
      
      If *WithKnotRepetition* is True we consider the knot's 
      representation with repetition of multiple knot value, 
      otherwise  we consider the knot's representation with 
      no repetition of multiple knot values. 
      :meth:`Knots` (I1) <= ``U`` <= :meth:`Knots` (I2) 
      
      1. if ``I1`` = ``I2``  U is a knot value (the tolerance criterion 
         ``ParametricTolerance`` is used). 
      2. if ``I1`` < 1  => ``U`` < :meth:`Knots` (1) - Abs(ParametricTolerance) 
      3. if ``I2`` > :meth:`NbKnots` => ``U`` > :meth:`Knots` (NbKnots) + Abs(ParametricTolerance)
      

   .. method:: MaxDegree()
   
      :rtype: :class:`Standard_Integer`
   
      :returns: The value of the maximum degree of the normalized ```` b-spline basis functions in this package.  

   .. method:: MovePoint(FirstModifiedPole,Index1,Index2,LastModifiedPole,P,U)
   
      :param FirstModifiedPole:
      :type FirstModifiedPole: :class:`Standard_Integer`
      :param Index1:
      :type Index1: :class:`Standard_Integer`
      :param Index2:
      :type Index2: :class:`Standard_Integer`
      :param LastModifiedPole:
      :type LastModifiedPole: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param U:
      :type U: :class:`Standard_Real`
   
      Moves the point of parameter ``U`` of this BSpline curve 
      to P. ``Index1`` and ``Index2`` are the indexes in the table 
      of poles of this BSpline curve of the first and last 
      poles designated to be moved. 
      ``FirstModifiedPole`` and ``LastModifiedPole`` are the 
      indexes of the first and last poles which are effectively modified.
      
      
      
      In the event of incompatibility between Index1, ``Index2`` and the value U: 
      
      - no change is made to this BSpline curve, and 
      - the ``FirstModifiedPole`` and ``LastModifiedPole`` are returned null.
        
      
      Exceptions 
      :class:`Standard_OutOfRange` if: 
      
      - ``Index1`` is greater than or equal to Index2, or 
      - ``Index1`` or ``Index2`` is less than 1 or greater than the 
        number of poles of this BSpline curve.
        

   .. method:: MovePointAndTangent(EndingCondition,ErrorStatus,P,StartingCondition,Tangent,Tolerance,U)
   
      :param EndingCondition:
      :type EndingCondition: :class:`Standard_Integer`
      :param ErrorStatus:
      :type ErrorStatus: :class:`Standard_Integer`
      :param P:
      :type P: :class:`gp_Pnt`
      :param StartingCondition:
      :type StartingCondition: :class:`Standard_Integer`
      :param Tangent:
      :type Tangent: :class:`gp_Vec`
      :param Tolerance:
      :type Tolerance: :class:`Standard_Real`
      :param U:
      :type U: :class:`Standard_Real`
   
      Move a point with parameter ``U`` to P.
      
      
      
      and makes it tangent at ``U`` be Tangent. 
      ``StartingCondition`` = -1 means first can move 
      ``EndingCondition``   = -1 means last point can move 
      ``StartingCondition`` = 0 means the first point cannot move 
      ``EndingCondition``   = 0 means the last point cannot move 
      ``StartingCondition`` = 1 means the first point and tangent cannot move 
      ``EndingCondition``   = 1 means the last point and tangent cannot move 
      and so forth 
      ``ErrorStatus`` != 0 means that there are not enought degree of freedom 
      with the constrain to deform the curve accordingly
      
      

   .. method:: Multiplicities(M)
   
      :param M:
      :type M: :class:`TColStd_Array1OfInteger`
   
      :returns: The multiplicity of the knots of the curve.  
      
      :exception: If the length of ``m`` is not equal to :meth:`nbknots`.  

   .. method:: Multiplicity(Index)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :rtype: :class:`Standard_Integer`
   
      :returns: The multiplicity of the knots of range index.  
      
      :exception: If ``index`` < 1 or ``index`` > :meth:`nbknots`  

   .. method:: NbKnots()
   
      :rtype: :class:`Standard_Integer`
   
      :returns: The number of knots. this method returns the number of ```` knot without repetition of multiple knots.  

   .. method:: NbPoles()
   
      :rtype: :class:`Standard_Integer`
   
      :returns: The number of poles  

   .. method:: PeriodicNormalization(U)
   
      :param U:
      :type U: :class:`Standard_Real`
   
      :returns: The parameter normalized within  the period if the curve is periodic : otherwise  does not do anything  

   .. method:: Pole(Index)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :rtype: :class:`gp_Pnt`
   
      :returns: The pole of range index.  
      
      :exception: If ``index`` < 1 or ``index`` > :meth:`nbpoles`.  

   .. method:: Poles(P)
   
      :param P:
      :type P: :class:`TColgp_Array1OfPnt`
   
      :returns: The poles of the b-spline curve;  
      
      :exception: If the length of ``p`` is not equal to the number of poles.  

   .. method:: RemoveKnot(Index,M,Tolerance)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :param M:
      :type M: :class:`Standard_Integer`
      :param Tolerance:
      :type Tolerance: :class:`Standard_Real`
      :rtype: :class:`Standard_Boolean`
   
      Reduces the multiplicity of the knot of index ``Index`` 
      to M. If ``M`` is equal to 0, the knot is removed.
      
      
      
      With a modification of this type, the array of poles is also modified.
      
      
      
      Two different algorithms are systematically used to 
      compute the new poles of the curve. If, for each 
      pole, the distance between the pole calculated 
      using the first algorithm and the same pole 
      calculated using the second algorithm, is less than 
      Tolerance, this ensures that the curve is not 
      modified by more than Tolerance. Under these 
      conditions, true is returned; otherwise, false is returned.
      
      
      
      A low tolerance is used to prevent modification of 
      the curve. A high tolerance is used to *smooth* the curve.
      
      
      
      Exceptions 
      :class:`Standard_OutOfRange` if ``Index`` is outside the 
      bounds of the knots table.  pole insertion and pole removing 
      this operation is limited to the Uniform or QuasiUniform 
      BSplineCurve. The knot values are modified . If the BSpline is 
      NonUniform or Piecewise Bezier an
      
      
      
      exception Construction error 
      is raised.
      
      

   .. method:: Resolution(Tolerance3D,UTolerance)
   
      :param Tolerance3D:
      :type Tolerance3D: :class:`Standard_Real`
      :param UTolerance:
      :type UTolerance: :class:`Standard_Real`
   
      Computes for this BSpline curve the parametric 
      tolerance ``UTolerance`` for a given 3D tolerance Tolerance3D.
      
      
      
      If f(t) is the equation of this BSpline curve, 
      ``UTolerance`` ensures that: 
      | t1 - t0| < Utolerance ===> 
      |f(t1) - f(t0)| < ``Tolerance3D``
      
      

   .. method:: Reverse()
   
      Changes the direction of parametrization of ``me``. The :meth:`Knot` ````
      sequence is modified, the :meth:`FirstParameter` and the ````
      :meth:`LastParameter` are not modified. The :meth:`StartPoint` of the ````
      initial curve becomes the :meth:`EndPoint` of the reversed curve ````
      and the :meth:`EndPoint` of the initial curve becomes the :meth:`StartPoint` ````
      of the reversed curve.
      
      

   .. method:: ReversedParameter(U)
   
      :param U:
      :type U: :class:`Standard_Real`
      :rtype: :class:`Standard_Real`
   
      :returns: The  parameter on the  reversed  curve for  the point of parameter ``u`` on ``me``.  
      
      :returns: Ufirst + ulast - ``u``  

   .. method:: Segment(U1,U2)
   
      :param U1:
      :type U1: :class:`Standard_Real`
      :param U2:
      :type U2: :class:`Standard_Real`
   
      Modifies this BSpline curve by assigning the value K 
      to the knot of index Index in the knots table. This is a 
      relatively local modification because K must be such that: 
      Knots(Index - 1) < K < Knots(Index + 1)
      
      
      
      The second syntax allows you also to increase the 
      multiplicity of the knot to M (but it is not possible to 
      decrease the multiplicity of the knot with this function). 
      :class:`Standard_ConstructionError` if: 
      
      - K is not such that: 
        Knots(Index - 1) < K < Knots(Index + 1) 
      - M is greater than the degree of this BSpline curve 
        or lower than the previous multiplicity of knot of 
        index Index in the knots table. 
        :class:`Standard_OutOfRange` if Index is outside the bounds of the knots table.
        

   .. method:: SetKnots(K)
   
      :param K:
      :type K: :class:`TColStd_Array1OfReal`
   
      Changes the knot of range Index with its multiplicity.
      
      
      
      You can increase the multiplicity of a knot but it is 
      not allowed to decrease the multiplicity of an existing knot.
      
      
      
      :exception: If ``k`` >= knots(index+1) or ``k`` <= knots(index-1).  
      
      :exception: If m is greater than :meth:`degree` or lower than the previous  multiplicity of knot of range index.  
      
      :exception: If index < 1 || index > :meth:`nbknots`  

   .. method:: SetNotPeriodic()
   
      Modifies this BSpline curve by assigning P to the pole ````
      of index Index in the poles table. ````
      This syntax also allows you to modify the ````
      weight of the modified pole, which becomes :meth:`Weight`. ````
      In this case, if this BSpline curve is non-rational, it ````
      can become rational and vice versa. ````
      Exceptions ````
      :class:`Standard_OutOfRange` if Index is outside the ````
      bounds of the poles table. ````
      :class:`Standard_ConstructionError` if :meth:`Weight` is negative or null.
      
      

   .. method:: SetPeriodic()
   
      Set the origin of a periodic curve at :meth:`Knot` U. If U ````
      is ```` not a ```` knot ```` of ```` the ```` BSpline ```` a ```` new knot ```` is ````
      inseted. KnotVector and poles are modified. ````
      
      
      
      :exception: If the curve is not periodic  

   .. method:: SetWeight(Index,Weight)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :param Weight:
      :type Weight: :class:`Standard_Real`
   
      Changes the weight for the pole of range Index.
      
      
      
      If the curve was non rational it can become rational.
      
      
      
      If the curve was rational it can become non rational.
      
      
      
      :exception: If ``index`` < 1 || ``index`` > :meth:`nbpoles`  
      
      :exception: If :meth:`weight` <= 0.0  

   .. method:: StartPoint()
   
      :rtype: :class:`gp_Pnt`
   
      :returns: The start point of the curve. ```` warnings : ```` this point is different from the first pole of the curve if the ```` multiplicity of the first knot is lower than :meth:`degree`.  

   .. method:: Transform(T)
   
      :param T:
      :type T: :class:`gp_Trsf`
   
      Applies the transformation ``T`` to this BSpline curve.
      
      

   .. method:: UpdateKnots()
   
      Recompute ```` the ```` flatknots, ```` the knotsdistribution, the continuity.
      
      

   .. method:: ValidateCache(Parameter)
   
      :param Parameter:
      :type Parameter: :class:`Standard_Real`
   
      updates the cache and validates it
      
      

   .. method:: Weight(Index)
   
      :param Index:
      :type Index: :class:`Standard_Integer`
      :rtype: :class:`Standard_Real`
   
      :returns: The weight of the pole of range ``index`` .  
      
      :exception: If ``index`` < 1 or ``index`` > :meth:`nbpoles`.  

   .. method:: Weights(W)
   
      :param W:
      :type W: :class:`TColStd_Array1OfReal`
   
      :returns: The weights of the b-spline curve;  
      
      :exception: If the length of ``w`` is not equal to :meth:`nbpoles`.  