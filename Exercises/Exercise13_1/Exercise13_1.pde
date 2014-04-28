
//Exercise 13.1

//Explore different typefaces in processing. Draw your favourite word to the display.
//Font: tools, load font, font must be in sketch data folder

//FONT1 DFWaWaTC-W5-30.vlw


size(500,500);
background(0, 200, 250);

PFont font1;

font1 = loadFont("DFWaWaTC-W5-30.vlw");

textFont(font1);
text("Peter Piper Picked", 130, 100);
text("A Peck of Pickled Peppers", 90, 150);



