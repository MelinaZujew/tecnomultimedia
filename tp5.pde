//URL: https://youtu.be/do4epIvF9qg
Principal juego;
void setup () {
  size(800,600) ;
  juego = new Principal () ;
}
void draw () {
 background (0) ; 
 juego.dibujar () ;
 println(key) ;
 
 if(keyPressed) {
  juego.moverMano(key); 
 } 
 else {
  juego.moverMano2(key); 
 }
}
void mousePressed () {
juego.botonesClick () ;
}
