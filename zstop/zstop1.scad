//Enter OpenSCAD code here.
 echo("Version:",version());
db=5;
li=5;
la=10;
pr=db+db+li ;
al=16;
sr = 3;
hta=4;
spli= 2;
difference ()
{
  union ()
{
    cube([ la-2*sr , pr, al]);
    translate ([ la-2*sr ,0,0]) cube([ sr ,pr-sr,al]);
    translate ([ -sr , 0,0]) cube([ sr ,pr-sr,al]);

   translate ([ 0, pr-sr ,0]) cylinder (r=sr , h= al);
  translate ([ la -2*sr , pr-sr ,0]) cylinder (r=sr , h= al);
  }

translate([ la/2-sr,db+li, 0]) 
         cylinder ( r=3.5,h=hta,$fn=6);
translate([ la/2-sr,db+li, hta+0.10]) 
          cylinder ( r=2 ,h=al,$fn=12);
translate ([-sr, 0,spli])
          cube ([la,li,al-spli]);



}

