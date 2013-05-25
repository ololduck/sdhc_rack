module rack(width=30, height=5, number_of_slots=5, ){
    CONST_SLOT_LEN = 10;
    difference() {
        cube([width, CONST_SLOT_LEN/2 + number_of_slots*CONST_SLOT_LEN, height]);
        for(i = [1:number_of_slots]) {
            translate([width/2 - 25/2, i*CONST_SLOT_LEN - CONST_SLOT_LEN/2, height-(height-1)])
            rotate([-10,0,0]) {
                cube([25, 2.2, 10]);
            }
        }
    }

}

// translate([10,10,0]) rack(number_of_slots=5);
