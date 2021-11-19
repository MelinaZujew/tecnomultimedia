class Principal {
  Fondos fondos;
  Fondos imbicho ;
  Botones botpan1, botpan2;
  Mano personaje;
  //Bichos enemigos ;
  Bichos [] muchos = new Bichos [4] ;
  String estado;
  int segundos ;
  Principal () {
    estado = "inicio" ;
    fondos = new Fondos () ;
    rectMode (CENTER);
    botpan1 = new Botones(320, 445, 165, 50) ;
    botpan2 = new Botones(320, 445, 165, 50) ;
    personaje = new Mano() ;
    for (int i = 0; i<muchos.length; i++) {
      muchos [i] = new Bichos() ;
    }
  }
  void dibujar () {
    if (estado.equals("inicio")) {
      fondos.ponerFondos(0) ;
      stroke(2) ;
      botpan1.dibujarBotones() ;
      textSize(20) ;
      fill(0) ;
      text("Empezar a Jugar", width/2-76, height/2+175) ;
    }
    if (frameCount%60 == 0 && estado.equals("manosagarrando")) {
      segundos++ ;
    }
    if (segundos == 10) {
      estado = "ganaste" ;
    }
    println(segundos) ;
    if (estado.equals("manosreposo")) {
      //manos en reposo
      fondos.ponerFondos(1) ;
    }

    if (estado.equals("manosagarrando")) {
      colision() ;
      fondos.ponerFondos(2) ;
      pushStyle () ;
      fill(196, 185, 150) ;
      stroke(2) ;
      rect(width/2, 20, 200, 50, 8) ;
      fill(0) ;
      textAlign(CENTER);
      text("Segundos", width/2, 20) ;
      text(segundos, width/2, 40) ;
      popStyle () ;
    }


    personaje.dibujarMano (280, height/2+160, 50, 270) ;

    if (estado == "manosreposo" || estado == "manosagarrando" ) {
      for (int i = 0; i<muchos.length; i++) {
        muchos [i].dibujarBichos() ;
        muchos[i].moverBichos () ;
      }
    }

    if (estado.equals("manosreposo")) {
      fondos.ponerFondos(6) ;
      pushStyle () ;
      fill(196, 185, 150) ;
      stroke(2) ;
      rect(width/2, 20, 200, 50, 8) ;
      fill(0) ;
      textAlign(CENTER);
      text("Segundos", width/2, 20) ;
      text(segundos, width/2, 40) ;
      popStyle () ;
    }

    if (estado.equals("perdiste")) {
      fondos.ponerFondos(3) ;
      segundos = 0 ;
    }
    if (estado.equals("ganaste")) {
      fondos.ponerFondos(4) ;
    }
    if (mousePressed) { 
      if ( estado.equals("perdiste") || estado.equals("ganaste")) {
        estado = "manosreposo" ;
        frameCount = 0 ;
        segundos = 0 ;
      }
    }


    println (estado) ;
  }


  void botonesClick () {

    if (botpan1.clickBotton (320, 445, 165, 50) && estado.equals("inicio")) {
      estado = "manosreposo" ;
    }
  }


  void moverMano() {
    if (estado.equals("manosreposo")) {
      estado = "manosagarrando" ;
    }
  }
  void moverMano2() {
    if (estado.equals("manosagarrando")) {
      estado = "manosreposo" ;
    }
  }

  void colision () {
    for (int i = 0; i< muchos.length; i++) {
      if (muchos[i].bx > personaje.mx-personaje.ancho/2 && muchos [i].bx < width-100 && muchos[i].by > personaje.alto+muchos[i].btam && muchos[i].by < height && estado.equals("manosagarrando") || estado.equals("manosreposo") ) {
        muchos[i].colision = true ;
        estado = "perdiste" ;
      } else {
        muchos[i].colision = false ;
      }
    }
  }
}
