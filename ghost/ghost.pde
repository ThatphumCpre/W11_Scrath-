int positionY;  //set global variable 
Ghost littleGhost;
void setup(){
  size(500,500);   //set canvas size
  strokeWeight(3);
  littleGhost = new Ghost(100, 100,100); 
}

void draw(){
  background(40);  //set gray background
  littleGhost.draw();  //draw ghost 
}

class Ghost {
  int positionX,positionY,size;  //set attribute 
  float angle;  
  Ghost(int x, int y , int sizeInput){
    rectMode(CENTER);  //draw rect as center of rectangle 
    positionX = x;   //collect position, size, angle
    positionY = y; 
    size = sizeInput;
    angle = 0;
  }
  
  
   void draw(){
     translate(positionX, positionY);  //set new rotate point 
     rotate(angle);  //rotate square 
     rect(0, 0, size, size);  //draw from new rotate point 
     angle += PI/80; //increase angle 
     positionY -= 1;  //update position
     if (positionY<-size) {   //if over edge 
       positionY = height;
     }
     translate(0,0); //reset 
     rotate(0);
   }
    
    
}
