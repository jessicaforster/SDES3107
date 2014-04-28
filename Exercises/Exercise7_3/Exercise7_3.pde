//Exercise 7.3 Draw a complex curved shape of your own design using bezierVertex()

size(500, 500);

background(0, 255, 255);


stroke(400);
fill(255, 150, 0); 

smooth();
beginShape();
vertex(150, 300); 
bezierVertex(200, -50, 700, 50, 400, 350); 
bezierVertex(50, 70, 405, 105, 70, 70); 
endShape();

smooth();
noStroke();
beginShape();
vertex(90, 39); 
bezierVertex(90, 39, 54, 17, 26, 83); 
bezierVertex(26, 83, 90, 107, 90, 39); 
endShape();

