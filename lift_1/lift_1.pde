/**
 * Draw multishape image and Mask it
 **/
PGraphics logo;
PGraphics maskImage;

void setup() {
  size(800, 800);
  smooth();
  // create source
  logo = createGraphics(200,200);
  logo.beginDraw();
  logo.noStroke();
  logo.fill(255);
  //logo.translate(-width/2, -height/2);
  //logo.rotate(PI/3);
  logo.ellipse(0,0,200,200);
  logo.ellipse(200,0,200,200);
  logo.ellipse(0,200,200,200);
  logo.ellipse(200,200,200,200);
  logo.endDraw();
 
  // create mask
  maskImage = createGraphics(200,200);
  maskImage.beginDraw();
  maskImage.rect(0, 0, 200, 200);
  maskImage.endDraw();
 
  // apply mask
  logo.mask(maskImage);
}
void draw() {
    for (int j = 0;j < 4; j++) {
      for (int i = 0;i < 4; i++) {
        image(logo, i*200, j*200);
      }
    }
}
