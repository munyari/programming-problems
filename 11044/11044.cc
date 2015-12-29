#include<iostream>

int main()
{
  int t, n, m;
  scanf("%d", &t);
  while (t--)
  {
    scanf("%d %d", &n, &m);
    printf("%d\n", ((n - 2) / 3 + 1) * ((m - 2) / 3 + 1));
  }
  return 0;
}
