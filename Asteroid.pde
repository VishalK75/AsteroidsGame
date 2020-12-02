class Asteroids extends Floater
{
  private double rotationSpeed;
  public Asteroids(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*10) + 4;
    yCorners[0] = (int)(Math.random()*10) + 6;
    xCorners[1] = (int)(Math.random()*10) + 6;
    yCorners[1] = (int)(Math.random()*10) + 4;
    xCorners[2] = (int)(Math.random()*10) + 6;
    yCorners[2] = (int)(Math.random()*10) - 4;
    xCorners[3] = (int)(Math.random()*10) + 4;
    yCorners[3] = (int)(Math.random()*10) - 6;
    xCorners[4] = (int)(Math.random()*10) - 4;
    yCorners[4] = (int)(Math.random()*10) - 6;
    xCorners[5] = (int)(Math.random()*10) - 6;
    yCorners[5] = (int)(Math.random()*10) - 4;
    myColor = color(104, 107, 112);
    myCenterX = (int)(Math.random()*700);
    myCenterY = (int)(Math.random()*700);
    myXspeed = (Math.random()*4)-1.5;
    myYspeed = (Math.random()*4)-1.5;
    myPointDirection = (int)(Math.random()*360);
    rotationSpeed = (int)(Math.random()*7)-3;
  }
  
  public void setX(int x){
    myCenterX = x;
  }
  public int getX(){
    return (int)myCenterX;
  }
  public void setY(int y){
    myCenterY = y;
  }
  public int getY(){
    return (int)myCenterY;
  }
  public void setDirectionX(double x){
    myXspeed = x;
  }
  public double getDirectionX(){
    return myXspeed;
  }
  public void setDirectionY(double y){
    myYspeed = y;
  }
  public double getDirectionY(){
    return myYspeed;
  }
  public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
  public double getPointDirection(){
    return myPointDirection;
  }

  public void move()
  {
    turn(rotationSpeed);
    super.move();
  }
  
}
