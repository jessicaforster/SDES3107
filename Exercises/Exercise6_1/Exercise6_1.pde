
//exercise 6.1 Draw a regular pattern with five lines. Rewrite the code using a for structure

size(500,500);

background(0,0,255);
fill(255);

strokeWeight(4);
stroke(225,0,0);
 
//line(20, 20, 20, 300);
//line(20, 20, 20, 300);
//line(20, 20, 20, 300);
//line(20, 20, 20, 300);
//line(20, 20, 20, 300);


//Five lines repeated using a for structure

for(int i = 20; i < 150; i += 10) {
  line(i, 20, i, 300);
}

for(int m = 100; m < 300; m +=10) {
  line(m, 100, m, 400);
}
