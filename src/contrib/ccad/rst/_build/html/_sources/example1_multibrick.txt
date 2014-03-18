Multiple Bricks
===============

Because ccad is python-programming, it allows huge power in design
reuse.  Our building toy serves as a great example.

I'll create a new file and call it **all_bricks.py**.  First, I'll
define the various brick sizes I want in the toy::

  import ccad
  import brick

  sizes = [(1, 1),
      	   (2, 1),
           (4, 1),
	   (6, 1),
           (8, 1),
	   (2, 2),
	   (2, 4),
	   (2, 8),
	   (4, 4)]

Now, I'll define a display function to view a given brick::

  def display_brick(widget, view, size):
      view.clear()
      view.display(brick.brick(size[0], size[1]))

Finally, I'll write the code to run at startup::

  if __name__ == '__main__':
      v1 = ccad.view()
      for size in sizes:
          name = 'brick' + str(size[0]) + 'x' + str(size[1])
          v1.add_menuitem(('Bricks', name), display_brick, v1, size)
      ccad.start()

The startup code instantiates a view, adds a menu item for every brick
in **sizes** and starts the viewer in stand-alone mode.

The figure below shows the **all_bricks.py** window with the *8x1* brick
displayed:

.. image:: example1_all_bricks.png

Try to appreciate the power.  With a few more lines, I can generate 9
different bricks from single brick code, and because it's python, the
complexity is nearly unlimited.  By contrast, complicated model reuse
can be difficult-to-impossible in GUI-based CAD systems.

