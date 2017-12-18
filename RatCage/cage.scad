/* Rat Cage
 *  Designed by: Brandon Fedie
 */

//TODO: Change list to reflect door change
//TODO: Change left door

/* Parts List
 *
 * Roof:
 *   - 88in 2x4s
 *   - 43in cut-in-half 2x4s (21.5in 2x4s)
 *   - 16"x6.5" in hardware cloth
 *   - 2 hinges
 *   - 1 hook & eye-hook
 *
 * Bottom Cage:
 *   - 158in 2x4s
 *   - 58in cut-in-half 2x4s (29in 2x4) 
 *   - 22in 1.5"x1" wood (7.5in cut 2x4s)
 *   - 2in .5"x1" wood
 *   - 10in 5"x1" wood
 *   - 21"x12" chloroplast (or other floor material)
 *   - 66"x9" hardware cloth
 *   - 2 hinges
 *   - 6 hooks & eye-hooks
 *
 * Bottom Interior:
 *   - 21.5in 1"x6" wood (2 5" pieces, 1 11.5" piece)
 *   - 4.25"x3"x.25" wood
 *   - 2 8in ladders (or 1 16in ladder)
 *   - 15in hammock OR
 *     - 2 15.5" .25"-radius dowels
 *     - 15in fabric
 *
 *
 * TOTAL (not including top cage):
 *   - 304in (25 1/3 ft) 2x4s
 *
 *   - 2in .5"x1" wood
 *   - 10in 5"x1" wood
 *   - 21.5in 1"x6" wood (2 5"x6"x1" pieces, 1 11.5"x6"x1" piece)
 *   - 4.25"x3"x.25" wood
 *
 *   - 21"x12" chloroplast (or other floor material)
 *   - 82in (6.9ft) 9" hardware cloth (or 66" [5.5ft] 15.5" cloth)
 *   - 4 hinges
 *   - 7 hooks & eye-hooks
 *
 *   - 2 8in ladders (or 1 16in ladder)
 *   - 15in hammock OR
 *     - 2 15.5" .25"-radius dowels
 *     - 15in fabric
 */


//Colors
col_hinge = [.5, .5, .5];
col_hook = [1, 1, 1];
col_floor = [.5, 0, 0];
col_ladder = [.75, .5, .5];
col_fabric = [0, .75, .75];

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

// Roof
translate([0, 0, 13.5]){
    cube([24, 3.5, 1.5]);
    translate([0, 11.5, 0]) cube([24, 3.5, 1.5]);

    translate([0, 3.5, 0]) cube([3.5, 8, 1.5]); // left
    translate([20.5, 3.5, 0]) cube([3.5, 8, 1.5]); // right

    translate([1.75, 1.5, -1.5]) cube([3.5, 12, 1.5]); // left
    translate([18.75, 1.5, -1.5]) cube([3.5, 12, 1.5]); // right

    color(col_hinge){
        translate([2.5, 4, 1.5]) cube([2, 2, .5]); // hinge
        translate([2.5, 9, 1.5]) cube([2, 2, .5]); // hinge2
    }
    color(col_hook) translate([19, 6.5, 1.5]) cube([3, 2, .5]); // latch

    // Flap
    translate([3.5, 3.5, 0]) cube([17, 1.75, 1.5]);
    translate([3.5, 9.75, 0]) cube([17, 1.75, 1.5]);
    translate([3.5, 5.25, 0]) cube([1.75, 4.5, 1.5]);
    translate([18.75, 5.25, 0]) cube([1.75, 4.5, 1.5]);

    // Mesh
    translate([4.25, 4.25, 1.5]) rotate([-90, 0, 0]) mesh(16, 6.5);
}

// Bottom Cage
translate([0, 0, 0]){

    // Vertical supports
    translate([0, 0, 1.5]) cube([3.5, 1.5, 12]); // Front-left
    translate([0, 13.5, 1.5]) cube([3.5, 1.5, 12]); // Back-left
    translate([20.5, 0, 1.5]) cube([3.5, 1.5, 12]); // Front-right
    translate([20.5, 13.5, 1.5]) cube([3.5, 1.5, 12]); // Back-right

    // Horizontal supports bottom
    translate([0, 7.5, 1.5]) cube([1.5, 6, 3.5]); // Left
    translate([22.5, 1.5, 1.5]) cube([1.5, 12, 3.5]); // Right
    translate([3.5, 0, 1.5]) cube([10, 1.5, 3.5]); // Front
    translate([3.5, 13.5, 1.5]) cube([17, 1.5, 3.5]); // Back

    // Horizontal supports top
    translate([3.5, 0, 11.75]) cube([17, 1.5, 1.75]); // Front
    translate([3.5, 13.5, 11.75]) cube([17, 1.5, 1.75]); // Back
    translate([0, 1.5, 11.75]) cube([1.5, 12, 1.75]); // Left
    translate([22.5, 1.5, 11.75]) cube([1.5, 12, 1.75]); // Right

    // Floor
    color(col_floor) translate([1.5, 1.5, 1.5]) cube([21, 12, 1]);

    // Under Floor
    translate([0, 0, 0]) cube([3.5, 15, 1.5]); // Left
    translate([20.5, 0, 0]) cube([3.5, 15, 1.5]); // Right
    translate([3.5, 0, 0]) cube ([17, 3.5, 1.5]); // Front
    translate([3.5, 11.5, 0]) cube ([17, 3.5, 1.5]); // Back

    // Top latches
    color(col_hook){
        translate([.75, -.5, 12.5]) cube([2, .5, 2]); // Front-left
        translate([21.25, -.5, 12.5]) cube([2, .5, 2]); // Front-right
        translate([.75, 15, 12.5]) cube([2, .5, 2]); // Back-left
        translate([21.25, 15, 12.5]) cube([2, .5, 2]); // Back-right
    }

    // Front Door
    translate([14.5, 0, 7.5]) cube([6, 1.5, 1]); // Top frame
    translate([13.5, 0, 1.5]) cube([1, 1.5, 7]); // Left frame
    //translate([15.5, 1, 5.5]) cube([1, .5, 1]); // Stop

    translate([14.5, 0, 1.5]) cube([6, 1, 6]); // Door

    color(col_hinge) translate([19.5, -.5, 3]) cube([2, .5, 2]); // Hinge
    color(col_hook) translate([14.5, -.5, 3]) cube([2, .5, 2]); // Hook


    // Left door
    translate([0, 6.5, 1.5]) cube([1.5, 1, 5]); // Back Frame
    translate([0, 1.5, 6.5]) cube([1.5, 6, 1]); // Top Frame
    //translate([1, 5.5, 5.5]) cube([.5, 1, 1]); // Stop

    translate([0, 1.5, 1.5]) cube([1, 5, 5]); // Door

    color(col_hinge) translate([-.5, .5, 3]) cube([.5, 2, 2]); // Hinge
    color(col_hook) translate([-.5, 5.5, 3]) cube([.5, 2, 2]); // Hook

    // Mesh
    translate([2.5, 0, 4]) mesh(12, 9); // Front-left
    translate([14.5, 0, 7.5]) mesh(7, 5.5); // Front-right

    translate([2.5, 15, 4]) mesh(19, 9); // Back
    translate([0, 14.5, 4]) rotate([0, 0, -90]) mesh(8, 9); // Left-back
    translate([0, 6.5, 6.5]) rotate([0, 0, -90]) mesh(6, 6.5); // Left-front

    translate([24, 14.5, 4]) rotate([0, 0, -90]) mesh(14, 9); // Right



    // Interior
    translate([1.5, 1.5, 2.5]){

        // Shelf 1
        translate([0, .25, 0]){
            cube([6, 1, 5]);
            translate([0, 0, 5]) cube([6, 11.5, 1]);
            translate([0, 10.5, 0]) cube([6, 1, 5]);
        }

        // Hammock
        translate([9.25, -1.75, 6.25]) {
            rotate([-90, 0, 0]) cylinder(15.5, .25, .25, false);
            rotate([-90, 0, 0]) translate([2, 0, 0]) cylinder(15.5, .25, .25, false);
            color(col_fabric) translate([.25, .25, 0]) cube([1.5, 15, .25]);
        }

        // Ramp 1
        translate([5, 6, 6]) cube([4.25, 3, .25]);

        // Ladder 1
        color(col_ladder)
            translate([6, 0, 6]) rotate([0, 56, 0]) cube ([8, 2, .25]);

        // Ladder 2
        color(col_ladder)
            translate([11.25, 10, 6.25]) rotate([0, 56, 0]) cube ([8, 2, .25]);
    }
}


/*
// Top Cage
translate([0, 0, 13.5]){

    // Vertical supports
    translate([0, 0, 1.5]) cube([3.5, 1.5, 18]); // Front-left
    translate([0, 13.5, 1.5]) cube([3.5, 1.5, 18]); // Back-left
    translate([20.5, 0, 1.5]) cube([3.5, 1.5, 18]); // Front-right
    translate([20.5, 13.5, 1.5]) cube([3.5, 1.5, 18]); // Back-right

    // Horizontal supports bottom
    translate([0, 6.5, 1.5]) cube([1.5, 7, 3.5]); // Left
    translate([22.5, 1.5, 1.5]) cube([1.5, 12, 3.5]); // Right
    translate([3.5, 0, 1.5]) cube([12, 1.5, 3.5]); // Front
    translate([3.5, 13.5, 1.5]) cube([17, 1.5, 3.5]); // Back

    // Horizontal supports top
    translate([3.5, 0, 17.75]) cube([17, 1.5, 1.75]); // Front
    translate([3.5, 13.5, 17.75]) cube([17, 1.5, 1.75]); // Back
    translate([0, 1.5, 17.75]) cube([1.5, 12, 1.75]); // Left
    translate([22.5, 1.5, 17.75]) cube([1.5, 12, 1.75]); // Right

    // Floor
    color(col_floor) translate([1.5, 1.5, 1.5]) cube([21, 12, 1]);

    // Under Floor
    translate([0, 0, 0]) cube([3.5, 15, 1.5]); // Left
    translate([20.5, 0, 0]) cube([3.5, 15, 1.5]); // Right
    translate([3.5, 0, 0]) cube ([17, 3.5, 1.5]); // Front
    translate([3.5, 11.5, 0]) cube ([17, 3.5, 1.5]); // Back

    // Top latches
    color(col_hook){
        translate([.75, -.5, 18.5]) cube([2, .5, 2]); // Front-left
        translate([21.25, -.5, 18.5]) cube([2, .5, 2]); // Front-right
        translate([.75, 15, 18.5]) cube([2, .5, 2]); // Back-left
        translate([21.25, 15, 18.5]) cube([2, .5, 2]); // Back-right
    }

    // Front Door
    translate([14.5, 0, 6.5]) cube([6, 1.5, 1]); // Top frame
    translate([14.5, 0, 5]) cube([1, 1.5, 1.5]); // Left frame

    translate([15.5, 0, 1.5]) cube([5, 1, 5]); // Door

    color(col_hinge) translate([19.5, -.5, 3]) cube([2, .5, 2]); // Hinge
    color(col_hook) translate([14.5, -.5, 3]) cube([2, .5, 2]); // Hook


    // Left door
    translate([0, 6.5, 5]) cube([1.5, 1, 1.5]); // Back Frame
    translate([0, 1.5, 6.5]) cube([1.5, 6, 1]); // Top Frame

    translate([0, 1.5, 1.5]) cube([1, 5, 5]); // Door

    color(col_hinge) translate([-.5, .5, 3]) cube([.5, 2, 2]); // Hinge
    color(col_hook) translate([-.5, 5.5, 3]) cube([.5, 2, 2]); // Hook

    // Mesh
    translate([2.5, 0, 4]) mesh(13, 15); // Front-left
    translate([15.5, 0, 6.5]) mesh(6, 12.5); // Front-right

    translate([2.5, 15, 4]) mesh(19, 15); // Back
    translate([0, 14.5, 4]) rotate([0, 0, -90]) mesh(8, 15); // Left-back
    translate([0, 6.5, 6.5]) rotate([0, 0, -90]) mesh(6, 12.5); // Left-front

    translate([24, 14.5, 4]) rotate([0, 0, -90]) mesh(14, 15); // Right



    // Interior
    translate([1.5, 1.5, 2.5]){
        // Shelf 1
        translate([0, .25, 0]){
            cube([6, 1, 5]);
            translate([0, 0, 5]) cube([6, 11.5, 1]);
            translate([0, 10.5, 0]) cube([6, 1, 5]);
        }
    }
}
*/








