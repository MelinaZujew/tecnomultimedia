import processing.sound.*;
SoundFile click ;
Principal principal;
void setup () {
  size (800, 600) ;
  principal = new Principal () ;
  click = new SoundFile(this, "click.mp3");
}
void draw () {
 background(242,209, 137);
 principal.dibujar () ;
}

void mousePressed () {
  click.play();
   principal.botonesClick () ;
}
