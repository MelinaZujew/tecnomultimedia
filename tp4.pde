//URL video: https://youtu.be/EL5ExaXohCI
color relleno = color(255);
String estado;
String [] texto, texto2, texto3, texto4, texto6, texto7, texto9, texto10,texto11, textof2, texto13;
PImage [] fondos = new PImage [6] ;
PImage muerte ;
PImage viejito;
int anch = 130 ;
int num ;
void setup() {
  size(800, 600);
  estado = "inicio";
  for (int i=0; i < fondos.length; i ++) {
   fondos [i] = loadImage ("fondo"+i+".png") ; 
  }
  muerte = loadImage("muerte.png") ;
  viejito = loadImage("viejito.png") ;
texto = loadStrings ("Changfamei.txt") ;

for (int i = 0; i < texto.length; i++) {
 println(texto [i]) ; 
}
 texto2 = loadStrings ("Changfamei2.txt") ;
 for (int i = 0; i < texto2.length; i++) {
 println(texto2 [i]) ; 
 }
 
 texto3 = loadStrings ("Changfamei3.txt") ;

for (int i = 0; i < texto3.length; i++) {
 println(texto3 [i]) ; 
} 

 texto4 = loadStrings ("Changfamei4.txt") ;

for (int i = 0; i < texto4.length; i++) {
 println(texto4 [i]) ; 
}
texto6 = loadStrings ("Changfamei6.txt") ;

for (int i = 0; i < texto6.length; i++) {
 println(texto6 [i]) ; 
}

texto7 = loadStrings ("Changfamei7.txt") ;

for (int i = 0; i < texto7.length; i++) {
 println(texto7 [i]) ; 
 }
 texto9 = loadStrings ("Changfamei9.txt") ;

for (int i = 0; i < texto9.length; i++) {
 println(texto9 [i]) ; 
 }
 
  texto10 = loadStrings ("Changfamei10.txt") ;

for (int i = 0; i < texto10.length; i++) {
 println(texto10 [i]) ; 
 }
 
  texto11 = loadStrings ("Changfamei11.txt") ;

for (int i = 0; i < texto11.length; i++) {
 println(texto11 [i]) ; 
 }
 /*
 textof2 = loadStrings ("Changfameif2.txt") ;

for (int i = 0; i < textof2.length; i++) {
 println(textof2 [i]) ; 
 }
 
   texto13 = loadStrings ("Changfamei13.txt") ;

for (int i = 0; i < texto13.length; i++) {
 println(texto13 [i]) ; 
 }
 */
noStroke ( ) ;
}
void draw() {
 // background(242,209, 137); 
  if (estado.equals("inicio")) {
  image (fondos [0], 0, 0) ;
    
    textSize(40);
    textAlign(CENTER);
    fill(156,219,91);
 
    text("Changfamei", width/2, height/4+height/8); 
  botones(width/2-anch/2,height/2,anch,50) ;
  botones(width/2-anch/2,height-height/3,anch,50) ;
  textSize(15);
       fill(0);
 text("Iniciar", width/2-anch/2,height/2+anch/8,anch,50); 
 text("Créditos", width/2-anch/2,height-height/3+anch/8,anch,50); 
  }
  if (estado.equals("creditos")) {
    image (fondos [0], 0, 0) ;
    textSize(28);
    fill(156,219,91) ;
    text("Créditos", width/2, 170);
    textSize(23);
    text("Aventura: Melina Zujew", width/2, 250);
    text("Cuento: Anónimo", width/2, 300);
    text("Imagenes: Melina Zujew", width/2, 350);
     botones(width-anch-5,height/2+anch,anch,50) ;
     textSize(15);
     fill(0) ;
    text("Volver al inicio", width-70,height/2+160);
    
  }
  if (estado.equals("aventura1")) {
    image (fondos [1], 0, 0) ;
    fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto.length ; i++) {
     if (i<3) {
       textSize(18);
       fill(0) ;
    text(texto[i], 400, 250+i*30);
     }
   }
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(15);
       fill(0) ;
  text("Siguiente", width/2,height/2+80) ;

   }
   if (estado.equals("aventura2")) {
      image (fondos [2], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto2.length; i++) {
      textSize(18);
       fill(0) ;
    text(texto2[i], 400, 250+i*30);
  botones(width/2-210,height/2+50,anch,50) ;
  botones(width-310,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Ignorarlo y seguir", width-244,height/2+80) ;
   text("Estirarse y tomarlo", width/2-144,height/2+80) ;
   }
   }
   
    if (estado.equals("aventura3")) {
     image (fondos [2], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto3.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto3[i], 400, 220+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Siguiente", width/2,height/2+80) ;
    }
    
   
    if (estado.equals("aventura4")) {
     //image (fondos [1], 0, 0) ;
     fill(24,160,27,200) ;
    image(muerte, 0,0) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto4.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto4[i], 400, 260+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Volver al inicio", width/2,height/2+80) ;
    }
    
      if (estado.equals("aventura5")) {
     image (fondos [2], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   textSize(18);
       fill(0) ;
  text("Se queda observando", width/2,height/2-10) ;
  
   botones(width/2-210,height/2+50,anch,50) ; //intentar otra vez
  botones(width-310,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Ignorarlo e irse", width-245,height/2+80) ;
   text("Intentar otra vez", width/2-145,height/2+80) ;
}
   
    if (estado.equals("aventura6")) {
     image (fondos [2], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto6.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto6[i], 395, 255+i*30);
   } 
  botones(width/2-anch/2,height/2+30,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Siguiente", width/2,height/2+60) ;
}

if (estado.equals("aventura7")) {
     image (fondos [3], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   
   image(viejito, 0,0) ;
   for (int i=0; i<texto7.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto7[i], 390, 230+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Siguiente", width/2,height/2+80) ;
}

 if (estado.equals("aventura8")) {
      image (fondos [3], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   textSize(18);
       fill(0) ;
  text("Vuelve desolada a su casa", width/2,height/2) ;
  
   botones(width/2-210,height/2+50,anch,50) ; //no decir nada
  botones(width-310,height/2+50,anch,50) ; //Contar (der)
  textSize(14);
       fill(0) ;
  text("Contar \nlo descubierto", width-245,height/2+70) ;
   text("No decir nada", width/2-145,height/2+80) ;
 }
 
 if (estado.equals("aventura9")) {
       image (fondos [4], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto9.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto9[i], 400, 240+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Siguiente", width/2,height/2+80) ;
}
if (estado.equals("aventura10")) {
       image (fondos [4], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto10.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto10[i], 400, 240+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Siguiente", width/2,height/2+80) ;
}
/*
if (estado.equals("aventura11")) {
       image (fondos [1], 0, 0) ;
     fill(156,209,158,200) ;
  rect(105, 130, 580, 300, 50) ;
   for (int i=0; i<texto11.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto11[i], 390, 250+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Siguiente", width/2,height/2+80) ;
}

if (estado.equals("aventura12")) {
     fill(240,214,160) ;
  rect(0, 100, width, 300, 50) ;
   textSize(18);
       fill(0) ;
  text("Changfamei corre a ayudarlo y ve su cara exhausta", width/2,height/2) ;
  
   botones(width/2-170,height/2+50,anch,50) ; //no decir nada
  botones(width-270,height/2+50,anch,50) ; //Contar (der)
  textSize(14);
       fill(0) ;
  text("Decir la verdad", width-205,height/2+80) ;
   text("Quedarse callada", width/2-105,height/2+80) ;
 }
 
 if (estado.equals("final2")) {
       fill(240,214,160) ;
  rect(0, 100, width, 300, 50) ;
   for (int i=0; i<textof2.length; i++) {
     textSize(18);
       fill(0) ;
    text(textof2[i], 300, 220+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Volver al inicio", width/2,height/2+80) ;
}

if (estado.equals("aventura13")) {
       fill(240,214,160) ;
  rect(0, 100, width, 300, 50) ;
   for (int i=0; i<texto13.length; i++) {
     textSize(18);
       fill(0) ;
    text(texto13[i], 300, 220+i*30);
   } 
  botones(width/2-anch/2,height/2+50,anch,50) ;
  textSize(14);
       fill(0) ;
  text("Siguiente", width/2,height/2+80) ;
} 
*/
 println("Estado " + estado);
   
  
}

  void botones(int px, int py, int ancho, int alto ) {
  if (sobreboton (mouseX, mouseY, px, py, ancho, alto)) {
  fill(50,165,54) ;
  }
  else {
   fill(100,211,105) ; 
  }
  
  rect(px, py, ancho, alto, alto/5) ;
  }
  boolean clickBoton(int mx, int my, int px, int py, int ancho, int alto) {
  boolean click = mx> px && mx< px +ancho && my > py && my < py+alto == true ;
   return click ;
  }

  boolean sobreboton(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
  return true ;
  }
  else {
   return false ; 
  }
  
  }
  
  void mousePressed () {
   if( clickBoton (mouseX, mouseY, width/2-130/2,height/2,130,50) && estado.equals("inicio")) {
    estado = "aventura1" ;

   }
    if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura1")) {
    estado = "aventura2" ;

   }
   
    if( clickBoton (mouseX, mouseY, width/2-210,height/2+50,anch,50) && estado.equals("aventura2")) {
    estado = "aventura3" ; //izquierda

   }
   if( clickBoton (mouseX, mouseY, width-310,height/2+50,anch,50) && estado.equals("aventura2")) {
    estado = "aventura4" ; //derecha

   }
   if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura4")) {
    estado = "inicio" ; 
   }
 if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura3")) {
    estado = "aventura5" ; 
   }

if( clickBoton (mouseX, mouseY, width-310,height/2+50,anch,50) && estado.equals("aventura5")) {
    estado = "aventura4" ; 
   }


if( clickBoton (mouseX, mouseY, width/2-210,height/2+50,anch,50) && estado.equals("aventura5")) {
    estado = "aventura6" ; 
   }
   
if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+30,anch,50) && estado.equals("aventura6")) {
    estado = "aventura7" ; 
   }
   

if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura7")) {
    estado = "aventura8" ; 
   }

 if( clickBoton (mouseX, mouseY, width/2-210,height/2+50,anch,50) && estado.equals("aventura8")) {
    estado = "aventura9" ; 
   }
   if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura9")) {
    estado = "aventura10" ; 
   }
  /*
   if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura10")) {
   estado = "aventura11" ; 
  }
  */
  /*
  if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura11")) {
   estado = "aventura12" ; 
  }
  if( clickBoton (mouseX, mouseY,width/2-170,height/2+50,anch,50) && estado.equals("aventura12")) {
   estado = "final2" ; 
  }
if( clickBoton (mouseX, mouseY,width/2-anch/2,height/2+50,anch,50) && estado.equals("final2")) {
   estado = "inicio" ; 
  }
if( clickBoton (mouseX, mouseY,width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura12")) {
   estado = "aventura13" ; 
  }
   */
   if( clickBoton (mouseX, mouseY, width/2-130/2,height-height/3,130,50) && estado.equals("inicio")) {
    estado = "creditos" ;
   }
   
   if( clickBoton (mouseX, mouseY, width-anch-5,height/2+anch,anch,50) && estado.equals("creditos")) {
    estado = "inicio" ;
   }
   
  }
