#include<iostream>

int main()
{
  int period, records, mo, result;
  double down, princ, rate, owed, worth, monthly;

  double months[101];

  while(std::cin >> period >> down >> princ >> records && period > 0)
  {
    monthly = princ / period;
    for (int i = 0; i < 101; i++)
      months[i] = 0.0;

    while (records--)
    {
      std::cin >> mo >> rate;
      months[mo] = rate;
    }
    for (int i = 1; i < 101; i++)
      if (months[i] < 10e-6)
        months[i] = months[i-1];

    owed = princ;
    worth = princ + down;
    for (int i = 0; i < 101; i++)
    {
      worth = (1 - months[i]) * worth;
      owed = i > 0 ? owed - monthly : owed;

      if (owed < worth)
      {
        result = i;
        break;
      }
    }
    printf("%d %s\n", result, result == 1 ? "month": "months");
  }
}


