 int x;
 int y;
 Bacteria [] colony;
 boolean xDir = true;
 boolean right = true;
 boolean up = false;
 int a = (int)(Math.random() * 500);
 int b = (int)(Math.random() * 500);
 void setup()   
 {     
 	size(500, 500);
 	frameRate = (1);
 	colony = new Bacteria [10];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(x, y);
 	}
 }   
 void draw()   
 {  
 	background(0);
  	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 	}
 	antibiotic();
 }  
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int mySize;
 	Bacteria(int x, int y)
 	{
 		myX = (int)(Math.random() * 500);
  		myY = (int)(Math.random() * 500);
 	}   
 	void show()
 	{
  		fill(255, 255, 0);
 		ellipse(myX % 500, myY % 500, 7, 7);
 	}
 	void move()
 	{
 		if(Math.random() < .5)
 		{
 			xDir = true;
 			if(Math.random() < .5)
 			{
 				right = true;
 			}
 			else if(Math.random() < 1)
 			{
 				right = false;
 			}
 		}
 		else if(Math.random() < 1)
 		{
 			xDir = false;
 			if(Math.random() < .5)
 			{
 				up = true;
 			}
 			else if(Math.random() < 1)
 			{
 				up = false;
 			}
 		}
 		if(right)
 		{
 			myX += 2;
 		}
 		if(!right)
 		{
 			myX -= 2;
 		}
 		if(up)
 		{
 			myY += 2;
 		}
 		if(!up)
 		{
 			myY -= 2;
 		}
 	}
 }    
 void antibiotic()
 {
 	fill(255);
 	eliipse(int a, int b, 10, 10);
 	if(keyPressed && keyCode == 37)
 	{
 		a -= 1;
 	}
 }