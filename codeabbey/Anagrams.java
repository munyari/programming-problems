import java.io.*;
import java.util.*;

public class Anagrams {
    public static void main(String[] args) throws IOException {
      BufferedReader input = new BufferedReader(new FileReader("words.txt"));
      ArrayList<String> words = new ArrayList<String>();
      String line;
      while ((line = input.readLine()) != null) {
        line = sortString(line);
        words.add(line);
      }
      input = new BufferedReader(new InputStreamReader(System.in));
      int n = Integer.parseInt(input.readLine());
      for (int i = 0; i < n; i++) {
        System.out.print(countAnagrams(sortString(input.readLine()), words) + " ");
      }
    }

    public static String sortString(String str)
    {
      char[] chars = str.toCharArray();
      Arrays.sort(chars);
      return new String(chars);
    }

    public static int countAnagrams(String str, ArrayList<String> list)
    {
      int count = -1;
      for (String word: list)
      {
        if (word.equals(str))
          count++;
      }
      return count;
    }

}
