import java.io.File; 
import java.io.FileNotFoundException; 
import java.util.Scanner;

public class cat {
    public static void main(String[] args) {
        if (args.length > 0) {
            try {
                File file = new File(args[0]);
                Scanner fileScanner = new Scanner(file);
                while (fileScanner.hasNextLine()) {
                    String data = fileScanner.nextLine();
                    System.out.println(data);
                }
                fileScanner.close();
            } catch (FileNotFoundException e) {
                System.out.println("File not found");
                System.exit(1);
            }
        } else {
            System.out.println("File not found");
            System.exit(1);
        }
    }
}