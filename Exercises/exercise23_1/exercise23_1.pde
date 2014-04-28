//Exercise 23.1 Control the position of a shape with the mouse.
//Create a more interesting relation than directly mimicking the cursor

void setup() {
size(500,500);
smooth();
noStroke();
}

void draw() {
  background(255,171,3);
  ellipse(mouseX * 1.5, mouseY, 33, 33);
  ellipse(mouseX * 2, mouseY, 25, 25);
  ellipse(width-mouseX, mouseY, 33, 33);
  ellipse(width+mouseX, mouseY, 25, 25);
}

//mirror: ellipse(width-mouseX, mouseY, 33, 33);
//multiply the mouseX: ellipse(mouseX * 2, mouseY, 33, 33);



