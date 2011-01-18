Describes a BSpline surface.
----------------------------



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
  

The degree of a ref:`Geom_BSplineSurface` is limited to 
a value (25) which is defined and controlled by the 
system. This value is returned by the function MaxDegree.



Poles and Weights 
------------------
Poles and Weights are manipulated using two associative double arrays: 

- the poles table, which is a double array of ref:`gp_Pnt` points, and 
- the weights table, which is a double array of reals.
  

The bounds of the poles and weights arrays are: 

- 1 and NbUPoles for the row bounds (provided 
  that the BSpline surface is not periodic in the u 
  parametric direction), where NbUPoles is the 
  number of poles of the surface in the u parametric direction, and 
- 1 and NbVPoles for the column bounds (provided 
  that the BSpline surface is not periodic in the v 
  parametric direction), where NbVPoles is the 
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
-------------------------
For a ref:`Geom_BSplineSurface` the table of knots is 
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
  Pole(i+p) = Pole(i) 
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
