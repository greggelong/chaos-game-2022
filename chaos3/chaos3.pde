float ax, ay;
float bx, by;
float cx, cy;
float dx, dy;
float ex, ey;
float tx, ty;
float l = 0.5;//5.0/(5+3);  //

void setup() {
  size(700, 700);
  background(0);
  ax = width/2;
  ay = 0;
  bx = 0;
  by = height/2.6;  // /8;  
  cx = width;
  cy = height/2.6;  // /8;
  dx = width/5.1;
  dy = height;
  ex = width - width/5.1;
  ey = height;
  tx = random(width);
  ty = random(height);
  stroke(0, 255, 0);
  strokeWeight(2);
  point(ax, ay); 
  point(bx, by);
  point(cx, cy);
  point(dx, dy);
  point(ex, ey);
  point(tx, ty);
}

void draw() {

  for (int i=0; i<50; i++) {

    point(tx, ty);
    int r = floor(random(5));
    if (r==0) {
      stroke(255, 0, 0);
      tx= lerp(tx, ax, l);
      ty= lerp(ty, ay, l);
    } else if (r==1) {
      stroke(0, 255, 0);
      tx= lerp(tx, bx, l);
      ty= lerp(ty, by, l);
    } else if (r==2) {
      stroke(0, 0, 255);
      tx= lerp(tx, cx, l);
      ty= lerp(ty, cy, l);
    } else if (r==3) {
      stroke(255, 0, 255);
      tx= lerp(tx, dx, l);
      ty= lerp(ty, dy, l);
    } else if (r==4) {
      stroke(255,255, 0);
      tx= lerp(tx, ex, l);
      ty= lerp(ty, ey, l);
    }
  }
}
