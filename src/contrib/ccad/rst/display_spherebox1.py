import ccad

def main():
    s1 = ccad.sphere(1.0)
    s2 = ccad.box(1.0, 2.0, 3.0)
    s2.translate((2.0, 0.0, 0.0))
    v1 = ccad.view()
    v1.display(s1)
    v1.display(s2)
    ccad.start()

if __name__ == '__main__':
    main()
