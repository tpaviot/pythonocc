from OCC.Display.qtDisplay import qtViewer3d
from PyQt4 import Qt

class OCCTraitViewerQtQt(qtViewer3d):
    def __init__(self, editor=None, selection=None, **kwargs):
        super(OCCTraitViewerQtQt, self).__init__(**kwargs)
        self.editor = editor

        self._initialized = False
        self.setSizePolicy(Qt.QSizePolicy(Qt.QSizePolicy.Expanding, Qt.QSizePolicy.Expanding));
        self.setMinimumHeight(100)
        self.setMinimumWidth(150)


    def paintEvent(self, event):
        # Display can only be initialized when window is shown.
        # Showing windows etc is all magically done by traits
        # Initializing on the first paint event.
        # (resizeEvent and showEvent are too early)
        if not self._initialized:
            self.InitDriver()
            self._initialized = True
            self.editor.initialized = True

        super(OCCTraitViewerQt, self).paintEvent(event)

    def InitDriver(self):
        #need to override this to set custom Viewer
        self._display = TraitOCCViewer3d(self.GetHandle())
        self._display.Create()
        self._display.DisplayTriedron()
        self._display.SetModeShaded()
        self._inited = True
        # dict mapping keys to functions
        self._SetupKeyMap()

    def mouseReleaseEvent(self, event):
        super(OCCTraitViewerQt, self).mouseReleaseEvent(event)
        #not the nicest solution but heck.

        if len(self.editor.selection) < 1:
            self.editor.selection.append(self._display.selected_shape)
        else:
            self.editor.selection[0] = self._display.selected_shape