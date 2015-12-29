#include<iostream>

int main()
{
  int deg_point = 360 / 40;
  int a, b, c, d;
  while (scanf("%d %d %d %d", &a, &b, &c, &d), a, b, c, d)
  {
    if (!a && !b && !c && !d)
      break;
    int degrees = 1080;
    if (b < a)
      degrees += (a - b) * deg_point;
    else
      degrees += (40 - (b - a)) * deg_point;
    if (b < c)
      degrees += (c - b) * deg_point;
    else
      degrees += (40 - (b-c)) * deg_point;
    if (d < c)
      degrees += (c - d) * deg_point;
    else
      degrees += (40 - (d - c)) * deg_point;
    printf("%d\n", degrees);
  }
  return 0;
}
