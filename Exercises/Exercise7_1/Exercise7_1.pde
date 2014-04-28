//Exercise 7.1 Use beginShape() to draw a shape of your own design

size(500, 500);

background(0, 255, 255);


stroke(400);
fill(255, 150, 0); //Orange
smooth();
beginShape();
vertex(220,20);
vertex(120,20);
vertex(300,80);
vertex(300, 300);
endShape();


stroke(90);
fill(100, 30, 100); //Orange
beginShape();
curveVertex(200,800);
curveVertex(200,400);
curveVertex(300,300);
curveVertex(400,800);
curveVertex(800,800);
endShape();

beginShape(TRIANGLES);
vertex(75, 30);
vertex(10, 20);
vertex(75, 50);
vertex(20, 60);
vertex(90, 70);
vertex(35, 85);
endShape();



