

//exercise 2.1 create a composition by carefully positioning one line and one ellipse

size(100,100);
line(30,30,60,60);
ellipse(60,60,30,30);


background(0,0,255);
fill(255);

float middleX = width/2;
float middleY = height/2;

ellipse(middleX,middleY,60,60);
fill(255);
line(20,20,85,75);
line(130,130,200,200);
stroke(225,0,0);


//float x = 10;
//ellipse(x-50, x-50, x/6, x/6);
//ellipse(x,x,x/3,x/3);
//ellipse(x+50, x+50, x/2, x/2);


//strokeWeight(4);
//stroke(450,0,0);
//
//
////repeat 5 times
//for (int x = 30; x < width; x +=30)
//{
//  for (int y= 30; y < height; y +=30)
//  {
//    ellipse(x, y, 15, 15);
//  }
//}
//
//
//int variables 

int a = 50;
line(a, 0, a, height);
a = a + 20;
line (a, 0, a, height);
a = a + 20;
line (a, 0, a, height);

//float variables
float middleX = width/2;
float middleY = height/2;

ellipse(middleX,middleY,60,60);
fill(255);
line(20,20,85,75);
line(130,130,200,200);
stroke(225,0,0);


float x = 10;
ellipse(x-50, x-50, x/6, x/6);
ellipse(x,x,x/3,x/3);
ellipse(x+50, x+50, x/2, x/2);



