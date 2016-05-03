import java.io.*;
import java.util.*;

public class PrimeRange {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(reader.readLine());
        int bound = 3000000;
        boolean[] sieve = new boolean[bound+1];
        for (int i = 2; i <= Math.sqrt(bound); i++) {
            if (!sieve[i]) {
                for (int j = i * i ; j <= bound; j += i) {
                    sieve[j] = true;
                }
            }
        }
        for (int i = 0; i < n; i++) {
            StringTokenizer st = new StringTokenizer(reader.readLine());
            int a = Integer.parseInt(st.nextToken());
            int b = Integer.parseInt(st.nextToken());
            int cnt = 0;
            for (int j = a; j <= b; j++) {
                if (!sieve[j]) {
                    cnt++;
                }
            }
            System.out.print(cnt + " ");
        }
    }
}
