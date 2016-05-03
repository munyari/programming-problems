#include<iostream>

int main()
{
  int i = 0;
  std::string in;
  while (std::cin >> in && in != "*")
  {
    std::string type;
    if (in == "Hajj")
      type = "Akbar";
    else
      type = "Asghar";
    std::cout << "Case " << ++i << ": Hajj-e-" << type << std::endl;
  }
  return 0;
}

