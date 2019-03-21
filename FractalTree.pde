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
	drawBranches(320,380,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength * fractionLength;
  int endx1 = (int)(branchLength*Math.cos(angle1) + x);
  int endy1 = (int)(branchLength*Math.sin(angle1) + y);
  int endx2 = (int)(branchLength*Math.cos(angle2) + x);
  int endy2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endx1,endy1);
  line(x,y,endx2,endy2);
  if (branchLength > smallestBranch)
  {
    drawBranches(endx1, endy1, branchLength, angle1);
    drawBranches(endx2, endy2, branchLength, angle2);
  }
} 
