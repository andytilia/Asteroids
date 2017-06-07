class Asteroid extends Floater
{
  public Asteroid()
  {
    corners = 9;    
    xCorners = new int[corners];
    yCorners = new int[corners];
    float radius = 15;
    float angle = TWO_PI / corners;
    float r = 10; // randomness
    for (int i = 0; i < xCorners.length; i++) {
      xCorners[i] = (int)((radius + random(-r, r)) * sin(angle * i));
      yCorners[i] = (int)((radius + random(-r, r)) * cos(angle * i));
    }
    
    myColor = 255;   
    
    // place the asteroid randomly
    if (random(1) < .5) {
      myCenterX = random(width);
      myCenterY = 0;      
    } else {
      myCenterX = 0;
      myCenterY = random(height);       
    }

    myDirectionX = random(-3, 3);
    if (abs((float)myDirectionX) < .5) {
      myDirectionX = .5;
    }
    myDirectionY = random(-3, 3); //holds x and y coordinates of the vector for direction of travel   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
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

  public void setDirectionX(double x)
  {
    myDirectionX = x;
  }

  public double getDirectionX()
  {
    return (double)myDirectionX;
  }

  public void setDirectionY(double y)
  {
    myDirectionY = y;
  }

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
    float collisionThreshold = 15 + 16;
    return (collisionThreshold > distance);
  }
}