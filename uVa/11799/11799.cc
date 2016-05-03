#include<iostream>

int main()
{
  int t, n, max, a;
  scanf("%d", &t);
  for (int i = 1; i <= t; i++)
  {
    scanf("%d", &n);
    max = -1;
    while (n--)
    {
      scanf("%d", &a);
      max = max > a ? max : a;
    }
    printf("Case %d: %d\n", i, max);
  }
}
