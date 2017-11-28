
module dish_sign(mat_width, disp_length=7, disp_height=1){
    //Base
    translate([mat_width, mat_width, 0]) cube([disp_length - mat_width, 1, mat_width]); //Back
    translate([0, 0, mat_width * 2]) cube([(4.0/7.0) * disp_length, disp_height + 2 * mat_width, mat_width]); //Front
    cube([mat_width, disp_height + 2 * mat_width, 2 * mat_width]); //Left
    translate([disp_length, 0, 0]) cube([mat_width, disp_height + 2 * mat_width, 2 * mat_width]); //Right
    translate([mat_width, disp_height + mat_width, 0]) cube([disp_length - mat_width, mat_width, 2 * mat_width]); //Top
    translate([mat_width, 0, 0]) cube([disp_length - mat_width, mat_width, 2 * mat_width]); //Bottom

    //Slider
    translate([1.25, mat_width, mat_width]) color([1,0,0]) union(){
        cube([(4.0/7.0) * disp_length - (.25/7.0) * disp_length, disp_height, mat_width]); //Base
        translate([(4.0/7.0) * disp_length - (.25/7.0) * disp_length, 0, 0]) cube([mat_width, disp_height, (14.0/3.0) * mat_width]); //End
    }
}

dish_sign(.1875);
