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
    while (t-- > 0)
    {
      int n = Integer.parseInt(reader.readLine());
      int p = 0;
      String[] instructions = new String[n];
      int i = 0;
      while (n-- > 0)
      {
        String in = reader.readLine();
        if (in.equals("LEFT"))
        {
          p--;
          instructions[i++] = in;
        }
        else if (in.equals("RIGHT"))
        {
          p++;
          instructions[i++] = in;
        }
        else
        {
          int ind = Integer.parseInt(in.split("\\s+")[2]) - 1;
          p += instructions[ind].equals("LEFT") ? -1 : 1;
          instructions[i++] = instructions[ind];
        }
      }
      System.out.println(p);
    }
  }
}

