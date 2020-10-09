Die billy;
PFont zigBlack;

void setup()
{
  noLoop();
  size(310,400);
  background(24, 279, 17);
  zigBlack = createFont("Arial", 32); 
}

void draw()
{
  int numofcolumns = 0;
  int x = 10;
  int y = 10;
  int totalsum = 0;
  for (numofrows = 0; numofrows <= 6; numofrows ++)
    {
      for (numofcolumns = 0; numofcolumns <= 5; numofcolumns ++)
        {
          billy = new Die(x, y);
          billy.roll();
          billy.show();
          totalsum = totalsum + billy.dieroll;
          
          y = y + 60;
      
        }
      int numofrows = 0;

      x = x + 60;
      y = 10;
    }
    fill(243, 170, 24);
    rect(10, 360, 290, 30);
    textFont(zigBlack);
    fill(24, 119, 243);
    text("Dice sum: " + totalsum, 65, 390);   
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
  int MyX;
  int MyY;
  int dieroll;
  int middleX = (MyX + 35)/2;
  int middleY = (MyY + 35)/2;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
  MyX = x;
  MyY = y;
	}
	void roll()
	{
		//your code here
  dieroll = (int)(Math.random () * 6) + 1;
  
	}
	void show()
	{
		//your code here
    fill(255);
    square(MyX,MyY,50);
    fill(0);
    //text(dieroll, middleX, middleY);
    if(dieroll == 1)
    {
      ellipse(MyX+50/2,MyY+50/2,5,5);
    }
    else if(dieroll == 2)
    {
      ellipse(MyX+50/4, MyY+50/4, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+(50/4)*3, 5, 5);
      }
    else if(dieroll == 3)
    {
      ellipse(MyX+50/4, MyY+50/4, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+(50/4)*3, 5, 5);
      ellipse(MyX+50/2,MyY+50/2,5,5);
    }
    else if(dieroll == 4)
    {
      ellipse(MyX+50/4, MyY+50/4, 5, 5);
      ellipse(MyX+50/4, MyY+(50/4)*3, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+50/4, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+(50/4)*3, 5, 5);
    }
    else if(dieroll == 5)
    {
      ellipse(MyX+50/4, MyY+50/4, 5, 5);
      ellipse(MyX+50/4, MyY+(50/4)*3, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+50/4, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+(50/4*3), 5, 5);
      ellipse(MyX+50/2,MyY+50/2,5,5);
    }
    else
    {
      ellipse(MyX+50/4, MyY+50/4, 5, 5);
      ellipse(MyX+50/4, MyY+(50/4)*3, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+50/4, 5, 5);
      ellipse(MyX+(50/4)*3, MyY+(50/4*3), 5, 5);
      ellipse(MyX+(50/4)*2, MyY+50/4, 5, 5);
      ellipse(MyX+(50/4)*2, MyY+(50/4)*3, 5, 5);
    }
	}
}
