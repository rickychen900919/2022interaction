# 2022interaction
## 變成小畫家，可以用滑鼠畫畫
```c

void setup(){
size(500,500);

}
void draw(){

 if(mousePressed){

   line(mouseX,mouseY,pmouseX,pmouseY);
 }
 ```
## 小畫家筆的顏色能夠透過鍵盤換色
```c
void setup(){
size(500,500);
background(#F0950C);

stroke(255,0,0);

}
void draw(){

 if(mousePressed){

   line(mouseX,mouseY,pmouseX,pmouseY);

 }

}
void keyPressed(){

 if(key=='1')stroke(#FA0834);

 if(key=='2')stroke(#FACA08);

 if(key=='3')stroke(#FAFA08);
}
 ```
## 先做出外面的卡片，在做出裡面有綠色卡片，透過rect進行修改把裡面的調成小一點。
```c
size(500,500);//大小
int w=25;
rect(100-w/2,100-w/2,150+w,250+w,20);
fill(#81E566);//填滿色彩
rect(100,100,150,250,20);
```
## 做出很多張小卡片
```c
void setup(){

size(500,500);

}

int w=25;

void draw(){

drawCard(100,100);//函式

drawCard(130,130);

drawCard(160,160);

}

void drawCard(int x,int y){
fill(255);
rect(x-w/2,y-w/2,150+w,250+w,20);//弧度
fill(#81E566);
rect(x,y,150,250,20);//弧度
}
```
## 卡片上出現文字
```c
void setup(){

size(500,500);

}

int w=25;

void draw(){

drawPokerCard(100,100,"S4");

drawPokerCard(130,150,"H3");

drawPokerCard(160,200,"D5");

drawPokerCard(190,250,"CJ");

}

void drawPokerCard(int x,int y,String face){

fill(255);

rect(x-w/2,y-w/2,150+w,250+w,20);

fill(#81E566);

rect(x,y,150,250,20);

fill(0);

textSize(40);

text(face,x,y+40);

}
```
## 更改卡片上的字
```c
void setup(){

background(#F0D988);

size(500,500);

PFont font=createFont("標楷體",40);

textFont(font);

}

int w=25;

void draw(){

drawPokerCard(100,100,"黑桃4");

drawPokerCard(130,150,"紅心3");

drawPokerCard(160,200,"方塊5");

drawPokerCard(190,250,"梅花J");

}

void drawPokerCard(int x,int y,String face){

fill(255);

rect(x-w/2,y-w/2,150+w,250+w,20);

fill(#81E566);

rect(x,y,150,250,20);

fill(0);

textSize(40);

text(face,x,y+40);

}
```
## 紅心和方塊變色(紅色)
```c
void setup(){
background(#F0D988);

size(500,500);

PFont font=createFont("標楷體",40);

textFont(font);

}

int w=25;

void draw(){

drawPokerCard(100,100,"黑桃4");

drawPokerCard(130,150,"紅心3");

drawPokerCard(160,200,"方塊5");

drawPokerCard(190,250,"梅花J");

}

void drawPokerCard(int x,int y,String face){

fill(255);

rect(x-w/2,y-w/2,150+w,250+w,20);

fill(#81E566);

rect(x,y,150,250,20);

//fill(0);//黑色的字

if(face.indexOf("黑桃")==-1&&face.indexOf("梅花")==-1)fill(#FF0000);

else fill(0);

textSize(40);

text(face,x,y+40);

}
```
## 數字變成隨機
```c
void setup(){
background(#F0D988);
size(500,500);
PFont font=createFont("標楷體",40);
textFont(font);
String[]flower={"黑桃","紅心","方塊","梅花"};
face1=flower[int (random(4))] + int(random(13)+1);
face2=flower[int (random(4))] + int(random(13)+1);
face3=flower[int (random(4))] + int(random(13)+1);
face4=flower[int (random(4))] + int(random(13)+1);
}
String face1,face2,face3,face4;
void draw(){
drawPokerCard(100,100,face1);
drawPokerCard(130,150,face2);
drawPokerCard(160,200,face3);
drawPokerCard(190,250,face4);
}
void drawPokerCard(int x,int y,String face){
int w=25;
fill(255);
rect(x-w/2,y-w/2,150+w,250+w,20);
fill(#81E566);
rect(x,y,150,250,20);
//fill(0);//黑色的字
if(face.indexOf("黑桃")==-1&&face.indexOf("梅花")==-1)fill(#FF0000);
else fill(0);
textSize(40);
text(face,x,y+40);
```
## 複習上禮拜的重新洗牌，按滑鼠可以直接洗牌增加myShuffle為洗牌，把myShuffle丟入按滑鼠程式，就變成按滑鼠洗牌。
```c
void setup(){     

background(#F0D988);
size(500,500);
PFont font=createFont("標楷體",40);
textFont(font);
myShuffle();
}
void myShuffle(){
String[]flower={"黑桃","紅心","方塊","梅花"};
face1=flower[int (random(4))] + int(random(13)+1);
face2=flower[int (random(4))] + int(random(13)+1);
face3=flower[int (random(4))] + int(random(13)+1);
face4=flower[int (random(4))] + int(random(13)+1);
}
String face1,face2,face3,face4;
void draw(){
drawPokerCard(100,100,face1);
drawPokerCard(130,150,face2);
drawPokerCard(160,200,face3);
drawPokerCard(190,250,face4);
}
void mousePressed(){
myShuffle();
}
void drawPokerCard(int x,int y,String face){
int w=25;
fill(255);
rect(x-w/2,y-w/2,150+w,250+w,20);
fill(#81E566);
rect(x,y,150,250,20);
if(face.indexOf("黑桃")==-1&&face.indexOf("梅花")==-1)fill(#FF0000);
else fill(0);
textSize(40);
text(face,x,y+40);
}
```
## 做出52張空白的牌
```c
void setup(){
 size(700,700);
}
void draw(){
 background(#FFFFF2);
 for(int i=0;i<52;i++){
 int x=(i%10)*60;
 int y=int (i/10)*120;
  rect(x,y,60,120);
  }

}
```
## 52張牌中加上黑桃1-12
```C
void setup(){
 size(700,700);
 PFont font=createFont("標楷體",10);
 textFont(font);
}
String[]faces={
"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K"};

void draw(){
 background(#FFFFF2);
 for(int i=0;i<52;i++){
 int x=(i%10)*60;
 int y=int (i/10)*120;
  fill(255); rect(x,y,60,120);
  fill(0) ;  text(faces[i],x+25,y+80);
 }

}
```
## 牌的不同花色會有黑色或是紅色的改變
```c
void setup(){
 size(800,600);
 PFont font=createFont("標楷體",16);
 textFont(font);
}
String[]faces={
"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
"紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
"方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
"梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"};

void draw(){
 background(#FFFFF2);
 for(int i=0;i<52;i++){
 int x=(i%13)*60;
 int y=int (i/13)*120;
  fill(255); rect(x,y,60,120);
  if(faces[i].indexOf("紅心")==-1 && faces[i].indexOf("方塊")==-1)fill(0);
  else fill(255,0,0);
  text(faces[i],x+15,y+80);
 }

}
```
## 按下滑鼠能夠洗牌，牌不會只待在同個位置上
```c
void setup(){
 size(800,600);
 PFont font=createFont("標楷體",16);
 textFont(font);
}
String[]faces={
"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
"紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
"方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
"梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"};

void draw(){
 background(#FFFFF2);
 for(int i=0;i<52;i++){
 int x=(i%13)*60;
 int y=int (i/13)*120;
  fill(255); rect(x,y,60,120);
  if(faces[i].indexOf("紅心")==-1 && faces[i].indexOf("方塊")==-1)fill(0);
  else fill(255,0,0);
  text(faces[i],x+15,y+80);
 }

}
void mousePressed (){
  int a=int (random(52));
  int b=int (random(52));
  String temp=faces[a];
  faces[a]=faces[b];
  faces[b]=temp;
}
```
## 把上禮拜的牌加上今天教的程式，可以透過滑鼠進行洗牌。
```c
void setup(){
background(#F0D988);
size(500,500);
PFont font=createFont("標楷體",40);
textFont(font);
myShuffle();
}
String[]faces={
"黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
"紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
"方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
"梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K"};

void myShuffle(){
 for(int k=0;k<10000;k++){
  int a=int (random(52));
  int b=int (random(52));
  String temp=faces[a];
  faces[a]=faces[b];
  faces[b]=temp;
 
 }
  face1=faces[0];
  face2=faces[1];
  face3=faces[2];
  face4=faces[3];
 
}
String face1,face2,face3,face4;
void draw(){
drawPokerCard(100,100,face1);
drawPokerCard(130,150,face2);
drawPokerCard(160,200,face3);
drawPokerCard(190,250,face4);
}
void mousePressed(){
myShuffle();
}
void drawPokerCard(int x,int y,String face){
int w=25;
fill(255);
rect(x-w/2,y-w/2,150+w,250+w,20);
fill(#81E566);
rect(x,y,150,250,20);
if(face.indexOf("黑桃")==-1&&face.indexOf("梅花")==-1)fill(#FF0000);
else fill(0);
textSize(40);
text(face,x,y+40);
}
```
## 做出一顆球碰到旁邊牆壁就停止反彈
```c
void setup(){

size(500,500);

}

int x=250,y=250;

void draw(){

 ellipse(x,y,10,10);

 x=x+1;

 y=y-1;

}
```
## 同以上
```c
void setup(){

size(500,500);

}

float x=250,y=250;

float vx=1.0, vy=-0.5;

void draw(){

 ellipse(x,y,10,10);

 x=x+vx;

 y=y+vy;

 if(x>500) vx=-vx;

 if(y<0) vy=-vx;

 if(x<0)vx=-vx;

}
```
## 做出可以讓球反彈的平台，求落下後用滑鼠移動平台，讓球落在上面後就會反彈。
```c
void setup(){

size(500,500);

}

float x=250,y=250;

float vx=2.0, vy=-1.5;

void draw(){

 background(#FFFFF2);

 int boardX=mouseX;

 rect(boardX,470,100,20);

 ellipse(x,y,10,10);

 x=x+vx;

 y=y+vy;

 if(x>500) vx=-vx;

 if(y<0) vy=-vx;

 if(x<0)vx=-vx;

 if(y>470&&x>boardX&&x<boardX+100)vy=-vy;
}
```
## 平台透過滑鼠左鍵能夠變長，而滑鼠右鍵則是縮小回原來的大小。
```c
void setup(){

size(500,500);

}

float x=250,y=250;

float vx=2.0, vy=-1.5;

float boardX,boardY=470,boardW=100,boardH=20;

void draw(){

 boardX=mouseX-boardW/2;

 background(#FFFFF2);

 rect(boardX,boardY,boardW,boardH);

 ellipse(x,y,10,10);

 x=x+vx;

 y=y+vy;

 if(x>500) vx=-vx;

 if(y<0) vy=-vx;

 if(x<0)vx=-vx;

 if((y>boardY&&y<boardY+boardH)&&(x>boardX&&x<boardX+boardW)){

 vy=-vy;

 vx+=(mouseX-pmouseX)/2;

 }

 if(mousePressed&&mouseButton==LEFT)boardW*=1.01;

 if(mousePressed&&mouseButton==RIGHT)boardW*=0.99;

 }
```
## 運用迴圈畫出很多的棋子。
```c
void setup(){

 size(500,500);

}

void draw(){

 for(int x=50;x<=450;x+=50){

    for(int y=50;y<=450;y+=50){

      ellipse(x,y,50,50);
   

    } 

 }

}
```
## 修改上面
```c
void setup(){
 size(500,500);
}
int [][]go={
{0,0,0,0,0,0,0,0,1},
{0,0,0,0,0,0,0,0,1},
{0,1,0,0,0,0,0,0,1},
{0,0,0,0,0,0,0,1,1},
{0,0,0,0,0,0,0,0,1},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
};
void draw(){
 for(int i=0;i<9;i++){
    for(int j=0;j<9;j++){
      if(go[i][j]==1) fill(0);
      else fill(255);
      ellipse(50+j*50,50+i*50,50,50);
    
    }
 
 }

}
```
## 做出棋盤將數字改成二會變成白棋，1是黑棋
```c
void setup(){
 size(500,500);
}
int [][]go={
{0,0,0,0,0,0,0,0,1},
{0,0,0,0,0,0,0,0,1},
{0,1,0,0,0,0,0,0,1},
{0,0,0,0,0,0,0,1,1},
{0,0,0,0,0,0,0,0,1},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,2,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
};
void draw(){
   background(246,194,108);
   for(int i=1;i<=9;i++){
      line(50,50*i,450,50*i);
      line(50*i,50,50*i,450);
   }
 for(int i=0;i<9;i++){
    for(int j=0;j<9;j++){
      if(go[i][j]==1){
      fill(0);
      ellipse(50+j*50,50+i*50,40,40);
      }else if(go[i][j]==2){   
      fill(255);//白棋
      ellipse(50+j*50,50+i*50,40,40);
      
      }
    
    }
 
  }

 }
```
## 按下滑鼠會先放置黑棋，在按一次則是放置白棋。
```c
void setup(){
 size(500,500);
}
int [][]go={
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0},
};
int N=0;
void mousePressed()
{
 int j=(mouseX-25)/50;
 int i=(mouseY-25)/50;
 go[i][j]=(N%2==0)?1:2;
 N++;
}

void draw(){
   background(246,194,108);
   for(int i=1;i<=9;i++){
      line(50,50*i,450,50*i);
      line(50*i,50,50*i,450);
   }
 for(int i=0;i<9;i++){
    for(int j=0;j<9;j++){
      if(go[i][j]==1){
      fill(0);
      ellipse(50+j*50,50+i*50,40,40);
      }else if(go[i][j]==2){   
      fill(255);//白棋
      ellipse(50+j*50,50+i*50,40,40);
      
      }
    
    }
 
  }

 }
```
## 透過x軸和y軸畫出棋盤
``` c
size(500,700);

for(int x=50;x<=450;x+=50){

   line(x,50,x,500);

}



for(int y=50;y<=500;y+=50){

   line(50,y,450,y);

}
```
## 讓棋盤的楚河漢界出現，同時棋盤上也出現數字。
```c
int [][]board={

  {4,5,3,2,1,2,3,5,4},

  {0,0,0,0,0,0,0,0,0},

  {0,6,0,0,0,0,0,0,0},

  {1,0,1,0,1,0,1,0,1},

};

void setup(){



  size(500,550);

}



void draw(){

for(int x=50;x<=450;x+=50){

   line(x,50,x,250);

   line(x,300,x,500);

}



for(int y=50;y<=500;y+=50){

   line(50,y,450,y);

}



for(int i=0;i<4;i++){

   for(int j=0;j<9;j++){

     text(board[i][j],50+j*50,50+i*50);

   }

 }

}
```
## 棋盤上的數字變成了棋子上的字。
```c
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,0,0},
  {7,0,7,0,7,0,7,0,7},
};
String[]name={"將","士","象","車","馬","包","卒"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  
}

void draw(){
for(int x=50;x<=450;x+=50){
   line(x,50,x,250);
   line(x,300,x,500);
}

for(int y=50;y<=500;y+=50){
   line(50,y,450,y);
}

for(int i=0;i<4;i++){
   for(int j=0;j<9;j++){
     int id=board[i][j];
     if(id==0)continue;
     text(name[id-1],50+j*50,50+i*50);
   }
 }
}
```
## 兩邊的棋子都出現在棋盤上面，分別是紅色和黑色棋。
```c
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {-0,-6,0,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4},
  
};
String[]name={"將","士","象","車","馬","包","卒"};
String[]name2={"帥","仕","象","相","俥","傌","炮","兵"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  
}

void draw(){
background(#E39D10);
for(int x=50;x<=450;x+=50){
   line(x,50,x,250);
   line(x,300,x,500);
}

for(int y=50;y<=500;y+=50){
   line(50,y,450,y);
}

for(int i=0;i<10;i++){
   for(int j=0;j<9;j++){
     int id=board[i][j];
     if(id==0)continue;
     if(id>0){
       fill(255);
       ellipse(50+j*50,50+i*50,40,40);
       fill(0);
       text(name[id-1],50+j*50,50+i*50);
     
     }else if(id<0){
      fill(255);
       ellipse(50+j*50,50+i*50,40,40);
       fill(255,0,0);
       text(name2[-id-1],50+j*50,50+i*50);
     
     }
    
   }
 }
}
```
## 按下滑鼠可以增加棋子到你所點選的棋盤位置。
```c
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {-0,-6,0,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4},
  
};
String[]name={"將","士","象","車","馬","包","卒"};
String[]name2={"帥","仕","象","相","俥","傌","炮","兵"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw(){
background(#E39D10);
for(int x=50;x<=450;x+=50){
   line(x,50,x,250);
   line(x,300,x,500);
}

for(int y=50;y<=500;y+=50){
   line(50,y,450,y);
}

for(int i=0;i<10;i++){
   for(int j=0;j<9;j++){
     int id=board[i][j];
     if(id==0)continue;
     if(id>0){
       fill(255);
       ellipse(50+j*50,50+i*50,40,40);
       fill(0);
       text(name[id-1],50+j*50,50+i*50);
     
     }else if(id<0){
      fill(255);
       ellipse(50+j*50,50+i*50,40,40);
       fill(255,0,0);
       text(name2[-id-1],50+j*50,50+i*50);    
     }    
   }
 }
}
void mousePressed()
{
   for(int i=0;i<10;i++){
      for(int j=0;j<9;j++){
         if(dist(mouseX,mouseY,50+j*50,50+i*50)<20){
         board[i][j]=1;       
      }  
    }
  }
}
```
## 可透過滑鼠將你所選的棋子拖曳到你想放的位置。
```c
int [][]board={
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {-7,0,-7,0,-7,0,-7,0,-7},
  {-0,-6,0,0,0,0,0,0,-6,0},
  {0,0,0,0,0,0,0,0,0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4},
  
};
String[]name={"將","士","象","車","馬","包","卒"};
String[]name2={"帥","仕","象","相","俥","傌","炮","兵"};
void setup(){
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  
}
void draw(){
background(#E39D10);
for(int x=50;x<=450;x+=50){
   line(x,50,x,250);
   line(x,300,x,500);
}

for(int y=50;y<=500;y+=50){
   line(50,y,450,y);
}

for(int i=0;i<10;i++){
   for(int j=0;j<9;j++){
     int id=board[i][j];
     if(id==0)continue;
     if(id>0){
       fill(255);
       ellipse(50+j*50,50+i*50,40,40);
       fill(0);
       text(name[id-1],50+j*50,50+i*50);
     
     }else if(id<0){
      fill(255);
       ellipse(50+j*50,50+i*50,40,40);
       fill(255,0,0);
       text(name2[-id-1],50+j*50,50+i*50);
     
     }
    
   }
 }
 if(handChess!=0)ellipse(mouseX,mouseY,40,40);
}
int handChess=0;
void mousePressed()
{
   for(int i=0;i<10;i++){
      for(int j=0;j<9;j++){
         if(dist(mouseX,mouseY,50+j*50,50+i*50)<20){
         handChess=board[i][j];
         board[i][j]=0;       
      }  
    }
  }
}
void mouseReleased()
{
  int i=(mouseY+25-50)/50;
  int j=(mouseX+25-50)/50;
  board[i][j]=handChess;
  handChess=0;
}
```
## 暗棋
```c
int [][]board={
  { 1, 2, 2, 3, 3, 4, 4, 5},
  { 5, 6, 6, 7, 7, 7, 7, 7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
}; //暗棋的格子,比較少 4x8=32個棋子
void setup(){
  size(500,400);
  PFont font = createFont("標楷體", 30);
  textFont(font);
  textAlign(CENTER, CENTER);
}
void draw(){
  background(#F0B82C);
  for (int x=50; x<=450; x+=50) {
    line( x, 50, x, 250);
  }
  for (int y=50; y<=250; y+=50) {
    line( 50, y, 450, y);
  }  
  for(int i=0; i<4; i++){
    for(int j=0; j<8; j++){
      int id = board[i][j];
      drawChess(50+25+j*50, 50+25+i*50, id);
    }
  }
}
String [] name = {"將", "士", "象", "車", "馬", "包", "卒"};
String [] name2 = {"帥", "仕", "相", "俥", "傌", "炮", "兵"};
void drawChess(int x, int y, int id){
    fill(255);
    ellipse( x, y, 40, 40);
    if(id>0){//黑
      fill(0);
      text( name2[id-1], x, y-3);
    }else{//紅
      fill(255,0,0);
      text( name2[-id-1], x, y-3);
    }
}
```
## 棋子轉成背面點選後可以翻面。
```c
int [][]show={

  {0, 0, 0, 0, 0, 0, 0, 0},

  {0, 0, 0, 0, 0, 0, 0, 0},

  {0, 0, 0, 0, 0, 0, 0, 0},

  {0, 0, 0, 0, 0, 0, 0, 0}

};///再翻牌前，都不會show出來

int [][]board={

  {1, 2, 2, 3, 3, 4, 4, 5},

  {7, 7, 7, 7, 7, 7, 7, 7},

  {-1, -2, -2, -3, -3, -4, -4, -5},

  {-7, -7, -7, -7, -7, -7, -7, -7},

};//1:將 2:士 3:象 4:車 5:馬 6:炮 7:卒

String [] name = {"將", "士", "象", "車", "馬", "包", "卒"};

String [] name2 = {"帥", "仕", "相", "俥", "瑪", "炮", "兵"};

void setup() {

  size(500, 300);

  PFont font = createFont("標楷體", 30);

  textFont(font);

  textAlign(CENTER, CENTER);

}

void draw() {

  background(#D8B532);

  for (int x=50; x<=450; x+=50) { ///等差級數

    line(x, 50, x, 250);

  }

  for (int y=50; y<=250; y+=50) { ///10條

    line(50, y, 450, y);

  }

  for (int i=0; i<4; i++) {

    for (int j=0; j<8; j++) {

      if(show[i][j]==0){

        fill(255);

        ellipse(50+25+j*50, 50+25+i*50, 40, 40);

      }

      else{

        int id = board[i][j];

        drawChess(50+25+j*50, 50+25+i*50, id);

      }

    }

  }

}

void mousePressed(){

    for (int i=0; i<10; i++) {

      for (int j=0; j<9; j++) {

        if (dist(mouseX, mouseY, 50+25+j*50, 50+25+i*50)<20) {

          if(show[i][j]==0) show[i][j] = 1; //show出來

          //下次上

        }

      }

    }

}

void drawChess(int x, int y, int id) {

  fill(255);

  ellipse(x, y, 40, 40);

  if (id>0) {

    fill(0);

    text(name[id-1], x, y-3);

  } else {

    fill(255, 0, 0);

    text(name2[-id-1], x, y-3);

  }

}
```
