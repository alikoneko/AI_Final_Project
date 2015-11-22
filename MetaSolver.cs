using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NLog;

namespace AI_Final_Project
{
    class MetaSolver
    {
        private List<Team> teams;
        private const int ELITE_COUNT = 5;
        private Team championTeam;
        private Random random;
        private static Logger log = LogManager.GetCurrentClassLogger();
        private int size;
        private int generations;
        private const int TOP_PERCERT = 10;
        
        public MetaSolver(int size, int generations)
        {
            this.size = size;
            this.generations = generations;
            teams = new List<Team>();
            championTeam = new Team();
            Initialize();   
        }

        private void Initialize()
        {
            random = ServiceRegistry.GetInstance().GetRandom();
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
            Console.WriteLine("Running Simulation...");
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
            Console.WriteLine("Please see log file for practice champion team and calculated result");
            Console.WriteLine("Number at bottom is calculated by total damage done divided by (total damage done + total damage taken).");
            Console.WriteLine("The higher the number, the more likely the calculated team is to beat the champion.");
            log.Info("Champion:");
            log.Info(championTeam.ToString());
            log.Info("Best:");
            log.Info(teams.OrderByDescending(p => p.Fitness).ToList()[0].ToString() + teams.OrderByDescending(p => p.Fitness).ToList()[0].Fitness);
        }

        private void Repopulate()
        {
            List<Team> newTeams = new List<Team>();
            teams = teams.OrderByDescending(p => p.Fitness).Take(teams.Count / TOP_PERCERT).ToList();
            newTeams.AddRange(teams.OrderByDescending(p => p.Fitness).Take(teams.Count / TOP_PERCERT).ToList().Take(ELITE_COUNT));
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
