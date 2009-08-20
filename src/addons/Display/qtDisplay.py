##Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import sys
import math
from PyQt4 import QtCore, QtGui, QtOpenGL
import OCCViewer

class Window(QtGui.QWidget):
    def __init__(self, parent=None):
        QtGui.QWidget.__init__(self, parent)
        self.OCCWidget = OCCWidget()
        mainLayout = QtGui.QHBoxLayout()
        mainLayout.addWidget(self.OCCWidget)
        self.setLayout(mainLayout)
        self.setWindowTitle("pythonOCC qt Viewer")

class OCCWidget(QtGui.QWidget):
    def __init__(self, parent=None):
        QtGui.QWidget.__init__(self, parent)
                
    def InitDriver(self):
        idw = self.winId()
        self._display = OCCViewer.Viewer3d(int(idw))
        self._display.Create()
        self._display.DisplayTriedron()
        self._display.Test()
     
if __name__ == '__main__':
    app = QtGui.QApplication(sys.argv)
    window = Window()    
    window.OCCWidget.InitDriver()
    window.show()
    sys.exit(app.exec_())

