from OCC.Utils.Construct import *
from OCC.KBE.base import Display

d = Display()

origin = gp_Vec(0,0,0)
origin_pt = origin.as_pnt()

vX = gp_Vec(12,0,0)
vY = gp_Vec(0,12,0)
vZ = gp_Vec(0,0,12)
v45 = (gp_Vec(1,1,1).Normalized()*12)
q1  = gp_Quaternion(vX,vY)

p1 = (origin + vX).as_pnt()
p2 = (origin + vY).as_pnt()
p3 = (origin + (q1 * vY)).as_pnt()
p4 = (origin + (q1 * v45)).as_pnt()

# RED
e1  = make_edge(origin_pt, p1)
e2  = make_edge(origin_pt, p2)
e3  = make_edge(origin_pt, v45.as_pnt())
# GREEN -> transformed
e4  = make_edge(origin_pt, p3)
e5  = make_edge(origin_pt, p4)


d.display.DisplayShape([e1,e2,e3])
d.display.DisplayColoredShape([e4,e5], 'GREEN')
d.display.DisplayMessage(p1, 'e1')
d.display.DisplayMessage(p2, 'e2')
d.display.DisplayMessage(v45.as_pnt(), 'e3')
d.display.DisplayMessage(p3, 'q1*vY')
d.display.DisplayMessage(p4, 'q1*v45')
d.display.DisplayVector((q1 * vY).Normalized(), (origin + q1*vY/2.).as_pnt())
d.display.DisplayVector((q1 * v45).Normalized(), (origin + q1*v45/2.).as_pnt())

d.display.EnableAntiAliasing()


interp = gp_QuaternionSLerp(gp_Quaternion(vX,vX), gp_Quaternion(vX,vY))
for i in range(10):
    q = gp_Quaternion()
    interp.Interpolate(i/10., q)
    # displace the white edges a little from the origin so not to obstruct the other edges
    v = gp_Vec(0,-24,0)
    p = (q * v45 + v).as_pnt()
    e = make_edge((origin + v).as_pnt(), p)
    d.display.DisplayColoredShape(e, 'WHITE')
    d.display.DisplayMessage(p, 'v45->q1*v45 @{0}'.format(i/10.))


#orientA = gp_Quaternion(gp_Vec(1,0,0), math.radians(-90.))
#orientB = gp_Quaternion(gp_Vec(0,1,0), math.radians(90.))
#orientC = (orientA+orientB).Normalized()
#
#orientD = gp_Quaternion(gp_Vec(1,0,0), gp_Vec(1/3.,1/3.,1/3.))
#print orientD * gp_Vec(0,0,1)

d.start_display()