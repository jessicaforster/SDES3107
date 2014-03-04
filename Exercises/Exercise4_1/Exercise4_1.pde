
//exercise 4.1 use one variable to set the position and size for three ellipses 

size(500,500);

background(0,0,255);
fill(255);

strokeWeight(4);
stroke(225,0,0);

//ellipse(50,50,40,40);


float x = 100;
ellipse(x-50, x-50, x/6, x/6);
ellipse(x,x,x/3,x/3);
ellipse(x+50, x+50, x/2, x/2);


