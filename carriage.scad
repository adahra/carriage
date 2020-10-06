wheelbase = 200;
cartlength = wheelbase * 1.2;
cartwidth = 100;
wheeldiameter = 25;
wheelradius = wheeldiameter;
// suspensionheight = (wheeldiameter / 2) + 5;
suspensionheight = (wheelradius) + 5;

translate([wheelbase / 2, cartwidth, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r = wheelradius, 10, center = true);
    }
}

translate([wheelbase / 2, - (cartwidth), 0]) {
    rotate([90, 0, 0]) {
        cylinder(r = wheelradius, 10, center = true);
    }
}

translate([-wheelbase / 2, cartwidth, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r = wheelradius, 10, center = true);
    }
}

translate([-wheelbase / 2, - (cartwidth), 0]) {
    rotate([90, 0, 0]) {
        cylinder(r = wheelradius, 10, center = true);
    }
}

translate([0, 0, suspensionheight * 2]) {
    cube([cartlength, cartwidth, 10], center = true);
}

translate([wheelbase / 2, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r = wheelradius * 0.25, h = (cartwidth * 2) + 15, center= true);
    }
}

translate([-wheelbase / 2, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r = wheelradius * 0.25, h = (cartwidth * 2) + 15, center= true);
    }
}

translate([wheelbase / 2, 0, suspensionheight]) {
    rotate([90, 0, 0]) {
        difference() {
            cylinder(r = suspensionheight, 10, center = true);
            cylinder(r = suspensionheight - 5, 11, center = true);
            cube([102, suspensionheight / 6, 12]);
        }
        
        translate([suspensionheight, 0, 0]) {
            cylinder(r = suspensionheight / 3, h = 12, center = true);
        }
        
        translate([-suspensionheight, 0, 0]) {
            cylinder(r = suspensionheight / 3, h = 12, center = true);
        }
    }
}

translate([-wheelbase / 2, 0, suspensionheight]) {
    rotate([90, 0, 0]) {
        difference() {
            cylinder(r = suspensionheight, 10, center = true);
            cylinder(r = suspensionheight - 5, 11, center = true);
            cube([102, suspensionheight / 6, 12]);
        }
        
        translate([suspensionheight, 0, 0]) {
            cylinder(r = suspensionheight / 3, h = 12, center = true);
        }
        
        translate([-suspensionheight, 0, 0]) {
            cylinder(r = suspensionheight / 3, h = 12, center = true);
        }
    }
}