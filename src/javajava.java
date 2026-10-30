// basic java hello world from replit
// I do not mark Main public, and that choice is load bearing: a
// public class has to sit in a file with its own name, so a public
// Main could not live in javajava.java. The launcher also needs the
// exact main shape below, public static void with a String array,
// or the file compiles and still refuses to run.
class Main {
  public static void main(String[] args) {
    System.out.println("Hello world!");
  }
}
