//DONT EDIT!!!
int level=1, SECRETWAYHAHA;
float posX, posY, grav;
boolean pressed=false, win=false, coins[]=new boolean[3], done=false, mode=false, ang=true;
PImage santaR=requestImage("santa_right.png"), santaL=requestImage("santa_left.png");
void game() {
  textSize(100);
  cp5.get(Button.class, "play").hide();
  password.hide();
  image(levels[level-1], 0, 0);
  noStroke();
  fill(255, 192, 2);
  if (coins[0]) circle(width/2-50, 50, 70); 
  else if (!win) circle(coinX[level-1][0], coinY[level-1][0], 70);
  fill(255, 192, 3);
  if (coins[1]) circle(width/2, 50, 70); 
  else if (!win) circle(coinX[level-1][1], coinY[level-1][1], 70);
  fill(255, 192, 4);
  if (coins[2]) circle(width/2+50, 50, 70); 
  else if (!win) circle(coinX[level-1][2], coinY[level-1][2], 70);
  if (ang) image(santaR, posX, posY, 65, 85);
  else image(santaL, posX, posY, 65, 85);
  if (get((int)posX+32, (int)posY+82)==color(235, 245, 255) || get((int)posX+32, (int)posY+82)==color(225, 240, 255)) {
    grav=-0.1;
    posY-=1;
  } else {
    posY+=grav;
    grav+=0.2;
  }
  if (keyPressed) {
    if (keyCode==LEFT && posX>5 && get((int)posX-1, (int)posY)!=color(235, 245, 255)) { 
      posX-=3;
      posY-=1.3;
      ang=false;
    }
    if (keyCode==RIGHT && posX<width-75 && get((int)posX+31, (int)posY)!=color(235, 245, 255)) {
      posX+=3;
      posY-=1.3;
      ang=true;
    }
    if (keyCode==UP && get((int)posX+32, (int)posY+82)==color(225, 240, 255)) {
      grav-=8;
      posY--;
    }
    if (keyCode==DOWN) grav++;
  }
  if (get((int)posX+32, (int)posY+82)==color(12, 20, 255)) {
    pressed=true;
    if (win) {
      posX=0;
      posY=0;
      for (int i=0; i<3; i++) coins[i]=false;
      if (level<levels.length) level++;
      else done=true;
      win=false;
      pressed=false;
    }
  }
  //fill(0);
  //textSize(15);
  //text("You cannot jump here", 470, 470);
  //fill(255, 0, 0);
  //textSize(100);
  if (pressed==true) rect(0, 300, 90, 30);
  if (get((int)posX+32, (int)posY+82)==color(255, 0, 0)) win=true;
  if (get((int)posX+32, (int)posY)==color(225, 240, 255) || posY<0) {
    grav+=7;
    posY+=10;
  }
  if (ang) {
    if (get((int)posX+65, (int)posY+30)==color(255, 192, 2)) coins[0]=true;
    if (get((int)posX+65, (int)posY+30)==color(255, 192, 3)) coins[1]=true;
    if (get((int)posX+65, (int)posY+30)==color(255, 192, 4)) coins[2]=true;
  } else {
    if (get((int)posX, (int)posY+30)==color(255, 192, 2)) coins[0]=true;
    if (get((int)posX, (int)posY+30)==color(255, 192, 3)) coins[1]=true;
    if (get((int)posX, (int)posY+30)==color(255, 192, 4)) coins[2]=true;
  }
  if (win) text("You won!", width/2-300, height/2+50);
  if (done) text("You've done it!", width/2-500, height/2+50);
  if (done && pressed && coins[0]==true && coins[1]==true && coins[2]==true && get((int)posX+32,(int)posY)==color(90,75,225)) {
    SECRETWAYHAHA++;
    println(SECRETWAYHAHA);
  }
  if (SECRETWAYHAHA>300) {
    background(93, 76, 224);
    fill(255, 0, 0);
    text("Happy new year, cheater!", width/2-600, height/2+50);
    text("Password - 65535", width/2-600, height/2+250);
  }
}
