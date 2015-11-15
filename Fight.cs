using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLog;

namespace AI_Final_Project
{
    class Fight
    {
        private Team team_a, team_b;
        private Team winner, loser;
        private static Logger log = LogManager.GetCurrentClassLogger();

        private Random random;

        public Fight(Team team_a, Team team_b)
        {
            random = ServiceRegistry.GetInstance().GetRandom();

            this.team_a = team_a;
            this.team_b = team_b;
        }

        public Team Winner()
        {
            if (null == winner)
            {
                RunFight();
            }
            return winner;
        }

        public Team Loser()
        {
            if (null == loser)
            {
                RunFight();
            }
            return loser;
        }
        public void RunFight()
        {
            Pokemon attacker_p, defender_p;
            Team attacker_t, defender_t;
            attacker_t = team_a;
            defender_t = team_b;
            while (true)
            {
                defender_p = defender_t.SelectDefender();
                attacker_p = attacker_t.SelectAttacker(defender_p);
                attacker_p.Attack(defender_p);
                
                if (defender_t.AliveCount < 1)
                {
                    break;
                }

                Team temp = defender_t;
                defender_t = attacker_t;
                attacker_t = temp;
            }
            loser = defender_t;
            winner = attacker_t;
        }
    }
}
