Configuring Display
===================

The viewer has a few simple configuring options to customize it for
your application.

add_menuitem
------------

You may add another pulldown menu item with **add_menuitem**.  The
following example adds the item *Car1* under the *Model* menu::

  v1.add_menuitem(('Model', 'Car1'), display_car, 1)
  v1.add_menuitem(('Model', 'Car2'), display_car, 2)

The first argument is a tuple that defines the menu hierarchy.  The
first item in the tuple is the pull-down menu title.  The last item is
the menu item.  Intermediate items are submenus.  If a menu doesn't
exist, it is created.  **display_car** is the function to call when the
item is selected.  Pass parameters follow the function call.
**display_car** might look like this::

  def display_car(widget, version):
      ...

add_menu
--------

If you know gtk and you want menu items fancier than strings,
**add_menu**, a lower-level menu manipulation method is available.  See
the API for details.
