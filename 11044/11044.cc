#include<iostream>

int ceil(int dividend, int divisor)
{
  if (dividend % 3 == 0)
    return dividend / 3;
  else
    return dividend / 3 + 1;
}

int main()
{
  int t, n, m;
  scanf("%d", &t);
  while (t--)
  {
    scanf("%d %d", &n, &m);
    printf("%d\n", ceil(n-2, 3) * ceil(m-2, 3));
  }
  return 0;
}

