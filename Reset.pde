public class Reset
{


  public Reset()
  {
  }


  public void load() {

    {     //loading screen for when etch a sketch is being cleared
      fill(100);

      int yCoordinate = 55;     //while loop used to make loading screen
      int i = 0;
      while (i < 15)
      {

        rect(50, yCoordinate, 500, 10); 


        yCoordinate+=20;
        i++;
      }
    }
  }
  public void reset() {

    b.screen();   //screen and message are called when reset is called
    b.message();
  }
}
