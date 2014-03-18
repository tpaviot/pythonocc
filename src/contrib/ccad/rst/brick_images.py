import math
import ccad
import brick

def generate_images(xsize, ysize):
    unit = 5.0
    height = 10.0
    center = (unit*xsize/2, unit*ysize/2, height/2)
    projections = {'top': (center, (0.0, 0.0, 1.0), (0.0, 1.0, 0.0)),
                   'side': (center, (1.0, 0.0, 0.0), (0.0, 0.0, 1.0)),
                   'iso': (center,
                           (math.sqrt(0.4), -math.sqrt(0.4), math.sqrt(0.2)),
                           (-math.sqrt(0.5), math.sqrt(0.5), 0.0)),
                   'bottom': (center,
                              (math.sqrt(0.4), -math.sqrt(0.4), -math.sqrt(0.2)),
                              (-math.sqrt(0.5), math.sqrt(0.5), 0.0))}
    
    b1 = brick.brick(xsize, ysize, fillet = False)
    v1 = ccad.view()

    v1.set_background((1.0, 1.0, 1.0))
    v1.set_scale(24.0)
    v1.set_size((600, 400))

    for projection in projections:
        vcenter, vout, vup = projections[projection]
        v1.clear()
        v1.set_projection(vcenter, vout, vup)
        v1.display(b1, color = (0.0, 0.0, 0.0), line_width = 2.0)
        v1.mode_drawing()
        v1.save(name = 'brick_' + projection + '.png')

if __name__ == '__main__':
    generate_images(4, 2)
