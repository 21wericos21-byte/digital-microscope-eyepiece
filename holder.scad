len_phone = 145;
width_phone = 56;
d_screw_m4 = 4.5;
thickness_holder = 4;


holder_set();

module holder_set() {
    difference() {
        t_cross();
        screw_hole();
    }
}

module t_cross() {
    hull() {
        translate([0, -len_phone/2, 0])
        cylinder(d=9, h=thickness_holder, center=true, $fn=32);

        translate([0, len_phone/2, 0])
        cylinder(d=9, h=thickness_holder, center=true, $fn=32);
    }

    hull() {
        translate([width_phone/2, 0, 0])
        cylinder(d=9, h=thickness_holder, center=true, $fn=32);

        translate([-width_phone/2, 0, 0])
        cylinder(d=9, h=thickness_holder, center=true, $fn=32);
    }
    
    cylinder(h=thickness_holder, d=25, center=true, $fn=64);
}



module screw_hole() {
    difference() {
        union() {
            color("red")
            hull() {
                translate([0, -len_phone/2, 0])
                cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);

                translate([0, len_phone/2, 0])
                cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
            }

            color("red")
            hull() {
                translate([width_phone/2, 0, 0])
                cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);

                translate([-width_phone/2, 0, 0])
                cylinder(d=d_screw_m4, h=thickness_holder+2, center=true, $fn=32);
            }
        }
        
        cylinder(h=thickness_holder+4, d=25, center=true, $fn=64);
    }
}
