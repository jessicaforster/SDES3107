
//exercise 4.2 use multiplication to create a series of lines with increasing space between each

size(500,500);

background(0,0,255);
fill(255);

strokeWeight(4);
stroke(225,0,0);


//float x = 100;
//ellipse(x-50, x-50, x/6, x/6);
//ellipse(x,x,x/3,x/3);
//ellipse(x+50, x+50, x/2, x/2);

int a = 50;
line(a, 0, a, height);
a = a * 2;
line (a, 0, a, height);
a = a * 2;
line (a, 0, a, height);
a = a * 2;
line (a, 0, a, height);

