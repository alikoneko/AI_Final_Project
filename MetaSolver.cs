using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AI_Final_Project
{
    class MetaSolver
    {
        private List<Team> teams;
        private Team championTeam;
        private Random random;
        private Logger log;
        private int size;
        private int generations;
        private const int TOP_PERCERT = 10;
        
        public MetaSolver(int size, int generations)
        {
            this.size = size;
            this.generations = generations;
            Initialize();   
        }

        private void Initialize()
        {
            teams = new List<Team>();
            championTeam = new Team();
            random = ServiceRegistry.GetInstance().GetRandom();
            log = ServiceRegistry.GetInstance().GetLog();
            Generate();
            championTeam.GenerateChampionTeam();
        }

        private void Generate()
        {
            for(int i = 0; i < size; i++)
            {
                Team team = new Team();
                team.Generate();
                teams.Add(team);
            }
        }

        public void RunSimulation()
        {
            for (int i = 0; i < generations; i++)
            {
                foreach (Team team in teams)
                {
                    team.Reset();
                    championTeam.Reset();
                    team.Battle(championTeam);
                }
                Repopulate();
            }

            log.Log("Champion:");
            log.Log(championTeam.ToString());
            log.Log("Best:");
            log.Log(teams.OrderByDescending(p => p.Fitness).ToList()[0].ToString() + teams.OrderByDescending(p => p.Fitness).ToList()[0].Fitness);
        }

        private void Repopulate()
        {
            List<Team> newTeams;
            newTeams = teams.OrderByDescending(p => p.Fitness).Take(teams.Count / 10).ToList();
            while (newTeams.Count < size)
            {
                Team parent1, parent2;
                parent1 = teams[random.Next(teams.Count)];
                parent2 = teams[random.Next(teams.Count)];
                newTeams.Add(parent1.Mate(parent2));
            }
            teams = newTeams;
        }

        public override string ToString()
        {
            string str = "";
            foreach (Team team in teams)
            {
                str += team;
            }
            return str;
        }
    }
}
