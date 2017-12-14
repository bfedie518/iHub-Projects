/* Rat Cage
 *  Designed by: Brandon Fedie
 */

//Colors
col_hinge = [.5, .5, .5];
col_hook = [1, 1, 1];
col_exterior = [.55, .27, .07];
col_floor = [.5, 0, 0];

module mesh(width, height, spacing = 0.5, radius = .05){
    xrep = width / spacing;
    yrep = height / spacing;

    color(col_hinge){
        for (i = [0 : xrep]){
            translate([spacing * i, 0, 0]) cylinder(height, radius, radius, false);
        }

        for (i = [0 : yrep]){
            translate([width, 0, spacing * i]) rotate([0, -90, 0]) cylinder(width, radius, radius, false);
        }
    }
}


//Bottom Cage
translate([0, 0, 0]){
    //Outside frame
    translate([0, 0, 1.5]) cube([3.5, 1.5, 12]);
    translate([0, 13.5, 1.5]) cube([3.5, 1.5, 12]);
    translate([20.5, 0, 1.5]){
        cube([3.5, 1.5, 12]);
        translate([0, 13.5, 0]) cube([3.5, 1.5, 12]);
    }
    //Frame
    translate([0, 1.5, 1.5]) cube([1.5, 12, 3.5]);
    translate([22.5, 1.5, 1.5]) cube([1.5, 12, 3.5]);
    translate([3.5, 0, 1.5]) cube([17, 1.5, 3.5]);
    translate([3.5, 13.5, 1.5]) cube([17, 1.5, 3.5]);

    //Floor
    color(col_floor) translate([1.5, 1.5, 1.5]) cube([21, 12, 1]);

    translate([0, 0, 0]) cube([3.5, 15, 1.5]);
    translate([20.5, 0, 0]) cube([3.5, 15, 1.5]);
    translate([3.5, 0, 0]) cube ([17, 3.5, 1.5]);
    translate([3.5, 11.5, 0]) cube ([17, 3.5, 1.5]);

    //latches
    color(col_hook){
        translate([.75, -.5, 12.5]) cube([2, .5, 2]);
        translate([21.25, -.5, 12.5]) cube([2, .5, 2]);
        translate([.75, 15, 12.5]) cube([2, .5, 2]);
        translate([21.25, 15, 12.5]) cube([2, .5, 2]);
    }

    //Door
    translate([14.5, 0, 10]) cube([6, 1.5, 1]); //frame1
    translate([14.5, 0, 5]) cube([1, 1.5, 5]); //frame2

    translate([15.5, 0, 5]) cube([5, 1.5, 5]);

    color(col_hinge) translate([19.5, -.5, 6.5]) cube([2, .5, 2]);
    color(col_hook) translate([14.5, -.5, 6.5]) cube([2, .5, 2]);

    //Mesh
    translate([2.5, 0, 4]) mesh(13, 9.5); //front1
    translate([15.5, 0, 10]) mesh(6, 3.5); //front2

    translate([2.5, 15, 4]) mesh(19, 9.5); //back
    translate([0, 14.5, 4]) rotate([0, 0, -90]) mesh(14, 9.5); //left
    translate([24, 14.5, 4]) rotate([0, 0, -90]) mesh(14, 9.5); //right

}

//Top Cage
translate([0, 0, 13.5]){
    translate([0, 0, 1.5]) cube([3.5, 1.5, 18]);
    translate([0, 13.5, 1.5]) cube([3.5, 1.5, 18]);
    translate([20.5, 0, 1.5]){
        cube([3.5, 1.5, 18]);
        translate([0, 13.5, 0]) cube([3.5, 1.5, 18]);
    }
    //Frame
    translate([0, 1.5, 1.5]) cube([1.5, 12, 3.5]);
    translate([22.5, 1.5, 1.5]) cube([1.5, 12, 3.5]);
    translate([3.5, 0, 1.5]) cube([17, 1.5, 3.5]);
    translate([3.5, 13.5, 1.5]) cube([17, 1.5, 3.5]);

    //Floor
    color(col_floor) translate([1.5, 1.5, 1.5]) cube([21, 12, 1]);

    translate([0, 0, 0]) cube([3.5, 15, 1.5]);
    translate([20.5, 0, 0]) cube([3.5, 15, 1.5]);
    translate([3.5, 0, 0]) cube ([17, 3.5, 1.5]);
    translate([3.5, 11.5, 0]) cube ([17, 3.5, 1.5]);

    //latches
    color(col_hook){
        translate([.75, -.5, 18.5]) cube([2, .5, 2]);
        translate([21.25, -.5, 18.5]) cube([2, .5, 2]);
        translate([.75, 15, 18.5]) cube([2, .5, 2]);
        translate([21.25, 15, 18.5]) cube([2, .5, 2]);
    }

    //Mesh
    translate([2.5, 0, 4]) mesh(19, 15.5);
    translate([2.5, 15, 4]) mesh(19, 15.5);
    translate([0, 14.5, 4]) rotate([0, 0, -90]) mesh(14, 15.5);
    translate([24, 14.5, 4]) rotate([0, 0, -90]) mesh(14, 15.5);

}


//Roof
translate([0, 0, 33]){
    cube([24, 3.5, 1.5]);
    translate([0, 11.5, 0]) cube([24, 3.5, 1.5]);

    translate([0, 3.5, 0]) cube([3.5, 8, 1.5]); //left
    translate([20.5, 3.5, 0]) cube([3.5, 8, 1.5]); //right

    translate([1.75, 1.5, -1.5]) cube([3.5, 12, 1.5]); //left
    translate([18.75, 1.5, -1.5]) cube([3.5, 12, 1.5]); //right

    color(col_hinge){
        translate([2.5, 4, 1.5]) cube([2, 2, .5]); //hinge
        translate([2.5, 9, 1.5]) cube([2, 2, .5]); //hinge2
    }
    color(col_hook) translate([19, 6.5, 1.5]) cube([3, 2, .5]); //latch

    //Flap
    translate([3.5, 3.5, 0]) cube([17, 1.75, 1.5]);
    translate([3.5, 9.75, 0]) cube([17, 1.75, 1.5]);
    translate([3.5, 5.25, 0]) cube([1.75, 4.5, 1.5]);
    translate([19, 5.25, 0]) cube([1.75, 4.5, 1.5]);

    //Mesh
    translate([4.25, 4.25, 1.5]) rotate([-90, 0, 0]) mesh(16, 6.5);
}


