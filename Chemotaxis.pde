 Bacteria [] colony;
 int a = 250;
 int b = 250;
 void setup()   
 {     
 	size(500, 500);
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
		if ((get(myX + 7, myY + 7) == color(255)) || (get(myX + 7, myY - 7) == color(255)) || (get(myX - 7, myY + 7) == color(255)) || (get(myX - 7, myY - 7) == color(255)))
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
 		if(myX < 0)
 		{
 			myX = 500;
 		}
 		if(myY < 0)
 		{
 			myY = 500;
 		}
 	}
 }
 void antibiotic()
 {
 	fill(255);
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
 	if(a < 0)
 	{
 		a = 500;
 	}
 	if(b < 0)
 	{
 		b = 500;
 	}
 }