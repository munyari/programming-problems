#include<iostream>

int main()
{
  int n, count, in, no = 0;
  while (scanf("%d", &n), n)
  {
    count = 0;
    while (n--)
    {
      scanf("%d", &in);
      count += in ? 1 : -1;
    }
    printf("Case %d: %d\n", ++no, count);
  }
  return 0;
}
