from OCC.gp import *
from OCC.Standard import *
from time import time

n=1000000
t1 = time()
# creat n points
for i in range(n):
    P = Handle_Standard_Transient()
print(time()-t1)
input("popo")
# bench results
# for 1000000 gp_Pnt : 24s
# for 1000000 Handle_Standard_Transient : 22,6s
# for 1000000 Standard_Transient : 23,1s

# after becnch
# for 1000000 Handle_Standard_Transient : 14,2s
# for 1000000 Standard_Transient : 15,5s
# for 1000000 gp_Pnt : 14,5s

# after another optim
# for 1000000 Handle_Standard_Transient : 14,2s
# for 1000000 Standard_Transient : 15,5s
# for 1000000 gp_Pnt : 14,5s



