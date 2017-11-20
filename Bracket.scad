module plate(x, y, z, r, center=false) {
    difference(){
        cube([x, y, z], center=center);
        if (!center)
            translate([x/2, y/2, -z/2 - .5]) cylinder(h=z+1.5, r=r, $fn = 30);
        else
            translate([0, 0, -z/2 - .5]) cylinder(h=z+1.5, r=r, $fn = 30);
    }
}

module bracket(x, y, z, r, center=false){
    plate(x, y, z, r, center);
    if (!center)
        rotate(a=90, v=[1, 0, 0]) plate(x, y + z, z, r, center);
    else
        translate([0, -y/2, y/2]) rotate(a=90, v=[1, 0, 0]) plate(x, y + z, z, r, center);
}

bracket(6, 6, 1, .5, true);
