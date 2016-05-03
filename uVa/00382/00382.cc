#include<cstdio>
#include<iostream>

using namespace std;

string perfect(int a)
{
  int div_sum = 0;
  for (int i = 1; i <= a / 2; i++)
  {
    div_sum += (a % i) ? 0 : i;
  }
  if (a == div_sum)
    return "PERFECT";
  else if (a < div_sum)
    return "ABUNDANT";
  else
    return "DEFICIENT";
}

int main()
{
  printf("PERFECTION OUTPUT\n");
  int a;
  int max_width = 5;
  while (scanf("%d", &a), a)
  {
    printf("%*d  ", max_width, a);
    cout << perfect(a) << endl;
  }
  printf("END OF OUTPUT\n");
}
