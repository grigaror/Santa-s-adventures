//DONT EDIT!!!
PImage bigSanta=requestImage("santa_right.png");
void menu() {
  background(200);
  for (int i=0; i<1; i++);
  if (bigSanta.width == 0);
  else if (bigSanta.width == -1);
  else image(bigSanta, 0, 0);
  cp5.get(Button.class, "play").show();
  password.show();
  if (cp5.get(Button.class, "play").isPressed()) mode=true;
}
