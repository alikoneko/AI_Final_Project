using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AI_Final_Project.Attacks
{
    class HyperVoice : IAttack
    {
        Random random ;
        Logger log;
        public HyperVoice()
        {
            random = ServiceRegistry.GetInstance().GetRandom();
            log = ServiceRegistry.GetInstance().GetLog();
        }

        public int GetDamage(Pokemon attacker, Pokemon defender)
        {
            //log.Log(attacker.Name + " used Hypervoice on " + defender.Name);
            double damage = (2 * attacker.Level + 10) / 250.0;
            double modifier = random.NextDouble() * (1.0 - 0.85) + 0.85;
            if (random.FlipCoin()) //determines critical hit!
            {
                //log.Log("Critical Hit!");
                modifier *= 2;
            }
            if (random.Critical()) //determines which type is hit with.
            {
                modifier *= attacker.Type_1_Chart[defender.Type_1];
                modifier *= attacker.Type_1_Chart[defender.Type_2];
            }
            else
            {
                modifier *= attacker.Type_1_Chart[defender.Type_1];
                modifier *= attacker.Type_1_Chart[defender.Type_2];
            }
            damage *= (double) attacker.AttackPower / (double) defender.Defense;
            damage *= 90;
            damage += 2;
            damage *= modifier;
            //log.Log("Total damage: " + damage);
            if (damage == 0)
            {
                return 1;
            }
            return (int)(Math.Round(damage));
        }

    }
}
