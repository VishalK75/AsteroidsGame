class Spaceship extends Floater
{   
  public Spaceship(){
    corners = 3; 
    xCorners = new int[corners];   
    yCorners = new int [corners];   
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners [2] = -8;
    yCorners [2] = 8;
    myColor = 255;   
    myCenterX = 350;
    myCenterY = 350;  
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setXspeed(double x){
    myXspeed = x;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public void setYspeed(double y){
    myYspeed = y;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public int getX(){
    return (int)myCenterX;
  }
  public int getY(){
    return (int)myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
