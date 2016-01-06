import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

class Main
{
  public static void main(String[] args) throws IOException
  {
    BufferedReader br = new BufferedReader(
        new InputStreamReader(System.in)
        );
    String in;
    int count = 1;
    while ((in = br.readLine()) != null)
    {
      if (in.trim().equals("0 0"))
        break;
      char[] str = in.toCharArray();
      int n = Integer.parseInt(br.readLine());
      System.out.printf("Case %d:%n", count++);
      while (n-- > 0)
      {
        boolean change = false;
        String[] line = br.readLine().split("\\s++");
        int i = Math.min(Integer.parseInt(line[0]), Integer.parseInt(line[1]));
        int j = Math.max(Integer.parseInt(line[0]), Integer.parseInt(line[1]));
        for (int k = i + 1; k <= j; k++)
        {
          if (str[k] != str[k-1])
          {
            change = true;
            break;
          }
        }
        System.out.println(change ? "No" : "Yes");
      }
    }
  }
}
