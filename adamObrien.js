let a;
let b;
let c;
let d;
function setup(){
    createCanvas(600, 600);
    frameRate(100);
    a=new Line(5.0);
    b=new Display();
    c=new Print();
    d=new Reset();
    b.screen();
    b.message();
    b.subMessage();
}

function draw(){
    keyPressed();
}

function keyPressed(){
    a.drawLine();
    c.changeColour();
    c.printSnowman();
    c.printStar();
}

function mousePressed(){
    d.load();
}

function mouseReleased(){
    d.reset();
}

class Display{
    constructor(){
        this.stampOne = "Press 1 for a Snowman";
        this.stampTwo = "Press 2 for Star";
        this.title = "Etch a Sketch";
        this.movement = "Use WASD to move";
        this.ColourChange = "Press R,G,B to change star colour";
        this.bw = "Press ] for white and # for black";
        this.L1 = this.stampOne.length;
        this.L2 = this.stampTwo.length;
    }

    screen(){
        for(let i = 0;i < 8;i++) {
            for(let j = 0;j < 12;j++) {
                if((j + i + 1) % 2 == 0) fill(0);
    else fill(100);
                rect(j * 50, i * 50, 50, 50);
            }
        }
        fill(255);
        rect(50, 50, 500, 300);
    }

    message(){
        textSize(32);
        fill(255);
        textAlign(CENTER);
        fill(255);
        text(this.title, width / 2, 45);
        text(this.movement, width / 2, height - 215);
        text(this.stampOne, width / 2, 430);
        text(this.stampTwo, width / 2, 460);
        text(this.ColourChange, width / 2, 490);
        text(this.bw, width / 2, 520);
    }

    subMessage(){
        console.log("Charachters in 'Press 1 for a snowman' = ", this.L1);
        console.log("Charachters in 'Press 2 for Star' = ", this.L2);
    }

    getstampOne(){
        return this.stampOne;
    }

    getstampTwo(){
        return this.stampTwo;
    }

    gettitle(){
        return this.title;
    }

    getmovement(){
        return this.movement;
    }

    getColourChange(){
        return this.ColourChange;
    }

    getbw(){
        return this.bw;
    }

    getL1(){
        return this.L1;
    }

    getL2(){
        return this.L2;
    }

    setstampOne(stampOne){
        this.stampOne=stampOne;
    }

    setstampTwo(stampTwo){
        this.stampTwo=stampTwo;
    }

    settitle(title){
        this.title=title;
    }

    setmovement(movement){
        this.movement=movement;
    }

    setColourChange(ColourChange){
        this.ColourChange=ColourChange;
    }

    setbw(bw){
        this.bw=bw;
    }

    setL1(L1){
        this.L1=L1;
    }

    setL2(L2){
        this.L2=L2;
    }

}

class Line{
    constructor(diameter){
        this.xCoord = 0;
        this.yCoord = 0;
        this.diameter = 0;
        this.display = 55;
        this.setDiameter(diameter);
    }

    displayLine(){
        fill(0);
        noStroke();
        ellipse(this.xCoord, this.yCoord, this.diameter, this.diameter);
    }

    drawLine(){
        frameRate(100);
        this.xCoord=constrain(this.xCoord, this.display, width - this.display);
        this.yCoord=constrain(this.yCoord, this.display, height - this.display);
        this.displayLine();
        this.xCoord=constrain(this.xCoord, this.display, width - this.display);
        this.yCoord=constrain(this.yCoord, this.display, height - this.display - 200);
        if(keyIsPressed) {
            if(key == 'w' || key == 'W') this.yCoord=this.yCoord - 2;
            if(key == 'a' || key == 'A') this.xCoord=this.xCoord - 2;
            if(key == 's' || key == 'S') this.yCoord=this.yCoord + 2;
            if(key == 'd' || key == 'D') this.xCoord=this.xCoord + 2;
        }
    }

    getXCoord(){
        return this.xCoord;
    }

    getYCoord(){
        return this.yCoord;
    }

    getDiameter(){
        return this.diameter;
    }

    getdisplay(){
        return this.display;
    }

    setXCoord(xCoord){
        this.xCoord=xCoord;
    }

    setYCoord(yCoord){
        this.yCoord=yCoord;
    }

    setDiameter(diameter){
        if((diameter >= 1) && (diameter <= 5)) {
            this.diameter=diameter;
        }
    else {
            this.diameter=5;
        }
    }

    setdisplay(display){
        this.display=display;
    }

}

class Print{
    constructor(){
        this.display = 55;
        this.rColour = 0;
        this.gColour = 0;
        this.bColour = 0;
        this.colours = [0, 1, 255];
        this.min = this.colours[0];
        this.one = this.colours[1];
        this.max = this.colours[2];
    }

    snowmanQuarentine(){
        mouseX=constrain(mouseX, this.display + 20, width - 75);
        mouseY=constrain(mouseY, this.display + 40, height - 275);
    }

    starQuarentine(){
        mouseX=constrain(mouseX, this.display + 20, width - 75);
        mouseY=constrain(mouseY, this.display + 10, height - 275);
    }

    changeColour(){
        frameRate(30);
        if(keyIsPressed) {
            if(keyIsPressed) {
                if(key == 'r' || key == 'R') this.rColour=this.rColour + 1;
                if(this.rColour == this.max + this.one) {
                    this.rColour=this.min;
                }
                fill(255);
                rect(0, 550, 100, 50);
                fill(0);
                textSize(16);
                text("R=", 15, 565);
                text(this.rColour, 60, 565);
            }
            if(keyIsPressed) {
                if(key == 'g' || key == 'G') this.gColour=this.gColour + 1;
                if(this.gColour == this.max + this.one) {
                    this.gColour=this.min;
                }
                fill(0);
                textSize(16);
                text("G=", 15, 583);
                text(this.gColour, 60, 583);
            }
            if(keyIsPressed) {
                if(key == 'b' || key == 'B') this.bColour=this.bColour + 1;
                if(this.bColour == this.max + this.one) {
                    this.bColour=this.min;
                }
                fill(0);
                textSize(16);
                text("B=", 15, 599);
                text(this.bColour, 60, 599);
                if(keyIsPressed) {
                    if(key == '#') this.rColour=this.min;
                    if(key == '#') this.gColour=this.min;
                    if(key == '#') this.bColour=this.min;
                }
                if(keyIsPressed) {
                    if(key == ']') this.rColour=this.max;
                    if(key == ']') this.gColour=this.max;
                    if(key == ']') this.bColour=this.max;
                }
            }
        }
    }

    snowman(){
        this.snowmanQuarentine();
        fill(0);
        ellipse(mouseX, mouseY, 32, 32);
        ellipse(mouseX, mouseY - 15, 24, 24);
        fill(255);
        ellipse(mouseX, mouseY, 29, 29);
        ellipse(mouseX, mouseY - 15, 21, 21);
        fill(0);
        rect(mouseX - 10, mouseY - 40, 20, 20);
        rect(mouseX - 15, mouseY - 28, 30, 8);
        ellipse(mouseX, mouseY, 2, 2);
        ellipse(mouseX, mouseY + 4, 2, 2);
        ellipse(mouseX, mouseY - 4, 2, 2);
        ellipse(mouseX - 5, mouseY - 15, 2, 2);
        ellipse(mouseX + 5, mouseY - 15, 2, 2);
    }

    star(){
        this.starQuarentine();
        noStroke();
        triangle(mouseX, mouseY - 10, mouseX - 14, mouseY + 5, mouseX + 14, mouseY + 5);
        triangle(mouseX, mouseY + 10, mouseX - 14, mouseY - 5, mouseX + 14, mouseY - 5);
    }

    printSnowman(){
        if(keyIsPressed) {
            if(key == '1') this.snowman();
        }
    }

    printStar(){
        fill(this.rColour, this.gColour, this.bColour);
        ellipse(130, 575, 45, 45);
        if(keyIsPressed) {
            if(key == '2' || key == '@') this.star();
        }
    }

    display(){
        return this.display;
    }

    rColour(){
        return this.rColour;
    }

    gColour(){
        return this.gColour;
    }

    bColour(){
        return this.bColour;
    }

    setdisplay(display){
        this.display=display;
    }

    setrColour(rColour){
        this.rColour=rColour;
    }

    setgColour(gColour){
        this.gColour=gColour;
    }

    setbColour(bColour){
        this.bColour=bColour;
    }

}

class Reset{
    constructor(){
    }

    load(){
        {
        fill(100);
        let yCoordinate = 55;
        let i = 0;
        while(i < 15){
                rect(50, yCoordinate, 500, 10);
                yCoordinate+=20;
                i++;
            }
    }
    }

    reset(){
        b.screen();
        b.message();
    }

}

