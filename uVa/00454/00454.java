import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Arrays;

class Main
{
  static String stripWhitespace(String s)
  {
    return String.join("", s.split("\\s+"));
  }

  static boolean areAnagrams(String s1, String s2)
  {
    char[] c1 = s1.toCharArray();
    char[] c2 = s2.toCharArray();
    Arrays.sort(c1);
    Arrays.sort(c2);
    return Arrays.equals(c1, c2);
  }

  public static void main(String[] args) throws IOException
  {
    BufferedReader br = new BufferedReader(
        new InputStreamReader(System.in)
        );
    ArrayList<String> words = new ArrayList<String>();
    String in;
    while ((in = br.readLine()) != null)
    {
      words.add(in);
    }
    Collections.sort(words);
    for (int i = 0; i < words.size(); i++)
    {
      for (int j = i + 1; j < words.size(); j++)
      {
        if (areAnagrams(stripWhitespace(words.get(i)), 
              stripWhitespace(words.get(j))))
          System.out.printf("%s = %s%n", words.get(i), words.get(j));
      }
    }
  }
}
