#include<iostream>

int min(int a, int b)
{
  return a < b ? a : b;
}

int main()
{
  int n, b, h, w, p, a, cheapest;
  while (scanf("%d %d %d %d", &n, &b, &h, &w) != EOF)
  {
    cheapest = 500001;
    while (h--)
    {
      scanf("%d", &p);
      for (int i = 0; i < w; i++)
      {
        scanf("%d", &a);
        if (a >= n)
          cheapest = min(cheapest, p * n);
      }
    }
    if (cheapest > b)
      printf("stay home\n");
    else
      printf("%d\n", cheapest);
  }
  return 0;
}

