using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AI_Final_Project
{
    class Random : System.Random
    {
        private const int CRITICAL_RATE = 20; //because no magic numbers 5% critical hit.
        private const int MUTATION_RATE = 5; // 20% mutation

        //Coin flip method.
        public bool FlipCoin()
        {
            return Next(0, 2) == 0;
        }

        public bool Critical()
        {
            return (Next() % CRITICAL_RATE) == 0;
        }

        public bool Mutate()
        {
            return (Next() % MUTATION_RATE) == 0;
        }
    }
}
