import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

class Main
{
  public static void main(String[] args) throws IOException {
    BufferedReader reader = new BufferedReader(
        new InputStreamReader(System.in)
        );
    String in;
    while ((in = reader.readLine()) != null)
    {
      int n = Integer.parseInt(in);
      String[] names = reader.readLine().split("\\s+");
      Map<String, Integer> map = new HashMap<String, Integer>();
      for (String name: names)
        map.put(name, 0);
      for (int i = 0; i < n; i++)
      {
        String[] line = reader.readLine().split("\\s+");
        if (line[2].equals("0"))
          continue;
        int initial = Integer.parseInt(line[1]);
        int m = Integer.parseInt(line[2]);
        int result = (initial / m) * m;
        int add = initial / m;
        map.put(line[0], map.get(line[0]) - result);
        for (int j = 3; j < line.length; j++)
          map.put(line[j], map.get(line[j]) + add);
      }
      for (int i = 0; i < n; i++)
      {
        System.out.printf("%s %d\n", names[i], map.get(names[i]));
      }
      System.out.println();
    }
  }
}
