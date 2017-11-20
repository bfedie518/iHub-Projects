/*// Base
translate([-.25, 0, 0])
difference(){
    cube([7, 1.25, .5]); //Base
    translate([4, .125, .125]) cube([5, 1, .5]); //Open display area
    translate([.125, .125, .125]) cube([5, 1, .25]); //Hollow inside
    translate([.25, .125, .125]) cube([3.375, 1.5, .25]); //Track slot
}

//Slider
translate([2.875, .125, .125])
color ([1, 0, 0]) union(){
    cube([3.875, 1, .25]); //Base
    translate([3.75, 0, 0]) cube([.125, 1, 1]); //End panel
    translate([0, 1, 0]) cube([.5, .25, .25]); //Stop in track
}


// Alternate design
translate([0, -2, 0]){
    //Base
    translate([-.25, 0, 0])
    difference(){
        cube([7, 1.25, .5]); //Base
        translate([4, .125, .125]) cube([2.875, 1, .5]); //Open display area
        translate([.125, .125, .125]) cube([5, 1, .25]); //Hollow inside
        translate([.25, .125, .125]) cube([3.25, 1.5, .25]); //Track slot
    }
    
    //Slider
    translate([2.75, .125, .125])
    color ([1, 0, 0]) union(){
        cube([3.875, 1, .25]); //Base
        translate([3.75, 0, 0]) cube([.125, 1, 1]); //End panel
        translate([0, 1, 0]) cube([.5, .25, .25]); //Stop in track
    }
}

// Alternate design 2
translate([0, -4, 0]){
    //Base
    translate([-.25, 0, 0])
    difference(){
        cube([7, 1.25, .5]); //Base
        translate([4, .125, .125]) cube([2.875, 1, .5]); //Open display area
        translate([.125, .125, .125]) cube([5, 1, .25]); //Hollow inside
    }
    
    //Slider
    translate([2.625, .125, .125])
    color ([1, 0, 0]) union(){
        cube([4, 1, .25]); //Base
        translate([3.875, 0, 0]) cube([.125, 1, 1]); //End panel
    }
}
*/

//Base
translate([.125, .125, 0]) cube([6.75, 1, .125]); //Back
translate([0, 0, .375]) cube([4, 1.25, .125]); //Front
cube([.125, 1.25, .375]); //Left
translate([.125, 0, 0]) cube([6.75, .125, .375]); //Bottom
translate([.125, 1.125, 0]) cube([6.75, .125, .375]); //Top
translate([6.875, 0, 0]) cube([.125, 1.25, .375]); //Right

//Slider
translate([.25, 0, .125]) union(){
translate([0, 2, 0]) cube([3.75, 1, .25]); //Base
translate([3.75, 2, 0]) cube([.125, 1, 1]); //End
}
