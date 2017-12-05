header = '<?xml version="1.0" encoding="UTF-8" standalone="no"?>\n\
<svg\n\
   xmlns:dc="http://purl.org/dc/elements/1.1/"\n\
   xmlns:cc="http://creativecommons.org/ns#"\n\
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\n\
   xmlns:svg="http://www.w3.org/2000/svg"\n\
   xmlns="http://www.w3.org/2000/svg"\n\
   id="svg116"\n\
   version="1.1"\n\
   viewBox="0 0 812.8 457.2"\n\
   height="18in"\n\
   width="32in">\n\
  <defs\n\
     id="defs110" />\n\
  <metadata\n\
     id="metadata113">\n\
    <rdf:RDF>\n\
      <cc:Work\n\
         rdf:about="">\n\
        <dc:format>image/svg+xml</dc:format>\n\
        <dc:type\n\
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />\n\
        <dc:title></dc:title>\n\
      </cc:Work>\n\
    </rdf:RDF>\n\
  </metadata>\n'

style = '    style="fill:none;fill-opacity:1;stroke:#ff0000;stroke-width:0.00035278;\
        stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"\n'


conv_factor = 25.4
adjustment = .0625

def main():
    mat_width = (float)(input("Material thickness: "))
    disp_length = (float)(input("Display length (recommended: 7): ")) 
    filename = input("Filename: ")
    disp_height = (1.0 / 7.0) * disp_length

    if not filename.endswith(".svg"):
        filename += ".svg"

    back = {'name' : "back"}
    back['width'] = disp_length - mat_width
    back['height'] = disp_height

    front = {'name' : "front"}
    front['width'] = (4.0 / 7.0) * disp_length
    front['height'] = disp_height + 2 * mat_width

    left = {'name' : "left"}
    left['width'] = 2 * mat_width + adjustment
    left['height'] = disp_height + 2 * mat_width

    right = {'name' : "right"}
    right['width'] = 2 * mat_width + adjustment
    right['height'] = disp_height + 2 * mat_width

    top = {'name' : "top"}
    top['width'] = disp_length - mat_width
    top['height'] = 2 * mat_width + adjustment

    bottom = {'name' : "bottom"}
    bottom['width'] = disp_length - mat_width
    bottom['height'] = 2 * mat_width + adjustment

    slider_base = {'name' : "slider_base"}
    slider_base['width'] = (4.0/7.0) * disp_length - (.25/7.0) * disp_length
    slider_base['height'] = disp_height - adjustment / 2.0

    slider_end = {'name' : "slider_end"}
    slider_end['width'] = (14.0/3.0) * mat_width
    slider_end['height'] = disp_height - adjustment / 2.0


    back['x'] = .125
    back['y'] = .125

    top['x'] = .125
    top['y'] = back['y'] + back['height'] + .125

    bottom['x'] = .125
    bottom['y'] = top['y'] + top['height'] + .125

    front['x'] = .125
    front['y'] = bottom['y'] + bottom['height'] + .125

    left['x'] = front['x'] + front['width'] + .125
    left['y'] = front['y']

    right['x'] = left['x'] + left['width'] + .125
    right['y'] = left['y']

    slider_end['x'] = right['x'] + right['width'] + .125
    slider_end['y'] = right['y']

    slider_base['x'] = .125
    slider_base['y'] = front['y'] + front['height'] + .125

    total_x = .25 + back['width']
    total_y = .125 + slider_base['y'] + slider_base['height']

    dictionaries = [back, top, bottom, front, left, right, slider_end, slider_base]

    for dicts in dictionaries:
        dicts['height'] *= conv_factor
        dicts['width'] *= conv_factor
        dicts['x'] *= conv_factor
        dicts['y'] *= conv_factor

    contents = header

    for dicts in dictionaries:
        contents += '  <rect\n'
        contents += style
        contents += '    id=\'' + str(dicts['name']) + '\'\n'
        contents += '    width=\'' + str(dicts['width']) + '\'\n'
        contents += '    height=\'' + str(dicts['height']) + '\'\n'
        contents += '    x=\'' + str(dicts['x']) + '\'\n'
        contents += '    y=\'' + str(dicts['y']) + '\' />\n'

    contents += '\n</svg>'

    file = open(filename, "w")
    file.write(contents)
    file.close()

    print("\nSize of piece required: " + str(total_x) + "in x " + str(total_y) + "in")

if __name__ == '__main__':
    main()
