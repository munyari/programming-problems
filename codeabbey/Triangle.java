import java.io.*;
import java.util.*;

public class Triangle 
{
  public static void main(String[] args) throws IOException
  {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    int n = Integer.parseInt(br.readLine());
    for (int i = 0; i < n; i++)
    {
      StringTokenizer st = new StringTokenizer(br.readLine());
      int a = Integer.parseInt(st.nextToken());
      int b = Integer.parseInt(st.nextToken());
      int c = Integer.parseInt(st.nextToken());
      int sum = a + b + c;
      System.out.println(Math.max(a, Math.max(b, c)) <= sum / 2 ? 1 : 0);
    }
  }
}
