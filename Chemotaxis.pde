 //declare bacteria variables here
 Bacteria [] colony;
 int x = 250;
 int y = 250;
 void setup()   
 {     
 	size(500, 500);  
 }   
 void draw()   
 {    
  	background(0);
 	colony = new Bacteria [4];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(x, y, i * 5);
 		colony[i].show();
 		colony[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int mySize;
 	Bacteria(int x, int y, int size)
 	{
 		myX = x;
  		myY = y;
 		mySize = size;
 	}   
 	void show()
 	{
 		ellipse(myX, myY, mySize, mySize);
 	}
 	void move()
 	{
 		boolean xDir;
 		boolean right;
 		boolean up;
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
 			x += 3;
 		}
 		if(!right)
 		{
 			x -= 3;
 		}
 		if(up)
 		{
 			y += 3;
 		}
 		if(!up)
 		{
 			y -= 3;
 		}
 	}
 }    