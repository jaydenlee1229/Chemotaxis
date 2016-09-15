 //declare bacteria variables here   
 void setup()   
 {     
 	size(500, 500);   
 }   
 void draw()   
 {    
 	Bacteria [] colony;
 	colony = new Bacteria [4];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 		colony[i].show();
 		//colony[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int mySize;
 	Bacteria(int x, int y, int mySize)
 	{
 		myX = x;
  		myY = y;
 		mySize = 10;
 	}   
 	void show()
 	{
 		ellipse(myX, myY, mySize, mySize);
 	}
 }    