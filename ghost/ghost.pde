int positionY;  //set global variable
void setup(){
  size(500,500);   //set canvas size
  strokeWeight(3);
  positionY = height;  //set start point at middle
}

void draw(){
  background(40);  //set gray background
  ellipse(250, positionY, 100, 100);  //draw circle from positionY
  positionY -= 1;   //update  positionY move circle to top
  if ( positionY<-50){  //if over the edge   then set to bottom
    positionY=height+100;
  }

}
