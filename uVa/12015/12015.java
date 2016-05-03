import java.util.ArrayList;
import java.util.LinkedList;
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
    for (int j = 1; j <= t; j++)
    {
      ArrayList<LinkedList<String>> list = new ArrayList<LinkedList<String>>(101);
      for (int i = 0; i < 101; i++)
        list.add(new LinkedList<String>());
      for (int i = 0; i < 10; i++)
      {
        String[] url = reader.readLine().split("\\s+");
        list.get(Integer.parseInt(url[1])).add(url[0]);
      }
      int highest = -1;
      for (int i = 100; i >= 0; i--)
        if (!list.get(i).isEmpty())
        {
          highest = i;
          break;
        }
      System.out.printf("Case %d:%n", j);
      LinkedList<String> urls = list.get(highest);

      for (String link: urls)
        System.out.println(link);

    }
  }
}

