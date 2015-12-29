#include<iostream>

int max(int a, int b)
{
  return a > b ? a : b;
}

int main()
{
  int t, l, w, h, i = 0;
  bool fits;
  scanf("%d", &t);
  while (i < t)
  {
    scanf("%d %d %d", &l, &w, &h);
    fits = max(l, max(w, h)) <= 20; 
    printf("Case %d: %s\n", ++i, fits ? "good" : "bad");
  }
}
