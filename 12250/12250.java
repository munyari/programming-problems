import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

class Main
{
  public static void main(String[] args) throws IOException
  {
    BufferedReader reader = new BufferedReader(
        new InputStreamReader(System.in)
        );
    int count = 0;
    while (true)
    {
      String line = reader.readLine();
      if (line.equals("#"))
        break;
      String lang = null;
      switch(line)
      {
        case "HELLO":
          lang = "ENGLISH";
          break;
        case "HOLA":
          lang = "SPANISH";
          break;
        case "HALLO":
          lang = "GERMAN";
          break;
        case "BONJOUR":
          lang = "FRENCH";
          break;
        case "CIAO":
          lang = "ITALIAN";
          break;
        case "ZDRAVSTVUJTE":
          lang = "RUSSIAN";
          break;
        default:
          lang = "UNKNOWN";
      }
      System.out.printf("Case %d: %s%n", ++count, lang);
    }
  }
}
