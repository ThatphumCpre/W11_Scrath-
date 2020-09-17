int positionY;  //set global variable 
float angle;    

void setup(){
  size(500,500);   //set canvas size
  strokeWeight(3);
  rectMode(CENTER);  //draw rect as center of rectangle 
  positionY = 2*height+150;  //set start point at middle
  angle=0;  //set start angle 
}

void draw(){
  background(40);  //set gray background
  translate(100, positionY/2);   //set center of canvas at center of square
  rotate(angle);  //rotale -> radius from angle variable
  rect(0,0, 100, 100);  //draw circle from positionY
  angle += PI/80;  //update angle 
  positionY -= 1;   //update  positionY move circle to top
  if ( positionY<-50){  //if over the edge   then set to bottom
    positionY=2*height+150;
  }

}
