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


//Base
translate([.125, .1875, 0]) cube([6.8125, 1, .1875]); //Back
translate([0, 0, .5625]) cube([4, 1.375, .1875]); //Front
cube([.1875, 1.375, .5625]); //Left
translate([.1875, 0, 0]) cube([6.75, .1875, .5625]); //Bottom
translate([.1875, 1.1875, 0]) cube([6.75, .1875, .5625]); //Top
translate([6.9375, 0, 0]) cube([.1875, 1.375, .5625]); //Right

//Slider
translate([3, .1875, .1875]) color([1,0,0]) union(){
cube([3.75, 1, .375]); //Base
translate([3.75, 0, 0]) cube([.1875, 1, 1]); //End
} */


//translate([0, 3, 0]){
//Base
translate([.1875, .1875, 0]) cube([6.8125, 1, .1875]); //Back
translate([0, 0, .375]) cube([4, 1.375, .1875]); //Front
cube([.1875, 1.375, .375]); //Left
translate([.1875, 0, 0]) cube([6.8125, .1875, .375]); //Bottom
translate([.1875, 1.1875, 0]) cube([6.8125, .1875, .375]); //Top
translate([7, 0, 0]) cube([.1875, 1.375, .375]); //Right

//Slider
translate([.25, .1875, .1875]) color([1,0,0]) union(){
cube([3.75, 1, .1875]); //Base
translate([3.75, 0, 0]) cube([.1875, 1, .875]); //End
}
//}
