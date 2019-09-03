int circleSize = 50;
boolean circleIsHit = false;
int PointsValue;
int TextX = 220;
int TextY = 350;
int TextX2 = 155;
int TextY2 = 450;
int TextX3 = 260;
int TextY3 = 600;
float colourLoop1;
float colourLoop2;
float colourLoop3;
int hue;

void setup()
{
  size(800,800);
  colorMode(HSB,360,100,100);
}
void draw()
{
   startScreen();
}
void startScreen()
{
  background(0,50,43);
   colourLoop2 = colourLoop2 + 1.1;
   if (colourLoop1 > 0){
     if(colourLoop2 > 360){
       colourLoop2 = 0;
     }
   }
   fill(colourLoop2,100,100);
   String game = "Game";
   text(game,TextX2,TextY2);
   PFont futuraFont2 = createFont("Futura", 100);
   textFont(futuraFont2);
   colourLoop1 = colourLoop1 + 1;
   if (colourLoop1 > 360){
     colourLoop1 = 0;
   }
   fill(colourLoop1,100,100);
   String triangle = "Triangle";
   text(triangle,TextX,TextY);
   PFont futuraFont = createFont("Avenir", 30);
   textFont(futuraFont);
   colourLoop3 = colourLoop3 + 2;
   if (colourLoop1 > 0){
     if(colourLoop2 > 360){
       if(colourLoop3 > 360){
         colourLoop3 = 0;
       }
     }
   }
   fill(colourLoop3,100,100);
   String start1 = ("Press Space To Start");
   text(start1,TextX3,TextY3);
   PFont AvenirStrTxt = createFont("Futura", 160);
   textFont(AvenirStrTxt);
   
   if (key == ' '){
     GameStarted();
   }
}
void enterUsername()
{
  
}
void drawCircles()
{
}
void GameStarted()
{
  background(186, 40, 37);
  if (mousePressed == false){
    noCursor();
  }
  {
   String p = "Points : ";
   text(p, 10, 30);
   PFont Avenir = createFont("Avenir", 22);
   textFont(Avenir);
  }
  {
    String pv = "" + PointsValue;
    text(pv, 92, 31);
    PFont AvenirNum = createFont("Avenir", 24);
    textFont(AvenirNum);
  }
   ellipse(mouseX,mouseY,circleSize,circleSize);
   strokeWeight(0.1);
   stroke(hue,100,100);
   fill(hue,100,100);
   hue = hue + 1;
   if (hue > 360){
     hue = 0;
   }
}
void keyPressed()
{

}
