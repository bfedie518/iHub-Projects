//Bottom Cage
translate([0, 0, 0]){
    //Outside frame
    cube([3.5, 1.5, 12]);
    translate([0, 13.5, 0]) cube([3.5, 1.5, 12]);
    translate([20.5, 0, 0]){
        cube([3.5, 1.5, 12]);
        translate([0, 13.5, 0]) cube([3.5, 1.5, 12]);
    }
    //Frame
    translate([0, 1.5, 0]) cube([1.5, 12, 3.5]);
    translate([22.5, 1.5, 0]) cube([1.5, 12, 3.5]);
    translate([3.5, 0, 0]) cube([17, 1.5, 3.5]);
    translate([3.5, 13.5, 0]) cube([17, 1.5, 3.5]);

    //Floor
    translate([-1, -1, -1]) cube([26, 17, 1]);

    //latches
    translate([.75, -.5, 11]) cube([2, .5, 2]);
    translate([21.25, -.5, 11]) cube([2, .5, 2]);
    translate([.75, 15, 11]) cube([2, .5, 2]);
    translate([21.25, 15, 11]) cube([2, .5, 2]);

}

//Top Cage
translate([26, 0, 12]){
    cube([3.5, 1.5, 18]);
    translate([0, 13.5, 0]) cube([3.5, 1.5, 18]);
    translate([20.5, 0, 0]){
        cube([3.5, 1.5, 18]);
        translate([0, 13.5, 0]) cube([3.5, 1.5, 18]);
    }
    //Frame
    translate([0, 1.5, 0]) cube([1.5, 12, 3.5]);
    translate([22.5, 1.5, 0]) cube([1.5, 12, 3.5]);
    translate([3.5, 0, 0]) cube([17, 1.5, 3.5]);
    translate([3.5, 13.5, 0]) cube([17, 1.5, 3.5]);

    //Floor
    translate([1.5, 1.5, 0]) cube([21, 12, 1]);

    //latches
    translate([.75, -.5, 17]) cube([2, .5, 2]);
    translate([21.25, -.5, 17]) cube([2, .5, 2]);
    translate([.75, 15, 17]) cube([2, .5, 2]);
    translate([21.25, 15, 17]) cube([2, .5, 2]);

}


//Roof
translate([0, 0, 12]){
    cube([24, 3.5, 1.5]);
    translate([0, 11.5, 0]) cube([24, 3.5, 1.5]);

    translate([0, 3.5, 0]) cube([3.5, 8, 1.5]); //left
    translate([20.5, 3.5, 0]) cube([3.5, 8, 1.5]); //right

    translate([1.75, 1.5, -1.5]) cube([3.5, 12, 1.5]); //left
    translate([18.75, 1.5, -1.5]) cube([3.5, 12, 1.5]); //right

    translate([2.5, 4, 1.5]) cube([2, 2, .5]); //hinge
    translate([2.5, 9, 1.5]) cube([2, 2, .5]); //hinge2
    translate([19, 6.5, 1.5]) cube([3, 2, .5]); //latch

    //Flap
    translate([3.5, 3.5, 0]) cube([17, 1.75, 1.5]);
    translate([3.5, 9.75, 0]) cube([17, 1.75, 1.5]);
    translate([3.5, 5.25, 0]) cube([1.75, 4.5, 1.5]);
    translate([19, 5.25, 0]) cube([1.75, 4.5, 1.5]);
}


