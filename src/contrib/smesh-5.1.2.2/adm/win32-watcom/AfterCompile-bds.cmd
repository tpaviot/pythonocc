MKDIR ..\..\win32\bin-bds\
MKDIR ..\..\win32\bind-bds\
COPY MEFISTO2F.DLL ..\..\win32\bin-bds\MEFISTO2F.DLL
MOVE MEFISTO2F.DLL ..\..\win32\bind-bds\MEFISTO2F.DLL
DEL areteideale.obj
DEL MEFISTO2F.lib
DEL MEFISTO2F.lk1
DEL MEFISTO2F.map
DEL MEFISTO2F.mk
DEL MEFISTO2F.mk1
DEL trte.obj