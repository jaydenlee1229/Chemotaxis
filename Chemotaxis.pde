 int x;
 int y;
 Bacteria [] colony;
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
 	noStroke();
 	fill(0, 0, 0, 50);
 	rect(0, 0, 500, 500);
  	for(int i = 0; i < colony.length; i++)
 	{
 		if(alive == true)
 		{
 			colony[i].show();
 		}
 		colony[i].move();
 	}
 	antibiotic();
 	if(a == x && b == y)
 	{
 		alive = false;
 	}
 }  
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int move1;
 	int move2;
 	Bacteria(int x, int y)
 	{
 		myX = (int)(Math.random() * 500);
  		myY = (int)(Math.random() * 500);
  		move1 = 0;
  		move2 = 0;
 	}   
 	void show()
 	{
  		fill(150, 255, 0);
 		ellipse(myX % 499, myY % 499, 7, 7);
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
 		a -= 2;
 	}
 	if(keyPressed && keyCode == 39)
 	{
 		a += 2;
 	}
 	if(keyPressed && keyCode == 38)
 	{
 		b -= 2;
 	}
 	if(keyPressed && keyCode == 40)
 	{
 		b += 2;
 	}
 }
 void mousePressed()
 {
 	alive = true;
 }

 //get(a + 1, b + 1) == color(150, 255, 0)) || (get(a + 1, b - 1) == color(150, 255, 0)) || (get(a - 1, b + 1) == color(150, 255, 0)) || (get(a - 1, b - 1) == color(150, 255, 0)))