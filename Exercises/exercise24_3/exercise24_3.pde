
//Exercise 24.3 Load an image and use it as a drawing tool.



void setup() {
  size(500, 350);
}

void draw(){
PImage photo;
photo = loadImage("kitten.jpeg");
image(photo, 0, 0);

 
PImage drink;
drink = loadImage("drink.png");

image(drink, mouseX, mouseY, 200, 200);
fill(0);
textSize(32);

// modification using keyboard inputs

//  if ((keyPressed == true) && (key == 'a')) {
//    image(photo, 0,0,photo.width/2, photo.height/2);
//    image(drink, mouseX-(drink.width/4), mouseY-(drink.height/4));
 
  }
}






