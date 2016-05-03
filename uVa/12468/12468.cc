#include<iostream>

int abs(int a)
{
  return a < 0 ? -a : a;
}

int main()
{
  int a, b, diff;
  while (scanf("%d %d", &a, &b) && a >= 0 && b >= 0)
  {
    diff = abs(a - b);
    printf("%d\n", diff < 100 - diff ? diff : 100 - diff);
  }
}
