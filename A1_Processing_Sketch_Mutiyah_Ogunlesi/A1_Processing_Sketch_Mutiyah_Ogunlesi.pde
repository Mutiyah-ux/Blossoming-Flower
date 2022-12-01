/**
 * Processing Sketch
 * Assignment 1
 * by: Mutiyah Ogunlesi
 * Created: September 2022
 *
 * Blooming flower with petal balls
 */

float a = 0.0;
float s = 0.0;

void setup() {
  size(640, 360);
  noStroke();
  ellipseMode(CENTER);
  frameRate(30);
}

void draw() {
  background(0, 7, 51);
  smooth();

  a = a + 0.04;
  s = cos(a)*2;

  // flower petals
  translate(width/2, height/2);
  scale(s);
  fill(#FFFFFF); // white
  for (int i = 0; i < 5; i++)
  {
    ellipse(0, -40, 50, 50);
    rotate(radians(72));
  }

  // centre circle
  fill(#F2E852); // light yellow
  ellipse(0, 0, 50, 50);

  // petal balls
  translate(75, 0);
  fill(#fff9bb);
  scale(s);
  for (int i = 0; i < 5; i++)
  {
    ellipse(0, -90, 20, 20);
    rotate(radians(80));
  }
}
