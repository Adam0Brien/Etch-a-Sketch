public class Display
{
  private String stampOne="Press 1 for a Snowman";
  private String stampTwo="Press 2 for Star";
  private String title="Etch a Sketch";
  private String movement="Use WASD to move";
  private String ColourChange="Press R,G,B to change star colour";
  private String bw = "Press ] for white and # for black";
  private int L1 = stampOne.length();
  private int L2 = stampTwo.length();





  public Display()
  {
  }

  public void screen() {
    //background 
    for (int i=0; i< 8; i++)   //setting a limit of 12 squares on x and 8 on the y plane of display
    {
      for (int j=0; j<12; j++)  
      {
        if ((j+i +1 ) % 2 == 0) // j+i because j acts as x plane and i acts as y plane
          fill(0);            // so every 2nd square out of all of them is turned red
        else
          fill(100);         // and if their not turned red then will be orange
        rect(j*50, i*50, 50, 50);    // mulitiple squares being placed side by side
      }
    }
    fill(255);            //this is our designated area for our etch a sketch line
    rect(50, 50, 500, 300);
  }

  public void message() {
    textSize(32);  // These commands generate text on the display user, it can be used to give instructions 
    fill(255);   // or to label what is shown on screen
    textAlign(CENTER);
    fill(255);
    text(title, width/2, 45);
    text(movement, width/2, height-215);
    text(stampOne, width/2, 430);
    text(stampTwo, width/2, 460);
    text(ColourChange, width/2, 490);
    text(bw, width/2, 520);
  }
  public void subMessage() {
    println("Charachters in 'Press 1 for a snowman' = ", L1);     // length of strings printed to the console
    println("Charachters in 'Press 2 for Star' = ", L2);
  }


  //getter methods
  public String getstampOne()
  {
    return stampOne;
  }

  public String getstampTwo()
  {
    return stampTwo;
  }

  public String gettitle()
  {
    return title;
  }

  public String getmovement()
  {
    return movement;
  }

  public String getColourChange()
  {
    return ColourChange;
  }

  public String getbw()
  {
    return bw;
  }

  public int getL1()
  {
    return L1;
  }

  public int getL2()
  {
    return L2;
  }


  //setter methods
  public void setstampOne(String stampOne)
  {
    this.stampOne = stampOne;
  }

  public void setstampTwo(String stampTwo)
  {
    this.stampTwo = stampTwo;
  }

  public void settitle(String title)
  {
    this.title = title;
  }

  public void setmovement(String movement)
  {
    this.movement = movement;
  }

  public void setColourChange(String ColourChange)
  {
    this.ColourChange = ColourChange;
  }

  public void setbw(String bw)
  {
    this.bw = bw;
  }

  public void setL1(int L1)
  {
    this.L1 = L1;
  }

  public void setL2(int L2)
  {
    this.L2 = L2;
  }
}  
