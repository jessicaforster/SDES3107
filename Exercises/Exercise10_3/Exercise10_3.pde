
//Exercise 10.3

//"Load a GIF or PNG image with transparency and create a collage by layering
//the image."
 
size(500,500);

PImage flower;
flower = loadImage ("flower.jpeg");
tint(200,50,200);
image(flower, 0,0,width,height);

PImage purple;
purple = loadImage ("purple.png");
tint(106,231,255);
image(purple, 150,250,100,100);

PImage ant;
ant = loadImage ("ant.png");
tint(106,231,255);
image(ant,350,250,100,100);

PImage ant1;
ant = loadImage ("antcopy.png");
tint(255,251,180);
image(ant,50,150,100,100);
