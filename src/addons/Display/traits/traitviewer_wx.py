from OCC.Display.traits.traitocc_viewer import TraitOCCViewer3d
from OCC.Display.wxDisplay import wxViewer3d


class OCCTraitViewerWx(wxViewer3d):
    def __init__(self, editor=None, selection=None, **kwargs):
        super(OCCTraitViewerWx, self).__init__(**kwargs)
        self.editor = editor

        self._initialized = False
#        self.setSizePolicy(Qt.QSizePolicy(Qt.QSizePolicy.Expanding, Qt.QSizePolicy.Expanding));
        self.SetMinSize((100, 150))

    def OnPaint(self, event):
        # Display can only be initialized when window is shown.
        # Showing windows etc is all magically done by traits
        # Initializing on the first paint event.
        # (resizeEvent and showEvent are too early)
        if not self._initialized:
            self.InitDriver()
            self._initialized = True
            self.editor.initialized = True

        super(OCCTraitViewerWx, self).OnPaint(event)

    def InitDriver(self):
        #need to override this to set custom Viewer
        self._display = TraitOCCViewer3d(self.GetHandle())
        self._display.Create()
        self._display.DisplayTriedron()
        self._display.SetModeShaded()
        self._inited = True
        # dict mapping keys to functions
        self._SetupKeyMap()

    def OnRightUp(self,evt):
        super(OCCTraitViewerWx, self).OnRightUp(evt)
        #not the nicest solution but heck.

        if len(self.editor.selection) < 1:
            self.editor.selection.append(self._display.selected_shape)
        else:
            self.editor.selection[0] = self._display.selected_shape

#    def OnLeftUp(self,evt):
#        super(OCCTraitViewerWx, self).OnLeftUp(evt)
#        #not the nicest solution but heck.
#
#        if len(self.editor.selection) < 1:
#            self.editor.selection.append(self._display.selected_shape)
#        else:
#            self.editor.selection[0] = self._display.selected_shape


