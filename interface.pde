//DONT EDIT!!!
import controlP5.*;
ControlP5 cp5;
Textfield password;
PFont font;
void initGUI() {
  font=createFont("Arial", 20);
  cp5=new ControlP5(this);
  cp5.setFont(font);
  cp5.addButton("play")
    .setPosition(width-180, height-70)
    .setColorActive(color(245, 250, 255))
    .setSize(170, 60)
    .setColorBackground(color(255, 0, 0))
    .setColorForeground(color(180, 230, 255));
  cp5.addButton("exit")
    .setLabel("exit (esc)")
    .setPosition(width-115, 5)
    .setColorActive(color(245, 250, 255))
    .setSize(110, 45)
    .setColorBackground(color(255, 0, 0))
    .setColorForeground(color(180, 230, 255));
  password=cp5.addTextfield("password")
    .setPosition(width-160, height/2)
    .setSize(150, 40);
}
