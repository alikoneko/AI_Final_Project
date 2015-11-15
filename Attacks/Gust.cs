using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLog;

namespace AI_Final_Project.Attacks
{
    class Gust : IAttack
    {
        private Random random;
        private Logger log = LogManager.GetCurrentClassLogger();
        public Gust()
        {
            random = ServiceRegistry.GetInstance().GetRandom();
        }

        public int GetDamage(Pokemon attacker, Pokemon defender)
        {
            //log.Log(attacker.Name + " used Gust on " + defender.Name);
            double damage = (2 * attacker.Level + 10) / 250.0;
            double modifier = random.NextDouble() * (1.0 - 0.85) + 0.85;
            if (random.Critical()) //determines critical hit!
            {
                //log.Log("Critical Hit");
                modifier *= 2;
            }
            if (random.FlipCoin()) //determines which type is hit with.
            {
                modifier *= attacker.Type_1_Chart[defender.Type_1];
                modifier *= attacker.Type_1_Chart[defender.Type_2];
            }
            else
            {
                modifier *= attacker.Type_1_Chart[defender.Type_1];
                modifier *= attacker.Type_1_Chart[defender.Type_2];
            }
            damage *= (double) attacker.SpecialAttack / (double) defender.SpecialDefense;
            damage *= 40;
            damage += 2;
            damage *= modifier;
            //log.Log("Total Damage: " + damage);
            if (damage == 0)
            {
                return 1;
            }
            return (int)(Math.Round(damage));
        }
       
    }
}
