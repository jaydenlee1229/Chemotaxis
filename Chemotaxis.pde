 //declare bacteria variables here
 int x;
 int y;
 int size;
 Bacteria [] colony;
 void setup()   
 {     
 	size(500, 500);  
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(x, y, 10);
 	}
 }   
 void draw()   
 {    
  	background(0);
 	colony = new Bacteria [10];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 		System.out.println(x);
 	}
 }  
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int mySize;
 	Bacteria(int x, int y, int size)
 	{
 		myX = (int)(Math.random() * 500);
  		myY = (int)(Math.random() * 500);
 	}   
 	void show()
 	{
  		fill(255, 255, 0);
 		ellipse(myX, myY, 5, 5);
 	}
 	void move()
 	{
 		boolean xDir = true;
 		boolean right = true;
 		boolean up = false;
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