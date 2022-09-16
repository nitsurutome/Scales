void setup() {
  size(500, 500);
  background(0);
  frameRate(1);
}

void draw() {
  for (int y = -220; y < 500; y+=50)
    for (int x = -220; x < 500; x+=70)
        sScale(x, y);
}

void sScale(int x, int y) {
  //scale
  int diam = 0;
  float r = (float)(Math.random()*255);
  float b = (float)(Math.random()*255);
  noFill();
  while (diam < 30) {
    stroke(r, 0, b);
    triangle(x+220, y+220, x+280, y+220, diam+230+(float)(Math.random()*100), diam);
    triangle(x-220, y-220, x-280, y-220, diam+230, diam);
    diam++;
    r-=255/30.0;
  }
}
