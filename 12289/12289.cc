#include<iostream>

int main()
{
  int t, result;
  std::string in;
  scanf("%d", &t);
  while (t--)
  {
    std::cin >> in;
    if (in[0] == 'o' || in[1] == 'n')
     result = 1;
    else if (in[1] == 'w' || in[2] == 'o')
      result = 2;
    else
      result = 3;
    printf("%d\n", result);
  }
}
