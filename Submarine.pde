/*
Creators: Bjorn and Egil Rian
10/16/19
Submarine Animation
*/
int bubbleYpos = 1010; 
int goRightCounter = 0; 
int goLeftCounter = 0;
int bubbleReset = 8200;
int streamRight = 800;
int streamReset = 220;

void setup()
{ // runs only once.
size(1000, 1000);
frameRate(50);
rectMode(CENTER);
}

void draw()
{ // runs repeatedly.
noStroke();
background(0, 191, 255);
fill(128, 128, 128);
rect(490, 390, 10, 80); //pilot
ellipse(485, 348, 35, 35);
fill(255, 255, 255);
ellipse(485, 348, 28, 28);
fill(128, 128, 128);
text("Bjorn Rian - 10/16", 1100, 1000, 500, 100);
ellipse(250, 500, 100, 100); // front
rect(500, 500, 500, 100); // body
triangle(500, 460, 400, 450, 500, 400); //top
quad(500, 458, 500, 400, 585, 425, 590, 453); //top
//ellipse(mouseX, mouseY, 25, 25);
triangle(870, 550, 750, 450, 750, 500); //bottom
triangle(870, 453, 820, 470, 810, 500); // top
rect(810, 502, 26, 110);
triangle(750, 550, 750, 450, 870, 500);
stroke(0);
line(280, 500, 600, 500);
line(310, 490, 620, 490);
line(310, 510, 610, 510);
ellipse(325, 475, 15, 15);
ellipse(345, 475, 15, 15);
ellipse(365, 475, 15, 15);
ellipse(385, 475, 15, 15);
ellipse(405, 475, 15, 15);

ellipse(445, 475, 15, 15);
ellipse(485, 475, 15, 15);
ellipse(525, 475, 15, 15);
ellipse(565, 475, 15, 15);
ellipse(605, 475, 15, 15);

ellipse(675, 500, 50, 50);

showBubbles();
showFish();
showTurbine();

//line(streamRight, 470, streamRight + 70, 470);

}

void showBubbles() {
  bubbleYpos = (bubbleYpos - 1); 
  bubbleReset = (bubbleReset - 1);
  noFill();
  stroke(255, 255, 255);
  strokeWeight(3);
  ellipse(180, bubbleYpos + 0, 15, 15);
  ellipse(260, bubbleYpos + 1000, 15, 15);
  ellipse(80, bubbleYpos + 2000, 15, 15);
  ellipse(700, bubbleYpos + 3000, 15, 15);
  ellipse(380, bubbleYpos + 4000, 15, 15);
  ellipse(500, bubbleYpos + 5000, 15, 15);
  ellipse(570, bubbleYpos + 6000, 15, 15);
  ellipse(970, bubbleYpos + 7000, 15, 15);
 if(bubbleReset == 0) {
    bubbleYpos = 1010;
    bubbleReset = 8200;
  }
}

void showFish() {
  if(goRightCounter < 1200) {
    goRightCounter = goRightCounter + 2;
    fill(255, 255, 0);
    noStroke();
    triangle(-150 + goRightCounter, 50, -150 + goRightCounter, 150, -100 + goRightCounter, 100);
    fill(255, 255, 255);
    ellipse(-120 + goRightCounter, 90, 20, 20);
    fill(0);
    ellipse(-116 + goRightCounter, 88, 8, 8);
    if(goRightCounter == 1200) {
      goLeftCounter = 1200;
    }
  }
  if(goLeftCounter > 0) {
    goLeftCounter = goLeftCounter - 2;
    fill(0, 0, 255);
    noStroke();
    triangle(-150 + goLeftCounter, 800, -100 + goLeftCounter, 850, -100 + goLeftCounter, 750);
    fill(255, 255, 255);
    ellipse(-122 + goLeftCounter, 796, 20, 20);
    fill(0);
    ellipse(-119 + goLeftCounter, 796, 8, 8);
    if(goLeftCounter == 0) {
      goRightCounter = 0;
    }
  }  

}
void showTurbine() {
  streamRight = streamRight + 3;
  streamReset = streamReset - 1;
  if(mousePressed == true) {
  stroke(155);
  line(streamRight - 200, 490, streamRight - 130, 490);
  line(streamRight + 40, 500, streamRight + 0, 500);
  line(streamRight - 400, 510, streamRight -338, 510);
  }
  if(streamReset == 0) {
  streamReset = 270;
  streamRight = 700;
  
  }
  
  
  }
