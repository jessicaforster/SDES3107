//Input events
//Exercise 26.3 Write a program to update the display window only when a key is pressed

float gray = 0;    //state the variable

void setup() {
  size(500, 500);
}

void draw() {
  background(gray);
  if(keyPressed == true) {
    stroke(255);
  } else {            //invert the colour 
    stroke(0);
}

  line(mouseX-88, mouseY, mouseX+88, mouseY);
  line(mouseX, mouseY-88, mouseX, mouseY+88); 
}

void keyPressed () {
  //do something
  gray += 20;
  }
  
//void mouseReleased () {
//  gray -= 100;
//}
