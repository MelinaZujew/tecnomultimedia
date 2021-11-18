class Bichos {
  float bx, by, btam, bvelo;  //despues van a ser imagenes
 boolean colorbichos, moverbichos ;
 Fondos cuca ;
  Bichos () {
    btam = random (20,60) ;
    bx = random(-width-width/2, -width-width/4);
    by = random (-height-height/2, height);
    bvelo = random (2, 6)  ;
    colorbichos = true; 
    moverbichos = true ;
 cuca = new Fondos () ;
  }
  void dibujarBichos () {
    if (colorbichos == true) {
    fill(255) ;
    ellipse (bx, by, btam, btam) ;
    cuca.cucas(bx, by, btam, btam) ;
    } else {
     fill(0) ; 
    }
    
    }
  void moverBichos () {
    if ( bx> width+btam || bx < 0+btam && by> height+btam || by< 0+btam) {
    btam = random (20,60) ; //si bichos se va de la pantalla vuelve a iniciar. Porque se cortan despues de un tiempo? 
    bx = random(-width-width/2, -width-width/4);
    by = random (-height-btam, height) ;
    }
    bx+= bvelo ;
    }
    
}



















//porque no funciona mover bichos2?
