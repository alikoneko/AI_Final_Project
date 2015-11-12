using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon
{
    class NameGenerator
    {
        public static string Generate(string name1, string name2)
        {
            return name1.Substring(0, name1.Length / 2) + name2.Substring(name2.Length / 2);
        }
    }
}
