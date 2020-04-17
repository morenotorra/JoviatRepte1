// S'importa l'objecte PImage que Processing té incorporat en el seu llenguatge. 
PImage imatge;

void setup() {

  size(600, 600);

  // Es crea un objecte imatge de tipus PImage() on desarem la imatge. 
  imatge = new PImage();

  // La imatge està desada dins la carpeta "data". Processing cercarà la imatge automàticament dins aquesta carpeta. 
  imatge = loadImage("imatge.png");
}

/**
 Es creen dos bucles inicials, un per recórrer horitzontal i un altre per recorre-ho vertical. 
 S'incrementa 32 perquè són els píxels que està formada la imatge. 
 Cada vegada que es recorre el bucle s'imprimeix la imatge a la posició "i" i la posició "z", cada vegada augmentant la posició pels píxels que mesura la imatge.
 **/

void draw() {

  for (int i = 0; i < width; i+= 32) { 
    for (int z = 0; z < height; z += 32) {
      image(imatge, i, z);
    }
  }
}
