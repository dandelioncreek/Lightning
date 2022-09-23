int x = width/2;
int y = height/2;
int a;
int b = 260;
int c;
int d = 260;
int diam = 40;
int diam1;

void setup()
{
  size(500, 500);
  stroke(255, 255, 255);
  //x = width/2;
}

void draw()
{
  fill(0, 0, 0, 15);
  rect(0, 0, 500, 500);
  fill(255, 255, 255);
  strokeWeight(15); //jellyfish legs
  line(200, 250, 170, 430);
  line(150, 250, 130, 400);
  line(390, 250, 370, 380);
  line(320, 250, 290, 450);
  line(350, 250, 350, 400);
  line(260, 250, 270, 378);
  arc(260, 250, 320, 320, radians(180), radians(360)); //jellyfish body
  line(100, 250, 420, 250);

  if (y < height) {
    int x1 = x + (int)(Math.random()*20-10);
    int y1 = y + (int)(Math.random()* 20 -10);
    lightning (x, y, x1, y1);
    x = x1;
    y = y1;
  }
  if (b < height) {
    int a1 = a + (int)(Math.random()*20-10);
    int b1 = b + (int)(Math.random()*30);
    lightning (a, b, a1, b1);
    a = a1;
    b = b1;
  }
  if (d < height) {
    int a1 = c + (int)(Math.random()*20-10);
    int b1 = d + (int)(Math.random()*30);
    lightning (c, d, a1, b1);
    c = a1;
    d = b1;
  }
  fill(255, 169, 8);
  ellipse(270, 150, diam, diam); //circles inside jellyfish
  ellipse(260, 137, diam, diam);
  ellipse(240, 170, diam, diam);
  ellipse(260, 185, diam, diam);
  ellipse(290, 180, diam, diam);
}


void mousePressed()
{
  y = mouseY;
  x = mouseX;
  stroke ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  b = 260;
  a = (int)(Math.random()*320 + 90); //random lightning coming out from under jellyfish
  d = 260;
  c = (int)(Math.random()*320 + 90); //random lightning coming out from under jellyfish
  diam = diam + (int)(Math.random()*20 - 10); //changes size of jellyfish innards
  diam1 = diam;
}

void lightning(int x, int y, int x1, int y1) {
  strokeWeight(3);
  line(x, y, x1, y1);
}

