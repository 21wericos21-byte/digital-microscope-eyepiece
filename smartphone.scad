echo("Работа Сергея Владыкина!");

len_phone = 145;
width_phone = 56;
thickness_phone = 8;
corner_round = 8;

//color("red")
//translate([0, 0, 10])
//cube([width_phone, len_phone, thickness_phone], center=true);

module smartphone() {
    hull() {
        translate([width_phone/2 - corner_round/2, len_phone/2 - corner_round/2, 0])
        cylinder(h = thickness_phone, d = corner_round, $fn = 32, center = true);

        mirror([1, 0, 0])
        translate([width_phone/2 - corner_round/2, len_phone/2 - corner_round/2, 0])
        cylinder(h = thickness_phone, d = corner_round, $fn = 32, center = true);

        mirror([0, 1, 0])
        translate([width_phone/2 - corner_round/2, len_phone/2 - corner_round/2, 0])
        cylinder(h = thickness_phone, d = corner_round, $fn = 32, center = true);

        mirror([1, 0, 0])
        mirror([0, 1, 0])
        translate([width_phone/2 - corner_round/2, len_phone/2 - corner_round/2, 0])
        cylinder(h = thickness_phone, d = corner_round, $fn = 32, center = true);
    }
}

module cameras_block() {
    color("blue")
    translate([width_phone/2 - 15, len_phone/2 - 20, 0])
    cylinder(d = 8, h = thickness_phone/2 + 1);

    color("blue")
    translate([width_phone/2 - 15, len_phone/2 - 29, 0])
    cylinder(d = 8, h = thickness_phone/2 + 1);
}

smartphone();
cameras_block();