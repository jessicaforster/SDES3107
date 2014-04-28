
//Exercise 15.1
//Use 3 variables assigned to random values to create a composition.
//That is different each time the program is run

//NOISE examples

size(600, 100);
float v = 0.0;
float inc = 0.1;
noStroke();
fill(0);
noiseSeed(0);


// 0 4 8 12...width 

for (int i = 0; i < width; i = i+4) {

  //float n = random(0,1) * 70.0

  float n = noise(v) * 70.0;
  rect(i, 10 + n, 3, 20);
  v = v + inc;

}
