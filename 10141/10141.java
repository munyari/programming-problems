// note: beware of presentation error!
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
    String in;
    int count = 1;
    while ((in = reader.readLine()) != null)
    {
      int n = Integer.parseInt(in.split("\\s++")[0]);
      int p = Integer.parseInt(in.split("\\s++")[1]);
      if (n == 0 && p == 0)
        break;
      String best = null;
      int mostCompliant = 0;
      double bestPrice = 0.0;
      for (int i = 0; i < n; i++)
        reader.readLine();
      for (int i = 0; i < p; i++)
      {
        String proposal = reader.readLine();
        String[] line = reader.readLine().split("\\s+");
        double price = Double.parseDouble(line[0]);
        int r = Integer.parseInt(line[1]);
        for (int j = 0; j < r; j++)
        {
          reader.readLine();
        }
        if (r > mostCompliant || (r == mostCompliant && price < bestPrice))
        {
          mostCompliant = r;
          bestPrice = price;
          best = proposal;
        }
      }
      System.out.printf("RFP #%d%n%s%n%n", count++, best);
    }
  }
}

