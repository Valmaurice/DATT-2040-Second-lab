
Mover mover;

void setup() {
size(640,360);
mover = new Mover(); 
}

void draw() {
background(#5563AF);

mover.update();
mover.checkEdges();
mover.display(); 
}  

class Mover {

PVector position;
PVector velocity;
PVector acceleration;
float maxspeed;

Mover() {
  position = new PVector(width/2, height/2);
 velocity = new PVector(0, 0);
  acceleration = new PVector(-0.001, 0.01);
  maxspeed = 20;
}

void update() {
  velocity.add(acceleration);
  velocity.limit(maxspeed);
  position.add(velocity);
}

void display() {
  stroke(0);
  strokeWeight(4);
  fill(#F4F502);
  ellipse(position.x, position.y, 56, 56);
  rect(position.x,position.y,56,56);

}

void checkEdges() {

  if (position.x > width) {
    position.x = 0;
  } 
  else if (position.x < 0) {
    position.x = width;
  }

  if (position.y > height) {
    position.y = 0;
  } 
  else if (position.y < 0) {
    position.y = height;
  }
}
}
