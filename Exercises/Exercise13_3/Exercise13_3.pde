
//Exercise 13.3

//Font: tools, load font, font must be in sketch data folder

//FONT1 DFWaWaTC-W5-30.vlw
//FONT2DINCondensed-Bold-30.vlw

size(500,500);
background(0, 200, 250);

PFont font1;
PFont font2;
PFont font3;

font1 = loadFont("DFWaWaTC-W5-30.vlw");
font2 = loadFont("DINCondensed-Bold-30.vlw");
font3 = loadFont("Ming-Lt-HKSCS-ExtB-14.vlw");

textFont(font1);
text("Peter Piper Picked", 130, 100);
text("A Peck of Pickled Peppers", 90, 150);
textFont(font2);
text("Miss Mary Mack, Mack, Mack.", 100, 300);
fill(0);
text("All dressed in Black, Black, Black", 100, 340);
textFont(font3);
fill(255);
text("Three Blind Mice, Three Blind Mice", 120, 375);
text("See how they run, see how they run", 120, 390);


