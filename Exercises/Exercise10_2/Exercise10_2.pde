
//Exercise 10.2

//"Draw three images in the display window, each with a different tint"

size(500,500);

PImage flower;
flower = loadImage ("flower.jpeg");
tint(200,50,200);
image(flower, 0,0,width,height);

PImage ant;
ant = loadImage ("ant.png");
tint(106,231,255);
image(ant,350,250,100,100);

PImage ant1;
ant = loadImage ("antcopy.png");
tint(255,251,180);
image(ant,50,150,100,100);
