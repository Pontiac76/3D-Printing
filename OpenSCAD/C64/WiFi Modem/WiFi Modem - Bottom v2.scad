PCBWidth=50+6; // +2 for the overhanging wires
PCBLength=72;
PCBHeight=22;

ModemHeight=12;
ModemWidth=25;
ModemDepth=48;

Slop=0.5;
ConWingWidth=68+Slop;
ConWingDepth=7+Slop;
ConHeight=9;
ConHeadWidth=55+Slop;
ConHeadDepth=13+Slop;

difference() {
	// Draw the case
	translate([0,5,-1.1])
	color("Green",0.25)
	cube([ConWingWidth+4,PCBLength+ConHeadDepth+2,ConHeight+2],center=true);


	// Draw the PCB
	translate([0,0,-ConHeight/2+PCBHeight/2])
	cube([PCBWidth,PCBLength,PCBHeight],center=true);

	// Draw the connector
	// ----Draw the connector wing
	translate([0,PCBLength/2+ConWingDepth/2-0.1,0])
	cube([ConWingWidth,ConWingDepth,ConHeight],center=true);
	// ----Draw the connector head
	translate([0,PCBLength/2+ConHeadDepth/2-0.1,0])
	cube([ConHeadWidth,ConHeadDepth,ConHeight],center=true);
}