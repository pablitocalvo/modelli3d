square(size =  10   , center = true); //thick=1


//linear_extrude(height = 30, center = true, twist = 720)
//    square(size =  10   , center = true); //thick=1


//https://it.wikipedia.org/wiki/Filettatura_metrica_ISO#/media/File:ISO_and_UTS_Thread_Dimensions.svg


P=3;
Dp= 25;

H= P/2*sqrt(2); // e' un triangolo equilatero ...

//internal thread



 
 
 polygon([[-2,0],[2,0],[0,2]]);