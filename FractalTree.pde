private double fractionLength = .8; 
private int smallestBranch = 8; 
private double branchAngle = .6;

public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(135,206,255);   
	stroke(139,69,19);
	strokeWeight(5);   
	line(320,450,320,380);   
	//stroke(0,(int)(Math.random()*255),0);
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void mouseMoved() {
	//smallestBranch-=15;
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle-branchAngle;
	double angle2 = angle+branchAngle;
	double angle3 = angle+(branchAngle);
	branchLength=branchLength*fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y); 
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle3*2) + x);
	int endY3 = (int)(branchLength*Math.sin(angle3*2) + x);

	stroke(0,(int)(Math.random()*255),0);
	line(x,y,endX2,endY2);
	line(x,y,endX1,endY1);
	//line(x,y,endX3,endY3);
	if(branchLength>=smallestBranch)
	{
		drawBranches(endX1,endY1,(branchLength),angle1);
		drawBranches(endX2,endY2,(branchLength),angle2);
		//drawBranches(endX3,endY3,(branchLength+5),angle3);
	}

	//your code here    
} 
