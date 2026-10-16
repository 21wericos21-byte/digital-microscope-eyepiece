len_phone = 145;
width_phone = 56;
thickness_phone = 8;
corner_round = 8;

d_screw_m4 = 4.5;
thickness_holder = 4;
append = 15;
w_grip = 30;


// holder_set();
// horizontal_block(20);
// vertical_block(len_phone);

difference() {
    grip();
    color("red")
    translate([0, w_grip/2, thickness_phone])
    cube([31, w_grip, 2*thickness_phone], center=true);
    
    translate([0, -w_grip/4, 0])
    cylinder(d=d_screw_m4, 3*thickness_phone, center=true, $fn=32);
}


module grip() {
    hull() {
        translate([30/2-corner_round/2, -30/2+corner_round/2, 0])
        cylinder(d=corner_round, 2*thickness_phone, center=true);
        translate([-30/2+corner_round/2, -30/2+corner_round/2, 0])
        cylinder(d=corner_round, 2*thickness_phone, center=true);
        translate([30/2-corner_round/2, 30/2-corner_round/2, 0])
        cylinder(d=corner_round, 2*thickness_phone, center=true);
        translate([-30/2+corner_round/2, 30/2-corner_round/2, 0])
        cylinder(d=corner_round, 2*thickness_phone, center=true);
    }
}


module holder_set() {
    horizontal_block(len_block=width_phone, offset_vertical=10);
    vertical_block(len_block=len_phone);
}

module vertical_block(len_block) {
    len_block = len_block + append;
    difference() {
        
        hull() {
            //translate([0, -len_phone/2, 0])
            translate([0, -len_block/2, 0])
            cylinder(d=9, h=thickness_holder, center=true, $fn=32);
            
            //translate([0, len_phone/2, 0])
            translate([0, len_block/2, 0])
            cylinder(d=9, h=thickness_holder, center=true, $fn=32);
        }
        color("red")
        hull() {
            // translate([0, -len_phone/2, 0])
            translate([0, -len_block/2, 0])
            cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
            
            // translate([0, len_phone/2, 0])
            translate([0, len_block/2, 0])
            cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
        }
        
    }
}


module horizontal_block(len_block, offset_vertical) {
  len_block = len_block + append;
  translate([0, offset_vertical, 0])  
  cylinder(d=20, h=thickness_holder, center=true, $fn=32);

  difference() {
    hull() {
        translate([len_block/2, offset_vertical, 0])
        cylinder(d=9, h=thickness_holder, center=true, $fn=32);
        
        translate([-len_block/2, offset_vertical, 0])
        cylinder(d=9, h=thickness_holder, center=true, $fn=32);
    }
    color("red")
    hull() {
        translate([len_block/2, offset_vertical,, 0])
        cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);

        translate([-len_block/2, offset_vertical,, 0])
        cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
   }
 }
}
