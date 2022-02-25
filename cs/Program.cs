using System.IO;

class Program
{
    static void Main(string[] args)
    {
        if (args.Length > 0) {
            string text = File.ReadAllText(args[0]);
            Console.WriteLine(text);
        } else {
            Console.WriteLine("File not found");
            System.Environment.Exit(1);
        }

    }
}