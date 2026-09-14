echo("Работа Сергея Владыкина");
len_phone = 145;
wibth_phone = 56;
thickness_phone = 6;
round_corner = 19;

//color("red")
//translate([0, 0, 10])
//cube([wibth_phone, len_phone , thickness_phone], center=true);

smartphone();

module smartphone() {
hull () {
color("red")
translate([wibth_phone/2-round_corner/2, len_phone/2-round_corner/2, 0])
cylinder(h=thickness_phone, d=round_corner, $fn=32, 
    center=true);

mirror([1,0,0])
color("red")
translate([wibth_phone/2-round_corner/2, len_phone/2-round_corner/2, 0])
cylinder(h=thickness_phone, d=round_corner, $fn=32, 
    center=true);

mirror([0,1,0])
color("red")
translate([wibth_phone/2-round_corner/2, len_phone/2-round_corner/2, 0])
cylinder(h=thickness_phone, d=round_corner, $fn=32, 
    center=true);
    
mirror([1,0,0])
mirror([0,1,0])
color("red")
translate([wibth_phone/2-round_corner/2, len_phone/2-round_corner/2, 0])
cylinder(h=thickness_phone, d=round_corner, $fn=32, 
    center=true);
}
}
