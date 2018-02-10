
$fs= 0.1;
rotate([108,0,0]) {
difference() {
    union() { 
        rotate ([-18,0,0]) {// display
            difference() {
                cube([120, 20, 100]);
                translate([16,-0.1,24]) cube([88, 2.2, 67]);
                translate([2,2,12]) cube([116, 18.1, 86]);
                rotate([90,0,0]) translate([15, 6,-0.5]) {
                    linear_extrude(1) text("HODLDeck", font = "Liberation Sans", size=8);
                }
            }
            
            translate([11.5,2,17]) {
                rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([0,0,72]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([97,0,0]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
                translate([97,0,72]) rotate([-90,0,0]) cylinder(5,1.8, 1.0);
            }
        }
        translate([0,2,0]) cube([120, 80, 5]); //base
    }
    translate([-0.1,0,-10]) cube([120.2, 25, 10]); //remove overhang
}
}