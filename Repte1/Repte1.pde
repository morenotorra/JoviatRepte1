int speed = 0;
int acceleracio = 0;
float posX;
float posY;
float dspY;
float dspX;
   
void setup() {

  // Ens obra una finestra de 500 x 500. 
  size(600, 600);

  // Valor de l'acceleració.
  frameRate(15);
}

void draw() {

  // Canvia el color del fons.
  background(15488);

  // Suma +1 a la variable x perquè es mogui a 60FPS. 
  speed++;
  acceleracio += speed;

  // Crea tres formes geomètriques i les pinta amb el mètode fill(). Quan posem acceleració podem observar com hi ha acceleració.
  ellipse(acceleracio, height/2, 20, 20);

  // Ens dóna les coordenades X i Y (respectivament) d'on es troba situat el cursor del ratolí.
  ellipse(mouseX, mouseY, 80, 80);

  // Amb el mètode strokeWeight() podem canviar el gruix de les formes geomètriques.
  strokeWeight(10);

  triangle(560, 460, 550, 560, 460, 550);

  strokeWeight(5);

  rect(50, 50, 50, 50);
  strokeWeight(2);
}
