using System;

class Program
{
    static void Main(string[] args)
    {
        var a = Environment.GetEnvironmentVariable("PATH")
        	.Split(new [] {';'}, StringSplitOptions.RemoveEmptyEntries);
        foreach(var s in a)
        {
            Console.WriteLine(s);
        }
    }
}
