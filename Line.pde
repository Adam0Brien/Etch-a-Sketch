public class Line
{
  private float xCoord;     //x coordinate of the Line
  private float yCoord;     //y coordinate of the Line
  private float diameter;   //diameter of the Line
  private int display = 55;

  //Constructor to set up the Line and its diameter
  public Line(float diameter)
  {
    setDiameter(diameter);
  }



  //Draws the line on the display window
  public void displayLine()
  {
    fill(0);
    noStroke();
    ellipse(xCoord, yCoord, diameter, diameter);
  }

  public void drawLine()
  {

    frameRate(100);

    xCoord = constrain(xCoord, display, width - display); 
    yCoord = constrain(yCoord, display, height - display);  

    displayLine();




    xCoord = constrain(xCoord, display, width - display);  
    yCoord = constrain(yCoord, display, height - display - 200); 

    if (keyPressed) {    //if this was not here the line would keep going and not stop when the key is let go

      if (key == 'w' || key == 'W')
        yCoord = yCoord - 2;             //The "w" or "W" key makes the line move up on the screen


      if (key == 'a' || key == 'A')
        xCoord = xCoord -2;             //The "a" or "A" key makes the line move left on the screen  



      if (key == 's' || key == 'S')
        yCoord = yCoord + 2;           //The "s" or "S" key makes the line move down on the screen


      if (key == 'd' || key == 'D')      
        xCoord = xCoord + 2;         //The "d" or "D" key makes the line move right on the screen
    }
  }

  //getter methods
  public float getXCoord()
  {
    return xCoord;
  }  

  public float getYCoord()
  {
    return yCoord;
  }  

  public float getDiameter()
  {
    return diameter;
  }  

  public int getdisplay()
  {
    return display;
  }  

  //setter methods

  public void setXCoord(float xCoord)
  {
    this.xCoord = xCoord;
  } 

  public void setYCoord(float yCoord)
  {
    this.yCoord = yCoord;
  } 

  public void setDiameter(float diameter)
  {
    //The lines diameter must be between 1 and 5 (inclusive)
    if ((diameter >= 1) && (diameter <= 5)) {
      this.diameter = diameter;
    } else {

      this.diameter = 5; // where 5 is is where you can change diameter of line from 1-5
    }
  }
  public void setdisplay(int display)
  {
    this.display = display;
  }
}
