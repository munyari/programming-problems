import java.io.*;
import java.util.*;

class Main
{
  public static void main(String[] args) throws IOException
  {
    BufferedReader reader = new BufferedReader(
        new InputStreamReader(System.in)
        );
    String line;
    int count = 0;
    while ((line = reader.readLine()) != null)
    {
      boolean lastQuote = line.charAt(line.length() -1) == '"';
      String[] strings = line.split("\"");
      System.out.print(strings[0]);
      for (int i = 1; i < strings.length; i++)
      {
        addQuote(count++);
        System.out.print(strings[i]);
      }
      if (lastQuote)
        addQuote(count++);
      System.out.println();
    }
  }

  static void addQuote(int count)
  {
    if (count % 2 == 0)
      System.out.print("``");
    else
      System.out.print("''");
  }
}

