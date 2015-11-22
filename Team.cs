using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NLog;

namespace AI_Final_Project
{
    class Team
    {
        private const int SIZE = 6;
        private List<Pokemon> team;
        private static Logger log = LogManager.GetCurrentClassLogger();
        private Random random;
        private List<PokemonFactory> pokemonFactories;

        public Team()
        {
            team = new List<Pokemon>();
            Initialize();
        }

        private void Initialize()
        {
            pokemonFactories = new PokemonFactoryRepository().All();
            random = ServiceRegistry.GetInstance().GetRandom();
        }

        public double Fitness //fitness is KDR here
        {
            get
            {
                int damageTaken = team.Sum(p => p.DamageTaken);
                int damageDealt = team.Sum(p => p.DamageDealt);

                if ((damageDealt + damageTaken) == 0)
                {
                    return 0;
                }
                return (double)damageDealt / (double)(damageDealt + damageTaken);
            }
        }

        public void Generate()
        {
            while(team.Count < SIZE)
            {
                Pokemon pokemon = pokemonFactories[random.Next(0, pokemonFactories.Count)].Generate();
                if (!team.Contains(pokemon))
                {
                    team.Add(pokemon);
                }
            }
            log.Debug("team:");
            log.Debug(ToString());
        }

        public void GenerateChampionTeam()
        {
            pokemonFactories = new PokemonFactoryRepository().ChampionFactory();
            while (team.Count < SIZE)
            {
                Pokemon pokemon = pokemonFactories[random.Next(pokemonFactories.Count)].Generate();
                if (!team.Contains(pokemon))
                {
                    team.Add(pokemon);
                }
            }
            log.Debug("champion team");
            log.Debug(ToString());
        }

        public void Reset()
        {
            
            foreach (Pokemon pokemon in team)
            {
                pokemon.Reset();
            }
        }

        public Pokemon SelectAttacker(Pokemon opponent)
        {
            var alive = team.Where(p => !p.Dead);
            foreach (Pokemon poke in alive)
            {
                if ((poke.Type_1_Chart[opponent.Type_1] * poke.Type_1_Chart[opponent.Type_2]) >= 2.0 || (poke.Type_2_Chart[opponent.Type_1] * poke.Type_2_Chart[opponent.Type_2]) >= 2.0)
                {
                    return poke;
                }
            }
            return alive.OrderBy(p => random.NextDouble()).First();
        }

        public Pokemon SelectDefender()
        {
            var alive = team.Where(p => !p.Dead);
            return alive.OrderBy(p => random.NextDouble()).First();
        }

        public void Battle(Team opponent)
        {
            Fight fight = new Fight(this, opponent);
            fight.RunFight();
            //log.Info("Fitness: " + Fitness);
        }

        public Team Mate(Team parent)
        {
            Team child = new Team();
            while (child.team.Count < SIZE)
            {
                Pokemon pokemon;
                if (random.FlipCoin())
                {
                    pokemon = team[random.Next(SIZE)];
                }
                else
                {
                    pokemon = parent.team[random.Next(SIZE)];
                }
                if (!child.team.Contains(pokemon))
                {
                    child.team.Add(pokemon);
                }
            }
            if (random.Mutate())
            {
                child.Mutate();
            }
            log.Debug("Parent 1: \n" + this + "Parent 2: \n" + parent);
            log.Debug("Child: \n" + child);
            return child;
        }

        private Team Mutate()
        {
            Team mutation = new Team();
            foreach (Pokemon poke in team)
            {
                mutation.team.Add(poke);
            }
            mutation.team.RemoveAt(random.Next(SIZE));
            while (mutation.team.Count < SIZE)
            {
                Pokemon pokemon = pokemonFactories[random.Next(0, pokemonFactories.Count)].Generate();
                if (!mutation.team.Contains(pokemon))
                {
                    mutation.team.Add(pokemon);
                }
            }
            return mutation;
        }

        public int AliveCount
        {
            get
            {
                return team.Count(p => !p.Dead);
            }
        }

        public override string ToString()
        {
            string str = "";
            foreach (Pokemon poke in team)
            {
                str += poke;
            }
            return str;
        }
    }
}
