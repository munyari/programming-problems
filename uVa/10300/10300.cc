#include<iostream>

int main()
{
  int n, f, space, animals, env, total;

  scanf("%d", &n);

  while (n--)
  {
    scanf("%d", &f);
    total = 0;
    while (f--)
    {
      scanf("%d %d %d", &space, &animals, &env);
      total += space * env;
    }
    printf("%d\n", total);
  }
  return 0;
}

