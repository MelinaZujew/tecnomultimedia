import processing.sound.*;
SoundFile click, ganaste, perdiste ;
Principal principal;
void setup () {
  size (800, 600) ;
  principal = new Principal () ;
  click = new SoundFile(this, "click.aiff");
  ganaste = new SoundFile(this, "ganaste.aiff");
  perdiste = new SoundFile(this, "perdiste.aiff");
}
void draw () {
 background(242,209, 137);
 principal.dibujar () ;
}

void mousePressed () {
  click.amp(0.5) ;
   click.play();
   principal.botonesClick () ;
}
