Interactive Viewing
===================

Introduction
------------

To run the viewer in stand-alone mode, you need ipython.  Start
ipython with::

  ipython -gthread

The ccad viewer uses gtk; that's why you use the -gthread option.

Now, from the ipython prompt, you can work with ccad interactively.
Try this::

  In [1]: import ccad
  In [2]: s1 = ccad.sphere(1.0)
  In [3]: s2 = ccad.box(1.0, 2.0, 3.0)
  In [4]: s2.translate((2.0, 0.0, 0.0))
  In [5]: v1 = ccad.view()

After the last line, you should see a window appear with nothing in
it.  **v1** is an instance of a viewing window.  Now type::

  In [6]: v1.display(s1)

You should see **s1** in your window.  Move to the window, hold on the
middle mouse button and pan.  You should see the shape moving.  Now,
go back to the ipython prompt and type::

  In [7]: v1.display(s2)

You'll see **s2** appear in the viewer.

To clear the window, use::

  In [8]: v1.clear()

You have interactive viewing.

Now, start a second window with::

  In [9]: v2 = ccad.view()

**v2** is an instance of the second displayed window.  Add something
different to it::

  In [10]: v2.display(ccad.cone(4.0, 2.0, 2.0))

Note that each viewer is independent.  You may create as many view
windows as you like.
