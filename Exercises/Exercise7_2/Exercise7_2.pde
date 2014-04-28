
//Exercise 7.2

println("Use different parameters for beginShape() to change the way a series of vertices are drawn");


size(500,500);
background(0);

beginShape();
vertex(30, 20);
vertex(85, 20);
vertex(85, 75);
vertex(30, 75);
endShape(CLOSE);

fill(255);
strokeWeight(4);
beginShape();
vertex(30, 20);
vertex(85, 20);
vertex(85, 75);
vertex(30, 75);
endShape(CLOSE);

println("beginShape() and endShape() functions allow creating more complex forms");


