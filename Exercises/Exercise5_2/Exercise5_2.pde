
//exercise 5.2 Create a composition with a series of lines and ellipses. 
//Use an IF structure to select which lines of code to run and which to skip. 

size(500,500);

background(0,0,255);
fill(255);

strokeWeight(4);
stroke(225,0,0);


//If structures 

for (int x = 0; x < width; x = x+5) {
  if ((x > 50) || (x < 150)) {
    line( x, 0, x, height);
  }
}

for (int z = 10; z < width; z = z+10) {
  if ((z > 50) && (z < 150)) {
    ellipse(z, 50, z, height); 
  }
}
    
int m = 90;
if (m > 100) {
  ellipse(50, 50, 36, 36);
}










//println("IF structures are conditional, allow the program to make decisions about which lines of code to run and which do not"); 
