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

PImage img;
int drawMode = 1;

void setup() {
  size(533,769);
  smooth();  
  img = loadImage("pic.png");
  println(img.width+" x "+img.height);
}

void draw() {
if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  background(255);
  
  float mouseXsize = map(mouseX, 0, width, 0.05,1);
  float mouseYsize = map(mouseY, 0, height, 0.05, 1);
  
  for (int gridX = 0; gridX < img.width; gridX++) {
      for (int gridY = 0; gridY < img.height; gridY++) {
        //grid position and tile size
      float tileWidth = width / (float)img.width;
      float tileHeight = height / (float)img.height;
      float posX = tileWidth*gridX;
      float posY = tileHeight*gridY;
      
//  while (y < height) {
//    // translate position (display) to position (image)
//    int imgX = (int) map(x, 0,width, 0,img.width);
//    int imgY = (int) map(y, 0,height, 0,img.height);
    
    // get current color
    color c = img.pixels[gridY*img.width+gridX];
    int greyscale = round(red(c) *0.222 + green(c)*0.707 + blue(c)*0.071);

      switch(drawMode) {
      case 1:
        // greyscale to stroke weight
        float w1 = map(greyscale, 0,255, 15,0.1);
        color c1 = img.get(min(gridX+1, img.width-1), gridY);
        strokeWeight(w1 * mouseXsize);
        stroke(c1);
        int greyscale2 = int(red(c1)*0.222 + green(c1)*0.707 + blue(c1)*0.071);
        line(posX, posY, posX+5, posY+5); 
        break;
        case 2:
        // greyscale to ellipse area
        fill(0);
        noStroke();
        float r2 = 1.1284 * sqrt(tileWidth*tileWidth*(1-greyscale/255.0));
        r2 = r2 * mouseXsize * 3;
        ellipse(posX, posY, r2, r2);
        break;
      case 3:
        // greyscale to line length
        float l3 = map(greyscale, 0,255, 30,0.1);
        l3 = l3 * mouseXsize;   
        stroke(0);
        strokeWeight(10 * mouseYsize);
        line(posX, posY, posX+l3, posY+l3);
        break;
      case 4:
        // greyscale to rotation, line length and stroke weight
        stroke(0);
        float w4 = map(greyscale, 0,255, 10,0);
        strokeWeight(w4 * mouseXsize + 0.1);
        float l4 = map(greyscale, 0,255, 35,0);
        l4 = l4 * mouseYsize;
        pushMatrix();
        translate(posX, posY);
        rotate(greyscale/255.0 * PI);
        line(0, 0, 0+l4, 0+l4);
        popMatrix();
        break;
      }

    }
  }
 
  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}



void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;
  
  if (key == '1') drawMode = 1;
  if (key == '2') drawMode = 2;
  if (key == '3') drawMode = 3;
  if (key == '4') drawMode = 4;
}



// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}






























