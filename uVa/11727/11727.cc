#include<iostream>

int maxE(int a, int b)
{
  return a > b ? a : b;
}

int minE(int a, int b)
{
  return a > b ? b : a;
}

int main()
{
  int t, count = 0;
  scanf("%d", &t);
  int arr[3];
  while (t--)
  {
    scanf("%d %d %d", &arr[0], &arr[1], &arr[2]);
    int max = maxE(arr[0], maxE(arr[1], arr[2]));
    int min = minE(arr[0], minE(arr[1], arr[2]));
    for (int i = 0; i < 3; i++)
    {
      if (arr[i] != max && arr[i] != min)
      {
        printf("Case %d: %d\n", ++count, arr[i]);
      }
    }
  }
  return 0;
}
