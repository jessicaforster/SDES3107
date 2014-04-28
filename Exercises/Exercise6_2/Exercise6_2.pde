
//exercise 6.2 Draw a dense pattern by embedding two for structures

size(500,500);

background(0,0,255);
fill(255);

strokeWeight(4);
stroke(225,0,0);
 


fill (0, 90);
noStroke();
smooth();
for(int y = -40; y <= 400; y += 40) {
  for(int x = -40; x <= 400; x +=40) {
    ellipse(x + y/4, y + x/4, 20 + x/2, 40);
  }
}
