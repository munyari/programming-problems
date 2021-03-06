/*
 * Timus OJ - 1769
 * Old Ural Legend
 * Time Limit Exceeded
 */

import java.io.*;
import java.util.*;

public class UralLegend {
  public static void main(String[] args) throws IOException {
    BufferedReader f = new BufferedReader(new InputStreamReader(System.in));
    String in = f.readLine();
    int result = 1;
    while (in.indexOf(String.valueOf(result)) >= 0 && result <= 1000000) {
      result++;
    }
    System.out.println(result);
    f.close();
    System.exit(0);
  }
}
