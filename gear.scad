// minimum fragment size (mm)
$fs=0.5;
// minimum fragment angle (deg)
$fa=1;

IN = 25.4;
MM = 1.0;
PI = 3.1415926535;

height = 5/16 *IN;
outer_diameter = 2.38 *IN;
pitch_diameter = 2.25 *IN;
radius = outer_diameter / 2;

pitch_circum = PI * pitch_diameter;

num_teeth = 36;
deg_per_tooth = 360 / num_teeth;

tooth_rad = (pitch_circum / num_teeth) / 4;

union() {
    difference() {
    cylinder(h=height, r1=radius, r2=radius);    
        for (i = [0 : num_teeth]) {
            rotate(i * deg_per_tooth, [0, 0, 1])
            translate([radius, 0, -1])
            cylinder(h=height + 2, r=tooth_rad);
        }
    }
    for (i = [0 : num_teeth]) {
        rotate(i * deg_per_tooth + deg_per_tooth / 2, [0, 0, 1])
        translate([radius, 0, 0])
        cylinder(h=height, r=tooth_rad);
    }
}