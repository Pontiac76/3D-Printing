dimWidth=68;
dimDepth=85;
dimHeight=11;

slotWidth=55;

BorderSize=1.5;


// Create a shadow box that has a hole the size of the user port
%difference() {

	CartOut=1;
	CartPos=CartOut*15;

	SlotWidth=72;
	SlotHeight=15;
	color("Black",0.25)
	translate([0,-52+CartPos,0])
	cube(size=[SlotWidth*2,10,SlotHeight*2],center=true);
	
	translate([0,-52+CartPos,0.75])
	cube(size=[SlotWidth,20,SlotHeight],center=true);
}

//Draw the basic bottom box
difference() {
	color("Green")
	cube(size=[dimWidth+BorderSize,dimDepth+BorderSize,dimHeight+BorderSize],center=true);
	
	color("Green")
	translate([0,-BorderSize,BorderSize])
	cube(size=[dimWidth-BorderSize*2,dimDepth,dimHeight],center=true);
	
}

// Create the left and right "shelves" to screw into
difference() {
	color("Red")
	translate([0,5,0])
	cube([dimWidth,dimDepth-10,dimHeight/1.3],center=true);
	
	color("Red")
	translate([0,5,0])
	cube([56,90,100],center=true);
}

// This is the part where the connector faces out.
difference() {
	color("blue")
	translate([0,-dimDepth/2,])
	cube(size=[dimWidth+BorderSize,5,dimHeight+BorderSize],center=true);
	
	color("blue")
	translate([0,-dimDepth/2,BorderSize/2+20])
	cube(size=[slotWidth,10,49],center=true);
}