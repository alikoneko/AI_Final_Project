using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon
{
    class Logger
    {
        public void Log(string message)
        {
            //Console.WriteLine(message + "\n");
            System.IO.File.AppendAllText(@"Pokemon.txt", message + "\n");
        }
    }
}
