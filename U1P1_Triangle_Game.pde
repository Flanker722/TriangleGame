int circleSize = 50;
int circleColourTransistionFrameA;
int circleColourTransistionFrameB;
int circleColourTransistionFrameC;
int circleColourTransistionFrameD;
int circleColourTransistionFrameE;
int circleColourTransistionFrameF;
boolean circleIsHit = false;
float circleColourRFromRGB = 255;
float circleColourGFromRGB = 0;
float circleColourBFromRGB = 0;
int unspecifiedForNow;


void setup()
{
  size(800,800);
}
void draw()
{
  background(57, 91, 95);
   if (mousePressed == false){
    noCursor();
  } 
    ellipse(mouseX,mouseY,circleSize,circleSize);
    strokeWeight(0.1);
    stroke(circleColourRFromRGB,circleColourGFromRGB,circleColourBFromRGB);
    fill(circleColourRFromRGB,circleColourGFromRGB,circleColourBFromRGB);
    if (frameCount - circleColourTransistionFrameA > 1){
      circleColourGFromRGB = circleColourGFromRGB +15;
      circleColourTransistionFrameA = frameCount;
    }
    if (frameCount >= 35){
      if (frameCount - circleColourTransistionFrameB > 1){
        circleColourRFromRGB = circleColourRFromRGB -15;
        circleColourTransistionFrameB = frameCount;
      }
    }
    if (frameCount >= 40){
      if (frameCount - circleColourTransistionFrameC > 1){
        circleColourBFromRGB = circleColourBFromRGB +15;
        circleColourTransistionFrameC = frameCount;
      }
    }
    if (frameCount >= 55){
      if (frameCount - circleColourTransistionFrameD > 1){
        circleColourGFromRGB = circleColourGFromRGB -30;
        circleColourTransistionFrameD = frameCount;
      }
    }
    if (frameCount >= 80){
      if (frameCount - circleColourTransistionFrameE > 1){
        circleColourRFromRGB = circleColourRFromRGB +30;
        circleColourTransistionFrameE = frameCount;
      }
    }
    if (frameCount >= 110){
      if (frameCount - circleColourTransistionFrameF > 1){
        circleColourBFromRGB = circleColourBFromRGB -30;
        circleColourTransistionFrameF = frameCount;
      }
    }
    
}
void keyPressed()
{
  
}
