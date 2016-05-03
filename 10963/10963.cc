#include<iostream>

int main()
{
  int n, w, y1, y2, diff;
  bool res;
  scanf("%d", &n);
  for (int i = 0; i < n; i++)
  {
    if (i >= 1)
      printf("\n");
    scanf("%d", &w);
    scanf("%d %d", &y1, &y2);
    diff = y1 - y2;
    res = true;
    while (--w)
    {
      scanf("%d %d", &y1, &y2);
      if (y1 - y2 != diff)
      {
        res = false;
        break;
      }
    }
    printf(res ? "yes" : "no");
    printf("\n");
  }
  return 0;
}
