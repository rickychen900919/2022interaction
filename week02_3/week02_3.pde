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
