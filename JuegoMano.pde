class Mano {
  int mx, my, ancho, alto ; 
  Mano () {
    ancho = 50 ;
    alto = 270 ;
    mx = 280 ;
    my = height/2+160;
  }
  void dibujarMano(int _mx_, int _my_, int _ancho_, int _alto_) {
    mx = _mx_ ;
    my = _my_ ;
    ancho = _ancho_ ;
    alto = _alto_ ;
    rectMode(CENTER) ;
    noFill () ;
    noStroke() ;
    rect (mx, my, ancho/2, alto) ;
  }
}
