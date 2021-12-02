class Imagen {
  PImage [] fondos = new PImage [10] ;
int fond;
  Imagen () {
    for (int i=0; i < fondos.length; i ++) {
      fondos [i] = loadImage ("fondo"+i+".png") ;
    }
  }
  
  
  void ponerFondos (int _fond_) {
    image(fondos[_fond_], 0, 0) ;
    fond = _fond_ ;
  }
}
