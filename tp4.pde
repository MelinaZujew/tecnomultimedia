color relleno = color(255);
String estado;
String [] texto, texto2, texto3, texto4, texto6;
int anch = 130 ;
int num ;
void setup() {
  size(600, 500);
  estado = "inicio";
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
noStroke ( ) ;
}
void draw() {
  background(242,209, 137); //despues va a ir una iamgen de fondo.
  if (estado.equals("inicio")) {
  
    
    textSize(40);
    textAlign(CENTER);
    fill(0);
    
 
    text("Changfamei", width/2, height/4+height/8); 
  botones(width/2-anch/2,height/2,anch,50) ;
  botones(width/2-anch/2,height-height/3,anch,50) ;
  textSize(15);
       fill(0);
 text("Iniciar", width/2-anch/2,height/2+anch/8,anch,50); 
 text("Créditos", width/2-anch/2,height-height/3+anch/8,anch,50); 
  }
  if (estado.equals("creditos")) {
    textSize(28);
    fill(0) ;
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

  println("Estado " + estado);
   
  
}

  void botones(int px, int py, int ancho, int alto ) {
  if (sobreboton (mouseX, mouseY, px, py, ancho, alto)) {
  fill(203,142,8) ;
  }
  else {
   fill(201,155,59) ; 
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
   
    if( clickBoton (mouseX, mouseY, width/2-170,height/2+50,anch,50) && estado.equals("aventura2")) {
    estado = "aventura3" ; //izquierda

   }
   if( clickBoton (mouseX, mouseY, width-270,height/2+50,anch,50) && estado.equals("aventura2")) {
    estado = "aventura4" ; //derecha

   }
   if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura4")) {
    estado = "inicio" ; 
   }
 if( clickBoton (mouseX, mouseY, width/2-anch/2,height/2+50,anch,50) && estado.equals("aventura3")) {
    estado = "aventura5" ; 
   }

if( clickBoton (mouseX, mouseY, width-270,height/2+50,anch,50) && estado.equals("aventura5")) {
    estado = "aventura4" ; 
   }


if( clickBoton (mouseX, mouseY, width/2-170,height/2+50,anch,50) && estado.equals("aventura5")) {
    estado = "aventura6" ; 
   }


 
   if( clickBoton (mouseX, mouseY, width/2-130/2,height-height/3,130,50) && estado.equals("inicio")) {
    estado = "creditos" ;
   }
   
   if( clickBoton (mouseX, mouseY, width-anch-5,height/2+anch,anch,50) && estado.equals("creditos")) {
    estado = "inicio" ;
   }
   
  }
