public class Print

{

  private int display = 55;
  private float rColour;  //variables for Colours
  private float gColour;
  private float bColour; 

  int[] colours = { 0, 1, 255 };  // Alternate syntax
  int min = colours[0];   // Sets variable 'min' to 0
  int one = colours[1];   // Sets variable 'one' to 1
  int max = colours[2]; // Setc variable 'max' to 255

  public Print() {
  }

  public void snowmanQuarentine() // this method keeps the printed snowman from escaping the etch a sketch screen
  {
    mouseX = constrain(mouseX, display+20, width - 75);    
    mouseY = constrain(mouseY, display+40, height - 275);
  }

  public void starQuarentine() // this method keeps the printed star from escaping the etch a sketch screen
  {
    mouseX = constrain(mouseX, display+20, width - 75);  
    mouseY = constrain(mouseY, display+10, height - 275);
  }

  public void changeColour()
  {
    frameRate(30);

    if (keyPressed) {
      if (keyPressed) {

        if (key == 'r' || key == 'R') // when r is pressed the rColour value is changed
          rColour = rColour + 1;
        if (rColour == max+one) { //when r is pressed rColour increases by +1 and goes back to 0 when it goes past 255
          rColour = min;
        }

        fill(255);
        rect(0, 550, 100, 50); //white box
        fill(0);
        textSize(16);
        text("R=", 15, 565);     //display window showing rColour value 
        text(rColour, 60, 565);
      }

      if (keyPressed) {
        if (key == 'g' || key == 'G')// when g is pressed the gColour value is changed
          gColour = gColour + 1;
        if (gColour == max+one) {     //when g is pressed gColour increases by +1 and goes back to 0 when it goes past 255
          gColour = min;
        }

        fill(0);
        textSize(16);
        text("G=", 15, 583);  //display window showing gColour value
        text(gColour, 60, 583);
      }

      if (keyPressed) {
        if (key == 'b' || key == 'B')
          bColour = bColour + 1;
        if (bColour == max+one) { //when b is pressed bColour increases by +1 and goes back to 0 when it goes past 255
          bColour = min;
        }
        fill(0);
        textSize(16);
        text("B=", 15, 599); //display window showing bColour value
        text(bColour, 60, 599);

        // Set the # key to change stamp colour to black
        if (keyPressed) {

          if (key == '#')
            rColour = min;


          if (key == '#')        
            gColour = min;


          if (key == '#')
            bColour = min;
        }


        // Set the ] key to change stamp colour to white 
        if (keyPressed) {  
          if (key == ']')
            rColour = max;


          if (key == ']')
            gColour = max;


          if (key == ']')
            bColour = max;
        }
      }
    }
  }

  // making a snowman method
  public void snowman() {
    snowmanQuarentine(); //keeps snowman inside etch a sketch window.
    fill(0);
    ellipse(mouseX, mouseY, 32, 32);  //Body(outline)
    ellipse(mouseX, mouseY-15, 24, 24);
    fill(255);
    ellipse(mouseX, mouseY, 29, 29); //body(white)
    ellipse(mouseX, mouseY-15, 21, 21);
    fill(0);
    rect(mouseX-10, mouseY-40, 20, 20);  //hat
    rect(mouseX-15, mouseY-28, 30, 8);
    ellipse(mouseX, mouseY, 2, 2);     //buttons
    ellipse(mouseX, mouseY+4, 2, 2);
    ellipse(mouseX, mouseY-4, 2, 2);
    ellipse(mouseX-5, mouseY-15, 2, 2);//eyes
    ellipse(mouseX+5, mouseY-15, 2, 2);
  }


  public void star() {
    starQuarentine(); //keeps star inside etch a sketch window.
    noStroke();
    triangle(mouseX, mouseY-10, mouseX-14, mouseY+5, mouseX+14, mouseY+5);
    triangle(mouseX, mouseY+10, mouseX-14, mouseY-5, mouseX+14, mouseY-5);
  }


  public void printSnowman() {    
    if (keyPressed) {
      if (key == '1')
        snowman(); // snowman method called and printed when 1 is pressed
    }
  }


  public void printStar() {    


    fill(rColour, gColour, bColour);
    ellipse(130, 575, 45, 45); // this circle shows the colour changing while the rgb keys are pressed (the colour shown onmn screen will then be the colour printed
    if (keyPressed) {
      if (key == '2' || key == '@')
        star(); // star method called and printed when 1 is pressed
    }
  }
  
   //getter methods
  public int display()
  {
    return display;
  }  
  
  public float rColour()
  {
    return rColour;
  } 
  
  public float gColour()
  {
    return gColour;
  }
  
  public float bColour()
  {
    return bColour;
  }
  
    //setter methods

  public void setdisplay(int display)
  {
    this.display = display;
  } 
  
  public void setrColour(float rColour)
  {
    this.rColour= rColour;
  } 
  
  public void setgColour(float gColour)
  {
    this.gColour= gColour;
  } 
  
  public void setbColour(float bColour)
  {
    this.bColour= bColour;
  } 
  
  
  
  
  
  
  
  
  
  
  
  
  
}
