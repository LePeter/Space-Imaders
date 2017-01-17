import ddf.minim.*;
import java.awt.Color;

PFont img2;
PImage img;
String typing = "";
String saved = "";
boolean flash = true;
boolean begin = false;
AudioPlayer bmusic;
Minim minim;//audio context

Player p;
Laser l;
int s;
void setup(){
  smooth();
  
  
  //background music loops constantly
  minim = new Minim(this);
  bmusic = minim.loadFile("Soviet Military March - The Sacred War.mp3", 1024);
  bmusic.loop();

  size(700,700);
  
  //loads start menu image
  img = loadImage("wutang.bmp");
  image(img, 0, 0);
}
void draw(){
  //image(img, 0, 0);
  textSize(18);
  int indent = 10;
  int s = second();
  if(flash){
    if(s % 2 != 0 && keyPressed == false){
      text("Enter Name and Press ", 200, 530);
      text("ENTER to start! ", 250, 560);
    }
    else if(keyCode == ENTER ){
      background(0);
      startGame();
      flash = false;
   }
       text(typing.toUpperCase(),indent,40);
      // text(saved,45,350);
  }
  else{
    s = second();
    if(begin){
      //background(Color.BLACK.getRGB());
      start();
      begin = false;
    }
    if(key == CODED){
       if (keyCode == LEFT) {
         p.setMove(-1);
         p.makeMove();
         keyCode = UP;
       }
       if (keyCode == RIGHT) {
         p.setMove(1);
         p.makeMove();
         keyCode = UP;
       }
    }
    if (key == ' ') {
      if(p.getShots() >= 3){
        key = 'a';
      }
      else{
       p.shoot();
       //l.move();
       key = 'a';
      }
    }
    if (millis() % 4 == 0) {
       p.act();
    }
    fill(255);
    text(saved.toUpperCase(),25,40);
    Score score = new Score(p);
   // text(score.getScore(),50,50);
    text("LIVES: " + p.getLives(), 550,40);
  }
}

void startGame(){
  background(0);
  Strategy abc = new Strategy();
  abc.reDraw();
  if(saved != ""){
    text(saved.toUpperCase(),25,40);
  }
  else{
    saved = "PLAYER";
    text(saved.toUpperCase(),25,40);
  }
  text("SCORE:",25,80);
  //text("LIVES: ", 550,80);
  textSize(30);
  begin = true;
}
void typeName(){
  int indent = 25;
  int sizzler = 100; 
  }
void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (keyCode == '\n') {
    saved = typing;
    // A String can be cleared by setting it equal to ""
    typing = ""; 
  } 
  else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    typing = typing + key; 
  }
}
void start(){
 p = new Player(saved);
}
class SpaceInvadersMAIN{


}

//background music stops if closed
void stop()
{
  bmusic.close();
  minim.stop();
  super.stop();
}

