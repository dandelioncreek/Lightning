int x;
int y = 0;

void setup()
{
  size(500, 500);
  x = width/2;
}

void draw()
{
  fill(0,0,0,15);
  rect(0,0,500,500);
  if (y < height) {
    int x1 = x + (int)(Math.random()*20-10);
    int y1 = y + (int)(Math.random()*10);
    lightning (x, y, x1, y1);
    x = x1;
    y = y1;
  }
}

void mousePressed()
{
  y = 0;
  x = mouseX;
  stroke ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
}

void lightning(float x, float y, float x1, float y1) {
  strokeWeight(3);
  line(x, y, x1, y1);
}
