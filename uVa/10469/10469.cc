#include<iostream>

int main() {
  int a, b;
  while (std::cin >> a >> b)
  {
    printf("%d\n", a ^ b);
  }
}
