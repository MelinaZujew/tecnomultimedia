class BotonesN {
 int bx, by, ancho, alto;
  
  BotonesN (int _bx_, int _by_, int _ancho_, int _alto_ ) {
  bx = _bx_ ;
  by = _by_ ;
  ancho = _ancho_ ;
  alto = _alto_;
  }
  void dibujarBotonesN () {
 //  fill(201,155,59) ;
 fill(201,155,59) ;
   rect (bx,by,ancho, alto, alto/6) ;
  }
  
  boolean clickBotton(int _bx_, int _by_, int _ancho_, int _alto_ ) {
  bx = _bx_ ;
  by = _by_ ;
  ancho = _ancho_ ;
  alto = _alto_;
  boolean click = mouseX>bx && mouseX< bx+ancho-ancho/2 && mouseY>by && mouseY< by+alto-alto/2 == true ;
  return click ; 
  } 
}
