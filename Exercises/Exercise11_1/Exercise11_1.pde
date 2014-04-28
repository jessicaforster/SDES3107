
//Exercise 11.1

//Create five char variables and assign a character to each. Write each to the console

size(640, 360);
background(0);
noStroke();

textFont(createFont("Georgia",24));

char c;    // Chars are used for storing alphanumeric symbols
char f;    
char i;     
char b;   
char d;


c = 'A';
f = 'B';    
i = 'C';  
b = 'D';
d = 'E';

//println(f);
//println(i);
//println(b);

text("The value of variable c is " + c, 50, 100);
text("The value of variable f is " + f, 50, 150);
text("The value of variable i is " + i, 50, 200);
text("The value of variable b is " + b, 50, 250);
text("The value of variable d is " + d, 50, 300);



