cube([2,2,2]);
cube([2,2,2], center=true);

scale([1, 1.5, 1])
  sphere(r=2);
cylinder(h=5, r1=1, r2=1.5);

rotate([0, 30, 0])
  translate([0, 0, 10])
    cylinder(h=10, r1=1, r2=0.0);
mirror([1, 0, 0])
  rotate([0, 30, 0])
    translate([0, 0, 10])
      cylinder(h=10, r1=1, r2=0.0);