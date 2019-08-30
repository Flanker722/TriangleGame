int circleSize = 50;
boolean circleIsHit = false;
int PointsValue;
int hue;


void setup()
{
  size(800,800);
  colorMode(HSB,360,100,100);
}
void draw()
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
