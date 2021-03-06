$fn = 40;
x=-1; //adjust the depth of paul
difference(){
	union(){
		translate([0,0,5]){
			rotate([0,0,20]){
				rotate_extrude(angle=180+12){
					translate([15,0,5])circle(r=5);
				}
			}
		}
		color([0,0,1])
		translate([-25,-20+3.5,5]){
			rotate([180,0,40]){
				rotate_extrude(angle=40){
					translate([15,0,5])circle(r=5);
				}
			}
		}
		translate([-10,-61.4,5]){
			rotate([90,0,0]){
				cylinder(r=5, h=44.6);
			}
		}
		translate([13.8,6,5]){
			hull(){
				rotate([90,0,15]){
					color([0,1,0])cylinder(r=5, h=15);
				}
				translate([4,-15,0])sphere(r=5);
			}
		}
		translate([-101,-38.5,5]){
			difference(){
				rotate([0,0,17]){
					rotate_extrude(angle = -31.9){
						translate([94,0,0])circle(r=5);
					}
				}
			}
		}
		translate([5,-16,5]){
			color([0,1,1]){
				hull(){
					translate([0,-90,0]){
						rotate([90,0,0]){
							cylinder(r=5, h=1);
						}
					}
					translate([-5,-x-6,-5])cube([5,5,10]);
				}
			}
		}
		translate([-2.5,-106,5]){
			rotate_extrude(angle=-180){
				translate([7.5,0,0])circle(r=5);
			}
		}
		
	}
	difference(){
		color([1,0,0])cylinder(r=15,h=10);
		translate([0,0,5]){
			rotate_extrude(angle=360){
				translate([15,0,5])circle(r=5);
			}
		}
	}
}
difference(){
	union(){
		translate([3,-8+1-x,0])rotate([0,0,180+30])cube([20,10,10]);
		translate([2.5,-10+1-x,5])rotate([0,90,0])sphere(r=3);
	}
	translate([5,-50,0])cube([100,100,100]);
	translate([-100,-50,0])cube([100,100,100]);

}
