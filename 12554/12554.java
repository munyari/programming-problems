import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

class Main
{
  public static void main(String[] args) throws IOException
  {
    BufferedReader reader = new BufferedReader(
        new InputStreamReader(System.in)
        );
    String[] song = { "Happy", "birthday", "to", "you", "Rujia" };
    int n, i = 0, j = 0, k = 0;
    n = Integer.parseInt(reader.readLine());
    String[] peeps = new String[n];
    while (n-- > 0)
    {
      peeps[i++] = reader.readLine();
      System.out.println(peeps[i-1]);
    }
    System.out.println(n);
    for (i = 0; i < n; i++)
      System.out.println(peeps[i]);
    /* int lines = ((n - 1) / 16 + 1) * 16; */
    /* while (k < lines && j < lines) */
    /* { */
    /*   std::cout << peeps[j++ % n] << ": "; */
    /*   if (k % 16 == 11) */
    /*     std::cout << song[4]; */
    /*   else */
    /*     std::cout << song[k++ % 4]; */
    /*   std::cout << std::endl; */
    /* } */
  }
}
