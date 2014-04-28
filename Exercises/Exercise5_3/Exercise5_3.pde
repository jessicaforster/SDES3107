
//Exercise 5.3 

println("Add an else to the code from exercise 2 to change which code is run.");

int x = 201;
if (x <= 200) {
rect(33, 33, 34, 34);
} else if (x >= 300) {
line(50, 0, 50, 100);
} else {
ellipse(50, 50, 36, 36);
}


//If x is greater than or equal to 300, line is drawn.
//if x is between 200 and 300, ellipse is drawn.
println("x is 201, therefore only ellipse is drawn");


