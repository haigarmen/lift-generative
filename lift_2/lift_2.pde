/**
 * Draw a Mask
 **/
PGraphics logo;
PGraphics maskImage;
int logoWidth = 60;
int logoHeight = 60;

void setup() {
  size(1200, 800);
  smooth();
  // create source
  logo = createGraphics(logoWidth,logoHeight);
  logo.beginDraw();
  logo.noStroke();
  logo.fill(255);
  //logo.translate(-width/2, -height/2);
  //logo.rotate(PI/3);
  logo.ellipse(0,0,logoWidth,logoHeight);
  logo.ellipse(logoWidth,0,logoWidth,logoHeight);
  logo.ellipse(0,logoHeight,logoWidth,logoHeight);
  logo.ellipse(logoWidth,logoHeight,logoWidth,logoHeight);
  logo.endDraw();
 
  // create mask
  maskImage = createGraphics(logoWidth,logoHeight);
  maskImage.beginDraw();
  maskImage.rect(0, 0, logoWidth, logoHeight);
  maskImage.endDraw();
 
  // apply mask
  logo.mask(maskImage);
}
void draw() {
    for (int j = 0;j < (height/logoHeight); j++) {
      for (int i = 0;i < (width/logoWidth); i++) {
        image(logo, i*logoWidth, j*logoHeight);
      //ellipse(100 + i*4, 100 + i*5, 100+i*4, 100-i);
       //ellipse(width/2 + i, height/2-i, 100+i*5, 100-i*5);
      }
    }
}
