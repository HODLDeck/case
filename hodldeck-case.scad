
$fs= 0.1;
case_width=100;
case_height=80;
display_width=60;
display_height=45;
hole_distance_h=76;
hole_distance_v=45;

rotate([108,0,0])
 {
difference() {
    union() { 
        rotate ([-18,0,0]) {// display
            
            difference() {
                union() {
                    cube([case_width, 20, case_height]);
                    translate([0,20,case_height-2]) cube([case_width, 2, 2]);
                }
                //translate([16,-0.1,4]) cube([80, 0.5, 15]);
                translate([case_width/2-display_width/2,-0.1,18]) cube([display_width, 2.2, display_height]);
                translate([2,2,2]) cube([case_width-4, 20.1, case_height-4]);
                // rotate([90,0,0]) translate([15, 6,-0.5]) {
                //     linear_extrude(1) text("HODLDeck", font = "Liberation Sans", size=8);
                // }
            }
            
            translate([9,2,18]) {
                rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([0,0,hole_distance_v]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([hole_distance_h,0,0]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([hole_distance_h,0,hole_distance_v]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
            }
        }
        translate([0,2,0]) cube([case_width, 50, 3]); //base
    }
    translate([-0.1,0,-10]) cube([case_width+0.2, 45, 10]); //remove overhang
}
}