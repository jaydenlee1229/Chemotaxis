 int x;
 int y;
 Bacteria [] colony;
 boolean xDir = true;
 boolean right = true;
 boolean up = false;
 boolean alive = true;
 int a = (int)(Math.random() * 500);
 int b = (int)(Math.random() * 500);
 void setup()   
 {     
 	size(500, 500);
 	frameRate = (1);
 	colony = new Bacteria [20];
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
 		if(alive == true)
 		{
 			colony[i].show();
 		}
 		colony[i].move();
 	}
 	antibiotic();
 	if(abs(a - x) < 15 || abs(b - y) < 15)
 	{
 		alive = false;
 	}
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
  		fill(150, 255, 0);
 		ellipse(myX % 499, myY % 499, 7, 7);
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
 			myX += 3;
 		}
 		if(!right)
 		{
 			myX -= 3;
 		}
 		if(up)
 		{
 			myY += 3;
 		}
 		if(!up)
 		{
 			myY -= 3;
 		}
 	}
 }    
 void antibiotic()
 {
 	fill(a / 2, b / 2, 150);
 	ellipse(a % 499, b % 499, 15, 15);
 	if(keyPressed && keyCode == 37)
 	{
 		a -= 1;
 	}
 	if(keyPressed && keyCode == 39)
 	{
 		a += 1;
 	}
 	if(keyPressed && keyCode == 38)
 	{
 		b -= 1;
 	}
 	if(keyPressed && keyCode == 40)
 	{
 		b += 1;
 	}
 }