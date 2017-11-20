$fn = 100;

module heart(r){
    d = r*2;
    rotate([0, 0, 45]){
        square(d);
        translate([r, d, 0]) 
            difference(){
                circle(r);
                translate([0, -r, 0]) square(d, center=true);
            }

        translate([d, r, 0])
            difference(){
                circle(r);
                translate([-r, 0, 0]) square(d, center=true);
            }
    }
}

heart(25);

