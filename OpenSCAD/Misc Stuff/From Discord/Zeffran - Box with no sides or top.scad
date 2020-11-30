$Slop=1/8;

difference() {
    // Draw the OUTSIDE of the cube
    cube([3,2,2.5],center=true);
    
    // Move up and forward to take away
    translate([$Slop,0,$Slop])
    cube([3,2-$Slop*2,2.5],center=true);
    
    translate([0,0,-$Slop*2])
    cube([3-$Slop*2,2-$Slop*2,2.5-$Slop*2],center=true);

    cube([3-$Slop*2,3,2.5-$Slop*2],center=true);
    
    cube([4-$Slop*2,2-$Slop*2,2.5-$Slop*2],center=true);
}

