using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test.ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            string s = null;
            while(s == null || s.Length == 0)
            {
                Console.WriteLine("Type format string.");
                Console.WriteLine(DateTime.Now.ToString(Console.ReadLine()));
                Console.WriteLine("Enter to continue, any key to quit.");
                s = Console.ReadLine();
            }            
        }
    }
}
