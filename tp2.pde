PImage EndGame, JeremyRenner,Scarlett, MarkRuffalo, ChrisHemsworth, ChrisEvans, RobertDowney, CieloNocturno;
PFont Nombres ;
PFont fuente ;
float py1 , px1, px2  ;
int jerem ;
int renner, renner2 ;
float opacidad, opacidad2, opacidad3, opa4,opa5, opa6, opa7 ;
float scpx, scpy ;
float dirx ;
float mx, my, mx2, mx3, my2 ;
float ruffy ;
float chrisx, chrisy,chrisx2, chrisy2, ch ;
float che, rob, ranx,rany, ranx2, rany2 ;

void setup ( ) {
size (500, 500) ;
EndGame = loadImage ("avengers.jpg") ;
fuente = loadFont("Broadway-48.vlw") ;
Nombres = loadFont ("Nombres.vlw") ;
py1 = 0 ;
px1 = 23 ;
px2 = 20 ;
JeremyRenner = loadImage("JeremyRenner3.png") ;
jerem = -2200 ;
renner = 510 ;
renner2 = 540 ;
Scarlett = loadImage("ScarlettJohansson2.png") ;
scpx = -350 ;
scpy = 550 ;
MarkRuffalo = loadImage("MarkRuffalo.png") ;
mx = -50 ;
my = 50 ;
mx2 = 50 ;
mx3 = 550 ;
my2 = 450 ;
ChrisHemsworth = loadImage ("ChrisHemsworth2.png") ;
chrisx = -350 ;
chrisy = 555 ;
chrisx2 = 69 ;
chrisy2 = 140 ;
ChrisEvans = loadImage ("ChrisEvans.png") ;
RobertDowney = loadImage ("RobertDowney4.png") ;
CieloNocturno = loadImage ("CieloNocturno.jpg") ;
ranx = random(20,300) ;
rany = random(30,250) ;
ranx2 = random(50,200) ;
rany2 = random (250, 350) ;
}


void draw ( ) {
  //INICIO 
  if (frameCount < 400) {
image(EndGame, 0, 0, 600, height) ; 
textFont (fuente ) ;
opacidad = map(frameCount, 170, 350, 255, 0 ) ;
fill( 245, 163, 30, opacidad ) ;
text ("Avengers", px1, py1 ) ;
fill ( 86, 72, 222, opacidad) ;
text ("Avengers", px2, py1 ) ;
  }
if  (py1 < 150 ) { 
py1 ++ ;

}

textFont (Nombres) ;

//FINAL

if (frameCount >2000 && frameCount < 2700) {
image(CieloNocturno, 0, 0) ;
}
if(frameCount >2500){
opa7 = map (frameCount, 2600, 2900, 0, 150) ;
fill( 0, 0,0, opa7) ;
rect(0, 0, width, height ) ;

}
if (frameCount > 2300) {
opa6 = map(frameCount, 2300, 2700, 255, 0) ;
fill (237,237,237, opa6 ) ;
text("Dirección", ranx, rany) ;
textSize (35 ) ;
text("Anthony y Joe Russo", ranx2, rany2) ;
}

//ROBERT
if (frameCount >= 1790 && frameCount < 2300) {
image (RobertDowney,0 ,0) ;
}
if(frameCount >= 2300 &&  frameCount < 2500) {
image (RobertDowney,0 ,rob) ;
rob-=4 ; 
}
if (frameCount >= 1970 && frameCount < 2160 ) {
opa4 = map(frameCount, 1980, 2150, 0, 255);
fill( 170, 5, 5, opa4) ;
textSize (48) ;
text("Robert Downey Jr.", 60, 215) ;
fill(251, 202, 3, opa4) ; 
textSize (35 ) ;
text ("Como Iron Man", 125, 383) ;
}
if (frameCount >= 2160 && frameCount< 2300) {
opa5 = map(frameCount, 2160, 2250, 255, 0);
fill( 170, 5, 5,opa5) ;
textSize (48 ) ;
text("Robert Downey Jr.", 60, 215) ;
fill(251, 202, 3, opa5) ;
textSize (35 ) ;
text ("Como Iron Man", 125, 383) ;
}


//EVANS

if (frameCount >= 1500 && frameCount < 1920) {
image (ChrisEvans, 0, 0) ;
}
if(frameCount >= 1920 &&  frameCount < 2200) {
image (ChrisEvans, che, 0) ;
che-=4 ;
}
if (frameCount >= 1750 && frameCount < 1840 ) {
opacidad2 = map(frameCount, 1750, 1830, 0, 255);
fill( 142, 49, 49, opacidad2) ;
textSize (48 ) ;
text("Chris Evans", 130, 200) ;
textSize (35 ) ;
fill(49, 62, 142, opacidad2) ;
text ("Como Captain America", 65, 350) ;
}

if (frameCount >= 1840 && frameCount< 1920) {
opacidad3 = map(frameCount, 1840, 1920, 255, 0);
fill( 142, 49, 49, opacidad3) ;
textSize (48 ) ;
text("Chris Evans", 130, 200) ;
fill(49, 62, 142, opacidad3) ;
textSize (35 ) ;
text ("Como Captain America", 65, 350) ;
}

//HEMSWORTH
if (frameCount >= 1200  &&  frameCount < 1650) {
image(ChrisHemsworth, 0,0 ) ;
}
if(frameCount >= 1650 &&  frameCount < 1800) {
image(ChrisHemsworth, ch, 0 ) ;
ch+=4 ;
}
if (frameCount >= 1330 && frameCount < 1470) {
 chrisx+= 3 ;
chrisy-= 3 ;
 fill (83, 201, 200) ;
 textSize (48 ) ;
text ("Chris Hemsworth", chrisx, 230 ) ;
textSize (35 ) ;
text ("Como Thor", chrisy, 393) ;
}

if (frameCount >= 1470 && frameCount <= 1500 ) { 
   fill (83, 201, 200) ;
  textSize (48 ) ;
text ("Chris Hemsworth", 69, 230 ) ;
textSize (35 ) ;
text ("Como Thor", 140, 393) ;
}
if (frameCount > 1500 && frameCount < 1750) {
 chrisx2+= 3 ;
chrisy2-= 3 ;
 fill (83, 201, 200) ;
 textSize (48 ) ;
text ("Chris Hemsworth", chrisx2, 230 ) ;
textSize (35 ) ;
text ("Como Thor", chrisy2, 393) ;
}

//RUFFALO
if ( frameCount >= 900  && frameCount < 1200) {
image( MarkRuffalo, 0 ,0 ) ;
}

if (frameCount >= 1000 && mx <= 30 ) {
mx +=2 ;
fill ( 37, 121, 47) ;
textSize (48 ) ;
text("Mark \nRuffalo", mx, 50 ) ;
}
if (frameCount > 1040 && frameCount < 1100 ) {
fill ( 37, 121, 47) ;
text("Mark \nRuffalo", 30, 50 ) ;
}
if (frameCount > 1100  ) {
my -=2 ;
fill ( 37, 121, 47) ;
textSize (48 ) ;
text("Mark \nRuffalo", 30, my ) ;
}

if (frameCount >= 950 && mx3 > 325 ) {
mx3 -=2 ;
fill ( 37, 121, 47) ;
textSize (35 ) ;
text("Como Hulk", mx3, 450 ) ;
}

if (frameCount > 1060 && frameCount <= 1100 ) {
fill ( 37, 121, 47) ;
textSize (35 ) ;
text("Como Hulk", 325, 450 ) ;
}
if (frameCount > 1100  ) {
my2 +=2 ;
fill ( 37, 121, 47) ;
textSize (35 ) ;
text("Como Hulk", 325, my2 ) ;
}

if (frameCount >= 1200) {

image( MarkRuffalo, 0, ruffy ) ;
ruffy += 5 ;
}

//SCARLETT
 if ( frameCount >= 500 && frameCount < 950) {
image(Scarlett, 0, 0) ;
 }
 
if (frameCount >= 660 ) {
 scpx+= 3 ;
 scpy-= 3 ;
 fill (201, 41, 41) ;
 textSize (48 ) ;
text ("Scarlett Johansson", scpx, 450 ) ;
textSize (35 ) ;
text ("Como Black Widow", scpy, 480) ;
}

if (frameCount >= 950) {

image (Scarlett, dirx, 0 ) ;
dirx += 5 ;

}


//JEREMY
image(JeremyRenner, 0, jerem ) ;
if (jerem < 0 || frameCount > 550) {
jerem = jerem+5 ;
}

textSize (48 ) ;
if ( frameCount >= 450  && frameCount <= 480) {
  renner -=2 ;
  renner2 -= 2 ;
  fill ( 220, 234,234) ;
text("Jeremmy Renner", 75, renner) ;
textSize (35 ) ;
text("Como Hawkeye", 190, renner2) ;

}

if (frameCount > 480 && frameCount <= 550 ) { 
  fill ( 220, 234,234) ;
text("Jeremmy Renner", 75, 448) ;
textSize (35 ) ;
text("Como Hawkeye", 190, 478) ;

}
if (frameCount > 550 && frameCount <600 ) {
renner+=4 ;
renner2 +=4 ;
  fill ( 220, 234,234) ; 
text("Jeremmy Renner", 75, renner) ; 
textSize (35 ) ;
text("Como Hawkeye", 190, renner2) ;

}
println(frameCount );
}

void keyPressed ( ) { 
frameCount = 0 ;
py1 = 0 ;
px1 = 23 ;
px2 = 20 ;
jerem = -2200 ;
renner = 510 ;
renner2 = 540 ;
scpx = -350 ;
scpy = 550 ;
dirx = 0 ;
ruffy = 0 ;
ch = 0 ;
che = 0 ;
rob = 0 ;
mx = -50 ;
my = 50 ;
mx2 = 50 ;
mx3 = 550 ;
my2 = 450 ;
chrisx = -350 ;
chrisy = 555 ;
chrisx2 = 69 ;
chrisy2 = 140 ;
ranx = random(20,300) ;
rany = random(30,250) ;
ranx2 = random(50,200) ;
rany2 = random (250, 350) ;
}
