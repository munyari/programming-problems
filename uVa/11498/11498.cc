#include<iostream>

int main()
{
  int k, n, m, x, y;
  while (std::cin >> k && k)
  {
    std::cin >> n >> m;
    while (k--)
    {
      std::cin >> x >> y;
      if (x == n || y == m)
        std::cout << "divisa";
      else
      {
        int xdiff = x - n;
        int ydiff = y - m;
        if (ydiff < 0)
          std::cout << "S";
        else
          std::cout << "N";
        if (xdiff < 0)
          std::cout << "O";
        else
          std::cout << "E";
      }
      std::cout << std::endl;
    }
  }
  return 0;
}
