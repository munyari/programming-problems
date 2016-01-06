#include<iostream>

int main()
{
  int n, m, c, curr, max, seq = 0;
  bool blown;
  while (scanf("%d %d %d", &n, &m, &c) && n && m && c)
  {
    printf("%sSequence %d\n", seq > 1 ? "\n" : "", ++seq);
    blown = false; 
    max = 0;
    int amps[n+1];
    bool on_off[n+1];
    for (int i = 0; i < n+1; i++)
      on_off[i] = false;
    curr = 0;
    for (int i = 1; i < n+1; i++)
    {
      std::cin >> amps[i];
    }
    for (int i = 0; i < m; i++)
    {
      int j;
      scanf("%d", &j);
      curr += on_off[j] ? -amps[j] : amps[j];
      on_off[j] = !on_off[j];
      max = max > curr ? max : curr;
      if (curr > c)
      {
        blown = true; 
        break;
      }
    }
    std::cout << "Fuse was " << (blown ? "" : "not ") << "blown." << std::endl;
    if (!blown)
    {
      printf("Maximal power consumption was %d amperes.\n", max); 
    }
  }
}
