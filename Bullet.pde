class Bullet extends Floater{
  public Bullet (Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myXspeed = 5 * Math.cos(dRadians) + theShip.getXspeed();
    myYspeed = 5 * Math.sin(dRadians) + theShip.getYspeed();
    accelerate(0.8);
  }
  
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY, 6, 6);
    fill(0, 204, 0);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
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
}
