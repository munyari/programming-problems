#include<iostream>

int main()
{
  int t, n, hi, lo, no = 1;
  scanf("%d", &t);
  while (t--)
  {
    scanf("%d", &n);
    hi = 0, lo = 0;
    int walls[n];
    for (int i = 0; i < n; i++)
      std::cin >> walls[i];
      for (int i = 1; i < n; i++)
      {
        if (walls[i-1] < walls[i])
          hi++;
        else if (walls[i-1] > walls[i])
          lo++;
      }
    printf("Case %d: %d %d\n", no++, hi, lo);
  }
}
