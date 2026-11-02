len_phone = 145;
d_screw_m4 = 4.5;
width_phone = 56;
thickness_holder = 4;
thickness_phone = 8;
append = 15;
corner_round = 8;
w_grip = 30;


//holder_set();
//vertical_block(len_phone);

test_print_holder();

module test_print_holder() {
    translate([0, -24, 6])
    grip();
    horizontal_block(len_block=width_phone, offset_vertical=10);
}


module grip() {
    difference() {
        grip_base();
        
        color("red")
        translate([0, w_grip/2, thickness_phone])
        cube([w_grip+1, w_grip, 2*thickness_phone], center=true);
        
        translate([0, -w_grip/4, 0])
        cylinder(d=d_screw_m4, h=3*thickness_phone, center=true, $fn=32);
    }
}


module grip_base() {
    hull() {
        translate([w_grip/2-corner_round/2, -w_grip/2+corner_round/2, 0])
        cylinder(d=corner_round, h=2*thickness_phone, center=true);
        
        translate([-w_grip/2+corner_round/2, -w_grip/2+corner_round/2, 0])
        cylinder(d=corner_round, h=2*thickness_phone, center=true);
        
        translate([w_grip/2-corner_round/2, w_grip/2-corner_round/2, 0])
        cylinder(d=corner_round, h=2*thickness_phone, center=true);
        
        translate([-w_grip/2+corner_round/2, w_grip/2-corner_round/2, 0])
        cylinder(d=corner_round, h=2*thickness_phone, center=true);
    }
}


module holder_set() {
    horizontal_block(len_block=width_phone, offset_vertical=10);
    vertical_block(len_block=len_phone);
    
    translate([0, -len_phone/2, thickness_phone+thickness_holder/2+1])
    rotate([0, 180, 0])
    grip();
    
    translate([0, len_phone/2, thickness_phone+thickness_holder/2])
    rotate([0, 180, 180])
    grip();
    
    translate([width_phone/2, 10, thickness_phone+thickness_holder/2])
    rotate([0, 180, 90])
    grip();
    
    translate([-width_phone/2, 10, thickness_phone+thickness_holder/2])
    rotate([0, 180, -90])
    grip();
}


module vertical_block(len_block) {
    len_block = len_block + append;
    difference() {
        hull() {
            translate([0, -len_block/2, 0])
            cylinder(d=9, h=thickness_holder, center=true, $fn=32);
            
            translate([0, len_block/2, 0])
            cylinder(d=9, h=thickness_holder, center=true, $fn=32);
        }
        color("red")
        hull() {
            translate([0, -len_block/2, 0])
            cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
            
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
            translate([len_block/2, offset_vertical, 0])
            cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
            
            translate([-len_block/2, offset_vertical, 0])
            cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
        }
    }
}
