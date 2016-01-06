#include<iostream>

int main()
{
  double h, u, d, f, curr_h;
  bool success;
  while ((std::cin >> h >> u >> d >> f) && h)
  {
    double curr_h = 0.0;
    double climb_h = u;
    f /= 100;
    int days = 0;
    success = false;
    while (curr_h >= 0)
    {
      days++;
      if (climb_h > 0)
      {
        curr_h += climb_h;
        climb_h -= u * f;
        if (curr_h > h)
        {
          success = true;
          break;
        }
      }
      curr_h -= d;
    }
    printf("%s on day %d\n", success ? "success" : "failure", days);
  }
}
