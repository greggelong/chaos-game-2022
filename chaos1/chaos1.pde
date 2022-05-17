float ax, ay;
float bx, by;
float cx, cy;
float tx, ty;

void setup() {
  size(700, 700);
  background(0);
  ax = width/2;
  ay = 0;
  bx = 0;
  by = height;
  cx = width;
  cy = height;
  tx = random(width);
  ty = random(height);
  stroke(0, 255, 0);
  strokeWeight(2);
  point(ax, ay); 
  point(bx, by);
  point(cx, cy);
  point(tx, ty);
}

void draw() {

  //for (int i=0; i<50; i++) {

    point(tx, ty);
    int r = floor(random(3));
    if (r==0) {
      stroke(255, 0, 0);
      tx= lerp(tx, ax, 0.5);
      ty= lerp(ty, ay, 0.5);
    } else if (r==1) {
      stroke(0, 255, 0);
      tx= lerp(tx, bx, 0.5);
      ty= lerp(ty, by, 0.5);
    } else if (r==2) {
      stroke(0, 0, 255);
      tx= lerp(tx, cx, 0.5);
      ty= lerp(ty, cy, 0.5);
    }
  }
//}
