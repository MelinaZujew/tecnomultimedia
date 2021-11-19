class Bichos {
  float bx, by, btam, bvelo; 
  boolean colorbichos, moverbichos, colision ;
  Fondos cuca ;
  Bichos () {
    btam = random (70, 100) ;
    bx = random(-width/2, -width/4);
    by = random (-height-height/2, height);
    bvelo = random (2, 6)  ;
    colorbichos = true; 
    moverbichos = true ;
    cuca = new Fondos () ;
  }
  void dibujarBichos () {
    if (colorbichos == true) {
      noFill() ;
      rect (bx, by, btam, btam) ;
      cuca.cucas(bx, by, btam, btam) ;
    } else {
      fill(0) ;
    }
  }
  void moverBichos () {
    if ( bx> width+btam || bx < 0+btam && by> height+btam || by< 0+btam) {
      btam = random (70, 100) ; //si bichos se va de la pantalla vuelve a iniciar. 
      bx = random(-width/2, -width/4);
      by = random (0, height) ;
    }
    bx+= bvelo ;
  }
}
