/*cube([28, 14, 2]); //bottom
translate([0, 0, 2]) difference(){ //left
    cube([2, 12, 30]);
    translate([1, 0, 14]) cube([2, 12, 2]);
}
translate([26, 0, 2]) difference(){ //right
    cube([2, 12, 30]); 
    translate([-1, 0, 14]) cube([2, 12, 2]);
}
translate([0, 12, 2]) cube([28, 2, 30]); //back
translate([0, 0, 32]) cube([28, 14, 2]); //top

translate([1, .25, 16]) color([0, 1, 0]) difference(){
    cube ([26, 11.75, 2]); //shelf
    translate([16, 7, -1]) cube([9, 6, 3]);
}
//translate([2, 0, 2]) color([1, 0, 0]) cube([24, .25, 30]); //front


//Bottom house
translate([2, 6, 2]) cube([8, .5, 6]);
translate([2, 6, 8]) cube([8, 6, .5]);
//translate([2, 11.5, 2]) cube([8, .5, 6]);

//Top house
translate([2, 6, 18]) cube([8, .5, 6]);
translate([2, 6, 24]) cube([8, 6, .5]);
//translate([2, 11.75, 18]) cube([8, .5, 6]);

translate([10, 6, 8]) rotate([0, -26.5, 0]) cube([sqrt(320), 6, .5]);

points = [[0, 0, 0], [13, 0, 0], [13, 5.5, 0], [0, 5.5, 0], [0, 5.5, 6.5], [0, 0, 6.5]];
faces = [[0, 1, 2], [0, 3, 2], [0, 1, 5], [0, 3, 4], [0, 5, 4], [2, 3, 4], [1, 2, 4], [1, 5, 4]];
translate([2, .25, 2]) polyhedron(points, faces);
//translate([2, .25, 2]) cube([8, 5.5, 6.5]);
 */

cube([3.5, 1.5, 30]);
translate([0, 13.5, 0]) cube([3.5, 1.5, 30]);
translate([20.5, 0, 0]){
    cube([3.5, 1.5, 30]);
    translate([0, 13.5, 0]) cube([3.5, 1.5, 30]);
}

translate([0, 1.5, 0]) cube([1.5, 12, 3.5]);
translate([3.5, 0, 0]) cube([17, 1.5, 3.5]);
