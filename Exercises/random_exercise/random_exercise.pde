
//Exercise 15.1 Use three variables assigned to random values to create 
//a composition that is different every time the program is run.

//Example of random (0)

size(500,500);
int x = 250;
int y = 250;
float size = 30;
float hue = 50;
float transparency = 50;
colorMode(HSB, 100, 100, 100);


// 0 1 2 3 4 5 ... 99
for (int i = 0; i < 300; i ++); {
  
  x = round(random(width));
  y = round(random(height));
  size = random(10, 40);
  hue = random(100);
  transparency = random(100);
  fill(hue, 100,100, transparency);
  
  ellipse(x,y,size,size);
  

}



