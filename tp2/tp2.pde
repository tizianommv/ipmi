PImage[] images;
String[] imageTexts; 
int currentImageIndex = 0;
int interval = 11000;
int lastChangeTime = 0;
boolean waitingForRestart = false;
float textY;
float targetTextY = 20;
float textSpeed = 5; 

PFont arialMT;

void setup() {
  size(640, 480);
  images = new PImage[3]; 
  imageTexts = new String[3];
  
  images[0] = loadImage("metalmaniac.jpg");
  images[1] = loadImage("teku.jpg");
  images[2] = loadImage("nitros.jpg");
  
  imageTexts[0] = "Andrew Francis - voz de Vert Wheeler.\nBrian Drummond - voz de Mark \"Markie\" Wylde.\nMichael Dobson - voz de Kurt Wylde y Tork Maddox.\nKirby Morrow - voz de Nolo Pasaro.\nKathleen Barr - voz de Gelorum y Gig.\nLisa Ann Beley - voz de Karma Eiss.\nDexter Bell - voz de Shirako Takamoto.";
  imageTexts[1] = "Hot Wheels AcceleRacers: Ignition (2005)\n\nLa película comienza con el Dr. Peter Tezla, un científico brillante, descubriendo los Racing Realms, portales a mundos alternativos llenos de peligros y desafíos. Estos mundos fueron creados por una antigua y avanzada raza conocida como los Accelerons. Tezla está decidido a recolectar los Accelerons, artefactos poderosos que otorgan habilidades especiales a los autos. Para lograr su objetivo, Tezla reúne a dos equipos de corredores talentosos: los Teku y los Metal Maniacs. Los Teku son un grupo de corredores de estilo moderno y tecnología avanzada, mientras que los Metal Maniacs son más rudos y utilizan vehículos modificados de forma extrema.";
  imageTexts[2] = "Texto para Nitros";
  
  image(images[currentImageIndex], 0, 0, width, height);
  lastChangeTime = millis();
  textY = height;

  arialMT = loadFont("ArialMT-10.vlw");
}

void draw() {
  int currentTime = millis();

  if (!waitingForRestart && currentTime - lastChangeTime >= interval && currentImageIndex != images.length - 1) {
    currentImageIndex = (currentImageIndex + 1) % images.length;
    lastChangeTime = currentTime;
    textY = height;
  }
  
  image(images[currentImageIndex], 0, 0, width, height);
  
  if (textY > targetTextY) {
    textY -= textSpeed;
  }
  
  textFont(arialMT);
  
  if (currentImageIndex == 0) {
    fill(165, 114, 67);
  } else if (currentImageIndex == 1) {
    fill(45,255,0);
  } else {
    fill(255);
  }
  
  textAlign(LEFT, TOP);
  textSize(15);
  text(imageTexts[currentImageIndex], 20, textY, width - 40, height - 40);
  
  if (currentImageIndex == images.length - 1) {
    fill(255);
    rectMode(CENTER);
    rect(width/2, height - 50, 100, 50); 
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Reiniciar", width/2, height - 50);
    waitingForRestart = true; 
  }
}

void mousePressed() {
  if (waitingForRestart && mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height - 75 && mouseY < height - 25) {
    currentImageIndex = 0;
    lastChangeTime = millis();
    waitingForRestart = false;
    textY = height;
  }
}
