//Drawing

void setup() {
  size(500,500);
}

void draw() {
  if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY); //pmouse - pressed mouse, drawing
  }
}

void setup() {
  frameRate(30);
  img = loadImage("kittenimage.jpeg")
 
