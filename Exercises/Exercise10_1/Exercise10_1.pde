//Exercise 10.1 Draw two imges in the display window

size(500, 500);
PImage myImage;
PImage myImage2;
myImage = loadImage("images-2.jpeg");
myImage2 = loadImage("hand.jpg");
image(myImage, 0, 0, width, height);
image(myImage2, 0, 0, width, height);
tint(100,100,200);

image(myImage, 0,0, width, height);
float scale = 1;
image(myImage2, -100, 200, myImage2.width * scale, myImage2.height * scale);





