
//Exercise 6.3 

println("Combine two relational expressions with a logical operator to control the form of a pattern");
println("testing a boolean statement, AND (&&) and OR (||)");


size(500,500);
background(0);

boolean test = false;

for (int i = 5; i <= height; i += 5) {
  // Logical AND (&&)
  stroke(0);
  if((i > 35) && (i < 100)) {
    line(width/4, i, width/2, i);
    test = false;
  }
  
  // Logical OR (||)
  stroke(76);
  if ((i <= 35) || (i >= 100)) {
    line(width/2, i, width, i);
    test = true;
  }
}


println("x is 201, therefore only ellipse is drawn");


