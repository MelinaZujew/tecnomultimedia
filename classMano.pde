class Mano {
  int mx, my, ancho, alto ; 
  Mano () {
    ancho = 50 ;
    alto = 100 ;
    mx = 200 ;
    my = height/2 +80;
    
  }
  void dibujarMano(int _mx_ , int _my_, int _ancho_, int _alto_) {
    mx = _mx_ ;
    my = _my_ ;
    ancho = _ancho_ ;
    alto = _alto_ ;
    rectMode(CENTER) ;
    noFill () ;
    rect (mx, my, ancho/2, alto) ;
 
  }
  void moverMano(int teclado) {
  if (teclado == 't') {   
 //no detecta las teclas?
  }
  }
  void moverMano2(int teclado2) {
  if (teclado2 == 's') {
  }
}
 
}
