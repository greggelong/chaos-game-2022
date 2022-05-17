float ax, ay;
float bx, by;
float cx, cy;
float dx, dy;
float tx, ty;
float l = 0.5;//4.0/(4+3);

void setup() {
  size(700, 700);
  background(0);
  ax = width/2;
  ay = 0;
  bx = 0;
  by = height/2;  // /8;  // tetrahedron
  cx = width;
  cy = height/2;  // /8;
  dx = width/2;
  dy = height;
  tx = random(width);
  ty = random(height);
  stroke(0, 255, 0);
  strokeWeight(2);
  point(ax, ay); 
  point(bx, by);
  point(cx, cy);
  point(dx, dy);
  point(tx, ty);
}

void draw() {

  for (int i=0; i<50; i++) {

    point(tx, ty);
    int r = floor(random(4));
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
    }
  }
}
