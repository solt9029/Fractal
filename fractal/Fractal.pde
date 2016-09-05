static final int DIA=300;//直径
static final int SPLIT_NUM=5;//分割数
static final int MAX_LEVEL=4;//詳細度を表すパラメータ
void setup() {
  size(500, 500);
  background(0);
  stroke(255, 0, 127, 127);
  fill(255,255,0,127);
  fractal(width/2, height/2, DIA, 0);
}
void fractal(int x, int y, int d, int l) {
  if (MAX_LEVEL<l)return;
  ellipse(x, y, d, d);
  for (int i=0; i<SPLIT_NUM; i++) {
    fill(255, 0, 255, 127);
    fractal(int(x+(d/3)*cos(radians(360/SPLIT_NUM*i))), int(y+(d/3)*sin(radians(360/SPLIT_NUM*i))), d/3, l+1);
    fill(0, 255, 127, 127);
    fractal(int(x+(d*2/3)*cos(radians(360/SPLIT_NUM*i))), int(y+(d*2/3)*sin(radians(360/SPLIT_NUM*i))), d/3, l+1);
  }
}