
//Exercise 8.2

println("Use the data from the curve y=x8 to draw something unique");

size(500,500);
background(255,128,0);
fill(200,20,100);
stroke(105,0,255);
strokeWeight(6);

for (int x = 0; x < 500; x ++) {
  float n = norm(x,0.0,100.0);
  float y = pow(n,4);
  y *=100;
  point(x,y);
}




println("pow() can create other curves");


