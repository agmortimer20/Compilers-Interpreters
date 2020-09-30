import java.util.Scanner;

public class Main {

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);

    int a = input.nextInt();
    int b = input.nextInt();
    int c = input.nextInt();
    int d;

    //(a + 95) * ((b * 16) / c) - a + 20;

    d = b * 16;
    d = d / c;
    d = d * (a + 95);
    d = d - a;
    d = d + 20;

    System.out.println(d);
  }
}

