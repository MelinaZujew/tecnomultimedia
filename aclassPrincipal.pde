class Principal {
  BotonesN botonesN, botonesN2, botonesN3, botonesN4, botonesN5, botonesN6 ;
  JuegoPrincipal juego;
  Textos textos ;
  Imagen fondos;
  int segundos;
  int anch = 130 ;
  String estado ;
  String [] texto;
  PImage viejito, viejito2, afinal, chang;
  Principal () {
    texto = loadStrings("Changfameicompleto.txt") ;
    fondos = new Imagen () ;
    viejito = loadImage("viejito.png") ;
    viejito2 = loadImage("viejito2.png") ;
    afinal = loadImage("afinal.png") ;
    chang = loadImage("chang.png") ;
    estado = "inicio" ;
    botonesN = new BotonesN (width/2, height/2, anch, 50) ;
    botonesN2 = new BotonesN (width/2, height-height/3, anch, 50) ;
    botonesN3 = new BotonesN (width-anch/2-5, height/2+155, anch, 50) ;
    botonesN4 = new BotonesN (width/2, height/2+75, anch, 50) ;
    botonesN5 = new BotonesN (width/2-145, height/2+75, anch, 50) ;
    botonesN6 = new BotonesN (width-245, height/2+75, anch, 50) ;
    textos = new Textos () ;
    juego = new JuegoPrincipal () ;
  }

  void dibujar () {
    noStroke ( ) ;
    if (mousePressed) {
      juego.botonesClick () ;
    }
    if (estado.equals("inicio")) {
      fondos.ponerFondos(0) ;
      textSize(40);
      textAlign(CENTER);
      fill(156, 219, 91);
      text("Changfamei", width/2, height/4+height/8); 
      botonesN.dibujarBotonesN () ;
      botonesN2.dibujarBotonesN () ;  
      textSize(15);
      fill(0);
      text("Iniciar", width/2, height/2+anch/8, anch, 50); 
      text("Créditos", width/2, height-height/3+anch/8, anch, 50);
    }
    if (estado.equals("creditos")) {
      fondos.ponerFondos(0) ;
      textSize(30);
      fill(156, 219, 91) ;
      text("Créditos", width/2, 170);
      textSize(23);
      text("Aventura: Melina Zujew", width/2, 250);
      text("Cuento: Anónimo", width/2, 300);
      text("Imagenes: Melina Zujew", width/2, 350);
      botonesN3.dibujarBotonesN () ;
      textSize(15);
      fill(0) ;
      text("Volver al inicio", width-70, height/2+160);
    }


    if (estado.equals("aventura1")) {
      fondos.ponerFondos(1) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      botonesN4.dibujarBotonesN () ;
      // botones(width/2-anch/2, height/2+50, anch, 50) ;
      textSize(15);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      //for(int i = 0; i <2; i++) {
      textSize(17);
      text(texto[0], width/2, height/2-30);
      text(texto[1], width/2, height/2-30+20);
      text(texto[2], width/2, height/2-30+40);
      //text(texto[1], width/2, height/2+20);
      // }
      /*for (int i = 0; i <4; i++) {
       text (lineaTxt [i+2], 10, 430+separacion*1) ;
       } */
    }

    if (estado.equals("aventura2")) { //pantalla antes del juego

      fondos.ponerFondos(2) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      fill(0) ;
      botonesN5.dibujarBotonesN () ;
      botonesN6.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Ignorarlo y seguir", width-244, height/2+80) ;
      text("Estirarse y tomarlo", width/2-144, height/2+80) ;
      textSize(17);
      text(texto[3], width/2, height/2-30);
      text(texto[4], width/2, height/2-30+20);
      text(texto[5], width/2, height/2-30+40);
    }

    if (estado.equals("juego")) {
      juego.dibujar () ;
      if (juego.ganar()) {
        estado = "ganaste" ;
      }
    }
    if (estado.equals("ganaste")) {
      if (frameCount%60 == 0) {
        segundos++ ;
      }
      fondos.ponerFondos(8) ;
      ganaste.play();
      if (segundos==4) {
        estado= "aventura6" ;
      }
    }

    if (estado.equals("aventura3")) { 
      fondos.ponerFondos(2) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      textSize(18);
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[6], width/2, height/2-40);
      text(texto[7], width/2, height/2-40+20);
      text(texto[8], width/2, height/2-40+40);
      text(texto[9], width/2, height/2-40+60);
    } 

    if (estado.equals("aventura4")) {
      fondos.ponerFondos(5) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      botonesN4.dibujarBotonesN () ;
      textSize(18);
      fill(0) ;
      textSize(14);
      fill(0) ;
      text("Volver al inicio", width/2, height/2+80) ;
      textSize(17);
      text(texto[10], width/2, height/2-30);
      text(texto[11], width/2, height/2-30+20);
    }

    if (estado.equals("aventura5")) {
      fondos.ponerFondos(2) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      textSize(17);
      fill(0) ;
      text("Se queda observando", width/2, height/2-10) ;
      botonesN5.dibujarBotonesN () ;
      botonesN6.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Ignorarlo e irse", width-245, height/2+80) ;
      text("Intentar otra vez", width/2-145, height/2+80) ;
    }
    if (estado.equals("aventura6")) {
      fondos.ponerFondos(2) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      textSize(16);
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[12], width/2, height/2-30);
      text(texto[13], width/2, height/2-30+20);
    }
    if (estado.equals("aventura7")) {
      fondos.ponerFondos(3) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      image(viejito, 0, 0) ;
      textSize(16);
      textSize(18);
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[14], width/2, height/2-50);
      text(texto[15], width/2, height/2-50+20);
      text(texto[16], width/2, height/2-50+40);
      text(texto[17], width/2, height/2-50+60);
    }
    if (estado.equals("aventura8")) {
      fondos.ponerFondos(3) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      textSize(17);
      fill(0) ;
      text("Vuelve desolada a su casa", width/2, height/2-20) ;
      botonesN5.dibujarBotonesN () ;
      botonesN6.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Contar \nlo descubierto", width-245, height/2+70) ;
      text("No decir nada", width/2-145, height/2+80) ;
    }

    if (estado.equals("aventura9")) {
      fondos.ponerFondos(4) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      fill(0) ;
      textSize(14);
      botonesN4.dibujarBotonesN () ;
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[18], width/2, height/2-30);
      text(texto[19], width/2, height/2-30+20);
      text(texto[20], width/2, height/2-30+40);
    }
    if (estado.equals("aventura10")) {
      fondos.ponerFondos(4) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      textSize(18);
      fill(0) ;
      textSize(14);
      botonesN4.dibujarBotonesN () ;
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[21], width/2, height/2-30);
      text(texto[22], width/2, height/2-30+20);
      text(texto[23], width/2, height/2-30+40);
      fondos.ponerFondos(6) ;
    }

    if (estado.equals("aventura11")) {
      fondos.ponerFondos(4) ;
      fill(156, 209, 158, 200) ; 
      rect(width/2, height/2-20, 580, 300, 50) ;
      textSize(18);
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[24], width/2, height/2-30);
      text(texto[25], width/2, height/2-30+20);
      fondos.ponerFondos(6) ;
    }

    if (estado.equals("aventura12")) {
      fondos.ponerFondos(4) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      textSize(17);
      fill(0) ;
      text("Changfamei corre a ayudarlo y ve su cara exhausta", width/2, height/2-20);
      botonesN5.dibujarBotonesN () ;
      botonesN6.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Decir la verdad", width-245, height/2+80) ;
      text("Quedarse callada", width/2-145, height/2+80) ;
    }
    if (estado.equals("final2")) {
      fondos.ponerFondos(5) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Volver al inicio", width/2, height/2+80) ;
      textSize(17);
      text(texto[26], width/2, height/2-30);
      text(texto[27], width/2, height/2-30+20);
    }
    if (estado.equals("aventura13")) {
      fondos.ponerFondos(4) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[28], width/2, height/2-30);
      text(texto[29], width/2, height/2-30+20);
    } 
    if (estado.equals("aventura14")) {
      fondos.ponerFondos(7) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[30], width/2, height/2-30);
      text(texto[31], width/2, height/2-30+20);
    }
    if (estado.equals("aventura15")) {
      fondos.ponerFondos(3) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      image(viejito, 70, 0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[32], width/2, height/2-30);
      text(texto[33], width/2, height/2-30+20);
      text(texto[34], width/2, height/2-30+40);
    } 
    if (estado.equals("aventura16")) {
      fondos.ponerFondos(9) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      image(viejito2, -110, 0) ;
      fill(0) ;
      botonesN5.dibujarBotonesN () ;
      botonesN6.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Rechazar", width-245, height/2+80) ;
      text("Aceptar", width/2-145, height/2+80) ;
      textSize(17);
      text(texto[35], width/2, height/2-50);
      text(texto[36], width/2, height/2-50+20);
      text(texto[37], width/2, height/2-50+40);
      text(texto[38], width/2, height/2-50+60);
    } 
    if (estado.equals("final3")) {
      fondos.ponerFondos(9) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Volver al inicio", width/2, height/2+80) ;
      textSize(17);
      text(texto[39], width/2, height/2-30);
      text(texto[40], width/2, height/2-30+20);
      text(texto[41], width/2, height/2-30+40);
    }
    if (estado.equals("aventura17")) {
      image(afinal, 0, 0) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      image(chang, 0, 0) ;
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Siguiente", width/2, height/2+80) ;
      textSize(17);
      text(texto[42], width/2, height/2-50);
      text(texto[43], width/2, height/2-50+20);
      text(texto[44], width/2, height/2-50+40);
      text(texto[45], width/2, height/2-50+60);
    } 
    if (estado.equals("final4")) {
      fondos.ponerFondos(1) ;
      fill(156, 209, 158, 200) ;
      rect(width/2, height/2-20, 580, 300, 50) ;
      fill(0) ;
      botonesN4.dibujarBotonesN () ;
      textSize(14);
      fill(0) ;
      text("Volver al inicio", width/2, height/2+80) ;
      textSize(17);
      text(texto[46], width/2, height/2-30);
      text(texto[47], width/2, height/2-30+20);
      text(texto[48], width/2, height/2-30+40);
    }
    println (estado) ;
  }

  void botonesClick () {

    if (botonesN.clickBotton (width/2, height/2, anch, 50) && estado.equals("inicio") && frameCount > 10) {
      estado = "aventura1" ;
      frameCount = 0 ;
    }
    if (botonesN2.clickBotton (width/2, height-height/3, anch, 50) && estado.equals("inicio") && frameCount > 10) {
      estado = "creditos" ;
      frameCount = 0 ;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura1") && frameCount > 10) {
      estado = "aventura2" ;
      frameCount = 0 ;
    }

    if (botonesN5.clickBotton (width/2-145, height/2+75, anch, 50) && estado.equals("aventura2") && frameCount > 10) {
      estado = "aventura3" ; //cambiar a juego cuando funcione
      frameCount = 0;
    } 
    if (botonesN6.clickBotton (width-245, height/2+75, anch, 50) && estado.equals("aventura2") && frameCount > 10) {
      estado = "aventura4" ;
      frameCount = 0;
    } 
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura4") && frameCount > 10) {
      estado = "inicio" ;
      frameCount = 0;
    } 
    if (botonesN3.clickBotton (width-anch/2-5, height/2+155, anch, 50) && estado.equals("creditos") && frameCount > 10) {
      estado = "inicio" ;
      frameCount = 0;
    } 


    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura3") && frameCount > 10) {
      estado = "aventura5" ;
      frameCount = 0;
    }
    if (botonesN6.clickBotton (width-245, height/2+75, anch, 50) && estado.equals("aventura5") && frameCount > 10) {
      estado = "aventura4" ;
      frameCount = 0;
    } 
    if (botonesN5.clickBotton (width/2-145, height/2+75, anch, 50) && estado.equals("aventura5") && frameCount > 10) {
      estado = "juego" ; 
      frameCount = 0;
    } 
    /*if (botonesN6.clickBotton (width-245, height/2+75, anch, 50) && estado.equals("aventura5") && frameCount > 10) {
     estado = "aventura6" ;
     frameCount = 0;
     }*/

    if (botonesN5.clickBotton (width/2-145, height/2+75, anch, 50) && estado.equals("aventura5") && frameCount > 10) {
      estado = "aventura6" ;
      frameCount = 0;
    } 
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura6") && frameCount > 10) {
      estado = "aventura7" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura7") && frameCount > 10) {
      estado = "aventura8" ;
      frameCount = 0;
    }
    if (botonesN5.clickBotton (width/2-145, height/2+75, anch, 50) && estado.equals("aventura8") && frameCount > 10) {
      estado = "aventura9" ;
      frameCount = 0;
    }
    if (botonesN6.clickBotton (width-245, height/2+75, anch, 50) && estado.equals("aventura8") && frameCount > 10) {
      estado = "aventura13" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura9") && frameCount > 10) {
      estado = "aventura10" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura10") && frameCount > 10) {
      estado = "aventura11" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura11") && frameCount > 10) {
      estado = "aventura12" ;
      frameCount = 0;
    }
    if (botonesN5.clickBotton (width/2-145, height/2+75, anch, 50) && estado.equals("aventura12") && frameCount > 10) {
      estado = "final2" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("final2") && frameCount > 10) {
      estado = "inicio" ;
      frameCount = 0;
    }
    if (botonesN6.clickBotton (width-245, height/2+75, anch, 50) && estado.equals("aventura12") && frameCount > 10) {
      estado = "aventura13" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura13") && frameCount > 10) {
      estado = "aventura14" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura14") && frameCount > 10) {
      estado = "aventura15" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura15") && frameCount > 10) {
      estado = "aventura16" ;
      frameCount = 0;
    }
    if (botonesN6.clickBotton (width-245, height/2+75, anch, 50) && estado.equals("aventura16") && frameCount > 10) {
      estado = "final3" ;
      frameCount = 0;
    }
    if (botonesN5.clickBotton (width/2-145, height/2+75, anch, 50) && estado.equals("aventura16") && frameCount > 10) {
      estado = "aventura17" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("final3") && frameCount > 10) {
      estado = "inicio" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("aventura17") && frameCount > 10) {
      estado = "final4" ;
      frameCount = 0;
    }
    if (botonesN4.clickBotton (width/2, height/2+75, anch, 50) && estado.equals("final4") && frameCount > 10) {
      estado = "inicio" ;
      frameCount = 0;
    }
  }
}
