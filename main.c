#include <stdio.h>

int main() {
  int a;
  int b;
  int c;
  int d;

  scanf("%d", &a);
  scanf("%d", &b);
  scanf("%d", &c);

  //(a + 95) * ((b * 16) / c) - a + 20;

  d = b * 16;
  d = d / c;
  d = d * (a + 95);
  d = d - a;
  d = d + 20;

  printf("%d\n", d);
}