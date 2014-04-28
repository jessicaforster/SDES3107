//Input events
//Exercise 26.1 Animate a shape to react when the mouse is pressed and when it is released 

float gray = 0;    //state the variable

void setup() {
  size(500, 500);
}

void draw() {
  background(gray);
  if(mousePressed == true) {
    stroke(255);
  } else {            //invert the colour 
    stroke(0);
}

  line(mouseX-88, mouseY, mouseX+88, mouseY);
  line(mouseX, mouseY-88, mouseX, mouseY+88); 
}

void mousePressed () {
  //do something
  gray += 20;
  }
  
//void mouseReleased () {
//  gray -= 100;
//}
