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
    int n = Integer.parseInt(reader.readLine());
    while (n-- > 0)
    {
      String in = reader.readLine();
      String result = null;
      if (in.equals("4") || in.equals("78") || in.equals("1"))
        result = "+";
      else if (in.substring(in.length() - 2).equals("35"))
        result = "-";
      else if (in.charAt(0) == '9' && in.charAt(in.length() - 1) == '4')
        result = "*";
      else
        result = "?";

      System.out.println(result);
    }
  }
}
