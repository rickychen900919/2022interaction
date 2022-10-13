# 2022interaction
2022 互動技術
Week1
變成小畫家，可以用滑鼠畫畫
void setup(){

size(500,500);

}

void draw(){

 if(mousePressed){

   line(mouseX,mouseY,pmouseX,pmouseY);

 }
 小畫家筆的顏色能夠透過鍵盤換色
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

