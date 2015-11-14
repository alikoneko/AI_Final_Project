using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AI_Final_Project
{
    class Logger
    {
        public void Log(string message)
        {
            //Console.WriteLine(message + "\n");
            System.IO.File.AppendAllText(@"AI_Final.txt", message + "\n");
        }
    }
}
