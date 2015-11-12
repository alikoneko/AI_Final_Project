using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AI_Final_Project
{
    class Team
    {
        private List<Pokemon> team;
        private Logger log;
        private Random random;
        private int damageTaken;
        private int damageDone;

        public Team(List<Pokemon> team)
        {
            this.team = team;
            Initialize();
        }

        private void Initialize()
        {
            log = ServiceRegistry.GetInstance().GetLog();
            random = ServiceRegistry.GetInstance().GetRandom();
        }

        public double Fitness //fitness is KDR here
        {
            get
            {
                return (double) damageDone / (double)(damageDone + damageTaken);
            }
        }

        public void Reset()
        {
            damageDone = 0;
            damageTaken = 0;
            foreach (Pokemon pokemon in team)
            {
                pokemon.Heal();
            }
        }
    }
}
