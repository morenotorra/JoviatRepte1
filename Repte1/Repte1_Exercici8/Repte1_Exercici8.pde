int speed = 0;
int acceleracio = 0;
float posX;
float posY;
float dspY;
float dspX;

void setup() {

  // Ens obra una finestra de 500 x 500. 
  size(600, 600);

  // Determinem els valors de la variable posX, i el desplaçament en X i Y.
  posX= width/1;
  posY= height/3;
  dspY = 1;
  dspX = 1;
}

void draw() {

  // Canvia el color del fons.
  background(15488);

  if (posY <= 0) {
    posY = 0;
    dspY=1;
    fill(155, 143, 255);
  } else if (posY >= height) { // Moviment que tindrà l'elipse en l'eix Y.
    posY = height;
    dspX = -10;
    dspY = -10;
    fill(0, 255, 255);
  } else if (posX <= 0) { // Moviment que tindrà l'elipse en l'eix X. 
    posX = 0;
    dspX = 10;
    fill(255, 35, 144);
  } else if (posX >= height) {
    posX = height;
    dspX = -10;
    fill(255, 255, 255);
  }
  ellipse( posX, posY, 100, 100); 

  // Moviment que té l'elipse dins de l'espai. 
  posX = posX + dspX; 
  posY = posY + dspY;
}
