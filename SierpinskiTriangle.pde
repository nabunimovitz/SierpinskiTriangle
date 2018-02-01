boolean change = true; 
public void setup()
{
	size(500,500);
	//background(255, 255, 102);
	//stroke(105, 105, 105);
	//fill(192, 192, 192);
}
public void draw()
{
	if(change==true)
	{
		background(255,255,102);
		stroke(105, 105, 105);
		fill(192,192,192);
	}
	else
	{
		background(192,192,192);
		stroke(255,165,0);
		fill(255,255,102);
	}
	sierpinski(0, 500, 500);
}
public void mousePressed()//optional
{
	change = !change;
}

public void sierpinski(int x, int y, int len) 
{
	if(len<=10)
	{
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+(len/2), y, len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}
}