//Enter OpenSCAD code here.
 echo("Version:",version());

dist_dal_bordo      =   5;
dim_lingua          =   5;
altezza             =   16;
larghezza           =   10;
raggio_smusso       =   3; // deve essere minore di larghezza/2
spessore_lingua     =   2;
altezza_tasca_dado  =   4;

prof= 2* dist_dal_bordo + dim_lingua ;

difference ()
{
  union ()  //ingombro totale 
  {   
    cube([ larghezza-2*raggio_smusso , prof, altezza]);
    
    translate ([ larghezza-2*raggio_smusso ,0,0]) 
      cube([ raggio_smusso ,prof-raggio_smusso,altezza]);
    
    translate ([ -raggio_smusso , 0,0]) 
      cube([ raggio_smusso ,prof-raggio_smusso,altezza]);

    translate ([ 0, prof-raggio_smusso ,0]) 
      cylinder (r=raggio_smusso , h= altezza);
    translate ([ larghezza -2*raggio_smusso , prof-raggio_smusso ,0]) 
      cylinder (r=raggio_smusso , h= altezza);
  }
  
  //sottratti dall ingombro
  //tasca per il dado
  translate([ larghezza/2-raggio_smusso,dist_dal_bordo+dim_lingua, 0]) 
    cylinder ( r=3.5,h=altezza_tasca_dado,$fn=6);
  
  
  //foro vite 
  
  translate([ larghezza/2-raggio_smusso,dist_dal_bordo+dim_lingua, altezza_tasca_dado+0.10]) 
    cylinder ( r=2 ,h=altezza,$fn=12);

  //scasso per lingua ..
   translate ([-raggio_smusso, 0,spessore_lingua])
          cube ([larghezza,dim_lingua,altezza-spessore_lingua]);

}

