Squiggle billy;
Squiggle[] orange;
void setup () {
  size (1000,1000);
  frameRate(15);
  billy = new Squiggle();
  orange = new Squiggle [100]; //welcome to the world of oranges
  for (int i = 0; i < orange.length; i++)
  {
    orange[i] = new Squiggle();
  }
}
void draw () {
  background (0);
  billy.show();
  billy.squiggle();
  for (int i = 0; i < orange.length; i++) {
    orange[i].show();
    orange[i].squiggle();
  }
}

class Squiggle {
  int myX, myY;
  Squiggle () {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
  }
  void squiggle() {
    myX = myX + (int)(Math.random()*20)-6;
    myY = myY + (int)(Math.random()*20)-6;
    if (myX > 1000) {
      myX = 0;
    }
    if (myY > 1000) {
      myY = 0;
    }
  }
  void show() {
    noStroke();
    fill ((int)(Math.random()*100)+250, (int)(Math.random()*100)+50, (int)(Math.random()*75)+190);
    ellipse (myX, myY, 60, 60);
  }
}
