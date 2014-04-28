//Exercise 8.1 Draw the curve y = 1 - x (to the power of 4);

size(500,500);

background(200, 200, 10);
stroke(0, 220, 200);

noFill();
smooth();
for (int x = 0; x < 100; x += 5) {
float n = norm(x, 0.0, 100.0); // Range 0.0 to 1.0
float y = pow(n, 4); // Calculate curve
y *= 100; // Scale y to range 0.0 to 100.0
strokeWeight(n * 5); // Increase thickness
ellipse(x, y, 620, 620);
}


//for (int x = 0; x < 100; x++) {
//  float n = norm(x, 0.0, 100.0);
//  float y = pow(n, 4);
//  y *= 100;
//  point(x,y);
//}

//for (int x = 0; x < 1; x += 0.001) {
//  float y = pow(n, 4);
//  y *= 100;
//  point(x,y);
//}
//
//float xPos = map(x, 0,1, 1,100);
//float yPos = map(y, 0,1, 0,100);
