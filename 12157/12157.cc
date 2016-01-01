#include<iostream>

int mile(int a)
{
  return (a / 30 + 1) * 10;
}

int juice(int a)
{
  return (a / 60 + 1) * 15;
}

int main()
{
  int t, n, mcost, jcost, cheap, a;
  std::string cheaper;

  scanf("%d", &t);
  for (int i = 1; i <= t; i++)
  {
    mcost = 0, jcost = 0;
    scanf("%d", &n);
    while (n--)
    {
      scanf("%d", &a);
      mcost += mile(a);
      jcost += juice(a);
    }
    if (mcost == jcost)
    {
      cheaper = "Mile Juice ";
      cheap = mcost;
    }
    else if (mcost < jcost)
    {
      cheaper = "Mile ";
      cheap = mcost;
    }
    else
    {
      cheaper = "Juice ";
      cheap = jcost;
    }
    std::cout << "Case " << i << ": " << cheaper << cheap << std::endl;
  }
}
