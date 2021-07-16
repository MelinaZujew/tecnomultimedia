//URL = https://youtu.be/0aW3JdMohkQ
int cant = 30 ;
int tam ;
float rand ;
 void setup() {
 size ( 500, 500) ;
  surface.setResizable (true) ;
rand = random(1, 3) ;
 }
 

 void draw() {
   translate ( 0, 10) ;
   tam = width/cant ;
  background (0) ;

  for (int i =0; i < cant ; i++ ) { 
    for(int j= 0; j< cant; j++)  { 
      float posx = map (i, 0, cant-1, mouseX, width) ;
      float dista = dist(0, 0, width, height ) ;
 float opa = map ((j+i), dista, cant-1, 0, mouseY) ;

 if( frameCount < 350) {
 strokeWeight (rand) ;
 stroke(72,185, 39, opa) ;
 
   }
   
   else {
     strokeWeight (rand) ;
     stroke (216, 234, 26, opa) ;
 
     
      } 
   
     println(frameCount );
      line(posx, j*tam+tam/2, height/2, width/2) ;
 }

  }
  
   }
   void mousePressed () { 
        rand = random(1, 3) ;
     }
   
   void keyPressed () {
     frameCount = 0 ;
    mouseX = 0 ;
    mouseY = 0 ;
     }
 
