//Defining and Writing your own function
//Exercise 21.2 Write a function, draw a shape multiple times.
//Exercise 21.2 Extend the function, create more parameters, control additional aspectswriting 

void setup() {
  size(500,500);
  background(255);
  noStroke();
}

void draw () {
  funkyFunction (100,100,100,100);
}

//defining function
void funkyFunction (int size, int number, int x, int y) {
  
  for (int counter = number; counter > 0; counter -=5) {
    rect(x,y,size,size);
    size-=5;

  }
}  
  
  
//  void setup() {
//  size(640, 360);
//  background(51);
//  noStroke();
//  noLoop();
//}
//
//void draw() {
//  drawTarget(width*0.25, height*0.4, 200, 4);
//  drawTarget(width*0.5, height*0.5, 300, 10);
//  drawTarget(width*0.75, height*0.3, 120, 6);
//}
//
//void drawTarget(float xloc, float yloc, int size, int num) {
//  float grayvalues = 255/num;
//  float steps = size/num;
//  for (int i = 0; i < num; i++) {
//    fill(i*grayvalues);
//    ellipse(xloc, yloc, size - i*steps, size - i*steps);
//  }
//}
  
