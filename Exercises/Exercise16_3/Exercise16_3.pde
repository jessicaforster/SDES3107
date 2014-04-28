
//Exercise 16.3
//Use pushMatrix and popMatrix to rearrange the composition from ex2

pushMatrix();
translate(20, 0);
ellipse(20, 10, 70, 20); // Draws at (20, 30)
pushMatrix();
translate(30, 0);
ellipse(20, 30, 70, 20); // Draws at (50, 30)
popMatrix();
ellipse(20, 50, 70, 20); // Draws at (20, 50)
popMatrix();
ellipse(20, 70, 70, 20); // Draws at (0, 70);
