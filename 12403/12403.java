import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

class Main
{
  public static void main(String[] args) throws IOException
  {
    BufferedReader reader = new BufferedReader(
        new InputStreamReader(System.in)
        );
    int t = Integer.parseInt(reader.readLine());
    int total = 0;
    while (t-- > 0)
    {
      String[] in = reader.readLine().split("\\s+");
      if (in[0].equals("report"))
      {
        System.out.println(total);
      }
      else
      {
        total += Integer.parseInt(in[1]);
      }
    }
  }
}
