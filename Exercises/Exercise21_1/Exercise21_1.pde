//Defining and Writing your own function
//Exercise 21.1 Write a function, draw a shape multiple times.

void setup() {
  size(500,500);
  background(255);
}

void draw () {
  funkyFunction (100,100,100,100);
}

//defining function
void funkyFunction (int size, int number, int x, int y) {
  
  for (int counter = number; counter > 0; counter -=5) {
    rect(x,y,size,size);
    size-=5;

  }
}  
  
  
