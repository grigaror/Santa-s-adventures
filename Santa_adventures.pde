/*
Instruction:
 Gameplay:
 Use arrows for moving:
 left-right - moving
 up - jump
 down - stop jump (Use only in jump) 
 Collect coins, press on blue button, go to finish, find trick and secret way!
 
 Level creating:
 1. Draw level in paint (better in paint.net)
 2. Save level in game folder
 3. Under string 23 (You may add your own levels) write "requestImage("Level name")
 4. Add coins positions (X positions in string 29, Y positions in string 34)
*/

PImage levels[]={
  requestImage("level1.png")
  //You may add your own levels

};
float coinX[][]={
  //There are position X of coins in the level
  {190/*coin 1*/, 770/*coin 2*/, 1120/*coin 3*/}, //Pos X in level 1

};
float coinY[][]={
  //There are position Y of coins in the level
  {235/*coin 1*/, 540/*coin 2*/, 275/*coin 3*/}, //Pos Y in level 1

};


//DONT EDIT!!!
import processing.sound.*;
void setup() {
  fullScreen();
  frameRate(300);
  textSize(100);
  initGUI();
  pulse=new Pulse(this);
  pulse.amp(0.1);
}
float e=329.63, f=349.23;
String text;
float[][] secret={
  {e, 10, e, 10, e, 10, e, 10, e, 10, e, 10, e, 10, 392, 10, 261.63, 10, 293.66, 10, e, 10, 
    f, 10, f, 10, f, 10, f, 10, f, 10, e, 10, e, 10, e, 10, 293.66, 10, 293.66, 10, e, 10, 293.66, 10, 392, 10, 
    e, 10, e, 10, e, 10, e, 10, e, 10, e, 10, e, 10, 392, 10, 261.63, 10, 293.66, 10, e, 10, 
  f, 10, f, 10, f, 10, f, 10, f, 10, e, 10, e, 10, 392, 10, 392, 10, f, 10, 293.66, 10, 261.63}, 
  {250, 10, 250, 10, 500, 10, 250, 10, 250, 10, 500, 10, 250, 10, 250, 10, 375, 10, 125, 10, 1000, 10, 
    250, 10, 250, 10, 375, 10, 125, 10, 250, 10, 250, 10, 500, 10, 250, 10, 250, 10, 250, 10, 250, 10, 500, 10, 500, 10, 
    250, 10, 250, 10, 500, 10, 250, 10, 250, 10, 500, 10, 250, 10, 250, 10, 375, 10, 125, 10, 1000, 10,
  250, 10, 250, 10, 375, 10, 125, 10, 250, 10, 250, 10, 500, 10, 250, 10, 250, 10, 250, 10, 250, 10, 1000}
};
Pulse pulse;
void draw() {
  text=password.getText();
  if (mode) {
    game();
  } else menu();
  if (int(text)==secr) {
    pulse.play();
    for (int i=0; i<secret[0].length; i++) {
      pulse.freq(secret[0][i]);
      delay((int)secret[1][i]);
    }
  }
}//cp5.get(Textfield.class, "password").getText()=="65535"
int secr=65535;
