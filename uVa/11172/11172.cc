#include<iostream>

int main()
{
  int t, a, b;
  std::cin >> t;
  while (t--)
  {
    std::cin >> a >> b;
    char c;
    if (a == b)
      std::cout << "=";
    else if (a < b)
      std::cout << "<";
    else
      std::cout << ">";
    std::cout << std::endl;
  }
  return 0;
}
