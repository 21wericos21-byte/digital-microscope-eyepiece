echo("Работа Сергея Владыкина!");
len_phone = 145;
width_phone = 60;
thickness_phone = 6;
corner_round = 9;

smartphone();



module smartphone() {
    smartphone_block();
    cameras_block();
}

module cameras_block() {
    color("blue")
    translate([width_phone/2-15, len_phone/2-20, 0])
    cylinder(d=8, h = thickness_phone/2+1);

    color("blue")
    translate([width_phone/2-15, len_phone/2-29, 0])
    cylinder(d=8, h = thickness_phone/2+1);
}

module smartphone_block() {
    hull() {
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);
        
        mirror([1, 0, 0])
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);
        
        mirror([0, 1, 0])
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);
        
        mirror([1, 0, 0])
        mirror([0, 1, 0])
        translate([width_phone/2-corner_round/2, len_phone/2-corner_round/2, 0])
        cylinder(h=thickness_phone, d=corner_round, $fn=32, center=true);
    }
}