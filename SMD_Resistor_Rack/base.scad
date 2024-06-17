
mm = 25.4;
$fn = 32;
e = 0.1;

slot_spc = 1.75*mm;
slot_wid = 0.4*mm;
slot_dep = 0.5*mm;

slot_ang = 20;

b_wid = 8*mm;
b_len = 3 * slot_spc;
b_hgt = slot_dep * 1.5;

difference() {
  cube( [b_wid, b_len, b_hgt]);
  for( i=[0:3]) {
    translate( [-e, slot_spc/2+i*slot_spc, slot_dep/2])
      rotate( [slot_ang, 0, 0])
      cube( [b_wid+2*e, slot_wid, slot_dep*2]);
  }
}


