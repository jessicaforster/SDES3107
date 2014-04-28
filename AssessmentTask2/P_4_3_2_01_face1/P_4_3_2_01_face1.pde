// P_4_3_2_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * pixel mapping. each pixel is translated into a new element (letter)
 * 
 * KEYS
 * 1                 : toogle font size mode (dynamic/static)
 * 2                 : toogle font color mode (color/b&w)
 * arrow up/down     : maximal fontsize +/-
 * arrow right/left  : minimal fontsize +/-
 * s                 : save png
 * p                 : save pdf
 */

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

String inputText = "In the town where I was born, Lived a man who sailed to1 sea, And he told us of his life, In the land of submarines,  So we sailed on to the sun,  Till we found the sea green, And we lived beneath the waves, In our yellow submarine, We all live in a yellow submarine, yellow submarine, yellow submarine, We all live in a yellow submarine, yellow submarine, yellow submarine. And our friends are all aboard, Many more of them live next door, And the band begins to play. (Trumpets play) We all live in a yellow submarine, yellow submarine, yellow submarine, We all live in a yellow submarine, yellow submarine, yellow submarine.";
float fontSizeMax = 50;
float fontSizeMin = 5;
float spacing = 5;          // line height
float kerning = 0.2;        // between letters

boolean fontSizeStatic = false;
boolean blackAndWhite = false;

PFont font;
PImage img;

void setup() {
  size(533,769);
  smooth(); 
  
  font = createFont("chalkduster",10);
  
  img = loadImage("pic.png");
  println(img.width+" x "+img.height);
}

void draw() {
  fontSizeMax = map(mouseX, 0, width, 2, 60);
  fontSizeMin = map(mouseY, 0, height, -11, 40);
  
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
   background(255);
   textAlign(LEFT,CENTER);


  float x = 0, y = 10;
  int counter = 0;

  while (y < height) {
    // translate position (display) to position (image)
    int imgX = (int) map(x, 0,width, 0,img.width);
    int imgY = (int) map(y, 0,height, 0,img.height);
    // get current color
    color c = img.pixels[imgY*img.width+imgX];
    int greyscale = round(red(c) *0.222 + green(c)*0.707 + blue(c)*0.071);

    pushMatrix();
    translate(x, y);

    if (fontSizeStatic) {
      textFont(font, fontSizeMax);
    
      if (blackAndWhite) fill(greyscale);
      else fill(c);
    } 
    else {
      // greyscale to fontsize
      float fontSize = map(greyscale, 0,255, fontSizeMax,fontSizeMin);
      fontSize = max(fontSize, 1);
      textFont(font, fontSize);
      if (blackAndWhite) fill(0);
      else fill(c);
    } 

    char letter = inputText.charAt(counter);
    
    
    
    
      colorMode(HSB,100,100,100);
      float h = hue(c);
      float colourShift = map(mouseX, 0, width, 0, 100);
      
      //100 50 0
      if (h < colourShift) {
       h = h + 100 - colourShift;
      } else {
       h -= colourShift; 
      }
      
      
      fill(h, saturation(c), brightness(c));
      
    
       text(letter, 0, 0);
    colorMode(RGB);
    float letterWidth = textWidth(letter) + kerning;
    // for the next letter ... x + letter width
    x = x + letterWidth; // update x-coordinate
    popMatrix();

    // linebreaks
    if (x+letterWidth >= width) {
      x = 0;
      y = y + spacing; // add line height
    }

    counter++;
    if (counter > inputText.length()-1) counter = 0;
  }

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}


void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;
  // change render mode
  if (key == '1') fontSizeStatic = !fontSizeStatic;
  // change color stlye
  if (key == '2') blackAndWhite = !blackAndWhite;
  println("fontSizeMin: "+fontSizeMin+"  fontSizeMax: "+fontSizeMax+"   fontSizeStatic: "+fontSizeStatic+"   blackAndWhite: "+blackAndWhite);
}


// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}






























