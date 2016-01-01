#include<iostream>

int main()
{
  int n, b, d, c, v;
  bool liquid;
  while (scanf("%d %d", &b, &n), b, n)
  {
    int reserves[b+1];
    for (int i = 1; i < b + 1; i++)
      std::cin >> reserves[i];

    while (n--)
    {
      scanf("%d %d %d", &d, &c, &v);
      reserves[d] -= v;
      reserves[c] += v;
    }
    liquid = true;
    for (int i = 1; i < b + 1; i++)
      if (reserves[i] < 0)
      {
        liquid = false;
        break;
      }
    printf(liquid ? "S\n" : "N\n");
  }
  return 0;
}
