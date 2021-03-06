/*
 * Timus OJ - 1881
 * Long Problem Statement
 */

import java.io.*;
import java.util.*;

public class Problem {
  public static void main(String[] args) throws IOException {
    BufferedReader f = new BufferedReader(new InputStreamReader(System.in));
    StringTokenizer st = new StringTokenizer(f.readLine());
    int h = Integer.parseInt(st.nextToken());
    int w = Integer.parseInt(st.nextToken());
    int n = Integer.parseInt(st.nextToken());
    int hw = h * w;
    int total = 0;
    while (n-- > 0) {
      total += f.readLine().length() + 1;
    }
    System.out.println((int) (Math.ceil(total * 1.0 / hw)));
    f.close();
    System.exit(0);
  }
}
