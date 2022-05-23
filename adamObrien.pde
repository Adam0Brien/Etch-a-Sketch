import javax.swing.*;

Line a;
Display b;
Print c;
Reset d;

void setup() {      

  JOptionPane.showMessageDialog(null, 
    "Welcome to my Processing Assignment", 
    "Etch a Sketch V_6", 
    JOptionPane.PLAIN_MESSAGE);

  JOptionPane.showMessageDialog(null, 
    "I have improved upon my last assignment \n by adding classes arrays and more features", 
    "Etch a Sketch V_6", 
    JOptionPane.PLAIN_MESSAGE);

  JOptionPane.showMessageDialog(null, 
    "Enjoy :)", 
    "Etch a Sketch V_6", 
    JOptionPane.PLAIN_MESSAGE);
  size(600, 600);
  frameRate(100);

  a = new Line(5.0);
  b = new Display();
  c = new Print();
  d = new Reset();

  b.screen();
  b.message();
  b.subMessage();
}

void draw() {

  keyPressed();  // makes movement smoother
}

void keyPressed() {


  a.drawLine();
  c.changeColour(); //lets the colour change depending on what keys are pressed.
  c.printSnowman(); //print snowman when 1 is pressed
  c.printStar(); //print star when 2 is pressed
}

void mousePressed() {    //covers screen for rectangles and wipes screen blank

  d.load();
}

void mouseReleased()  //resets screen to show blank box and text
{
  d.reset();
}
