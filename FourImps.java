/*
 * Timus OJ - 1924
 * Four Imps
 * WA
 */
import java.io.*;
import java.util.*;

public class FourImps {
  public static void main(String[] args) throws IOException {
    BufferedReader f = new BufferedReader(new InputStreamReader(System.in));
    int n = Integer.parseInt(f.readLine());
    System.out.println(n % 2 == 0 ? "black" : "grimy");
  }
}
