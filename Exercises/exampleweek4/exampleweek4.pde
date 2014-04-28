

void setup() {
size(300,300);
fill(100);
noStroke();
frameRate(2); //specify frame rate per second
}
void draw() {
//  background(255); //sets the background to white. No longer adds/builds up rect
  int randomPos = int(random(300.0));
rect(randomPos,randomPos+10,50,50);
}
//Runs over and over

//Predefined variables mouseX mouseY - tells where mouse pointers is
//Controlling position of a shape with mouseX funtion

//void setup() {
//size(200,200);
//smooth();
//noStroke();
//}
//
//void draw() {
//  background(126);
//  ellipse(mouseX, mouseY, 33, 33);
////mirror: ellipse(width-mouseX, mouseY, 33, 33);
////multiply the mouseX: ellipse(mouseX * 2, mouseY, 33, 33);
//}
//
////cannot mix active and static modes
////need to define variables outside of the functions. Define at the top of the instructions
//

