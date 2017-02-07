private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;

public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	int angle1 = angle-branchAngle;
	int angle2 = angle+branchAngle;
	branchLength=branchLength*fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y); 
	int endX2 = endX1*2;
	int endY2 = endY1*2;
	line(endX1,endY1,endX2,endY2);

	//your code here    
} 
