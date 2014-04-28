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
 * 1                 : true color
 * 2                 : (color/b&w)
 * s                 : save png
 * p                 : save pdf
 */

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

PImage img;
int drawMode = 1;

void setup() {
  size(500,700);
  smooth();  
  
  img = loadImage("pic.png");
  println(img.width+" x "+img.height);
}

void draw() {
  float lineXsize = map(mouseX, 0, width, 0.01, 1);
  float lineYsize = map(mouseY, 0, height, 0.1, 50);
  
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  background(255);
  
  for (int gridX = 0; gridX < img.width; gridX++) {
      for (int gridY = 0; gridY < img.height; gridY++) {
        //grid position and tile size
      float tileWidth = width / (float)img.width;
      float tileHeight = height / (float)img.height;
      float posX = tileWidth*gridX;
      float posY = tileHeight*gridY;
    
    // get current color
    color c = img.pixels[gridY*img.width+gridX];
    int greyscale = round(red(c) *0.222 + green(c)*0.707 + blue(c)*0.071);

      switch(drawMode) {
      case 1:
        // greyscale to stroke weight
        float w1 = map(greyscale, 0,255, 15,0.1);
        color c1 = img.get(min(gridX+1, img.width-1), gridY);
        strokeWeight(w1 * lineXsize);
        stroke(c1);
        int greyscale2 = int(red(c1)*0.222 + green(c1)*0.707 + blue(c1)*0.071);
        line(posX, posY, posX+5, posY+5); 
        break;
     
      case 2:
        // greyscale to lines/ellipse, press 2
        
        float w2 = map(greyscale, 0,255, 15,0.1);
        color c2 = img.get(max(gridX+1, img.width-1), gridY);
        strokeWeight(w2 * lineXsize);
        stroke(c2);
        int greyscale3 = int(red(c2)*0.022 + green(c2)*0.001 + blue(c2)*0.091);
        line(posX, posY, posX+1, posY+1); 
        break;
      
      case 3:
        // greyscale to rotation, rectangle size and stroke weight
        
        stroke(0);
        float w3 = map(greyscale, 0,255, 10,0.1);
        strokeWeight(w3 * lineXsize + 3);
        float rect3 = map(greyscale, 0,255, 35,0);
        rect3 = rect3 + 0.1 * lineXsize;
        pushMatrix();
        translate(posX, posY);
        rotate(greyscale/255.0 * PI);
        rect(0, 0, 0*rect3, 0*rect3);
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






























