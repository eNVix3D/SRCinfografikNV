Histogram histogram = new Histogram();
Buttons buttons = new Buttons();
int ChosenCountry = 0;
int scaleFactor = 100;
PFont Urban;
PFont Crack;

PImage Denmark;
PImage Australia;
PImage Brazil;
PImage Canada;
PImage Finland;
PImage France;
PImage Germany;
PImage India;
PImage Italy;
PImage Mexico;
PImage Netherlands;
PImage Norway;
PImage Portugal;
PImage Russia;
PImage Sweden;

void setup(){
  clear();
  background(80);
  size(1000,500);
  
  Urban = createFont("UrbanJungleDEMO.otf",48);
  Crack = createFont("War is Over.ttf",36);
  
  Denmark = loadImage("DenmarkMap.png");
  Australia = loadImage("AustraliaMap.png");
  Brazil = loadImage("BrazilMap.png");
  Canada = loadImage("CanadaMap.png");
  Finland = loadImage("FinlandMap.png");
  France = loadImage("FranceMap.png");
  Germany = loadImage("GermanyMap.png");
  India = loadImage("IndiaMap.png");
  Italy = loadImage("ItalyMap.png");
  Mexico = loadImage("MexicoMap.png");
  Netherlands = loadImage("NetherlandsMap.png");
  Norway = loadImage("NorwayMap.png");
  Portugal = loadImage("PortugalMap.png");
  Russia = loadImage("RussiaMap.png");
  Sweden = loadImage("SwedenMap.png");
  
  
  histogram.loadData();
  histogram.display();
}

void draw(){
  histogram.display();
  buttons.display();
  buttons.hover();
}

void mouseReleased(){
 buttons.click();
  
}

void keyPressed(){ 
  if(keyCode==RIGHT) ChosenCountry++;
  if(keyCode==LEFT) ChosenCountry--; 
}
