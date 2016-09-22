 Bacteria [] colony;
 int a = (int)(Math.random() * 500);
 int b = (int)(Math.random() * 500);
 void setup()   
 {     
 	size(500, 500);
 	frameRate = (1);
 	colony = new Bacteria [40];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {  
 	noStroke();
 	fill(0, 0, 0, 50);
 	rect(0, 0, 500, 500);
 	antibiotic();
  	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 	}
 	
 }  
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int move1;
 	int move2;
 	boolean alive;
 	Bacteria()
 	{
 		myX = (int)(Math.random() * 500);
  		myY = (int)(Math.random() * 500);
  		move1 = 0;
  		move2 = 0;
  		alive = true;
 	}   
 	void show()
 	{
 		if(alive == true)
 		{
  			fill(150, 255, 0);
 			ellipse(myX % 499, myY % 499, 7, 7);
 		}
 		if(((Math.abs(myX - a)) < 7) || ((Math.abs(myX - a) < 7)))
 		{
 			alive = false;
 		}
 		if(mousePressed)
		{
 			alive = true;
		}
 	}
 	void move()
 	{
 		if(move1 == 40)
 		{
 			move2 = (int)(Math.random() * 4);
 			move1 = 0;
 		}
 		else
 		{
 			move1 ++;	
 		}
 		if(move2 == 0)
 		{
 			myX += 1;
 		}
 		if(move2 == 1)
 		{
 			myX -= 1;
 		}
 		if(move2 == 2)
 		{
 			myY += 1;
 		}
 		if(move2 == 3)
 		{
 			myY -= 1;
 		}
 	}
 }
 void antibiotic()
 {
 	fill(a / 2, b / 2, 150);
 	ellipse(a % 499, b % 499, 15, 15);
 	if(keyPressed && keyCode == 37)
 	{
 		a -= 3;
 	}
 	if(keyPressed && keyCode == 39)
 	{
 		a += 3;
 	}
 	if(keyPressed && keyCode == 38)
 	{
 		b -= 3;
 	}
 	if(keyPressed && keyCode == 40)
 	{
 		b += 3;
 	}
 }
 //