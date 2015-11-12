using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon
{
    class Random : System.Random
    {
        public bool FlipCoin()
        {
            return Next(0, 2) == 0;
        }

        public bool Critical()
        {
            return (Next() % 20) == 0;
        }
    }
}
