#include<cstdio>

int mod_pow(int base, int exponent, int modulus)
{
  if (modulus == 1)
    return 0;
  int result = 1;
  base %= modulus;
  while (exponent > 0)
  {
    if (exponent % 2)
      result = (result * base) % modulus;
    exponent = exponent >> 1;
    base = (base * base) % modulus;
  }
  return result;
}

int main()
{
  int b,p,m;
  while (scanf("%d%d%d",&b,&p,&m) != EOF)
  {
    printf("%d\n",mod_pow(b,p,m));
  }
}
