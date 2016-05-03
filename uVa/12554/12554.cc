#include<iostream>

int main()
{
  std::string song [] = { "Happy", "birthday", "to", "you", "Rujia" };
  int n, j = 0, k = 0;
  scanf("%d", &n);
  std::string peeps[n];
  for (int i = 0; i < n; i++)
  {
    std::cin >> peeps[i];
  }
  int lines = ((n - 1) / 16 + 1) * 16;
  while (k < lines && j < lines)
  {
    std::cout << peeps[j++ % n] << ": ";
    if (k % 16 == 11)
    {
      std::cout << song[4];
      k++;
    }
    else
      std::cout << song[k++ % 4];
    std::cout << std::endl;
  }
}
