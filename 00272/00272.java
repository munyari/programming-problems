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
    while ((line = reader.readLine()) != null)
    {
      boolean lastQuote = line.charAt(line.length()-1) == '"';
      String[] strings = line.split("\"");
      System.out.print(strings[0]);
      for (int i = 1; i < strings.length; i++)
      {
        if (i % 2 == 1)
          System.out.print("``");
        else
          System.out.print("''");
        System.out.print(strings[i]);
      }
      if (lastQuote)
        System.out.print("''");
      System.out.println();
    }
  }
}

