using System;

class Program
{
    static void Main(string[] args)
    {
    	Environment.ExitCode = 99;
        if (args.Length > 0)
        {
        	var p = args[0] + ';';
        	var s = Environment.GetEnvironmentVariable("PATH") + ';';
        	if (s.IndexOf(p, StringComparison.CurrentCultureIgnoreCase) >= 0)
        		Environment.ExitCode = 1;
        	else
        		Environment.ExitCode = 0;
        }
    }
}
