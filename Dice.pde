 void setup()
  {
    size(500, 500);
    noLoop();
  }
  int total;
  void draw()
  {
      background(50, 150, 250);
      fill(0, 0, 0);
      total = 0;
      int thisX = 1;
      int thisY = 1;
      for(int i = 0; i < 9; i++){
        if(thisX >= 4){
          thisY++;
          thisX = 1;
        }
        Die aDie = new Die(100 * thisX, 100 * thisY, 1);
        aDie.show();
        thisX++;
      }
      text("total: " + total, 220, 450);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die
  {
      //member variable declarations here
      int number;
      int myX, myY;
      double size;
      
      Die(int x_, int y_, double s_) //constructor
      {
          myX = x_;
          myY = y_;
          size = s_;
          roll();
      }
      void roll()
      {
        number = (int)(Math.random()*6) + 1;
        total += number;
        size = 1+ number / 6.0;
      }
      void show()
      {
        fill(255, 255, 255);
        square(myX, myY, (int)(100 / size));
        fill(0, 0, 0);
        if(number == 3 || number == 4 || number == 5){
          //top left
          ellipse(myX + (int)(25 / size), myY + (int)(25 / size), (int)(25 / size), (int)(25 / size));
        }
        if(number == 2 || number == 4 || number == 5){
          //top right
          ellipse(myX + (int)(75 / size), myY + (int)(25 / size), (int)(25 / size), (int)(25 / size));
        }
        if(number == 1 || number == 3 || number == 5){
          //Center
          ellipse(myX + (int)(50 / size), myY + (int)(50 / size), (int)(25 / size), (int)(25 / size));
        }
        if(number == 2 || number == 4 || number == 5){
          //bot left
          ellipse(myX + (int)(25 / size), myY + (int)(75 / size), (int)(25 / size), (int)(25 / size));
        }
        if(number == 3 || number == 4 || number == 5){
          //bot right
          ellipse(myX + (int)(75 / size), myY + (int)(75 / size), (int)(25 / size), (int)(25 / size));
        }
        if(number == 6){
          ellipse(myX + (int)(25 / size), myY + (int)(20 / size), (int)(25 / size),(int)(25 / size));
          ellipse(myX + (int)(25 / size), myY + (int)(50 / size), (int)(25 / size),(int)(25 / size));
          ellipse(myX + (int)(25 / size), myY + (int)(80 / size), (int)(25 / size),(int)(25 / size));
          ellipse(myX + (int)(75 / size), myY + (int)(20 / size), (int)(25 / size),(int)(25 / size));
          ellipse(myX + (int)(75 / size), myY + (int)(50 / size), (int)(25 / size),(int)(25 / size));
          ellipse(myX + (int)(75 / size), myY + (int)(80 / size), (int)(25 / size),(int)(25 / size));
        }
      }
  }
