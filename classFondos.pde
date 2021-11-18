class Fondos {
 PImage [] fondos = new PImage [6] ;
 PImage img ;
 int numF ;
  Fondos () {
  for (int f = 0; f < fondos.length; f++) {
   fondos [f] = loadImage( "imagen"+f+".png") ; 
  }
  
  }
 void ponerFondos (int _numF_) {
   image(fondos[_numF_], 0, 0) ;
   numF = _numF_ ;
   
   
 }

}
