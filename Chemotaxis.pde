 //declare bacteria variables here
 Bacteria [] colony;   
 void setup()   
 {     
 	size(500, 500);  
 }   
 void draw()   
 {    
  	background(mouseX, mouseY, mouseX);
 	colony = new Bacteria [4];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(i*100, i*100, i*5);
 		colony[i].show();
 		//colony[i].move();
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
 		}
 		
 		else if(Math.random() < 1)
 		{
 			xDir = false;
 		}

 	}
 }    