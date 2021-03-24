/**
* Liiift Generative
**/

PGraphics logo;
PGraphics maskImage;
int logoWidth = 60;
int logoHeight = 60;
color[] colors = { #c52f66, #9fc45b, #73c7e9, #ee7637};
int margin = 20;

void setup() {
  size(1200, 800);
  smooth();
  noLoop();
  background(0);
}
void draw() {
  for (int j = 0; j < (height/logoHeight); j++) {
    for (int i = 0; i < (width/logoWidth); i++) {

      // create source
      logo = createGraphics(logoWidth, logoHeight);
      logo.beginDraw();
      logo.fill(255);
      logo.rect(0, 0, logoWidth, logoHeight);
      logo.noStroke();
      logo.fill(150);
      //logo.translate(-width/2, -height/2);
      //logo.rotate(PI/3);
      float randX = random(logoWidth/4);
      float randY = random(logoHeight/4);
      logo.fill(colors[int((random(4)))]);
      logo.ellipse(randX, randY, logoWidth, logoHeight);
      logo.fill(colors[int((random(4)))]);
      logo.ellipse((randX+logoWidth), randY, logoWidth, logoHeight);
      logo.fill(colors[int((random(4)))]);
      logo.ellipse(randX, (randY+logoHeight), logoWidth, logoHeight);
      logo.fill(colors[int((random(4)))]);
      logo.ellipse((randX+logoWidth), (randY+logoHeight), logoWidth, logoHeight);
      logo.endDraw();

      // create mask
      maskImage = createGraphics(logoWidth, logoHeight);
      maskImage.beginDraw();
      maskImage.rect(0, 0, logoWidth, logoHeight);
      maskImage.endDraw();

      // apply mask
      logo.mask(maskImage);

      image(logo, (i*(logoWidth+margin)), (j*(logoHeight+margin)));
    }
  }
}
