#include<iostream>

int sorted_asc(int* jacks)
{
  for (int i = 1; i < 10; i++)
    if (jacks[i-1] > jacks[i])
      return false;
  return true;
}

int sorted_desc(int* jacks)
{
  for (int i = 1; i < 10; i++)
    if (jacks[i-1] < jacks[i])
      return false;
  return true;
}

int main()
{
  int n, jacks[10];
  bool sorted;
  scanf("%d", &n);

  printf("Lumberjacks:\n");
  while (n--)
  {
    for (int i = 0; i < 10; i++)
      std::cin >> jacks[i];
    sorted = sorted_asc(jacks) || sorted_desc(jacks);
    printf(sorted ? "Ordered\n" : "Unordered\n");
  }
}
