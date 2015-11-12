using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon
{
    class StatRange
    {
        int min;
        int max;
        Random r;

        public StatRange(int min, int max)
        {
            r = ServiceRegistry.GetInstance().GetRandom();
            this.min = min;
            this.max = max;
        }

        public int Random()
        {
            return r.Next(min, max + 1);
        }

        public int Clamp(int value)
        {
            if (value < min)
            {
                return min;
            }
            else if (value > max)
            {
                return max;
            }
            else
            {
                return value;
            }
        }
    }
}
