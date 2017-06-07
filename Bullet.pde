class Bullet extends Floater
{
  
  public Bullet(Spaceship player)
  {
    corners = 4;    
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 4;
    yCorners[0] = -1;
    xCorners[1] = 4;
    yCorners[1] = 1;
    xCorners[2] = -4;
    yCorners[2] = 1;
    xCorners[3] = -4;
    yCorners[3] = -1;
    
    myColor = 255;   
    
    // bullet starts from spaceship location
    myCenterX = player.getX();
    myCenterY = player.getY();
    
    myPointDirection = player.getPointDirection();
    myDirectionX = 10 * Math.cos(myPointDirection*(Math.PI/180));
    myDirectionY = 10 * Math.sin(myPointDirection*(Math.PI/180));
    
  }

  public void setX(int x)
  {
    myCenterX = x;
  }

  public int getX()
  {
    return (int)myCenterX;
    
  }

  public void setY(int y)
  {
    myCenterY = y;
  }

  public int getY()
  {
    return (int)myCenterY;
  }

  public void setDirectionX(double x) {}

  public double getDirectionX()
  {
    return (double)myDirectionX;
  }

  public void setDirectionY(double y) {}

  public double getDirectionY()
  {
    return (double)myDirectionY;
  }

  public void setPointDirection(int degrees)
  {
    myPointDirection = degrees;
  }

  public double getPointDirection()
  {
    return (double)myPointDirection;
  }
  
  public boolean checkCollision(int x, int y)
  {
    float distance = dist(x, y, getX(), getY());
    float collisionThreshold = 5 + 16;
    return (collisionThreshold > distance);
  }
  
  public void move()
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }   
}