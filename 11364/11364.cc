#include<iostream>

int main() {
  int t, n;
  scanf("%d", &t);
  while (t--)
  {
    int max = -1, min = 101;
    scanf("%d", &n);
    int d[n];
    for (int i = 0; i < n; i++)
    {
      std::cin >> d[i];
      max = d[i] > max ? d[i] : max;
      min = d[i] < min ? d[i] : min;
    }
    printf("%d\n", 2*(max-min));
  }
}
