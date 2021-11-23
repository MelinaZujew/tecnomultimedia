class Principal {
  BotonesN botonesN ;
  BotonesN botonesN2 ;
  BotonesN botonesN3 ;
  int anch = 130 ;
  String estado ;

  Principal () {
    estado = "inicio" ;
    botonesN = new BotonesN (width/2-anch/2, height/2, anch, 50) ;
    botonesN2 = new BotonesN (width/2-anch/2, height-height/3, anch, 50) ;
    botonesN3 = new BotonesN (width-anch-5, height/2+anch, anch, 50) ;
  }

  void dibujar () {
    if (estado.equals("inicio")) {
      textSize(40);
      textAlign(CENTER);
      fill(0);
      text("Changfamei", width/2, height/4+height/8); 
      botonesN.dibujarBotonesN () ;
      botonesN2.dibujarBotonesN () ;  
      textSize(15);
      fill(0);
      text("Iniciar", width/2-anch/2, height/2+anch/8, anch, 50); 
      text("Créditos", width/2-anch/2, height-height/3+anch/8, anch, 50);
    }
    if (estado.equals("creditos")) {
      textSize(28);
      fill(0) ;
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

    /* if (estado.equals("aventura1")) {
     fill(240,214,160) ;
     rect(0, 100, width, 300, 50) ;
     for (int i=0; i<texto.length ; i++) {
     if (i<3) {
     textSize(18);
     fill(0) ;
     text(texto[i], 300, 200+i*30);
     }
     }
     botones(width/2-anch/2,height/2+50,anch,50) ;
     textSize(15);
     fill(0) ;
     text("Siguiente", width/2,height/2+80) ;
     }
     
     if (estado.equals("aventura2")) {
     fill(240,214,160) ;
     rect(0, 100, width, 300, 50) ;
     for (int i=0; i<texto2.length; i++) {
     textSize(18);
     fill(0) ;
     text(texto2[i], 300, 230+i*30);
     botones(width/2-170,height/2+50,anch,50) ;
     botones(width-270,height/2+50,anch,50) ;
     textSize(14);
     fill(0) ;
     text("Ignorarlo y seguir", width-205,height/2+80) ;
     text("Estirarse y tomarlo", width/2-105,height/2+80) ;
     }
     }
     
     if (estado.equals("aventura3")) {
     fill(240,214,160) ;
     rect(0, 100, width, 300, 50) ;
     for (int i=0; i<texto3.length; i++) {
     textSize(18);
     fill(0) ;
     text(texto3[i], 300, 200+i*30);
     } 
     botones(width/2-anch/2,height/2+50,anch,50) ;
     textSize(14);
     fill(0) ;
     text("Siguiente", width/2,height/2+80) ;
     }
     
     if (estado.equals("aventura4")) {
     fill(240,214,160) ;
     rect(0, 100, width, 300, 50) ;
     for (int i=0; i<texto4.length; i++) {
     textSize(18);
     fill(0) ;
     text(texto4[i], 300, 230+i*30);
     } 
     botones(width/2-anch/2,height/2+50,anch,50) ;
     textSize(14);
     fill(0) ;
     text("Volver al inicio", width/2,height/2+80) ;
     }
     
     if (estado.equals("aventura5")) {
     fill(240,214,160) ;
     rect(0, 100, width, 300, 50) ;
     textSize(18);
     fill(0) ;
     text("Se queda observando", width/2,height/2) ;
     
     botones(width/2-170,height/2+50,anch,50) ; //intentar otra vez
     botones(width-270,height/2+50,anch,50) ;
     textSize(14);
     fill(0) ;
     text("Ignorarlo e irse", width-205,height/2+80) ;
     text("Intentar otra vez", width/2-105,height/2+80) ;
     }
     
     if (estado.equals("aventura6")) {
     fill(240,214,160) ;
     rect(0, 100, width, 300, 50) ;
     for (int i=0; i<texto6.length; i++) {
     textSize(18);
     fill(0) ;
     text(texto6[i], 300, 230+i*30);
     } 
     botones(width/2-anch/2,height/2+50,anch,50) ;
     textSize(14);
     fill(0) ;
     text("Volver al inicio", width/2,height/2+80) ;
     }
     */
  }
  
  void mousePressed () {
    if (BotonesN.clickBotton (botonesN) && estado.equals("inicio")) {
      estado = "creditos" ; }
  }
}
