#include<cstdio>
#include<algorithm>

double abs(double x)
{
  return x < 0 ? -x : x;
}
int main()
{
  int h, m;
  while(scanf("%d:%d",&h,&m), h || m)
  {
    int tot_min = 60 * h + m;
    double h_deg = 0.5 * tot_min;
    int min_deg = m * 6;
    double diff = abs(h_deg - min_deg);
    if (diff > 180)
      diff = 360 - diff;
    double result = diff;
    printf("%.3f\n",result);
  }  
}
