
d_dado=6;




difference(){
union()
{cylinder(h =5, r = 20,  center = true,$fn=30);
    
translate ([0,0,5]) cylinder(h =10, r = 7,  center = true,$fn=30);
}
translate ([0,0,10])   cylinder(h =4, r = 7,  center = true,$fn=6);
 
 cylinder(h=30, r=3.1,$fn=20,center=true);   
    
}
