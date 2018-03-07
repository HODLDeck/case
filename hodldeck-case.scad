
module fillet(r, h) {
    translate([r / 2, r / 2, 0])

        difference() {
            cube([r + 0.01, r + 0.01, h], center = true);

            translate([r/2, r/2, 0])
                cylinder(r = r, h = h + 1, center = true);

        }
}

$fs= 0.1;
case_width=100;
case_height=80;
display_width=60;
display_height=45;
hole_distance_h=76;
hole_distance_v=44;
case_depth=30;

rotate([108,0,0])
 {
difference() {
    union() { 
        rotate ([-18,0,0]) {// display
            
            difference() {
                union() {
                    cube([case_width, case_depth, case_height]);
                    translate([0,case_depth,case_height-2]) cube([case_width, 2, 2]);
                }
                fillet(2,case_height*2+1);
                translate([case_width,0,0]) rotate([0,0,90]) fillet(2,case_height*2+1);
                translate ([80,0,case_height]) rotate([0,90,0]) fillet(2,case_height*2+1);
                //translate([16,-0.1,4]) cube([80, 0.5, 15]);
                translate([case_width/2-display_width/2,-0.1,18]) cube([display_width, 2.2, display_height]);
                translate([2,2,2]) cube([case_width-4, case_depth+0.1, case_height-4]);
                translate([case_width-2.1,11,case_height-26]) cube([2.2,4,10]);
                // rotate([90,0,0]) translate([15, 6,-0.5]) {
                //     linear_extrude(1) text("HODLDeck", font = "Liberation Sans", size=8);
                // }
            }
            

            translate([9,2,18.5]) {
                rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([0,0,hole_distance_v]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([hole_distance_h,0,0]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([hole_distance_h,0,hole_distance_v]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
            }

            translate([43,12,46]) {
                translate([0,0,25]) rotate([-90,0,0]) {
                    cylinder(5,1.8, 1.0);
                    translate([0,0,-10]) cylinder(10,2.2, 2.2);
                }
                translate([52,0,0]) rotate([-90,0,0]) {
                    cylinder(5,1.8, 1.0);
                    translate([0,0,-10]) cylinder(10,2.2, 2.2);
                }
                translate([52,0,25]) rotate([-90,0,0]) {
                    cylinder(5,1.8, 1.0);
                    translate([0,0,-10]) cylinder(10,2.2, 2.2);
                }
            }
        }
        translate([0,2,0]) cube([case_width, 50, 3]); //base
    }
    translate([-0.1,0,-10]) cube([case_width+0.2, 45, 10]); //remove overhang
}
  
}
 translate([0,case_height,case_depth*-1]) rotate ([108,0,0]) {
  difference() {
        rotate ([-18,0,0]) {// display
            translate([0,case_depth,-2]) cube([case_width, 2, case_height]);
        }
                translate([-0.1,2,-16.9]) cube([case_width+0.2, 50, 20]);

    }
 }