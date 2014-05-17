
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

def display_brick(widget, view, size):
    view.clear()
    view.display(brick.brick(size[0], size[1]))

if __name__ == '__main__':
    view1 = ccad.view()
    for size in sizes:
        name = 'brick' + str(size[0]) + 'x' + str(size[1])
        view1.add_menuitem(('Bricks', name), display_brick, view1, size)
    ccad.start()
