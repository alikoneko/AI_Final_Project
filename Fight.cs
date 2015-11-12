using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon
{
    class Fight
    {
        private Pokemon opponent_a, opponent_b;
        private Pokemon winner, loser;
        Logger log;

        private Random random;

        public Fight(Pokemon opponent_a, Pokemon opponent_b)
        {
            random = ServiceRegistry.GetInstance().GetRandom();
            log = ServiceRegistry.GetInstance().GetLog();

            this.opponent_a = opponent_a;
            this.opponent_b = opponent_b;
        }

        public Pokemon Winner()
        {
            if (null == winner)
            {
                RunFight();
            }
            return winner;
        }

        public Pokemon Loser()
        {
            if (null == loser)
            {
                RunFight();
            }
            log.Log(loser.Name + " lost");
            return loser;
        }
        private void RunFight()
        {
            Random random = new Random();

            Pokemon attacker, defender;

            if (opponent_a.Speed > opponent_b.Speed)
            {
                attacker = opponent_a;
                defender = opponent_b;
            }
            else if (opponent_b.Speed > opponent_a.Speed)
            {
                attacker = opponent_b;
                defender = opponent_a;
            }
            else
            {
                if (random.Next(0, 1) == 1)
                {
                    attacker = opponent_a;
                    defender = opponent_b;
                }
                else
                {
                    attacker = opponent_b;
                    defender = opponent_a;
                }
            }

            while (true)
            {
                attacker.Attack(defender);

                if(defender.Dead)
                {
                    winner = attacker;
                    loser = defender;
                    return;
                }

                Pokemon temp = attacker;
                attacker = defender;
                defender = temp;
            }
        }
    }
}
