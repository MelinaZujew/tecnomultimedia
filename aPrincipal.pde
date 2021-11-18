class Principal {
  Fondos fondos;
  Fondos imbicho ;
  Botones botpan1;
Mano personaje;
//Bichos enemigos ;
Bichos [] muchos = new Bichos [4] ;
String estado;
int segundos ;
Principal () {
  estado = "inicio" ;
  fondos = new Fondos () ;
  botpan1 = new Botones(width/2, height/2+170, 165, 50) ;
    personaje = new Mano() ;
   // enemigos = new Bichos () ;
    for(int i = 0; i<muchos.length; i++) {
    muchos [i] = new Bichos() ;
    }

}
void dibujar () {

  if (estado.equals("inicio")) {
  //imagen con portada del juego y boton comenzar
  fondos.ponerFondos(0) ;
  botpan1.dibujarBotones() ;
  textSize(20) ;
  fill(0) ;
  text("Empezar a Jugar", width/2-80, height/2+175) ;
  
  }
  if (frameCount%60 == 0 && estado.equals("manosreposo") || estado.equals("manosagarrando"))
  {
    segundos++ ;
}
println(segundos) ;
  if (estado.equals("manosreposo")) {
    //manos en reposo
fondos.ponerFondos(1) ;

  }
  
  if (estado.equals("manosagarrando")) {
    fondos.ponerFondos(2) ;
  }
  
  
  
  
  
  
 personaje.dibujarMano (210, height/2+130, 50, 300) ;
 // enemigos.dibujarBichos () ;
 //enemigos.moverBichos () ;
 if (estado == "manosreposo" || estado == "manosagarrando" ) {
  colision() ;
  for(int i = 0; i<muchos.length; i++) {
    muchos [i].dibujarBichos() ;
    muchos[i].moverBichos () ;
    }
 }
}


void botonesClick () {
 if (botpan1.clickBotton (width/2, height/2+170, 165, 50)) {
   estado = "manosreposo" ;
 }
}
 

void moverMano(int teclado) {
 personaje.moverMano(teclado) ;
 if (estado.equals("manosreposo")) {
   estado = "manosagarrando" ; 
 }
}
void moverMano2(int teclado) {
 personaje.moverMano2(teclado) ;
 if (estado.equals("manosagarrando")) {
   estado = "manosreposo" ; 
 }
}


void colision () {
 /* float distancia = dist (enemigos.bx, enemigos.by, personaje.mx, personaje.my) ;
  if(distancia<personaje.mtam/2 + enemigos.btam/2) {
 enemigos.colorbichos = false ;
  } */
  for (int i = 0; i< muchos.length ;i++) {
    float distancias = dist (muchos [i].bx, muchos [i].by, personaje.mx, personaje.my) ;
  if(distancias<personaje.ancho/2 +muchos [i].btam/4) { // porque  no me detecta el rec entero y solo detecta el centro?
 muchos [i].colorbichos = false ;
  }
  }
  
}
}
