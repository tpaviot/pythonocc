Stand-Alone Viewing
===================

To run the viewer stand-alone, from your own python program, call
ccad.display() on all the shapes you'd like to see, then call
ccad.start(), which will start the GUI (Graphical User Interface).
The following python program creates a sphere and a box, calls the
display function on each, then starts the viewer:

.. literalinclude:: display_spherebox1.py

If you've read about modelling, you should understand the listing up
to the view line::

  v1 = ccad.view()

which instantiates a ccad viewing window.  The next line::

  v1.display(s1)

displays s1 in the v1 window.  And::

  v1.display(s2)

displays s2 in the v1 window.  The final line::

  ccad.start()

starts the viewer.  Once you start the viewer, the program is locked
until you exit the viewer.  Usually, you want to make this the last
line in your code.

After running, the following window appears

.. image:: display_spherebox1.png

Now, you can view your design.
