using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AI_Final_Project
{
    class TeamPopulation
    {
        private List<Team> population;
        private Random random;
        private Logger log;
        private int size;

        public TeamPopulation(int size)
        {
            this.size = size;
            population = new List<Team>();
            random = ServiceRegistry.GetInstance().GetRandom();
            log = ServiceRegistry.GetInstance().GetLog();
            Generate();
        }

        private void Generate()
        {
            for(int i = 0; i < size; i++)
            {
                Team team = new Team();
                team.Generate();
                population.Add(team);
            }
        }

        public override string ToString()
        {
            string str = "";
            foreach (Team team in population)
            {
                str += team;
            }
            return str;
        }
    }
}
