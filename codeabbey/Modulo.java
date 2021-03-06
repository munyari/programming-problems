import java.io.*;
import java.util.*;

public class Modulo
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
            int d = Integer.parseInt(st.nextToken());
            int e = Integer.parseInt(st.nextToken());
            int f = Integer.parseInt(st.nextToken());
            int g = Integer.parseInt(st.nextToken());
            int h = Integer.parseInt(st.nextToken());
            long start = 60 * (60 * (a * 24 + b) + c) + d;
            long end = 60 * (60 * (e * 24 + f) + g) + h;
            long  diff = end - start;
            long sec = diff % 60;
            diff /= 60;
            long min = diff % 60;
            diff /= 60;
            long hour = diff % 24;
            diff /= 24;
            long day = diff;
            System.out.printf("(%d %d %d %d) ", day, hour, min, sec);

        }
    }
}
