import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

class Main
{
  static Map<Character, Character> reverse;

  private static boolean isPalindrome(String s)
  {
    if (s.length() <= 1)
      return true;
    if (s.charAt(0) != s.charAt(s.length()-1))
      return false;
    return isPalindrome(s.substring(1, s.length() - 1));
  }

  private static boolean isMirrored(String s)
  {
    StringBuilder newStr = new StringBuilder(s);
    for (int i = 0; i < s.length(); i++)
    {
      char c = newStr.charAt(i);
      if (reverse.containsKey(c))
        newStr.setCharAt(i, reverse.get(c));
    }
    String mirror = newStr.reverse().toString();
    return s.equals(mirror);
  }

  public static void main(String[] args) throws IOException
  {
    BufferedReader br = new BufferedReader(
        new InputStreamReader(System.in)
        );
    String in;
    reverse = new HashMap<Character, Character>();
    reverse.put('A', 'A');
    reverse.put('E', '3');
    reverse.put('J', 'L');
    reverse.put('L', 'J');
    reverse.put('Y', 'Y');
    reverse.put('Z', '5');
    reverse.put('2', 'S');
    reverse.put('3', 'E');
    reverse.put('5', 'Z');
    while ((in = br.readLine()) != null)
    {
      if (isPalindrome(in) && isMirrored(in))
      {
        System.out.printf("%s -- is a mirrored palindrome.%n", in);
      }
      else if (isPalindrome(in))
      {
        System.out.printf("%s -- is a regular palindrome.%n", in);
      }
      else if (isMirrored(in))
      {
        System.out.printf("%s -- is a mirrored string.%n", in);
      }
      else
      {
        System.out.printf("%s -- is not a palindrome.%n", in);
      }
      System.out.println();
    }
  }
}
