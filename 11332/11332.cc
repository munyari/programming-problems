#include<iostream>

int digital_sum(int n)
{
  int res = 0;
  while (n)
  {
    res += n % 10;
    n /= 10;
  }
  return res;
}

int digital_root(int n)
{
  while (n > 9)
  {
    n = digital_sum(n);
  }
  return n;
}


int main()
{
  int n, m;
  while (scanf("%d", &n), n)
  {
    printf("%d\n", digital_root(n));  
  }
  return 0;
}
