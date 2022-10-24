import processing.sound.*;
 SoundFile sound1,sound2,sound3;
void setup(){
size(400,300);
sound1=new SoundFile(this,"In Game Music.mp3");
sound2=new SoundFile(this,"Intro Song_Final.mp3");
sound1.play();
}

int stage=1;
void draw(){
 background(255);
 textSize(50);
 fill(255,0,0);
 if(stage==1){
  text("stage 1",100,100);
  }else if (stage==2){
   text("stage 2",100,100);
  }
 
 }
void mousePressed()
{
 if(stage==1) stage=2;
 else if (stage==2) stage=1;
}
